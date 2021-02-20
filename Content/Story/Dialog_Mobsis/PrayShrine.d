//******************************************************************************************
var string concatDonation;

var int ShrineIsObsessed;
var int SHRINEHEALING;
var int SHRINESHEALED;

var int ShrineIsObsessed_NW_TROLLAREA_PATH_37;
var int ShrineIsObsessed_NW_FARM1_CONNECT_XARDAS;
var int ShrineIsObsessed_NW_TROLLAREA_PATH_66;
var int ShrineIsObsessed_NW_TROLLAREA_PATH_04;
var int ShrineIsObsessed_SAGITTA;
var int ShrineIsObsessed_NW_BIGMILL_MALAKSVERSTECK_02;
var int ShrineIsObsessed_NW_FARM3_BIGWOOD_02;

FUNC VOID C_IsShrineObsessed (var C_NPC slf)
{
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(hero))
	{
		ShrineIsObsessed = true;
		if ((Npc_GetDistToWP(hero,"NW_TROLLAREA_PATH_37") < 2000) && (ShrineIsObsessed_NW_TROLLAREA_PATH_37 == true))
		{
			if (SHRINEHEALING == true)
			{
				ShrineIsObsessed_NW_TROLLAREA_PATH_37 = false;
				ShrineIsObsessed = false;
			};
		}
		else if ((Npc_GetDistToWP(hero,"NW_FARM1_CONNECT_XARDAS") < 2000) && (ShrineIsObsessed_NW_FARM1_CONNECT_XARDAS == true))
		{
			if (SHRINEHEALING == true)
			{
				ShrineIsObsessed_NW_FARM1_CONNECT_XARDAS = false;
				ShrineIsObsessed = false;
			};
		}
		else if ((Npc_GetDistToWP(hero,"NW_TROLLAREA_PATH_66") < 2000) && (ShrineIsObsessed_NW_TROLLAREA_PATH_66 == true))
		{
			if (SHRINEHEALING == true)
			{
				ShrineIsObsessed_NW_TROLLAREA_PATH_66 = false;
				ShrineIsObsessed = false;
			};
		}
		else if ((Npc_GetDistToWP(hero,"NW_TROLLAREA_PATH_04") < 2000) && (ShrineIsObsessed_NW_TROLLAREA_PATH_04 == true))
		{
			if (SHRINEHEALING == true)
			{
				ShrineIsObsessed_NW_TROLLAREA_PATH_04 = false;
				ShrineIsObsessed = false;
			};
		}
		else if ((Npc_GetDistToWP(hero,"SAGITTA") < 2000) && (ShrineIsObsessed_SAGITTA == true))
		{
			if (SHRINEHEALING == true)
			{
				ShrineIsObsessed_SAGITTA = false;
				ShrineIsObsessed = false;
			};
		}
		else if ((Npc_GetDistToWP(hero,"NW_BIGMILL_MALAKSVERSTECK_02") < 2000) && (ShrineIsObsessed_NW_BIGMILL_MALAKSVERSTECK_02 == true))
		{
			if (SHRINEHEALING == true)
			{
				ShrineIsObsessed_NW_BIGMILL_MALAKSVERSTECK_02 = false;
				ShrineIsObsessed = false;
			};
		}
		else if ((Npc_GetDistToWP(hero,"NW_FARM3_BIGWOOD_02") < 2000) && (ShrineIsObsessed_NW_FARM3_BIGWOOD_02 == true))
		{
			if (SHRINEHEALING == true)
			{
				ShrineIsObsessed_NW_FARM3_BIGWOOD_02 = false;
				ShrineIsObsessed = false;
			};
		}
		else
		{
			ShrineIsObsessed = false;
		};
	};
};

//******************************************************************************************
FUNC INT PC_PrayShrine_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYSHRINE)
	{
		return true;
	};
};

INSTANCE PC_PrayShrine_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_PrayShrine_Condition;
	information							=	PC_PrayShrine_End_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID PC_PrayShrine_End_Info()
{
	B_ENDPRODUCTIONDIALOG();
};

//******************************************************************************************
INSTANCE PC_PrayShrine_HEALSHRINE (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_PrayShrine_HEALSHRINE_Condition;
	information							=	PC_PrayShrine_HEALSHRINE_Info;
	permanent							=	true;
	description							=	"Oczy�� �wi�tyni�";
};

FUNC INT PC_PrayShrine_HEALSHRINE_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYSHRINE)
	&& (Npc_HasItems(hero,ItMi_HolyWater))
	&& (ShrineIsObsessed == true)
	{
		return true;
	};
};

FUNC VOID PC_PrayShrine_HEALSHRINE_Info()
{
	Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
	Snd_Play("MFX_Heal_Cast");
	SHRINEHEALING = true;
	C_IsShrineObsessed(self);
	SHRINEHEALING = false;
	ShrinesHealed += 1;
	Npc_RemoveInvItem (hero, ItMi_HolyWater);
	
	if (SHRINESHEALED < 7)
	{
		B_Say (self, self, "$HEALSHRINE");
		
		var string ShrinesText;
		var string ShrinesLeft;
		ShrinesLeft = IntToString(7-SHRINESHEALED);
		ShrinesText = ConcatStrings (ShrinesLeft, PRINT_NumberLeft);
		AI_PrintScreen (ShrinesText, -1, YPOS_GOLDGIVEN, FONT_ScreenSmall, 2);
	}
	else
	{
		B_Say (self, self, "$HEALLASTSHRINE");
		MIS_Ulthar_HeileSchreine_PAL = LOG_SUCCESS;
	};
	B_GivePlayerXP(XP_BONUS_1);
	B_ENDPRODUCTIONDIALOG();
};

//******************************************************************************************
FUNC VOID PrayShrine_S1()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		C_IsShrineObsessed(self);
		if (ShrineIsObsessed == true)
		{
			Wld_PlayEffect ("DEMENTOR_FX", hero, hero, 0, 0, 0, false);
		};
		
		self.aivar[AIV_INVINCIBLE] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_PrayShrine;
		Ai_ProcessInfos(her);
	};
};

//******************************************************************************************
INSTANCE PC_PrayShrine_Paladine (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_PrayShrine_Paladine_Condition;
	information							=	PC_PrayShrine_Paladine_Info;
	permanent							=	false;
	description							=	"Zm�w modlitw� za paladyn�w";
};

FUNC INT PC_PrayShrine_Paladine_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYSHRINE)
	&& (MIS_MardukBeten == LOG_RUNNING)
	&& (Kapitel == 7)
	{
		return true;
	};
};

FUNC VOID PC_PrayShrine_Paladine_Info()
{
	PrintScreen	("...Innosie, przyjmij do siebie swoje s�ugi...", -1, 33, FONT_ScreenSmall, 3);
	PrintScreen	("...b�ogos�aw je swym ogniem i ze�lij na nie si��...", -1, 36, FONT_ScreenSmall, 4);
	PrintScreen	("...by w imi� twe dzielnie walczy� mog�y...", -1, 39, FONT_ScreenSmall, 5);
	PrintScreen	("...a� po zwyci�stwo lub �mier�, kt�rekolwiek ci milsze b�dzie.", -1, 42, FONT_ScreenSmall, 6);
};

//******************************************************************************************
INSTANCE PC_PrayShrine_BlessSword (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_PrayShrine_BlessSword_Condition;
	information							=	PC_PrayShrine_BlessSword_Info;
	permanent							=	true;
	description							=	"Konsekracja miecza (5000 szt. z�ota)";
};

FUNC INT PC_PrayShrine_BlessSword_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYSHRINE)
	&& (hero.guild == GIL_PAL)
	&& (Npc_GetDistToWP (hero, "NW_MONASTERY_CHAPELL_02") <= 500)
	&& (Npc_HasItems(hero,ItMw_1H_Blessed_01) >= 1 || Npc_HasItems(hero,ItMw_2H_Blessed_01) >= 1)
	{
		return true;
	};
};

FUNC VOID PC_PrayShrine_BlessSword_Info()
{
	if (ShrineIsObsessed == true)
	{
		SC_IsObsessed = true;
		PrintScreen	(PRINT_SCIsObsessed, -1,-1, FONT_Screen, 2);
		Snd_Play("DEM_Die");
	}
	else
	{
		if (Npc_HasItems(hero,ItMi_Gold) >= 5000)
		{
			Npc_RemoveInvItems (hero, ItMi_Gold, 5000);
			concatDonation = ConcatStrings (IntToString(5000), PRINT_GoldGegeben);
			AI_PrintScreen (concatDonation, -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);
			
			if (Npc_HasItems(hero,ItMw_2H_Blessed_01) >= 1)
			{
				Npc_RemoveInvItem (hero, ItMw_2H_Blessed_01);
				CreateInvItem (hero, ItMw_2H_Blessed_02);
				Wld_PlayEffect ("spellFX_PalHeal_ORIGIN", hero, hero, 0, 0, 0, false);
				Snd_Play("MFX_Heal_Cast");
				B_GivePlayerXP(XP_BONUS_4);
			}
			else
			{
				Npc_RemoveInvItem (hero, ItMw_1H_Blessed_01);
				CreateInvItem (hero, ItMw_1H_Blessed_02);
				Wld_PlayEffect ("spellFX_PalHeal_ORIGIN", hero, hero, 0, 0, 0, false);
				Snd_Play("MFX_Heal_Cast");
				B_GivePlayerXP(XP_BONUS_4);
			};
		}
		else
		{
			AI_PrintScreen (PRINT_NotEnoughGold, -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);
		};	
	};
};

//******************************************************************************************
INSTANCE PC_PrayShrine_BlessSword_Final (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_PrayShrine_BlessSword_Final_Condition;
	information							=	PC_PrayShrine_BlessSword_Final_Info;
	permanent							=	true;
	description							=	"Konsekracja miecza (�zy Innosa)";
};

FUNC INT PC_PrayShrine_BlessSword_Final_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYSHRINE)
	&& (hero.guild == GIL_PAL)
	&& (Npc_GetDistToWP(hero,"NW_MONASTERY_CHAPELL_02") <= 500)
	&& (PAL_KnowsAbout_FINAL_BLESSING == true)
	&& (Npc_HasItems(hero,ItMw_1H_Blessed_02) >= 1 || Npc_HasItems(hero,ItMw_2H_Blessed_02) >= 1)
	{
		return true;
	};
};

FUNC VOID PC_PrayShrine_BlessSword_FINAL_Info()
{
	if (ShrineIsObsessed == true)
	{
		SC_IsObsessed = true;
		PrintScreen	(PRINT_SCIsObsessed, -1, -1, FONT_Screen, 2);
		Snd_Play("DEM_Die");
	}
	else
	{
		if (Npc_HasItems(hero,ItPo_InnosTears) >= 1)
		{
			Npc_RemoveInvItem (hero, ItPo_InnosTears);
			
			if (Npc_HasItems(hero,ItMw_2H_Blessed_02) >= 1)
			{
				Npc_RemoveInvItem (hero, ItMw_2H_Blessed_02);
				CreateInvItem (hero, ItMw_2H_Blessed_03);
				Wld_PlayEffect ("spellFX_PalHeal_ORIGIN", hero, hero, 0, 0, 0, false);
				Snd_Play("MFX_Heal_Cast");
				B_GivePlayerXP(XP_BONUS_10);
			}
			else
			{
				Npc_RemoveInvItem (hero, ItMw_1H_Blessed_02);
				CreateInvItem (hero, ItMw_1H_Blessed_03);
				Wld_PlayEffect ("spellFX_PalHeal_ORIGIN", hero, hero, 0, 0, 0, false);
				Snd_Play("MFX_Heal_Cast");
				B_GivePlayerXP(XP_BONUS_10);
			};
		}
		else
		{
			AI_PrintScreen (PRINT_NoInnosTears, -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);
		};
	};
};
