///******************************************************************************************
///	SPL_cSpells
///******************************************************************************************

const int SPL_Cost_cSpells				=	25;
const int SPL_Damage_cSpells			=	500;

///******************************************************************************************
INSTANCE Spell_cB_Fireball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level 					=	SPL_Damage_cSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_cB_Fireball (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_cSpells/5))
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
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_cSpells/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_cSpells)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells;
	};
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
INSTANCE Spell_cR_Fireball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level 					=	SPL_Damage_cSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_cR_Fireball (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_cSpells/5))
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
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_cSpells/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_cSpells)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells;
	};
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
INSTANCE Spell_cG_Fireball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level 					=	SPL_Damage_cSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_cG_Fireball (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_cSpells/5))
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
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_cSpells/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_cSpells)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells;
	};
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
INSTANCE Spell_cY_Fireball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level 					=	SPL_Damage_cSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_cY_Fireball (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_cSpells/5))
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
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_cSpells/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_cSpells)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_cSpells;
	};
	self.aivar[AIV_SelectSpell] += 1;
};
