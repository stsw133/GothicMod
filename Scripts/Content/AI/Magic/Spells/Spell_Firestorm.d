///******************************************************************************************
///	SPL_Firestorm
///******************************************************************************************

const int SPL_Cost_Firestorm			=	55;	//25
const int SPL_Damage_Firestorm			=	55;	//100
const int SPL_Scaling_Firestorm			=	130;

///******************************************************************************************
instance Spell_Firestorm (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_Firestorm;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_Firestorm (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_Firestorm/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Firestorm)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_Firestorm()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Firestorm/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Firestorm;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
