///******************************************************************************************
///	SPL_nHeal
///******************************************************************************************

const int SPL_Cost_nHeal				=	50;
const int SPL_Heal_nHeal				=	100;
const int SPL_Time_nHeal				=	30;

var int SPL_TimeToRestore_nHeal;

///******************************************************************************************
INSTANCE Spell_nHeal (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_nHeal (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_nHeal/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_nHeal/10)
	{
		if (!Npc_GetActiveSpellIsScroll(self)) && (SPL_TimeToRestore_nHeal > 0)
		{
			Print_ExtPrcnt (-1, 50, ConcatStrings(IntToString(SPL_TimeToRestore_nHeal), NAME_SecToRestore), FONT_ScreenSmall, COL_Spells, TIME_Print * 1000);
			return SPL_SENDSTOP;
		}
		else
		{
			return SPL_SENDCAST;
		};
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_nHeal()
{
	var int cost; cost = -1;

	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_nHeal/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_nHeal/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_nHeal/10)
	{
		cost = self.attribute[ATR_MANA] / (SPL_Cost_nHeal/10);
		if (cost > 10)
		{
			cost = 10;
		};
	
		self.attribute[ATR_MANA] -= (cost * (SPL_Cost_nHeal/10));
	};
	self.aivar[AIV_SelectSpell] += 1;
	
	
	
	if (Npc_IsPlayer(self))
	{
		if (cost >= 0)
		{
			PotionRG_ADD (ATR_HITPOINTS, cost);
			SPL_TimeToRestore_nHeal = (SPL_Time_nHeal * cost) - (self.damage[DAM_INDEX_MAGIC]*(SPL_Time_nHeal * cost)/(self.damage[DAM_INDEX_MAGIC]+300));
			Print_ExtPrcnt (-1, 50, ConcatStrings(IntToString(SPL_TimeToRestore_nHeal), NAME_SecToRestore), FONT_ScreenSmall, COL_Spells, TIME_Print * 1000);
		}
		else
		{
			PotionRG_ADD (ATR_HITPOINTS, 10);
		};
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, self.attribute[ATR_HITPOINTS_MAX]);
	};
};
