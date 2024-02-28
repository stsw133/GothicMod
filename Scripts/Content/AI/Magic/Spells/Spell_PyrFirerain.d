///******************************************************************************************
///	SPL_PyrFirerain
///******************************************************************************************

const int SPL_Cost_PyrFirerain			=	300;
const int SPL_Damage_PyrFirerain		=	300;

///******************************************************************************************
instance Spell_PyrFirerain (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_PyrFirerain;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_PyrFirerain (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_PyrFirerain/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PyrFirerain)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_PyrFirerain()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrFirerain/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrFirerain;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
