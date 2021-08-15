///******************************************************************************************
///	SPL_nHeal
///******************************************************************************************

const int SPL_Cost_nHeal				=	100;
const int SPL_Heal_nHeal				=	2;

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
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_nHeal/SPL_Cost_Scroll))
	|| (!Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= 1)
	{
		if (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX])
		{
			return SPL_SENDCAST;
		}
		else
		{
			Print("Użycie dozwolone tylko przy poziomie życia niższym niż 100%");
		};
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_nHeal()
{
	var int heal; heal = self.attribute[ATR_HITPOINTS_MAX]-self.attribute[ATR_HITPOINTS];
	var int cost; cost = (heal/SPL_Heal_nHeal-1)+1;
	
	if (cost > SPL_Cost_nHeal)
	{
		cost = SPL_Cost_nHeal;
		heal = cost * SPL_Heal_nHeal;
	};
	if (Npc_GetActiveSpellIsScroll(self))
	{
		cost = cost/SPL_Cost_Scroll;
	};
	if (cost > self.attribute[ATR_MANA])
	{
		cost = self.attribute[ATR_MANA];
		heal = cost * SPL_Heal_nHeal;
	};
	
	self.attribute[ATR_MANA] -= cost;
	Npc_ChangeAttribute (self, ATR_HITPOINTS, heal);
	
	self.aivar[AIV_SelectSpell] += 1;
};
