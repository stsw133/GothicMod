///******************************************************************************************
///	SPL_SummonGoblinSkeleton
///******************************************************************************************

const int SPL_Cost_SummonGoblinSkeleton	=	20;

///******************************************************************************************
instance Spell_SummonGoblinSkeleton (C_Spell_Proto)
{
	time_per_mana						=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_SummonGoblinSkeleton (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_SummonGoblinSkeleton/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_SummonGoblinSkeleton)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_SummonGoblinSkeleton()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SummonGoblinSkeleton/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SummonGoblinSkeleton;
	};
	
	if (Npc_IsPlayer(self))
	{
		Wld_SpawnNpcRange (self, SUMMONED_GOBBO_SKELETON, 1, 500);
	}
	else
	{
		Wld_SpawnNpcRange (self, GOBBO_SKELETON, 1, 500);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
