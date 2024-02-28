///******************************************************************************************
///	SPL_PalGlory
///******************************************************************************************

const int SPL_Cost_PalGlory				=	60;
const int SPL_Heal_PalGlory				=	3;

///******************************************************************************************
instance Spell_PalGlory (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_PalGlory (var int manaInvested)
{	
	if ((Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_PalGlory/SPL_Cost_Scroll)
	|| (!Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= 1))
	&& (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX])
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_PalGlory()
{
	var int heal; heal = self.attribute[ATR_HITPOINTS_MAX]-self.attribute[ATR_HITPOINTS];
	var int cost; cost = (heal/SPL_Heal_PalGlory-1)+1;
	
	if (cost > SPL_Cost_PalGlory)
	{
		cost = SPL_Cost_PalGlory;
		heal = cost * SPL_Heal_PalGlory;
	};
	if (Npc_GetActiveSpellIsScroll(self))
	{
		cost = cost/SPL_Cost_Scroll;
	};
	if (cost > self.attribute[ATR_MANA])
	{
		cost = self.attribute[ATR_MANA];
		heal = cost * SPL_Heal_PalGlory;
	};
	
	self.attribute[ATR_MANA] -= cost;
	Npc_ChangeAttribute (self, ATR_HITPOINTS, heal);
	
	self.aivar[AIV_SelectSpell] += 1;
};
