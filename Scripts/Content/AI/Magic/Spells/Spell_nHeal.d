///******************************************************************************************
///	SPL_nHeal
///******************************************************************************************

const int SPL_Cost_nHeal				=	100;
const int SPL_Heal_nHeal				=	100;
const int SPL_Scaling_nHeal				=	100;

///******************************************************************************************
instance Spell_nHeal (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_nHeal (var int manaInvested)
{	
	if (self.attribute[ATR_MANA] >= 1)
	&& (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX])
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_nHeal()
{
	var int heal; heal = self.attribute[ATR_HITPOINTS_MAX]-self.attribute[ATR_HITPOINTS];
	var int power; power = SPL_Heal_nHeal + (self.attribute[ATR_POWER] * SPL_Scaling_nHeal / 100);
	var int cost; cost = (100 * heal - 1) / power + 1;
	
	/// cost > 100
	if (cost > SPL_Cost_nHeal)
	{
		cost = SPL_Cost_nHeal;
		heal = cost * power / 100;
	};
	
	/// scroll
	if (Npc_GetActiveSpellIsScroll(self))
	{
		cost /= SPL_Cost_Scroll;
	};
	
	/// cost > current mana
	if (cost > self.attribute[ATR_MANA])
	{
		cost = self.attribute[ATR_MANA];
		heal = cost * power / 100;
		
		if (Npc_GetActiveSpellIsScroll(self))
		{
			heal *= 5;
		};
	};
	
	self.attribute[ATR_MANA] -= cost;
	Npc_ChangeAttribute (self, ATR_HITPOINTS, heal);
	
	self.aivar[AIV_SelectSpell] += 1;
};
