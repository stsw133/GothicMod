//******************************************************************************************
func void B_BlitzInArsch()
{
	var int BlitzInArsch_Hitpoints;
	var int Abzug;
	
	BlitzInArsch_Hitpoints = (hero.attribute[ATR_HITPOINTS]*4) / 5;
	if (BlitzInArsch_Hitpoints < 2)
	{
		BlitzInArsch_Hitpoints = 2;
	};
	
	Abzug = hero.attribute[ATR_HITPOINTS]-BlitzInArsch_Hitpoints;
	
	if (Abzug > 0)
	{
		var string concatText1;	var string concatText2;
		concatText1 = ConcatStrings (" ", NAME_Damage);	 
		concatText2 = ConcatStrings (IntToString(Abzug), concatText1);
		AI_PrintScreen (concatText2, -1, YPOS_GoldTaken, FONT_ScreenSmall, 2);
		Wld_PlayEffect ("spellFX_BELIARSRAGE", hero, hero, 0, 0, 0, false);
	};
	
	hero.attribute[ATR_HITPOINTS] = BlitzInArsch_Hitpoints;
};
//******************************************************************************************
FUNC VOID PrayIdol_S1()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		Wld_PlayEffect ("DEMENTOR_FX", hero, hero, 0, 0, 0, false);
		self.aivar[AIV_INVINCIBLE] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_PRAYIDOL;
		Ai_ProcessInfos(her);
	};
};

//******************************************************************************************
INSTANCE PC_PrayIdol_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_PrayIdol_End_Condition;
	information							=	PC_PrayIdol_End_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC INT PC_PrayIdol_End_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYIDOL)
	{
		return true;
	};
};

FUNC VOID PC_PrayIdol_End_Info()
{
	B_ENDPRODUCTIONDIALOG();
};

//******************************************************************************************
INSTANCE PC_PrayIdol_UPGRATEBELIARSWEAPON (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_PrayIdol_UPGRATEBELIARSWEAPON_Condition;
	information							=	PC_PrayIdol_UPGRATEBELIARSWEAPON_Info;
	permanent							=	true;
	description							=	"Ulepszenie Szponu Beliara";
};

FUNC INT PC_PrayIdol_UPGRATEBELIARSWEAPON_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYIDOL)
	&& (C_ScCanUpgrateBeliarsWeapon() == true)
	&& (C_ScHasBeliarsWeapon() == true)
	{
		return true;
	};
};

FUNC VOID PC_PrayIdol_UPGRATEBELIARSWEAPON_Info()
{
	B_ClearBeliarsWeapon();
	B_UpgrateBeliarsWeapon();
};
