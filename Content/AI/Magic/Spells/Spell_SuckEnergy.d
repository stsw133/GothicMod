///******************************************************************************************
///	SPL_SuckEnergy
///******************************************************************************************

const int SPL_Cost_SuckEnergy			=	30;
const int SPL_Damage_SuckEnergy			=	100;
const int SPL_Time_SuckEnergy			=	9;

///******************************************************************************************
instance Spell_SuckEnergy (C_Spell_Proto)
{
	time_per_mana						=	50;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1000;
};

func int Spell_Logic_SuckEnergy (var int manaInvested)
{
	if (manaInvested == 0)
	{
		return SPL_RECEIVEINVEST;
	};
	
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_SuckEnergy/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_SuckEnergy)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_SuckEnergy()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SuckEnergy/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SuckEnergy;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
