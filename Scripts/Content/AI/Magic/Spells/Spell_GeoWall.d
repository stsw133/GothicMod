///******************************************************************************************
///	SPL_GeoWall
///******************************************************************************************

const int SPL_Cost_GeoWall				=	60;

const int SPL_STEP_GeoWall				=	0;
const int SPL_STEPCOST_GeoWall			=	0;

///******************************************************************************************

const int SPL_NPCINVESTMAX_GeoWall			=	17;
const int SPL_GeoWall_OpenTolCM				=	75;
const int SPL_GeoWall_RevertTime			=	15;
const string SPL_GeoWall_MoverPrefix		=	"ELEVATOR_";
const string SPL_GeoWall_ChildPrefix		=	"ELECHILD_";
/*
const int MOVER_STATE_OPEN					=	0;
const int MOVER_STATE_OPENING				=	1;
const int MOVER_STATE_CLOSED				=	2;
const int MOVER_STATE_CLOSING				=	3;

const int MB_2STATE_TOGGLE					=	0;
const int MB_2STATE_OPEN_TIMED				=	2;

const int sizeof_zCVob						=	288;
*/
var int SPL_GeoWall_State;
const int Wall_Closed        				=	0;
const int Wall_HalfOpen      				=	1;
const int Wall_Open          				=	2;
const int Wall_Moving        				=	3;
const int Wall_Closing       				=	3;
const int Wall_Opening       				=	4;
const int Wall_OpeningFurther				=	5;

var int SPL_GeoWall_Dist;
const int Wall_Dist_max						=	1144700928;          // 747cm

///******************************************************************************************
instance Spell_GeoWall (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_GeoWall_CreateMover(var C_Npc slf)
{
    var int mvrPtr; mvrPtr = MEM_Alloc(sizeof_zCMover);
    const int zCMover__zCMover = 6360352; //0x610D20
    CALL__thiscall(mvrPtr, zCMover__zCMover);
    var zCMover mvr; mvr = _^(mvrPtr);
	
    var int vobPtr; vobPtr = MEM_Alloc(sizeof_zCVob);
    const int zCVob__zCVob = 6283744; //0x5FE1E0
    CALL__thiscall(vobPtr, zCVob__zCVob);
    var zCVob vob; vob = _^(vobPtr);
	
    var String mvrName; var String cldName;
    mvrName = ConcatStrings(SPL_GeoWall_MoverPrefix, IntToString(slf.id));
    cldName = ConcatStrings(SPL_GeoWall_ChildPrefix, IntToString(slf.id));
    mvr._zCObject_objectName = mvrName; vob._zCObject_objectName = cldName;
	
    const int zCVob__SetVisual = 6301312; //0x602680
    CALL_zStringPtrParam("MAGLIFT.3DS");
    CALL__thiscall(vobPtr, zCVob__SetVisual);
    CALL_zStringPtrParam("ELEMOVER.3DS");
    CALL__thiscall(mvrPtr, zCVob__SetVisual);
	
    MEM_CopyWords(mvrPtr+60, vobPtr+60, 16);
	
    const int zCWorld__AddVobAsChild = 6440352; //0x6245A0
    CALL_PtrParam(_@(MEM_Vobtree));
    CALL_PtrParam(mvrPtr);
    CALL__thiscall(_@(MEM_World), zCWorld__AddVobAsChild);
    CALL_PtrParam(MEM_ReadInt(mvrPtr+36));
    CALL_PtrParam(vobPtr);
    CALL__thiscall(_@(MEM_World), zCWorld__AddVobAsChild);
	
    var int kf; kf = MEM_Alloc(sizeof_zTMov_KeyFrame*2);
    MEM_WriteInt(kf+24, FLOATEINS); MEM_WriteInt(kf+52, FLOATEINS);
	
    mvr._zCVob_bitfield[0]      =	3201;
    mvr.keyframeList_numAlloc   =	2;
    mvr.keyframeList_numInArray =	2;
    mvr.keyframeList_array      =	kf;
    mvr.moverBehavior           =	MB_2STATE_OPEN_TIMED;
    mvr.stayOpenTimeSec         =	mkf(SPL_GeoWall_RevertTime);
    mvr.posLerpType             =	1;
    mvr.speedType               =	2;
    mvr.moveSpeed               =	fracf(4, 10);
    mvr.soundOpenStart          =	"STONE_START";
    mvr.soundOpenEnd            =	"STONE_STOP";
    mvr.soundMoving             =	"STONE_LOOP";
    mvr.soundCloseStart         =	mvr.soundOpenStart;
    mvr.soundCloseEnd           =	mvr.soundOpenEnd;
    
    if (!Npc_IsPlayer(slf))
	{
        mvr.posLerpType         =	0;
        mvr.speedType           =	0;
        mvr.moveSpeed           =	fracf(7, 10);
    };
    return mvrPtr;
};

func int Spell_GeoWall_GetChild(var C_Npc slf)
{
    var String cldName;
    cldName = ConcatStrings(SPL_GeoWall_ChildPrefix, IntToString(slf.id));
    return MEM_SearchVobByName(cldName);
};

func int Spell_GeoWall_GetMover(var C_Npc slf)
{
    var String mvrName; var int mvrPtr;
    mvrName = ConcatStrings(SPL_GeoWall_MoverPrefix, IntToString(slf.id));
    mvrPtr = MEM_SearchVobByName(mvrName);
    if (!mvrPtr)
	{
        mvrPtr = Spell_GeoWall_CreateMover(slf);
    };
    return mvrPtr;
};

func void FF_GeoWall_Cleanup (var int slfInstID, var int force)
{
    var C_Npc slf; slf = Hlp_GetNpc(slfInstID);
    var int mvrPtr; mvrPtr = Spell_GeoWall_GetMover(slf);
    if (!mvrPtr)
	{
		return;
	};
    var zCMover mvr; mvr = _^(mvrPtr);
	
    if (mvr.moverState != MOVER_STATE_CLOSED)
    && (!force)
	{
        FF_ApplyExtData(FF_GeoWall_CleanupTimed, SPL_GeoWall_RevertTime/2*1000, 1, slfInstID);
        return;
    };
	
    const int zCWorld__RemoveVob = 6441840; //0x624B70
    var int vobPtr; vobPtr = Spell_GeoWall_GetChild(slf);
    if (vobPtr)
	{
        CALL_PtrParam(vobPtr);
        CALL__thiscall(_@(MEM_World), zCWorld__RemoveVob);
    };
    CALL_PtrParam(mvrPtr);
    CALL__thiscall(_@(MEM_World), zCWorld__RemoveVob);
    return;
};
func void FF_GeoWall_CleanupTimed(var int slfInstID)
{
    FF_GeoWall_Cleanup(slfInstID, false);
};

func void Spell_GeoWall_Crash(var C_Npc slf)
{
    MEM_Info("Spell_GeoWall_Crash: Something went wrong. Correcting.");
    AI_Snd_Play(slf, "DEM_Die");
	
    if (FF_Active(FF_GeoWall_CleanupTimed))
	{
        FF_RemoveData(FF_GeoWall_CleanupTimed, Hlp_GetInstanceID(slf));
    };
    FF_GeoWall_Cleanup(Hlp_GetInstanceID(slf), true);
	
    SPL_GeoWall_State = Wall_Closed;
    SPL_GeoWall_Dist = 0;
	
    if (slf.attribute[ATR_MANA] < 0)
	{
        slf.attribute[ATR_MANA] = 0;
    };
};

func int Spell_GeoWall_CasterOnTop (var C_Npc slf, var int mvrPtr)
{
    var zCVob mvr; mvr = _^(mvrPtr); var zCVob cst; cst = Hlp_GetNpc(slf);
    if (lef(absf(subf(cst.trafoObjToWorld[3], mvr.trafoObjToWorld[3])), mkf(100)))
    && (lef(absf(subf(cst.trafoObjToWorld[11], mvr.trafoObjToWorld[11])), mkf(100)))
    && (gef(subf(cst.trafoObjToWorld[7], mvr.bbox3D_maxs[1]), mkf(40)))
	{
        return true;
    }
	else
	{
        return false;
    };
};

func void Spell_PreCast_GeoWall(var C_Npc slf)
{
    slf.aivar[AIV_SpellLevel] = 0;
    if (slf.attribute[ATR_MANA] < 0)
	{
        slf.attribute[ATR_MANA] = 0;
    };
    slf.aivar[AIV_SelectSpell] += 1;
	
    if (SPL_GeoWall_State == Wall_Closed)
	{
        SPL_GeoWall_Dist = 0;
        return;
    };
	
    var zCMover mover; mover = _^(Spell_GeoWall_GetMover(slf));
    var zTMov_Keyframe fstKF; var zTMov_Keyframe secKF;
    fstKF = _^(mover.keyframeList_array);
    secKF = _^(mover.keyframeList_array + sizeof_zTMov_KeyFrame);
	
    if (mover.moverState == MOVER_STATE_OPENING)
	{
        if (SPL_GeoWall_State == Wall_OpeningFurther)
		{
            SPL_GeoWall_Dist = (addf(SPL_GeoWall_Dist, subf(mover._zCVob_trafoObjToWorld[7], fstKF.pos[1])));
        }
		else
		{
            SPL_GeoWall_Dist = subf(mover._zCVob_trafoObjToWorld[7], fstKF.pos[1]);
        };
        
        if (lef(subf(Wall_Dist_max, SPL_GeoWall_Dist), mkf(SPL_GeoWall_OpenTolCM)))
		{
            SPL_GeoWall_Dist = Wall_Dist_max;
            SPL_GeoWall_State = Wall_Open;
        }
		else
		{
            SPL_GeoWall_State = Wall_HalfOpen;
        };
        
        secKF.pos[1] = mover._zCVob_trafoObjToWorld[7];
        fstKF.pos[1] = subf(secKF.pos[1], SPL_GeoWall_Dist);
        mover.actKeyframeF = mkf(1);
    }
	else if (mover.moverState == MOVER_STATE_OPEN)
	{
        SPL_GeoWall_Dist = Wall_Dist_max;
        fstKF.pos[1] = subf(secKF.pos[1], SPL_GeoWall_Dist);
        SPL_GeoWall_State = Wall_Open;
    };
    mover.bitfield = mover.bitfield & ~ zCMover_bitfield_autoLinkEnabled;
};

func int Spell_GeoWall_Init(var C_Npc slf)
{
    var zCMover mover; mover = _^(Spell_GeoWall_GetMover(slf));
	
    if (mover.moverState == MOVER_STATE_OPENING)
    || (mover.moverState == MOVER_STATE_CLOSING)
	{
        MEM_Info("Spell_Logic_GeoWall: Mover already in motion. Cancel spell.");
        return SPL_DONTINVEST;
    };
	
    if (mover.moverState == MOVER_STATE_CLOSED)
	{
        SPL_GeoWall_State = Wall_Closed;
    }
	else if (mover.moverState == MOVER_STATE_OPEN)
	{
        if (gf(subf(Wall_Dist_max, SPL_GeoWall_Dist), mkf(SPL_GeoWall_OpenTolCM)))
        && (SPL_GeoWall_Dist != 0)
        && (Spell_GeoWall_CasterOnTop(slf, _@(mover)))
		{
            SPL_GeoWall_State = Wall_HalfOpen;
        }
		else
		{
            SPL_GeoWall_State = Wall_Open;
        };
    };
	
    var zCVob caster; caster = Hlp_GetNpc(slf);
    var zTMov_Keyframe fstKF; var zTMov_Keyframe secKF;
    fstKF = _^(mover.keyframeList_array);
    secKF = _^(mover.keyframeList_array + sizeof_zTMov_KeyFrame);
	
    if (SPL_GeoWall_State == Wall_Open)
	{
        if (slf.attribute[ATR_MANA] < SPL_Cost_GeoWall)
		{
            return SPL_DONTINVEST;
        };
		
        fstKF.pos[1] = subf(secKF.pos[1], Wall_Dist_max);
        slf.attribute[ATR_MANA] -= SPL_Cost_GeoWall;
        mover.bitfield = mover.bitfield & ~ zCMover_bitfield_autoLinkEnabled;
        mover.moverBehavior = MB_2STATE_TOGGLE;
        MEM_TriggerVob(_@(mover));
        mover.moverBehavior = MB_2STATE_OPEN_TIMED;
        SPL_GeoWall_State = Wall_Closed;
        SPL_GeoWall_Dist = 0;
		
        slf.aivar[AIV_SpellLevel] += 1;
        return SPL_NEXTLEVEL;
    };
	
    if (SPL_GeoWall_State == Wall_Closed)
	{
        MEM_CopyWords(_@(caster)+60, _@(mover)+60, 16);
        mover._zCVob_trafoObjToWorld[ 7] = subf(mover._zCVob_trafoObjToWorld[ 7], mkf(300));
        var zCVob child; child = _^(Spell_GeoWall_GetChild(slf));
        MEM_CopyWords(_@(mover)+60, _@(child)+60, 16);
		
        fstKF.pos[0] = mover._zCVob_trafoObjToWorld[3];
        fstKF.pos[1] = mover._zCVob_trafoObjToWorld[7];
        fstKF.pos[2] = mover._zCVob_trafoObjToWorld[11];
        secKF.pos[0] = fstKF.pos[0];
        secKF.pos[1] = addf(fstKF.pos[1], Wall_Dist_max);
        secKF.pos[2] = fstKF.pos[2];
		
        SPL_GeoWall_State = Wall_Opening;
        Wld_PlayEffect("spellFX_GeoELEVATOR_DUST_FIRST", child, child, 0, 0, 0, false);
    }
	else
	{
        if (lf(SPL_GeoWall_Dist, subf(secKF.pos[1], fstKF.pos[1])))
		{
            SPL_GeoWall_Dist = subf(secKF.pos[1], fstKF.pos[1]);
        };
        mover.moverState = MOVER_STATE_CLOSED;
        fstKF.pos[1] = secKF.pos[1];
        secKF.pos[1] = addf(fstKF.pos[1], subf(Wall_Dist_max, SPL_GeoWall_Dist));
		
        SPL_GeoWall_State = Wall_OpeningFurther;
    };
	
    mover.bitfield = mover.bitfield | zCMover_bitfield_autoLinkEnabled;
    MEM_TriggerVob(_@(mover));
    Wld_PlayEffect("spellFX_GeoELEVATOR_EARTHQUAKE", slf, slf, 0, 0, 0, false);
	
    slf.attribute[ATR_MANA] -= SPL_STEPCOST_GeoWall;
    if (slf.attribute[ATR_MANA] < 0)
	{
        slf.attribute[ATR_MANA] = 0;
    };
    slf.aivar[AIV_SpellLevel] += 1;
	
    return SPL_NEXTLEVEL;
};

///******************************************************************************************
func int Spell_Logic_GeoWall(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_GeoWall/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_GeoWall)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
	
    if (self.attribute[ATR_MANA] < SPL_STEPCOST_GeoWall)
	{
        self.aivar[AIV_SpellLevel] = 0;
        return SPL_DONTINVEST;
    };
	
    if (manaInvested == 0)
    || (self.aivar[AIV_SpellLevel] == 0)
	{
        self.aivar[AIV_SpellLevel] = 0;
		
        var int mvrPtr; mvrPtr = Spell_GeoWall_GetMover(self);
        if (!mvrPtr)
		{
            return SPL_DONTINVEST;
        };
		
        if (FF_Active(FF_GeoWall_CleanupTimed))
		{
            FF_RemoveData(FF_GeoWall_CleanupTimed, Hlp_GetInstanceID(self));
        };
        FF_ApplyExtData(FF_GeoWall_CleanupTimed, (SPL_GeoWall_RevertTime+7)*1000, 1, Hlp_GetInstanceID(self));
		
        return Spell_GeoWall_Init(self);
    };
	
    var zCMover mover; mover = _^(Spell_GeoWall_GetMover(self));
	
    if (mover.moverState == MOVER_STATE_OPEN)
    || (mover.moverState == MOVER_STATE_CLOSED)
	{
        self.aivar[AIV_SpellLevel] = 0;
        Spell_PreCast_GeoWall(self);
        return SPL_SENDCAST;
    };
	
    if (SPL_GeoWall_State < Wall_Moving)
	{
        self.aivar[AIV_SpellLevel] = 1;
        return SPL_STATUS_CANINVEST_NO_MANADEC;
    };
	
    if (SPL_GeoWall_State >= Wall_Opening)
    && (!Spell_GeoWall_CasterOnTop(self, _@(mover)))
	{
        Spell_GeoWall_Crash(self);
        self.aivar[AIV_SpellLevel] = 1;
        return SPL_STATUS_CANINVEST_NO_MANADEC;
    };
	
    if (manaInvested > self.aivar[AIV_SpellLevel]*SPL_STEP_GeoWall)
	{
        self.attribute[ATR_MANA] -= SPL_STEPCOST_GeoWall;
        if (self.attribute[ATR_MANA] < 0)
		{
            self.attribute[ATR_MANA] = 0;
        };
        self.aivar[AIV_SpellLevel] += 1;
    };
	
    return SPL_STATUS_CANINVEST_NO_MANADEC;
};

func void Spell_Cast_GeoWall (var int spellLevel)
{
};
