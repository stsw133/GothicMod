//******************************************************************************************
//	SPL_BreathOfDeath
//******************************************************************************************

const int SPL_Cost_BreathOfDeath		=	100;
const int SPL_Damage_BreathOfDeath		=	500;

//******************************************************************************************
INSTANCE Spell_BreathOfDeath (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_BreathOfDeath;
	damageType							=	DAM_MAGIC;
	targetCollectRange					=	1000;
};

func int Spell_Logic_BreathOfDeath (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_BreathOfDeath/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_BreathOfDeath)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_BreathOfDeath (var int spellLevel)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_BreathOfDeath/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_BreathOfDeath/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_BreathOfDeath)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_BreathOfDeath;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
