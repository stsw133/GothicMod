///******************************************************************************************
///	SPL_Teleport
///******************************************************************************************

const int SPL_Cost_Teleport				=	10;

///******************************************************************************************
func int B_PrintTeleportTooFarAway (var int Level, var string TelWP)
{
	if (Level != CurrentLevel)
	{
		PrintScreen ("Za daleko", -1, YPOS_LevelUp, FONT_ScreenSmall, TIME_ShortPrint);
		return true;
	}
	else
	{
		AI_Teleport (self, TelWP);
		AI_PlayAni (self, "T_HEASHOOT_2_STAND");
		return false;
	};
};

///******************************************************************************************
instance Spell_Teleport (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_Teleport (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Teleport/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Teleport))
	&& (self.aivar[AIV_TelStone] > 0)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Teleport()
{
	if (self.aivar[AIV_TelStone] == ItTe_MonasteryUnderground)
	{
		if (B_PrintTeleportTooFarAway(NEWWORLD_ZEN, "NW_PAL_SECRETCHAMBER"))
		{ return; };
	}
	else if (self.aivar[AIV_TelStone] == ItTe_Khorinis)
	{
		if (B_PrintTeleportTooFarAway(NEWWORLD_ZEN, "HAFEN"))
		{ return; };
	}
	else if (self.aivar[AIV_TelStone] == ItTe_Monastery)
	{
		if (B_PrintTeleportTooFarAway(NEWWORLD_ZEN, "KLOSTER"))
		{ return; };
	}
	else if (self.aivar[AIV_TelStone] == ItTe_BigFarm)
	{
		if (B_PrintTeleportTooFarAway(NEWWORLD_ZEN, "BIGFARM"))
		{ return; };
	}
	else if (self.aivar[AIV_TelStone] == ItTe_Xardas)
	{
		if (B_PrintTeleportTooFarAway(NEWWORLD_ZEN, "XARDAS"))
		{ return; };
	}
	else if (self.aivar[AIV_TelStone] == ItTe_Taverne)
	{
		if (B_PrintTeleportTooFarAway(NEWWORLD_ZEN, "NW_TAVERNE_04"))
		{ return; };
	}
	else if (self.aivar[AIV_TelStone] == ItTe_PassNW)
	{
		if (B_PrintTeleportTooFarAway(NEWWORLD_ZEN, "LEVELCHANGE"))
		{ return; };
	}
	else if (self.aivar[AIV_TelStone] == ItTe_PassOW)
	{
		if (B_PrintTeleportTooFarAway(OLDWORLD_ZEN, "SPAWN_MOLERAT02_SPAWN01"))
		{ return; };
	}
	else if (self.aivar[AIV_TelStone] == ItTe_Castle)
	{
		if (B_PrintTeleportTooFarAway(OLDWORLD_ZEN, "OC_MAGE_CENTER"))
		{ return; };
	}
	else if (self.aivar[AIV_TelStone] == ItTe_DemonTower)
	{
		if (B_PrintTeleportTooFarAway(OLDWORLD_ZEN, "DT_E3_03"))
		{ return; };
	}
	else
	{
		if (B_PrintTeleportTooFarAway(CurrentLevel, "XXX"))
		{ return; };
	};
	
	
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
