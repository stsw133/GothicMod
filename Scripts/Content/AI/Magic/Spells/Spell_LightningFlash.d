///******************************************************************************************
/// SPL_LightningFlash
///******************************************************************************************

const int SPL_Cost_LightningFlash		=	75;
const int SPL_Damage_LightningFlash		=	150;

///******************************************************************************************
instance Spell_LightningFlash (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_LightningFlash;
	damageType							=	DAM_BARRIER;
};

func int Spell_Logic_LightningFlash (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_LightningFlash, manaInvested);
};

func void Spell_Cast_LightningFlash()
{
	B_SpellCast (self, default, SPL_Cost_LightningFlash);
};
