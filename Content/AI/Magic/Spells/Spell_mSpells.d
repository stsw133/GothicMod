///******************************************************************************************
///	SPL_mSpells
///******************************************************************************************

const int SPL_Cost_mSpells				=	15;
const int SPL_Damage_mSpells			=	50;

///******************************************************************************************
instance Spell_SkeletonSpell (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_mSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_SkeletonSpell (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_mSpells/SPL_Cost_Scroll))
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
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
instance Spell_GolemSpell (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_mSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_GolemSpell (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_mSpells/SPL_Cost_Scroll))
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
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
instance Spell_OrcSpell (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_mSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_OrcSpell (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_mSpells/SPL_Cost_Scroll))
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
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
instance Spell_DementorSpell (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_mSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_DementorSpell (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_mSpells/SPL_Cost_Scroll))
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
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
instance Spell_DemasterSpell (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_mSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_DemasterSpell (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_mSpells/SPL_Cost_Scroll))
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
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_mSpells/SPL_Cost_Scroll;
	}
	else
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
instance Spell_DragonBall (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_DragonBall;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_DragonBall (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_DragonBall/SPL_Cost_Scroll))
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
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_DragonBall/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_DragonBall;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
