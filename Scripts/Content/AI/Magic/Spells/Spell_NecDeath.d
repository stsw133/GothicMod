///******************************************************************************************
///	SPL_NecDeath
///******************************************************************************************

const int SPL_Cost_NecDeath				=	120;
const int SPL_Damage_NecDeath			=	300;

///******************************************************************************************
instance Spell_NecDeath (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_NecDeath;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_NecDeath (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_NecDeath/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_NecDeath)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_NecDeath()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecDeath/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecDeath;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
/*
///******************************************************************************************
///	SPL_Skull
///******************************************************************************************

const int SPL_Cost_Skull				=	250;
const int SPL_Damage_Skull				=	666;

///******************************************************************************************
instance Spell_Skull (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_Skull;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS_FALLBACK_NONE;
};

func int Spell_Logic_Skull (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Skull/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Skull)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_Skull()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Skull/SPL_Cost_Scroll;
		self.attribute[ATR_MANA] /= SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = 0;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
*/