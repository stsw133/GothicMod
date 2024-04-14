///******************************************************************************************
/// SPL_Plague
///******************************************************************************************

const int SPL_Cost_Plague				=	125;
const int SPL_Damage_Plague				=	125;
const int SPL_Time_Plague				=	5;

///******************************************************************************************
instance Spell_Plague (C_Spell_Proto)
{
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_Plague (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Plague, manaInvested);
};

func void Spell_Cast_Plague()
{
	B_SpellCast (self, default, SPL_Cost_Plague);
};
