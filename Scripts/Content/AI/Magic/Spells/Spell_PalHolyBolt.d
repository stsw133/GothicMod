///******************************************************************************************
/// SPL_PalHolyBolt
///******************************************************************************************

const int SPL_Cost_PalHolyBolt			=	20;
const int SPL_Damage_PalHolyBolt		=	100;

///******************************************************************************************
instance Spell_PalHolyBolt (C_Spell_Proto)
{
	spelltype							=	SPELL_NEUTRAL;
	damage_per_level					=	SPL_Damage_PalHolyBolt;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_PalHolyBolt (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_PalHolyBolt, manaInvested);
};

func void Spell_Cast_PalHolyBolt()
{
	B_SpellCast (self, default, SPL_Cost_PalHolyBolt);
};
