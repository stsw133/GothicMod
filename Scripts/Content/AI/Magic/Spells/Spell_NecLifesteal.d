///******************************************************************************************
///	SPL_NecLifesteal
///******************************************************************************************

const int SPL_Cost_NecLifesteal			=	25;
const int SPL_Damage_NecLifesteal		=	25;
const int SPL_Scaling_NecLifesteal		=	100;
const int SPL_Heal_NecLifesteal			=	10;

///******************************************************************************************
instance Spell_NecLifesteal (C_Spell_Proto)
{
	time_per_mana						=	50;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1000;
};

func int Spell_Logic_NecLifesteal (var int manaInvested)
{
	if (manaInvested == 0)
	{
		return SPL_RECEIVEINVEST;
	};
	
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_NecLifesteal/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_NecLifesteal)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_NecLifesteal()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecLifesteal/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecLifesteal;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
