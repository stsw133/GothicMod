///******************************************************************************************
///	SPL_InstantFireball
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

func int Spell_Logic_FireStorm	(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_FireStorm/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_FireStorm)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
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
