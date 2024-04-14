///******************************************************************************************
/// SPL_Heal
///******************************************************************************************

const int SPL_Cost_Heal					=	50;
const int SPL_Heal_Heal					=	50*HP_PER_LP;

///******************************************************************************************
instance Spell_Heal (C_Spell_Proto)
{
	spelltype							=	SPELL_NEUTRAL;
	canTurnDuringInvest					=	false;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
};

func int Spell_Logic_Heal (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Heal, manaInvested);
};

func void Spell_Cast_nHeal()
{
	B_SpellCast (self, default, SPL_Cost_Heal);
	
	Npc_ChangeAttribute (self, ATR_HITPOINTS, SPL_Heal_Heal + self.attribute[ATR_POWER]);
};
