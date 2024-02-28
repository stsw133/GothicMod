///******************************************************************************************
///	SPL_NecPlague
///******************************************************************************************

const int SPL_Cost_NecPlague			=	125;
const int SPL_Damage_NecPlague			=	125;
const int SPL_Scaling_NecPlague			=	100;
const int SPL_Time_NecPlague			=	5;

///******************************************************************************************
instance Spell_NecPlague (C_Spell_Proto)
{
	time_per_mana						=	0;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_NecPlague (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_NecPlague/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_NecPlague)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_NecPlague()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecPlague/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecPlague;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
