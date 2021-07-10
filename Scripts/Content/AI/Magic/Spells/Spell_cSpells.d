///******************************************************************************************
///	SPL_cSpells
///******************************************************************************************

const int SPL_Cost_cSpells				=	30;
const int SPL_Damage_cSpells			=	300;

///******************************************************************************************
instance Spell_cB_Fireball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level 					=	SPL_Damage_cSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_cB_Fireball (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_cSpells/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_cSpells)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_cB_Fireball()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
instance Spell_cR_Fireball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level 					=	SPL_Damage_cSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_cR_Fireball (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_cSpells/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_cSpells)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_cR_Fireball()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
instance Spell_cG_Fireball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level 					=	SPL_Damage_cSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_cG_Fireball (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_cSpells/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_cSpells)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_cG_Fireball()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
instance Spell_cY_Fireball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level 					=	SPL_Damage_cSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_cY_Fireball (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_cSpells/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_cSpells)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_cY_Fireball()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
