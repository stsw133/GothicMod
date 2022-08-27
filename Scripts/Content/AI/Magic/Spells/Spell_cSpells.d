///******************************************************************************************
///	SPL_cSpells
///******************************************************************************************

const int SPL_Cost_cSpells				=	25;
const int SPL_Damage_cSpells			=	25;
const int SPL_Scaling_cSpells			=	175;

///******************************************************************************************
instance Spell_BlueFireball (C_Spell_Proto)
{
	time_per_mana						=	0;
//	damage_per_level 					=	SPL_Damage_cSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_BlueFireball (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_cSpells/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_cSpells)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_BlueFireball()
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
instance Spell_RedFireball (C_Spell_Proto)
{
	time_per_mana						=	0;
//	damage_per_level 					=	SPL_Damage_cSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_RedFireball (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_cSpells/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_cSpells)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_RedFireball()
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
instance Spell_GreenFireball (C_Spell_Proto)
{
	time_per_mana						=	0;
//	damage_per_level 					=	SPL_Damage_cSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_GreenFireball (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_cSpells/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_cSpells)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_GreenFireball()
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
instance Spell_YellowFireball (C_Spell_Proto)
{
	time_per_mana						=	0;
//	damage_per_level 					=	SPL_Damage_cSpells;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_YellowFireball (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_cSpells/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_cSpells)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_YellowFireball()
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
