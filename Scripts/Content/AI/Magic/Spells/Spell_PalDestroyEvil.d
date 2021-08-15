///******************************************************************************************
///	SPL_PalDestroyEvil
///******************************************************************************************

const int SPL_Cost_PalDestroyEvil		=	100;	//60
const int SPL_Damage_PalDestroyEvil		=	500;	//600

///******************************************************************************************
instance Spell_PalDestroyEvil (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	damage_per_level					=	SPL_Damage_PalDestroyEvil;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_PalDestroyEvil	(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PalDestroyEvil/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PalDestroyEvil)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_PalDestroyEvil()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalDestroyEvil/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalDestroyEvil;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
/*
///******************************************************************************************
///	SPL_DestroyUndead
///******************************************************************************************

const int SPL_Cost_DestroyUndead		=	100;
const int SPL_Damage_DestroyUndead		=	1000;

///******************************************************************************************
instance Spell_DestroyUndead (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_DestroyUndead;
	spelltype							=	SPELL_NEUTRAL;
};

func int Spell_Logic_DestroyUndead (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_DestroyUndead/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_DestroyUndead)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_DestroyUndead()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_DestroyUndead/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_DestroyUndead;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
*/