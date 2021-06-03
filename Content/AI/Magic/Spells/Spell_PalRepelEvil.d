///******************************************************************************************
///	SPL_PalRepelEvil
///******************************************************************************************

const int SPL_Cost_PalRepelEvil 		=	35;	//30
const int SPL_Damage_PalRepelEvil 		=	350;	//300

///******************************************************************************************
instance Spell_PalRepelEvil (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	damage_per_level					=	SPL_Damage_PalRepelEvil;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_PalRepelEvil (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PalRepelEvil/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PalRepelEvil)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_PalRepelEvil()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalRepelEvil/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalRepelEvil;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
