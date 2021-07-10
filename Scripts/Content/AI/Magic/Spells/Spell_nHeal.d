///******************************************************************************************
///	SPL_nHeal
///******************************************************************************************

const int SPL_Cost_nHeal				=	50;
const int SPL_Heal_nHeal				=	100;
const int SPL_Time_nHeal				=	30;

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
	|| (self.attribute[ATR_MANA] >= SPL_Cost_nHeal/10)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_nHeal()
{
	var int cost; cost = -1;

	if (Npc_GetActiveSpellIsScroll(self))
	{
		cost = 10;
		self.attribute[ATR_MANA] -= SPL_Cost_nHeal/SPL_Cost_Scroll;
	}
	else
	{
		cost = self.attribute[ATR_MANA]/(SPL_Cost_nHeal/10);
		if (cost > 10) { cost = 10; };
		self.attribute[ATR_MANA] -= (cost * (SPL_Cost_nHeal/10));
	};
	
	self.aivar[AIV_SelectSpell] += 1;
	
	
	
	if (Npc_IsPlayer(self))
	{
		if (cost > 0)
		{
			PotionRG_ADD (ATR_HITPOINTS, cost);
		};
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, self.attribute[ATR_HITPOINTS_MAX]);
	};
};
