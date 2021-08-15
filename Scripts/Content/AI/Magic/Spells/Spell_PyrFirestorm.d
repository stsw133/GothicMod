///******************************************************************************************
///	SPL_PyrFirestorm
///******************************************************************************************

const int SPL_Cost_PyrFirestorm			=	60;
const int SPL_Damage_PyrFirestorm		=	125;

///******************************************************************************************
instance Spell_PyrFirestorm (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_PyrFirestorm;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_PyrFirestorm (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PyrFirestorm/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PyrFirestorm)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_PyrFirestorm()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrFirestorm/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrFirestorm;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
/*
///******************************************************************************************
///	SPL_FireStorm
///******************************************************************************************

const int SPL_Cost_FireStorm			=	25;
const int SPL_Damage_FireStorm			=	100;

///******************************************************************************************
instance Spell_FireStorm (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_FireStorm;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_FireStorm (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_FireStorm/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_FireStorm)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_FireStorm()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_FireStorm/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_FireStorm;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
*/