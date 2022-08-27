///******************************************************************************************
///	SPL_WaterFist
///******************************************************************************************

const int SPL_Cost_WaterFist			=	25;
const int SPL_Damage_WaterFist			=	25;	//125
const int SPL_Scaling_WaterFist			=	225;

///******************************************************************************************
instance Spell_WaterFist (C_Spell_Proto)
{
	time_per_mana						=	0;
//	damage_per_level					=	SPL_Damage_WaterFist;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_WaterFist (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_WaterFist/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_WaterFist)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_WaterFist()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_WaterFist/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_WaterFist;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
