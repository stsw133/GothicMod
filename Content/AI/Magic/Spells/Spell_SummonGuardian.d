///******************************************************************************************
///	SPL_SummonGuardian
///******************************************************************************************

const int SPL_Cost_SummonGuardian		=	60;

///******************************************************************************************
instance Spell_SummonGuardian (C_Spell_Proto)
{
	time_per_mana						=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_SummonGuardian (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_SummonGuardian/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_SummonGuardian)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_SummonGuardian()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SummonGuardian/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SummonGuardian;
	};
	
	if (Npc_IsPlayer(self))
	{
		Wld_SpawnNpcRange (self, Summoned_Guardian, 1, 500);
	}
	else
	{
		Wld_SpawnNpcRange (self, StoneGuardian, 1, 500);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
