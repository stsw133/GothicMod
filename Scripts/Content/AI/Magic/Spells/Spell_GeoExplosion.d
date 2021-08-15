///******************************************************************************************
///	SPL_GeoExplosion
///******************************************************************************************

const int SPL_Cost_GeoExplosion			=	100;
const int SPL_Damage_GeoExplosion		=	100;

///******************************************************************************************
instance Spell_GeoExplosion (C_Spell_Proto)
{
    time_per_mana						=	0;
    damage_per_level					=	SPL_Damage_GeoExplosion;
    damageType							=	DAM_FLY;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	targetCollectRange					=	0;
};

func int Spell_Logic_GeoExplosion (var int manaInvested)
{
	if (manaInvested >= 1)
	{
        return SPL_SENDCAST;
    };
	
    if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_GeoExplosion/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_GeoExplosion)
	{
        return SPL_NEXTLEVEL;
    };
	return SPL_SENDSTOP;
};

func void Spell_Cast_GeoExplosion()
{
    if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoExplosion/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoExplosion;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
