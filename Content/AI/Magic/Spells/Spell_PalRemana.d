///******************************************************************************************
///	SPL_PalRemana
///******************************************************************************************

const int SPL_Cost_PalRemana			=	1;
const int SPL_Restore_PalRemana			=	100;
const int SPL_Time_PalRemana			=	240;

var int SPL_TimeToRestore_PalRemana;

///******************************************************************************************
INSTANCE Spell_PalRemana (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_PalRemana (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PalRemana/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PalRemana)
	{
		if (!Npc_GetActiveSpellIsScroll(self)) && (SPL_TimeToRestore_PalRemana > 0)
		{
			Print_ExtPrcnt (-1, 50, ConcatStrings(IntToString(SPL_TimeToRestore_PalRemana), NAME_SecToRestore), FONT_ScreenSmall, COL_Spells, TIME_Print * 1000);
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

func void Spell_Cast_PalRemana()
{
/*
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PalRemana/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalRemana/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_PalRemana)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalRemana;
	};
*/
	self.aivar[AIV_SelectSpell] += 1;
	
	
	
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_MANA, 10);
		SPL_TimeToRestore_PalRemana = SPL_Time_PalRemana - (self.damage[DAM_INDEX_MAGIC]*SPL_Time_PalRemana/(self.damage[DAM_INDEX_MAGIC]+500));
		Print_ExtPrcnt (-1, 50, ConcatStrings(IntToString(SPL_TimeToRestore_PalRemana), NAME_SecToRestore), FONT_ScreenSmall, COL_Spells, TIME_Print * 1000);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_MANA, self.attribute[ATR_MANA_MAX]);
	};
};
