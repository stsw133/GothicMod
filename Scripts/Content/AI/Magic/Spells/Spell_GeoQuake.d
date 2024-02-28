///******************************************************************************************
///	SPL_GeoQuake
///******************************************************************************************

const int SPL_Cost_GeoQuake				=	200;
const int SPL_Damage_GeoQuake			=	200;
const int SPL_Scaling_GeoQuake			=	100;

///******************************************************************************************
instance Spell_GeoQuake (C_Spell_Proto)
{
    time_per_mana						=	0;
    damage_per_level					=	SPL_Damage_GeoQuake;
    damageType							=	DAM_BARRIER;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	targetCollectRange					=	0;
};

func int Spell_Logic_GeoQuake (var int manaInvested)
{
    if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_GeoQuake/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_GeoQuake)
	{
        return SPL_SENDCAST;
    };
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_GeoQuake()
{
    if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoQuake/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoQuake;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
