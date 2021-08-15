///******************************************************************************************
///	SPL_PyrExplosion
///******************************************************************************************

const int SPL_Cost_PyrExplosion			=	100;
const int SPL_Damage_PyrExplosion		=	100;

///******************************************************************************************
instance Spell_PyrExplosion (C_Spell_Proto)
{
    time_per_mana						=	0;
    damage_per_level					=	SPL_Damage_PyrExplosion;
    damageType							=	DAM_FLY;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	targetCollectRange					=	0;
};

func int Spell_Logic_PyrExplosion (var int manaInvested)
{
	if (manaInvested >= 1)
	{
        return SPL_SENDCAST;
    };
	
    if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PyrExplosion/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PyrExplosion)
	{
        return SPL_NEXTLEVEL;
    };
	return SPL_SENDSTOP;
};

func void Spell_Cast_PyrExplosion()
{
    if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrExplosion/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrExplosion;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
