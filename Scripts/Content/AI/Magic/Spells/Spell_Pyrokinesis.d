///******************************************************************************************
/// SPL_Pyrokinesis
///******************************************************************************************

const int SPL_Cost_Pyrokinesis			=	75;
const int SPL_Damage_Pyrokinesis 		=	175;

///******************************************************************************************
instance Spell_Pyrokinesis (C_Spell_Proto)
{
	time_per_mana						=	30;
	damage_per_level					=	SPL_Damage_Pyrokinesis;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_Pyrokinesis (var int manaInvested) 
{
	return B_SpellLogic (self, default, SPL_Cost_Pyrokinesis, manaInvested);
};

func void Spell_Cast_Pyrokinesis (var int spellLevel)
{
	B_SpellCast (self, default, SPL_Cost_Pyrokinesis);
};
