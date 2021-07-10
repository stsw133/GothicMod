///******************************************************************************************
///	SPL_SummonWolf
///******************************************************************************************

const int SPL_Cost_SummonWolf			=	40;

///******************************************************************************************
instance Spell_SummonWolf (C_Spell_Proto)
{
	time_per_mana						=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_SummonWolf (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_SummonWolf/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_SummonWolf)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_SummonWolf()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SummonWolf/5;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SummonWolf;
	};
	
	if (Npc_IsPlayer(self))
	{
		Wld_SpawnNpcRange (self, Summoned_Wolf, 1, 500);
	}
	else
	{
		Wld_SpawnNpcRange (self, Wolf, 1, 500);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
