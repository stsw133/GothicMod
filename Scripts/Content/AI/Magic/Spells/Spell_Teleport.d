///******************************************************************************************
///	SPL_Teleport
///******************************************************************************************

const int SPL_Cost_Teleport				=	0;	//10

///******************************************************************************************
func int B_TryToTeleport (var int Level, var string TelWP)
{
	if (Level == CurrentLevel)
	{
		AI_Teleport	(self, TelWP);
		AI_PlayAni	(self, "T_HEASHOOT_2_STAND");
		return true;
	}
	else
	{
		PrintScreen ("Za daleko", -1, YPOS_LevelUp, FONT_ScreenSmall, TIME_ShortPrint);
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
	if (TelStoneID > 0)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_Teleport()
{
	if		(TelStoneID == ID_BigFarm)				{	if (!B_TryToTeleport(NEWWORLD_ZEN, "BIGFARM"))					{ return; };	}
	else if	(TelStoneID == ID_Castle)				{	if (!B_TryToTeleport(OLDWORLD_ZEN, "OC_MAGE_CENTER"))			{ return; };	}
	else if	(TelStoneID == ID_DemonTower)			{	if (!B_TryToTeleport(OLDWORLD_ZEN, "DT_E3_03"))					{ return; };	}
	else if	(TelStoneID == ID_Khorinis)				{	if (!B_TryToTeleport(NEWWORLD_ZEN, "HAFEN"))					{ return; };	}
	else if	(TelStoneID == ID_Monastery)			{	if (!B_TryToTeleport(NEWWORLD_ZEN, "KLOSTER"))					{ return; };	}
	else if	(TelStoneID == ID_MonasteryUnderground)	{	if (!B_TryToTeleport(NEWWORLD_ZEN, "NW_PAL_SECRETCHAMBER"))		{ return; };	}
	else if	(TelStoneID == ID_PassNW)				{	if (!B_TryToTeleport(NEWWORLD_ZEN, "LEVELCHANGE"))				{ return; };	}
	else if	(TelStoneID == ID_PassOW)				{	if (!B_TryToTeleport(OLDWORLD_ZEN, "SPAWN_MOLERAT02_SPAWN01"))	{ return; };	}
	else if	(TelStoneID == ID_Taverne)				{	if (!B_TryToTeleport(NEWWORLD_ZEN, "NW_TAVERNE_04"))			{ return; };	}
	else if	(TelStoneID == ID_Xardas)				{	if (!B_TryToTeleport(NEWWORLD_ZEN, "XARDAS"))					{ return; };	}
	else											{	if (!B_TryToTeleport(CurrentLevel, "XXX"))						{ return; };	};
	TelStoneID = 0;
	
	self.aivar[AIV_SelectSpell] += 1;
};
