///******************************************************************************************
/// SPL_SkullBolt
///******************************************************************************************

const int SPL_Cost_SkullBolt			=	15;
const int SPL_Damage_SkullBolt			=	75;

///******************************************************************************************
instance Spell_SkullBolt (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_SkullBolt;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_SkullBolt (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_SkullBolt, manaInvested);
};

func void Spell_Cast_SkullBolt()
{
	B_SpellCast (self, default, SPL_Cost_SkullBolt);
};
