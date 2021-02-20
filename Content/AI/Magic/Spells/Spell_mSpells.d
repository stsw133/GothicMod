///******************************************************************************************
///	SPL_mSpells
///******************************************************************************************

const int SPL_Cost_mSpells				=	15;
const int SPL_Damage_mSpells			=	50;

///******************************************************************************************
INSTANCE Spell_SkeletonSpell (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_mSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_SkeletonSpell (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_mSpells/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_mSpells)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_SkeletonSpell()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_mSpells/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_mSpells)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells;
	};
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
INSTANCE Spell_GolemSpell (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_mSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_GolemSpell (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_mSpells/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_mSpells)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_GolemSpell()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_mSpells/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_mSpells)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells;
	};
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
INSTANCE Spell_OrcSpell (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_mSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_OrcSpell (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_mSpells/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_mSpells)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_OrcSpell()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_mSpells/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_mSpells)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells;
	};
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
INSTANCE Spell_DementorSpell (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_mSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_DementorSpell (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_mSpells/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_mSpells)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_DementorSpell()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_mSpells/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_mSpells)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells;
	};
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
INSTANCE Spell_DemasterSpell (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_mSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_DemasterSpell (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_mSpells/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_mSpells)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_DemasterSpell()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_mSpells/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_mSpells)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells;
	};
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
///	SPL_DragonBall
///******************************************************************************************

const int SPL_Cost_DragonBall			=	35;
const int SPL_Damage_DragonBall			=	120;

///******************************************************************************************
INSTANCE Spell_DragonBall (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_DragonBall;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_DragonBall (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_DragonBall/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_DragonBall)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_DragonBall()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_DragonBall/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_DragonBall/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_DragonBall)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_DragonBall;
	};
	self.aivar[AIV_SelectSpell] += 1;
};
