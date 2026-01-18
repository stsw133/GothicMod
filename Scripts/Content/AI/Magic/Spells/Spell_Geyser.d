///******************************************************************************************
/// SPL_Geyser
///******************************************************************************************

const int SPL_Cost_Geyser				=	50;
const int SPL_Damage_Geyser				=	75;

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
