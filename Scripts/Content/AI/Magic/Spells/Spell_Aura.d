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

const int SPL_Cost_Aura					=	50;
const int SPL_Prot_Aura					=	5;
const int SPL_Time_Aura					=	60;

///******************************************************************************************
/// SPL_HealingAura
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
	
	if (Npc_IsPlayer(self))
	{
		B_SetMagicAura (MAGIC_MYS, SPL_Prot_Aura + self.attribute[ATR_POWER]/20, SPL_Time_Aura);
	};
};

///******************************************************************************************
/// SPL_StoneSkin
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
	
	if (Npc_IsPlayer(self))
	{
		B_SetMagicAura (MAGIC_GEO, SPL_Prot_Aura + self.attribute[ATR_POWER]/20, SPL_Time_Aura);
	};
};

///******************************************************************************************
/// SPL_AirShield
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
	
	if (Npc_IsPlayer(self))
	{
		B_SetMagicAura (MAGIC_ELE, SPL_Prot_Aura + self.attribute[ATR_POWER]/20, SPL_Time_Aura);
	};
};

///******************************************************************************************
/// SPL_FireShield
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
	
	if (Npc_IsPlayer(self))
	{
		B_SetMagicAura (MAGIC_PYR, SPL_Prot_Aura + self.attribute[ATR_POWER]/20, SPL_Time_Aura);
	};
};

///******************************************************************************************
/// SPL_DarkBarrier
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
	
	if (Npc_IsPlayer(self))
	{
		B_SetMagicAura (MAGIC_MYS, SPL_Prot_Aura + self.attribute[ATR_POWER]/20, SPL_Time_Aura);
	};
};
