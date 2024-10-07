///******************************************************************************************
/// SPL_Teleport
///******************************************************************************************

const int SPL_Cost_Teleport				=	0;

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
	spelltype							=	SPELL_NEUTRAL;
	canTurnDuringInvest					=	false;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_Teleport (var int manaInvested)
{
	return SPL_SENDCAST;
};

func void Spell_Cast_Teleport()
{
	B_SpellCast (self, default, SPL_Cost_Teleport);
	
	var oCNpc o_self; o_self = Hlp_GetNpc(self);
	var int magBook; magBook = o_self.mag_Book;
	
	if (magBook > 0)
	{
		var int itHlp; itHlp = QS_GetSpellItem(magBook);
		var C_Item it; it = MEM_PtrToInst(itHlp);
		
		if		(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTe_BigFarm))			{	if (!B_TryToTeleport(NEWWORLD_ZEN, "BIGFARM"))					{ return; };	}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTe_Castle))			{	if (!B_TryToTeleport(OLDWORLD_ZEN, "OC_MAGE_CENTER"))			{ return; };	}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTe_DemonTower))		{	if (!B_TryToTeleport(OLDWORLD_ZEN, "DT_E3_03"))					{ return; };	}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTe_Khorinis))			{	if (!B_TryToTeleport(NEWWORLD_ZEN, "HAFEN"))					{ return; };	}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTe_Monastery))		{	if (!B_TryToTeleport(NEWWORLD_ZEN, "KLOSTER"))					{ return; };	}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTe_SecretChamber))	{	if (!B_TryToTeleport(NEWWORLD_ZEN, "NW_PAL_SECRETCHAMBER"))		{ return; };	}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTe_PassNW))			{	if (!B_TryToTeleport(NEWWORLD_ZEN, "LEVELCHANGE"))				{ return; };	}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTe_PassOW))			{	if (!B_TryToTeleport(OLDWORLD_ZEN, "SPAWN_MOLERAT02_SPAWN01"))	{ return; };	}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTe_Taverne))			{	if (!B_TryToTeleport(NEWWORLD_ZEN, "NW_TAVERNE_04"))			{ return; };	}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTe_Xardas))			{	if (!B_TryToTeleport(NEWWORLD_ZEN, "XARDAS"))					{ return; };	}
		else																		{	if (!B_TryToTeleport(CurrentLevel, "XXX"))						{ return; };	};
	};
};
