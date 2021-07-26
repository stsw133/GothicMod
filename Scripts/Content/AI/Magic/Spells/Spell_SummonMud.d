///******************************************************************************************
///	SPL_SummonMud
///******************************************************************************************

const int SPL_Cost_SummonMud			=	10;

///******************************************************************************************
instance Spell_SummonMud (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_BAD;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_SummonMud (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_SummonMud/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_SummonMud)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_SummonMud()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SummonMud/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SummonMud;
	};
	/*
	if (Npc_IsPlayer(self))
	{
		Wld_SpawnNpcRange (self, Summoned_Mud, 1, 1000);
	}
	else
	{
		Wld_SpawnNpcRange (self, Undead_Mud, 1, 1000);
	};
	*/
	self.aivar[AIV_SelectSpell] += 1;
};