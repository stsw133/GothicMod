///******************************************************************************************
///	SPL_MysEcho
///******************************************************************************************

const int SPL_Cost_MysEcho			=	200;
const int SPL_Heal_MysEcho			=	2;

///******************************************************************************************
instance Spell_MysEcho (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_MysEcho (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_MysEcho/SPL_Cost_Scroll)
	|| (!Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= 1)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_MysEcho()
{
	var int heal; heal = self.attribute[ATR_HITPOINTS_MAX]-self.attribute[ATR_HITPOINTS];
	var int cost; cost = (heal/SPL_Heal_MysEcho-1)+1;
	
	if (cost > SPL_Cost_MysEcho)
	{
		cost = SPL_Cost_MysEcho;
		heal = cost * SPL_Heal_MysEcho;
	};
	if (Npc_GetActiveSpellIsScroll(self))
	{
		cost = cost/SPL_Cost_Scroll;
	};
	if (cost > self.attribute[ATR_MANA])
	{
		cost = self.attribute[ATR_MANA];
		heal = cost * SPL_Heal_MysEcho;
	};
	
	self.attribute[ATR_MANA] -= cost;
	Npc_ChangeAttribute (self, ATR_HITPOINTS, heal);
	
	self.aivar[AIV_SelectSpell] += 1;
};
