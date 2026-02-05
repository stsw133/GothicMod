///******************************************************************************************
/// SPL_Plague
///******************************************************************************************

const int SPL_Cost_Plague				=	75;
const int SPL_Damage_Plague				=	25;
const int SPL_Time_Plague				=	5;

const int SPL_Plague_MaxDurationMS		=	60*1000;
const int SPL_Plague_InitialRange		=	1000;
const int SPL_Plague_SpreadRange		=	200;
const int SPL_Plague_TickMS				=	1000;
const int SPL_Plague_SpreadInterval		=	3;

var int Spell_Plague_EndTime;

///******************************************************************************************
func int Spell_Plague_IsValidTarget (var C_Npc slf)
{
	if (!Hlp_IsValidNpc (slf))
	{
		return false;
	};
	
	if (C_NpcIsDown(slf) || C_BodyStateContains(slf, BS_SWIM) || C_BodyStateContains(slf, BS_DIVE))
	|| (C_NpcIsUndead(slf) || slf.guild == GIL_GOLEM || slf.guild == GIL_SUMMONED_GOLEM)
	{
		return false;
	};
	
	return true;
};

func void Spell_Plague_TryApply (var C_Npc oth, var C_Npc slf, var int range)
{
	if (!Spell_Plague_IsValidTarget(oth))
	{
		return;
	};
	
	if (Npc_GetDistToNpc (slf, oth) > range)
	{
		return;
	};
	
	Buff_ApplyOrRefresh (oth, Buff_Plague);
};

func void Spell_Plague_Initial (var C_Npc oth, var C_Npc src)
{
	Spell_Plague_TryApply (oth, src, SPL_Plague_InitialRange);
};

func void Spell_Plague_Spread (var C_Npc oth, var C_Npc src)
{
	Spell_Plague_TryApply (oth, src, SPL_Plague_SpreadRange);
};

///******************************************************************************************
func void Buff_Plague_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Wld_PlayEffect ("spellFX_Plague_TARGET", slf, slf, 0, 0, 0, false);
};

func void Buff_Plague_OnTick (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	
	if (TimerGT() > Spell_Plague_EndTime)
	{
		Buff_Remove(bh);
		return;
	};
	
	B_MagicHurtNpc (hero, slf, SPL_Damage_Plague);
	
	var lCBuff b; b = get(bh);
	if (b.nextTickNr % SPL_Plague_SpreadInterval == 0)
	{
		MOD_BroadcastEx (slf, Spell_Plague_Spread, true, false, false);
	};
};

instance Buff_Plague (lCBuff)
{
	name								=	"Plaga";
	bufftype							=	BUFF_BAD;
	durationMS							=	SPL_Time_Plague*1000;
	tickMS								=	SPL_Plague_TickMS;
	onApply								=	SAVE_GetFuncID(Buff_Plague_OnApply);
	onTick								=	SAVE_GetFuncID(Buff_Plague_OnTick);
};

///******************************************************************************************
instance Spell_Plague (C_Spell_Proto)
{
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_Plague (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Plague, manaInvested);
};

func void Spell_Cast_Plague()
{
	B_SpellCast (self, default, SPL_Cost_Plague);
	
	Spell_Plague_EndTime = TimerGT() + SPL_Plague_MaxDurationMS;
	MOD_Broadcast (self, Spell_Plague_Initial);
};
