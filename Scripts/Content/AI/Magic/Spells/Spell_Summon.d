///******************************************************************************************
///	SPL_Summon
///******************************************************************************************

const int SPL_Cost_Summon				=	50;

///******************************************************************************************
instance Spell_Summon (C_Spell_Proto)
{
	time_per_mana						=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_Summon (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Summon/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Summon))
	//&& (self.aivar[AIV_SumStone] > 0)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Summon()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Summon/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Summon;
	};
	/*
	if (Npc_IsPlayer(self)) 
	{		
		if (self.aivar[AIV_SumStone] == ItSu_Golem)						{	Wld_SpawnNpcRange (self, Summoned_Golem, 1, 500);		}
		else															{	Wld_SpawnNpcRange (self, Summoned_Golem, 1, 500);		};
	}
	else
	{
		if		(self.aivar[AIV_SumStone] == ItSu_Demon)				{	Wld_SpawnNpcRange (self, Demon, 1, 500);				}
		else if (self.aivar[AIV_SumStone] == ItSu_Golem)				{	Wld_SpawnNpcRange (self, Golem, 1, 500);				}
		else if (self.aivar[AIV_SumStone] == ItSu_Wolf_Skeleton)		{	Wld_SpawnNpcRange (self, Wolf_Skeleton, 1, 500);		};
	};
	*/
	self.aivar[AIV_SelectSpell] += 1;
};
