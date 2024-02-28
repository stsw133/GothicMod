///******************************************************************************************
///	SPL_MysRoot
///******************************************************************************************

const int SPL_Cost_MysRoot				=	75;
const int SPL_Time_MysRoot				=	10;
const int SPL_Damage_MysRoot			=	10;

///******************************************************************************************
instance Spell_MysRoot (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_MysRoot;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_MysRoot (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_MysRoot/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MysRoot)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_MysRoot()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysRoot/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysRoot;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
/*
///******************************************************************************************
///	SPL_GreenTentacle
///******************************************************************************************

const int SPL_Cost_Greententacle		=	50;
const int SPL_TIME_Greententacle		=	20;

///******************************************************************************************
instance Spell_Greententacle (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	0;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1500;
	spelltype							=	SPELL_NEUTRAL;
};

func int Spell_Logic_Greententacle (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Greententacle/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Greententacle)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_Greententacle()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Greententacle/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Greententacle;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
*/