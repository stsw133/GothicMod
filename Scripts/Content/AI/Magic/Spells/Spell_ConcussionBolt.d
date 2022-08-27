///******************************************************************************************
///	SPL_ConcussionBolt
///******************************************************************************************

const int SPL_Cost_ConcussionBolt		=	40;
const int SPL_Damage_ConcussionBolt		=	40;
const int SPL_Scaling_ConcussionBolt	=	200;

///******************************************************************************************
instance Spell_ConcussionBolt (C_Spell_Proto)
{
	time_per_mana						=	0;
//	damage_per_level					=	SPL_Damage_ConcussionBolt;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_ConcussionBolt (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_ConcussionBolt/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_ConcussionBolt)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_ConcussionBolt()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_ConcussionBolt/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_ConcussionBolt;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
