///******************************************************************************************
/// SPL_MindControl
///******************************************************************************************

const int SPL_Cost_MindControl			=	100;
var C_Npc SPL_OriginalPlayer_MindControl;
var int SPL_BuffHandle_MindControl;

func void Buff_MindControl_OnApply (var int bh)
{
	SPL_BuffHandle_MindControl = bh;
	
	var C_Npc controlled; controlled = _^(Buff_GetNpc(bh));
	if (Hlp_IsValidNpc(controlled))
	{
		Npc_SetAsPlayer(controlled);
	};
};

func void Buff_MindControl_OnTick (var int bh)
{
	if (MEM_KeyPressed(KEY_RETURN))
	{
		Buff_Remove(bh);
		return;
	};
	
	if (!Hlp_IsValidNpc(SPL_OriginalPlayer_MindControl))
	{
		Buff_Remove(bh);
		return;
	};
	
	var C_Npc controlled; controlled = _^(Buff_GetNpc(bh));
	if (!Hlp_IsValidNpc(controlled))
	{
		Buff_Remove(bh);
		return;
	};
	
	if (Npc_GetDistToNpc(controlled, SPL_OriginalPlayer_MindControl) > 3500)
	{
		Buff_Remove(bh);
	};
};

func void Buff_MindControl_OnRemoved (var int bh)
{
	if (SPL_BuffHandle_MindControl == bh)
	{
		SPL_BuffHandle_MindControl = 0;
	};
	
	if (Hlp_IsValidNpc(SPL_OriginalPlayer_MindControl))
	{
		Npc_SetAsPlayer(SPL_OriginalPlayer_MindControl);
	};
	
	SPL_OriginalPlayer_MindControl = MEM_NullToInst();
};

instance Buff_MindControl (lCBuff)
{
	name								=	"Kontrola umysłu";
	bufftype							=	BUFF_NEUTRAL;
	durationMS							=	30000;
	tickMS								=	250;
	OnApply								=	SAVE_GetFuncID(Buff_MindControl_OnApply);
	OnTick								=	SAVE_GetFuncID(Buff_MindControl_OnTick);
	OnRemoved							=	SAVE_GetFuncID(Buff_MindControl_OnRemoved);
};

///******************************************************************************************
instance Spell_MindControl (C_Spell_Proto)
{
	spelltype 							=	SPELL_BAD;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1000;
};

func int Spell_Logic_MindControl (var int manaInvested)
{
	return B_SpellLogic (self, 3, SPL_Cost_MindControl, manaInvested);
};

func void Spell_Cast_MindControl()
{
	B_SpellCast (self, 3, SPL_Cost_MindControl);
	
	if (!C_BodyStateContains(other, BS_SWIM) && !C_BodyStateContains(other, BS_DIVE))
	&& (!C_NpcIsDown(other) && Npc_GetDistToNpc(self, other) <= 1000)
	{
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
		
		SPL_OriginalPlayer_MindControl = Hlp_GetNpc(hero);
		SPL_BuffHandle_MindControl = Buff_ApplyOrRefresh(other, Buff_MindControl);
	};
};
