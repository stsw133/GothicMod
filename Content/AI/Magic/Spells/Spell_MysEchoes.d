///******************************************************************************************
///	SPL_MysEchoes
///******************************************************************************************

const int SPL_Cost_MysEchoes			=	100;
const int SPL_Damage_MysEchoes			=	75;
const int SPL_Heal_MysEchoes			=	15;

///******************************************************************************************
INSTANCE Spell_MysEchoes (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_MysEchoes;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_MysEchoes (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MysEchoes/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MysEchoes)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_MysEchoes()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MysEchoes/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysEchoes/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_MysEchoes)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysEchoes;
	};
	self.aivar[AIV_SelectSpell] += 1;
};
