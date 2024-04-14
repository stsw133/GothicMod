///******************************************************************************************
/// SPL_MasterOfDisaster
///******************************************************************************************

const int SPL_Cost_MasterOfDisaster		=	150;
const int SPL_Damage_MasterOfDisaster	=	600;

///******************************************************************************************
instance Spell_MasterOfDisaster (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_MasterOfDisaster;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_MasterOfDisaster (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_MasterOfDisaster, manaInvested);
};

func void Spell_Cast_MasterOfDisaster()
{
	B_SpellCast (self, default, SPL_Cost_MasterOfDisaster);
};
