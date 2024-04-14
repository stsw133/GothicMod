///******************************************************************************************
///	MOD_Broadcast
///  ForAll
///******************************************************************************************
func void _BC_ForAll (var int funcID, var int sphereOnly)
{
    MEM_InitAll();
	
    var int busy;
    if (busy)
	{
        MEM_Error("Broadcast-System: Nesting is not allowed!");
        return;
    };
    
    busy = true;
    
    var C_Npc slf; slf = Hlp_GetNpc(self);
    var C_Npc oth; oth = Hlp_GetNpc(other);
    
	/// to speed things up (and do the filtering) we only search the (small) active Vob List
    if (sphereOnly)
	{
        var int i; i = 0;
        var int loop; loop = MEM_StackPos.position;
        
        if (i < MEM_World.activeVobList_numInArray)
		{
            var int vob; vob = MEM_ReadIntArray(MEM_World.activeVobList_array, i);
            
            if (Hlp_Is_oCNpc(vob))
			{
                var C_Npc npc; npc = MEM_PtrToInst(vob);
                MEM_PushInstParam(npc);
                MEM_CallByID(funcID);
            };
            
            i += 1;
            MEM_StackPos.position = loop;
        };
    }
	/// walk through the entire Npc List (possibly large)
	else
	{
        var int listPtr; listPtr = MEM_World.voblist_npcs;
        loop = MEM_StackPos.position;
        
        if (listPtr)
		{
            vob = MEM_ReadInt(listPtr + 4);
            
            if (Hlp_Is_oCNpc(vob))
			{
                npc = MEM_PtrToInst(vob);
                MEM_PushInstParam(npc);
                MEM_CallByID(funcID);
            };
            
            listPtr = MEM_ReadInt(listPtr + 8);
            MEM_StackPos.position = loop;
        };
    };
    
    self = Hlp_GetNpc(slf);
    other = Hlp_GetNpc(oth);
    
    busy = false;
};

///******************************************************************************************
func void DoForAll (var func _)
{
    var MEMINT_HelperClass symb;
    var int theHandlerInt;
    theHandlerInt = MEM_ReadInt(MEM_ReadIntArray(contentSymbolTableAddress, symb - 1) + zCParSymbol_content_offset);
    _BC_ForAll(theHandlerInt, 0);
};

func void DoForSphere (var func _)
{
    var MEMINT_HelperClass symb;
    var int theHandlerInt;
    theHandlerInt = MEM_ReadInt(MEM_ReadIntArray(contentSymbolTableAddress, symb - 1) + zCParSymbol_content_offset);
    _BC_ForAll(theHandlerInt, 1);
};

///******************************************************************************************
///	MOD_Broadcast
///******************************************************************************************

var int _BC_funcID;
var int _BC_CasterPtr;
var C_Npc _BC_Caster;
var int _BC_IncludeCaster;
var int _BC_SendToDead;

///******************************************************************************************
func void _BC_CallAssessFunc (var C_Npc slf)
{
    /// ignore dead, unless they are explicitly included
    if (!slf.attribute[ATR_HITPOINTS] && !_BC_SendToDead)
	{
        return;
    };
    
    /// ignore caster if this is wanted
    if (!_BC_IncludeCaster)
	{
        if (_BC_CasterPtr == MEM_InstToPtr(slf))
		{
            return;
        };
    };
    
    MEM_PushInstParam(slf);
    MEM_PushInstParam(_BC_Caster);
    MEM_CallByID(_BC_funcID);
};

///******************************************************************************************
func void _BC_Broadcast (var C_Npc caster, var int funcID, var int includeCaster, var int includeDead, var int forAll)
{
    _BC_IncludeCaster	=	includeCaster;
    _BC_Caster			=	Hlp_GetNpc(caster);
    _BC_CasterPtr		=	MEM_InstToPtr(caster);
    _BC_SendToDead		=	includeDead;
    _BC_funcID			=	funcID;
    
    if (forAll)
	{
        DoForAll(_BC_CallAssessFunc);
    }
	else
	{
        DoForSphere(_BC_CallAssessFunc);
    };
};

///******************************************************************************************
func void MOD_Broadcast (var C_Npc caster, var func _)
{
    var MEMINT_HelperClass symb;
    var int reactionFuncID;
    reactionFuncID = MEM_ReadInt(MEM_ReadIntArray(contentSymbolTableAddress, symb - 1) + zCParSymbol_content_offset);
    _BC_Broadcast(caster, reactionFuncID, false, false, false);
};

func void MOD_BroadcastEx (var C_Npc caster, var func _, var int includeCaster, var int includeDead, var int forAll)
{
    var MEMINT_HelperClass symb;
    var int reactionFuncID;
    reactionFuncID = MEM_ReadInt(MEM_ReadIntArray(contentSymbolTableAddress, symb - 4) + zCParSymbol_content_offset);
    _BC_Broadcast(caster, reactionFuncID, includeCaster, includeDead, forAll);
};
