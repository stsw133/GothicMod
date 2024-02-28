///******************************************************************************************
///	SPL_GeoCollapse
///******************************************************************************************

const int SPL_Cost_GeoCollapse			=	300;
const int SPL_Damage_GeoCollapse		=	300;
const int SPL_Scaling_GeoCollapse		=	100;

///******************************************************************************************
instance Spell_GeoCollapse (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_GeoCollapse;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_GeoCollapse (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_GeoCollapse/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_GeoCollapse)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_GeoCollapse()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoCollapse/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoCollapse;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
