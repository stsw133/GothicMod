///******************************************************************************************
///	SPL_EarthQuake
///******************************************************************************************

const int SPL_Cost_EarthQuake			=	60;
const int SPL_Damage_EarthQuake			=	60;

///******************************************************************************************
instance Spell_EarthQuake (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_EarthQuake;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_EarthQuake (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_EarthQuake/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_EarthQuake)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_EarthQuake()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EarthQuake/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EarthQuake;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
