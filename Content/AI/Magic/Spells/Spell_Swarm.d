///******************************************************************************************
///	SPL_Swarm
///******************************************************************************************

const int SPL_Cost_Swarm				=	20;
const int SPL_Swarm_Damage				=	80;
const int SPL_Time_Swarm				=	6;

///******************************************************************************************
instance Spell_Swarm (C_Spell_Proto)
{
	time_per_mana						=	0;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Swarm (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Swarm/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Swarm)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Swarm()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Swarm/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Swarm;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
