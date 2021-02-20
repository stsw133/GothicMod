///******************************************************************************************
///	SPL_GeoQuake
///******************************************************************************************

const int SPL_Cost_GeoQuake				=	100;
const int SPL_Damage_GeoQuake			=	100;

///******************************************************************************************
INSTANCE Spell_GeoQuake (C_Spell_Proto)
{
    time_per_mana						=	0;
    damage_per_level					=	SPL_Damage_GeoQuake;
    damageType							=	DAM_FLY;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	targetCollectRange					=	0;
};

func int Spell_Logic_GeoQuake (var int manaInvested)
{
	if (manaInvested >= 1)
	{
        return SPL_SENDCAST;
    };
	
    if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_GeoQuake/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_GeoQuake)
	{
        return SPL_NEXTLEVEL;
    }
	else
	{
        return SPL_SENDSTOP;
    };
};

func void Spell_Cast_GeoQuake()
{
    if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_GeoQuake/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoQuake/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_GeoQuake)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoQuake;
	};
	self.aivar[AIV_SelectSpell] += 1;
};
