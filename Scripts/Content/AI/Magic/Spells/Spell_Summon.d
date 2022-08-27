///******************************************************************************************
///	SPL_Summon
///******************************************************************************************

const int SPL_Cost_Summon				=	0;	//50

///******************************************************************************************
instance Spell_Summon (C_Spell_Proto)
{
	time_per_mana						=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_Summon (var int manaInvested)
{
	if (SumStoneID > 0)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_Summon()
{
	if		(SumStoneID == ID_DEMON)			{	Wld_SpawnNpcRange(self, Summoned_Demon, 1, 500);			}
	else if	(SumStoneID == ID_GOBBO_SKELETON)	{	Wld_SpawnNpcRange(self, Summoned_Gobbo_Skeleton, 1, 500);	}
	else if	(SumStoneID == ID_GOLEM)			{	Wld_SpawnNpcRange(self, Summoned_Golem, 1, 500);			}
	else if (SumStoneID == ID_SKELETON)			{	Wld_SpawnNpcRange(self, Summoned_Skeleton, 1, 500);			}
	else if (SumStoneID == ID_STONEGUARDIAN)	{	Wld_SpawnNpcRange(self, Summoned_StoneGuardian, 1, 500);	}
	else if (SumStoneID == ID_WOLF_SKELETON)	{	Wld_SpawnNpcRange(self, Summoned_Wolf_Skeleton, 1, 500);	}
	else if (SumStoneID == ID_ZOMBIE)			{	Wld_SpawnNpcRange(self, Summoned_Zombie, 1, 500);			}
	else										{	Wld_SpawnNpcRange(self, Meatbug, 1, 500);					};
	SumStoneID = 0;
	
	self.aivar[AIV_SelectSpell] += 1;
};
