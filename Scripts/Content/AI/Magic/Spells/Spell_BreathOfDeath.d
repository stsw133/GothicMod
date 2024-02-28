///******************************************************************************************
///	SPL_BreathOfDeath
///******************************************************************************************

const int SPL_Cost_BreathOfDeath		=	130;	//100
const int SPL_Damage_BreathOfDeath		=	130;	//500
const int SPL_Scaling_BreathOfDeath		=	190;

///******************************************************************************************
instance Spell_BreathOfDeath (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_BreathOfDeath;
	damageType							=	DAM_MAGIC;
	targetCollectRange					=	1000;
};

func int Spell_Logic_BreathOfDeath (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_BreathOfDeath/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_BreathOfDeath)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_BreathOfDeath (var int spellLevel)
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_BreathOfDeath/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_BreathOfDeath;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
