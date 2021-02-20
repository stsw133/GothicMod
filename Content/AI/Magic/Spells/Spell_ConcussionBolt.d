//******************************************************************************************
//	SPL_ConcussionBolt
//******************************************************************************************

const int SPL_Cost_ConcussionBolt		=	40;
const int SPL_Damage_ConcussionBolt		=	200;

//******************************************************************************************
INSTANCE Spell_ConcussionBolt (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_ConcussionBolt;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_ConcussionBolt (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_ConcussionBolt/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_ConcussionBolt)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_ConcussionBolt()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_ConcussionBolt/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_ConcussionBolt/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_ConcussionBolt)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_ConcussionBolt;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
