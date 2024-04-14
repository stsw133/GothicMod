///******************************************************************************************
/// SPL_LightningFlash
///******************************************************************************************

const int SPL_Cost_LightningFlash		=	100;
const int SPL_Damage_LightningFlash		=	350;

///******************************************************************************************
instance Spell_LightningFlash (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_LightningFlash;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_LightningFlash (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_LightningFlash, manaInvested);
};

func void Spell_Cast_LightningFlash()
{
	B_SpellCast (self, default, SPL_Cost_LightningFlash);
};
