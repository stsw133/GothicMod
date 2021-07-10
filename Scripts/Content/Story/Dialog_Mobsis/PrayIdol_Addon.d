///******************************************************************************************
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
///******************************************************************************************
func void PrayIdol_S1()
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
///******************************************************************************************
func int PC_PrayIdol_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYIDOL)
	{
		return true;
	};
};
instance PC_PrayIdol_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_PrayIdol_Condition;
	information							=	PC_PrayIdol_End_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void PC_PrayIdol_End_Info()
{
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
instance PC_PrayIdol_UPGRADEBELIARSWEAPON (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_PrayIdol_UPGRADEBELIARSWEAPON_Condition;
	information							=	PC_PrayIdol_UPGRADEBELIARSWEAPON_Info;
	permanent							=	true;
	description							=	"Ulepszenie Szponu Beliara";
};
func int PC_PrayIdol_UPGRADEBELIARSWEAPON_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYIDOL)
	&& (C_ScCanUpgradeBeliarsWeapon())
	&& (C_ScHasBeliarsWeapon())
	{
		return true;
	};
};
func void PC_PrayIdol_UPGRADEBELIARSWEAPON_Info()
{
	B_ClearBeliarsWeapon();
	//Wld_PlayEffect ("spellFX_BELIARSRAGE", hero, hero, 0, 0, 0, false);
	B_UpgradeBeliarsWeapon();
};
///******************************************************************************************
instance PC_PrayIdol_PRAY (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_PrayIdol_Condition;
	information							=	PC_PrayIdol_PRAY_Info;
	permanent							=	true;
	description							=	"Specjalne zdolnoœci";
};
func void PC_PrayIdol_PRAY_Info()
{
	Info_ClearChoices(PC_PrayIdol_PRAY);

	Info_AddChoice (PC_PrayIdol_PRAY, DIALOG_BACK, PC_PrayIdol_PRAY_BACK);
	if (!DoubledFoodRegen)
	{
		Info_AddChoice (PC_PrayIdol_PRAY, "Podwójna regeneracja z jedzenia (1000 sztuk z³ota, 50% zdrowia)", PC_PrayIdol_PRAY_DoubledFoodRegen);
	};
	if (!ResistPoison)
	{
		Info_AddChoice (PC_PrayIdol_PRAY, "Odpornoœæ na zatrucie (1000 sztuk z³ota, 50% zdrowia)", PC_PrayIdol_PRAY_ResistPoison);
	};
};
///******************************************************************************************
func void PC_PrayIdol_PRAY_BACK()
{
	Info_ClearChoices(PC_PrayIdol_PRAY);
};
func void PC_PrayIdol_PRAY_ResistPoison()
{
	Wld_PlayEffect ("spellFX_BELIARSRAGE", hero, hero, 0, 0, 0, false);
	hero.attribute[ATR_HITPOINTS] -= hero.attribute[ATR_HITPOINTS_MAX]/2;
	
	if (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		Npc_RemoveInvItems (hero, ItMi_Gold, 1000);
		ResistPoison = true;
		AI_PrintScreen ("Otrzymano odpornoœæ na zatrucie!", -1, -1, FONT_Screen, 2);
	}
	else
	{
		PrintScreen (Print_NotEnoughGold, -1, -1, FONT_Screen, 2);
	};
	PC_PrayIdol_PRAY_Info();
};
func void PC_PrayIdol_PRAY_DoubledFoodRegen()
{
	Wld_PlayEffect ("spellFX_BELIARSRAGE", hero, hero, 0, 0, 0, false);
	hero.attribute[ATR_HITPOINTS] -= hero.attribute[ATR_HITPOINTS_MAX]/2;
	
	if (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		Npc_RemoveInvItems (hero, ItMi_Gold, 1000);
		DoubledFoodRegen = true;
		AI_PrintScreen ("Otrzymano podwójn¹ regeneracjê z jedzenia!", -1, -1, FONT_Screen, 2);
	}
	else
	{
		PrintScreen (Print_NotEnoughGold, -1, -1, FONT_Screen, 2);
	};
	PC_PrayIdol_PRAY_Info();
};
