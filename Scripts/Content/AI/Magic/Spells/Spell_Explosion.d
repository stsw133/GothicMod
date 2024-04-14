///******************************************************************************************
/// SPL_Explosion
///******************************************************************************************

const int SPL_Cost_Explosion			=	200;
const int SPL_Damage_Explosion			=	200;

///******************************************************************************************
instance Spell_Explosion (C_Spell_Proto)
{
    damage_per_level					=	SPL_Damage_Explosion;
    damageType							=	DAM_FLY;
//	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_Explosion (var int manaInvested)
{
	if (manaInvested >= 1)
	{
        return SPL_SENDCAST;
    };
	
    if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_Explosion/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Explosion)
	{
        return SPL_NEXTLEVEL;
    };
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_Explosion()
{
	B_SpellCast (self, default, SPL_Cost_Explosion);
};
