///******************************************************************************************
/// SPL_Aura
///******************************************************************************************
func void B_SetMagicAura (var int type, var int points, var int time)
{
	/// disabling active aura
	if (mAuraTime > 0 || time == 0)
	{
		if (mAuraType == MAGIC_MYS)
		{
			//Wld_StopEffect("SPELLFX_HEALINGAURA_CAST");
			//Wld_PlayEffect ("spellFX_HealingAura_TARGETEND", hero, hero, 0, 0, 0, false);
		}
		else if (mAuraType == MAGIC_GEO)
		{
			Wld_StopEffect("SPELLFX_GEOAURA_GLOW");
			hero.protection[PROT_BLUNT] -= mAuraPoints;
			hero.protection[PROT_EDGE] -= mAuraPoints;
			hero.protection[PROT_POINT] -= mAuraPoints;
		}
		else if (mAuraType == MAGIC_ELE)
		{
			Wld_StopEffect("SPELLFX_ELEAURA_GLOW");
			hero.protection[PROT_POINT] -= mAuraPoints;
			hero.protection[PROT_FALL] -= mAuraPoints;
		}
		else if (mAuraType == MAGIC_PYR)
		{
			Wld_StopEffect("SPELLFX_PYRAURA_GLOW");
			hero.protection[PROT_FIRE] -= mAuraPoints;
		}
		else if (mAuraType == MAGIC_NEC)
		{
			Wld_StopEffect("SPELLFX_NECAURA_GLOW");
			hero.protection[PROT_MAGIC] -= mAuraPoints;
			hero.protection[PROT_BARRIER] -= mAuraPoints;
		};
	};
	
	/// assigning values
	mAuraType = type;
	mAuraPoints = points;
	mAuraTime = time;
	
	/// starting new aura
	if (time > 0)
	{
		if (type == MAGIC_MYS)
		{
			//Wld_PlayEffect ("spellFX_HealingAura_CAST", hero, hero, 0, 0, 0, false);
		}
		else if (type == MAGIC_GEO)
		{
			Wld_PlayEffect ("SPELLFX_GeoAura_GLOW", hero, hero, 0, 0, 0, false);
			hero.protection[PROT_BLUNT] += points;
			hero.protection[PROT_EDGE] += points;
			hero.protection[PROT_POINT] += points;
		}
		else if (type == MAGIC_ELE)
		{
			Wld_PlayEffect ("SPELLFX_EleAura_GLOW", hero, hero, 0, 0, 0, false);
			hero.protection[PROT_POINT] += points;
			hero.protection[PROT_FALL] += points;
		}
		else if (type == MAGIC_PYR)
		{
			Wld_PlayEffect ("SPELLFX_PyrAura_GLOW", hero, hero, 0, 0, 0, false);
			hero.protection[PROT_FIRE] += points;
		}
		else if (type == MAGIC_NEC)
		{
			Wld_PlayEffect ("SPELLFX_NecAura_GLOW", hero, hero, 0, 0, 0, false);
			hero.protection[PROT_BARRIER] += points;
			hero.protection[PROT_MAGIC] += points;
		};
	};
};
///******************************************************************************************

const int SPL_Cost_Aura					=	30;
const int SPL_Time_Aura					=	60;

func int Spell_Aura_GetProtection (var C_Npc slf)
{
	return 5 + slf.attribute[ATR_POWER] / 20;
};

///******************************************************************************************
/// SPL_HealingAura
///******************************************************************************************
func int Spell_HealingAura_GetHeal (var C_Npc slf)
{
	return 5 + slf.attribute[ATR_POWER] / 20;
};

func void Spell_HealingAura_HealTarget (var C_Npc oth, var C_Npc src)
{
	if (!Hlp_IsValidNpc(oth))
	{
		return;
	};

	if (oth.attribute[ATR_HITPOINTS] <= 0)
	{
		return;
	};
	
	if (Npc_GetDistToNpc(oth, src) > 1000)
	{
		return;
	};
	
	if (Hlp_GetInstanceID(oth) != Hlp_GetInstanceID(src))
	{
		if (!Npc_IsPlayer(oth) && !oth.aivar[AIV_PartyMember])
		{
			return;
		};
	};
	
	Npc_ChangeAttribute (oth, ATR_HITPOINTS, Spell_HealingAura_GetHeal(src));
	Wld_PlayEffect ("SPELLFX_HEALINGAURA_TICK", oth, oth, 0, 0, 0, false);
};

func void Buff_HealingAura_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Wld_StopEffect ("SPELLFX_HEALINGAURA_GLOW");
	Wld_PlayEffect ("SPELLFX_HEALINGAURA_GLOW", slf, slf, 0, 0, 0, false);
};

func void Buff_HealingAura_OnTick (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	MOD_BroadcastEx (slf, Spell_HealingAura_HealTarget, true, false, false);
};

func void Buff_HealingAura_OnRemoved (var int bh)
{
	Wld_StopEffect ("SPELLFX_HEALINGAURA_GLOW");
};

instance Buff_HealingAura (lCBuff)
{
	name								=	"Aura lecznicza";
	bufftype							=	BUFF_GOOD;
	durationMS							=	SPL_Time_Aura*1000;
	tickMS								=	1000;
	OnApply								=	SAVE_GetFuncID(Buff_HealingAura_OnApply);
	OnTick								=	SAVE_GetFuncID(Buff_HealingAura_OnTick);
	OnRemoved							=	SAVE_GetFuncID(Buff_HealingAura_OnRemoved);
};

///******************************************************************************************
instance Spell_HealingAura (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_HealingAura (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Aura, manaInvested);
};

func void Spell_Cast_HealingAura()
{
	B_SpellCast (self, default, SPL_Cost_Aura);
	Buff_ApplyOrRefresh (self, Buff_HealingAura);
};

///******************************************************************************************
/// SPL_StoneSkin
///******************************************************************************************
func void Buff_StoneSkin_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Wld_StopEffect ("SPELLFX_STONESKIN_GLOW");
	Wld_PlayEffect ("SPELLFX_STONESKIN_GLOW", slf, slf, 0, 0, 0, false);
	var int points; points = Spell_Aura_GetProtection(slf);
	slf.protection[PROT_BLUNT] += points;
	slf.protection[PROT_EDGE] += points;
	slf.protection[PROT_POINT] += points;
};

func void Buff_StoneSkin_OnRemoved (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Wld_StopEffect ("SPELLFX_STONESKIN_GLOW");
	var int points; points = Spell_Aura_GetProtection(slf);
	slf.protection[PROT_BLUNT] -= points;
	slf.protection[PROT_EDGE] -= points;
	slf.protection[PROT_POINT] -= points;
};

instance Buff_StoneSkin (lCBuff)
{
	name								=	"Kamienna skóra";
	bufftype							=	BUFF_GOOD;
	durationMS							=	SPL_Time_Aura*1000;
	OnApply								=	SAVE_GetFuncID(Buff_StoneSkin_OnApply);
	OnRemoved							=	SAVE_GetFuncID(Buff_StoneSkin_OnRemoved);
};

///******************************************************************************************
instance Spell_StoneSkin (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_StoneSkin (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Aura, manaInvested);
};

func void Spell_Cast_StoneSkin()
{
	B_SpellCast (self, default, SPL_Cost_Aura);
	Buff_ApplyOrRefresh (self, Buff_StoneSkin);
};

///******************************************************************************************
/// SPL_AirShield
///******************************************************************************************
func void Buff_AirShield_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Wld_StopEffect ("SPELLFX_AIRSHIELD_GLOW");
	Wld_PlayEffect ("SPELLFX_AIRSHIELD_GLOW", slf, slf, 0, 0, 0, false);
	var int points; points = Spell_Aura_GetProtection(slf);
	slf.protection[PROT_POINT] += points;
	slf.protection[PROT_FALL] += points;
};

func void Buff_AirShield_OnRemoved (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Wld_StopEffect ("SPELLFX_AIRSHIELD_GLOW");
	var int points; points = Spell_Aura_GetProtection(slf);
	slf.protection[PROT_POINT] -= points;
	slf.protection[PROT_FALL] -= points;
};

instance Buff_AirShield (lCBuff)
{
	name								=	"Tarcza powietrza";
	bufftype							=	BUFF_GOOD;
	durationMS							=	SPL_Time_Aura*1000;
	OnApply								=	SAVE_GetFuncID(Buff_AirShield_OnApply);
	OnRemoved							=	SAVE_GetFuncID(Buff_AirShield_OnRemoved);
};

///******************************************************************************************
instance Spell_AirShield (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_AirShield (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Aura, manaInvested);
};

func void Spell_Cast_AirShield()
{
	B_SpellCast (self, default, SPL_Cost_Aura);
	Buff_ApplyOrRefresh (self, Buff_AirShield);
};

///******************************************************************************************
/// SPL_FireShield
///******************************************************************************************
func int Spell_FireShield_GetDamage (var C_Npc slf)
{
	return 5 + slf.attribute[ATR_POWER] / 15;
};

func void Spell_FireShield_BurnTarget (var C_Npc oth, var C_Npc src)
{
	if (!Hlp_IsValidNpc(oth))
	{
		return;
	};
	
	if (oth.attribute[ATR_HITPOINTS] <= 0)
	{
		return;
	};
	
	if (Npc_GetDistToNpc(oth, src) > 100)
	{
		return;
	};
	
	if (Npc_GetAttitude(oth, src) != ATT_HOSTILE)
	{
		return;
	};
	
	B_MagicHurtNpc (src, oth, Spell_FireShield_GetDamage(src));
	Wld_PlayEffect ("SPELLFX_FIRESHIELD_TICK", oth, oth, 0, 0, 0, false);
};

func void Buff_FireShield_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Wld_StopEffect ("SPELLFX_FIRESHIELD_GLOW");
	Wld_PlayEffect ("SPELLFX_FIRESHIELD_GLOW", slf, slf, 0, 0, 0, false);
	slf.protection[PROT_FIRE] += Spell_Aura_GetProtection(slf);
};

func void Buff_FireShield_OnTick (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	MOD_BroadcastEx (slf, Spell_FireShield_BurnTarget, false, false, false);
};

func void Buff_FireShield_OnRemoved (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Wld_StopEffect ("SPELLFX_FIRESHIELD_GLOW");
	slf.protection[PROT_FIRE] -= Spell_Aura_GetProtection(slf);
};

instance Buff_FireShield (lCBuff)
{
	name								=	"Tarcza ognia";
	bufftype							=	BUFF_GOOD;
	durationMS							=	SPL_Time_Aura*1000;
	tickMS								=	1000;
	OnApply								=	SAVE_GetFuncID(Buff_FireShield_OnApply);
	OnTick								=	SAVE_GetFuncID(Buff_FireShield_OnTick);
	OnRemoved							=	SAVE_GetFuncID(Buff_FireShield_OnRemoved);
};

///******************************************************************************************
instance Spell_FireShield (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_FireShield (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Aura, manaInvested);
};

func void Spell_Cast_FireShield()
{
	B_SpellCast (self, default, SPL_Cost_Aura);
	Buff_ApplyOrRefresh (self, Buff_FireShield);
};

///******************************************************************************************
/// SPL_DarkBarrier
///******************************************************************************************

var C_Npc Spell_DarkBarrier_Target;
var int Spell_DarkBarrier_TargetDist;
var int Spell_DarkBarrier_Damage;
var C_Npc Spell_DarkBarrier_Victim;

func int Spell_DarkBarrier_GetCollectPercent (var C_Npc slf)
{
	var int percent; percent = 10 + slf.attribute[ATR_POWER] / 20;
	if (percent > 50)
	{
		percent = 50;
	};
	return percent;
};

func void Spell_DarkBarrier_AssessCollect (var C_Npc oth, var C_Npc slf)
{
	if (!Hlp_IsValidNpc(oth))
	{
		return;
	};
	
	if (!Hlp_IsValidNpc(Spell_DarkBarrier_Victim))
	{
		return;
	};
	
	if (!Buff_Has(oth, Buff_DarkBarrier))
	{
		return;
	};
	
	if (Npc_GetDistToNpc(oth, Spell_DarkBarrier_Victim) > 1000)
	{
		return;
	};
	
	//oth.aivar[AIV_DarkBarrierStored] += Spell_DarkBarrier_Damage * Spell_DarkBarrier_GetCollectPercent(oth) / 100;
};

func void Spell_DarkBarrier_FindTarget (var C_Npc oth, var C_Npc src)
{
	if (!Hlp_IsValidNpc(oth))
	{
		return;
	};
	
	if (oth.attribute[ATR_HITPOINTS] <= 0)
	{
		return;
	};
	
	if (Npc_GetAttitude(oth, src) != ATT_HOSTILE)
	{
		return;
	};
	
	var int dist; dist = Npc_GetDistToNpc(oth, src);
	if (dist > 1000)
	{
		return;
	};
	
	if (!Hlp_IsValidNpc(Spell_DarkBarrier_Target) || dist < Spell_DarkBarrier_TargetDist)
	{
		//Spell_DarkBarrier_Target = oth;
		//Spell_DarkBarrier_TargetDist = dist;
	};
};

func void Spell_DarkBarrier_Strike (var C_Npc slf)
{
	Spell_DarkBarrier_Target = MEM_NullToInst();
	Spell_DarkBarrier_TargetDist = 999999;
	MOD_BroadcastEx (slf, Spell_DarkBarrier_FindTarget, false, false, false);
	
	if (Hlp_IsValidNpc(Spell_DarkBarrier_Target))
	{
		var int stored; //stored = slf.aivar[AIV_DarkBarrierStored];
		if (stored > 0)
		{
			Wld_PlayEffect ("spellFX_Zap", slf, Spell_DarkBarrier_Target, 0, 0, 0, false);
			B_MagicHurtNpc (slf, Spell_DarkBarrier_Target, stored);
			//slf.aivar[AIV_DarkBarrierStored] = 0;
		};
	};
};

func void Buff_DarkBarrier_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Wld_StopEffect ("SPELLFX_DARKBARRIER_GLOW");
	Wld_PlayEffect ("SPELLFX_DARKBARRIER_GLOW", slf, slf, 0, 0, 0, false);
	//slf.aivar[AIV_DarkBarrierStored] = 0;
	slf.protection[PROT_MAGIC] += Spell_Aura_GetProtection(slf);
	slf.protection[PROT_BARRIER] += Spell_Aura_GetProtection(slf);
};

func void Buff_DarkBarrier_OnTick (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Spell_DarkBarrier_Strike(slf);
};

func void Buff_DarkBarrier_OnRemoved (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Wld_StopEffect ("SPELLFX_DARKBARRIER_GLOW");
	slf.protection[PROT_MAGIC] -= Spell_Aura_GetProtection(slf);
	slf.protection[PROT_BARRIER] -= Spell_Aura_GetProtection(slf);
	//slf.aivar[AIV_DarkBarrierStored] = 0;
};

instance Buff_DarkBarrier (lCBuff)
{
	name								=	"Mroczna bariera";
	bufftype							=	BUFF_GOOD;
	durationMS							=	SPL_Time_Aura*1000;
	tickMS								=	5000;
	OnApply								=	SAVE_GetFuncID(Buff_DarkBarrier_OnApply);
	OnTick								=	SAVE_GetFuncID(Buff_DarkBarrier_OnTick);
	OnRemoved							=	SAVE_GetFuncID(Buff_DarkBarrier_OnRemoved);
};

///******************************************************************************************
instance Spell_DarkBarrier (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_DarkBarrier (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Aura, manaInvested);
};

func void Spell_Cast_DarkBarrier()
{
	B_SpellCast (self, default, SPL_Cost_Aura);
	Buff_ApplyOrRefresh (self, Buff_DarkBarrier);
};
