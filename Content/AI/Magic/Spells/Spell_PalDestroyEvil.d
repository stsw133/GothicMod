///******************************************************************************************
///	SPL_PalDestroyEvil
///******************************************************************************************

const int SPL_Cost_PalDestroyEvil		=	50;
const int SPL_Damage_PalDestroyEvil		=	500;

///******************************************************************************************
INSTANCE Spell_PalDestroyEvil (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	damage_per_level					=	SPL_Damage_PalDestroyEvil;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_PalDestroyEvil	(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PalDestroyEvil/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PalDestroyEvil)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_PalDestroyEvil()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PalDestroyEvil/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalDestroyEvil/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_PalDestroyEvil)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalDestroyEvil;
	};
	self.aivar[AIV_SelectSpell] += 1;
};
