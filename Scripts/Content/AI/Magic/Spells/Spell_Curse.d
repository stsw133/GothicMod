///******************************************************************************************
/// SPL_Curse
///******************************************************************************************

const int SPL_Cost_Curse				=	50;
const int SPL_Damage_Curse				=	25;
const int SPL_Time_Curse				=	30;

func int Spell_Curse_GetSummonPercent (var int power)
{
	if (power < 0)
	{
		power = 0;
	};
	
	var int percent; percent = power*125/(power+50);
	if (percent > 100)		{ percent = 100; }
	else if (percent < 20)	{ percent = 20; };
	
	return percent;
};

func void Spell_Curse_ApplySummonStats (var C_Npc summoned, var C_Npc vict, var int percent)
{
	summoned.attribute[ATR_HITPOINTS_MAX] = vict.attribute[ATR_HITPOINTS_MAX] * percent / 100;
	if (summoned.attribute[ATR_HITPOINTS_MAX] < 1)
	{
		summoned.attribute[ATR_HITPOINTS_MAX] = 1;
	};
	summoned.attribute[ATR_HITPOINTS] = summoned.attribute[ATR_HITPOINTS_MAX];
	summoned.attribute[ATR_MANA_MAX] = vict.attribute[ATR_MANA_MAX] * percent / 100;
	summoned.attribute[ATR_MANA] = summoned.attribute[ATR_MANA_MAX];
	summoned.attribute[ATR_STRENGTH] = vict.attribute[ATR_STRENGTH] * percent / 100;
	summoned.attribute[ATR_DEXTERITY] = vict.attribute[ATR_DEXTERITY] * percent / 100;
	summoned.attribute[ATR_POWER] = vict.attribute[ATR_POWER] * percent / 100;
	
	summoned.protection[PROT_BARRIER] = vict.protection[PROT_BARRIER] * percent / 100;
	summoned.protection[PROT_BLUNT] = vict.protection[PROT_BLUNT] * percent / 100;
	summoned.protection[PROT_EDGE] = vict.protection[PROT_EDGE] * percent / 100;
	summoned.protection[PROT_FIRE] = vict.protection[PROT_FIRE] * percent / 100;
	summoned.protection[PROT_FLY] = vict.protection[PROT_FLY] * percent / 100;
	summoned.protection[PROT_MAGIC] = vict.protection[PROT_MAGIC] * percent / 100;
	summoned.protection[PROT_POINT] = vict.protection[PROT_POINT] * percent / 100;
};

func void Spell_Curse_RaiseSkeleton (var C_Npc slf, var int percent)
{
	Spell_Curse_ApplySummonStats(slf, slf, percent);
	NpcFn_SetMonsterAsSummoned(slf, false);
	Wld_PlayEffect ("spellFX_SummonCreature_ORIGIN", slf, slf, 0, 0, 0, false);
	
	Npc_ClearAIQueue	(slf);
	B_ClearPerceptions	(slf);
	AI_PlayAni			(slf, "T_SPAWN");
	AI_StandUp			(slf);
};

func void Spell_Curse_SpawnSkeleton (var C_Npc slf, var int percent)
{
	var C_Npc summoned;
	if (slf.guild < GIL_SEPERATOR_HUM)
	{
		Wld_SpawnNpcRange (slf, Skeleton, 1, 100);
		summoned = Hlp_GetNpc(Skeleton);
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF)
	{
		Wld_SpawnNpcRange (slf, Wolf_Skeleton, 1, 100);
		summoned = Hlp_GetNpc(Wolf_Skeleton);
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BANDIT)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BLACK)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_SHAMAN)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_WARRIOR)
	{
		Wld_SpawnNpcRange (slf, Gobbo_Skeleton, 1, 100);
		summoned = Hlp_GetNpc(Gobbo_Skeleton);
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST_FIRE)
	{
		Wld_SpawnNpcRange (slf, Shadowbeast_Skeleton, 1, 100);
		summoned = Hlp_GetNpc(Shadowbeast_Skeleton);
	}
	else
	{
		return;
	};
	
	Wld_PlayEffect ("spellFX_SummonCreature_ORIGIN", summoned, summoned, 0, 0, 0, false);
	NpcFn_SetMonsterAsSummoned(summoned, false);
	Spell_Curse_ApplySummonStats(summoned, slf, percent);
};

func void Spell_Curse_HandleDeath (var C_Npc slf)
{
	var int percent; percent = Spell_Curse_GetSummonPercent(hero.attribute[ATR_POWER]);
	if (C_NpcIsUndead(slf))
	{
		Spell_Curse_RaiseSkeleton(slf, percent);
		return;
	};
	Spell_Curse_SpawnSkeleton(slf, percent);
};

func void Buff_Curse_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Wld_PlayEffect ("spellFX_Curse_GROUND", slf, slf, 0, 0, 0, false);
};

func void Buff_Curse_OnTick (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	
	if (Npc_IsDead(slf))
	{
		Spell_Curse_HandleDeath(slf);
		Buff_Remove(bh);
		return;
	};
	
	var lCBuff b; b = get(bh);
	if (b.nextTickNr % 4 == 0)
	{
		Wld_PlayEffect ("spellFX_Curse_GROUND", slf, slf, 0, 0, 0, false);
	};
};

instance Buff_Curse (lCBuff)
{
	name								=	"Klątwa";
	bufftype							=	BUFF_BAD;
	durationMS							=	SPL_Time_Curse*1000;
	tickMS								=	1000;
	onApply								=	SAVE_GetFuncID(Buff_Curse_OnApply);
	onTick								=	SAVE_GetFuncID(Buff_Curse_OnTick);
};

///******************************************************************************************
instance Spell_Curse (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_Curse;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1000;
	canTurnDuringInvest					=	false;
	canChangeTargetDuringInvest			=	false;
};

func int Spell_Logic_Curse (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Curse, manaInvested);
};

func void Spell_Cast_Curse()
{
	B_SpellCast (self, default, SPL_Cost_Curse);
};
