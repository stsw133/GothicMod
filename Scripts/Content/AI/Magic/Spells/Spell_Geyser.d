///******************************************************************************************
/// SPL_Geyser
///******************************************************************************************

const int SPL_Cost_Geyser				=	75;
const int SPL_Damage_Geyser				=	150;

///******************************************************************************************
instance Spell_Geyser (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Geyser;
	damageType							=	DAM_BARRIER;
};

func int Spell_Logic_Geyser (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Geyser, manaInvested);
};

func void Spell_Cast_Geyser()
{
	B_SpellCast (self, default, SPL_Cost_Geyser);
};
