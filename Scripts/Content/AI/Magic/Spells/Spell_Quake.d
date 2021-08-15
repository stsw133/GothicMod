///******************************************************************************************
///	SPL_GeoQuake
///******************************************************************************************

const int SPL_Cost_Quake				=	100;
const int SPL_Damage_Quake				=	100;

///******************************************************************************************
instance Spell_Quake (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_Quake;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_Quake (var int manaInvested)
{
    if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Quake/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Quake)
	{
        return SPL_SENDCAST;
    };
	return SPL_SENDSTOP;
};

func void Spell_Cast_Quake()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Quake/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Quake;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
