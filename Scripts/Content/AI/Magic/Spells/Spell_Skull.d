///******************************************************************************************
/// SPL_Skull
///******************************************************************************************

const int SPL_Cost_Skull				=	200;
const int SPL_Damage_Skull				=	666;

///******************************************************************************************
instance Spell_Skull (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Skull;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_Skull (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Skull, manaInvested);
};

func void Spell_Cast_Skull()
{
	B_SpellCast (self, default, SPL_Cost_Skull);
	
	self.attribute[ATR_MANA] = 0;
};
