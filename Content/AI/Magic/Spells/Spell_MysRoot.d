///******************************************************************************************
///	SPL_MysRoot
///******************************************************************************************

const int SPL_Cost_MysRoot				=	60;
const int SPL_Time_MysRoot				=	15;
const int SPL_Damage_MysRoot			=	3;

///******************************************************************************************
INSTANCE Spell_MysRoot (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	0;
	damageType							=	0;
};

func int Spell_Logic_MysRoot (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MysRoot/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MysRoot)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_MysRoot()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MysRoot/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysRoot/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_MysRoot)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysRoot;
	};
	self.aivar[AIV_SelectSpell] += 1;
};
