///******************************************************************************************

var int PrayDay;
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

///******************************************************************************************
func void C_IsShrineObsessed (var C_NPC slf)
{
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(hero))
	{
		ShrineIsObsessed = true;
		if ((Npc_GetDistToWP(hero, "NW_TROLLAREA_PATH_37") < 2000) && ShrineIsObsessed_NW_TROLLAREA_PATH_37)
		{
			if (SHRINEHEALING)
			{
				ShrineIsObsessed_NW_TROLLAREA_PATH_37 = false;
				ShrineIsObsessed = false;
			};
		}
		else if ((Npc_GetDistToWP(hero, "NW_FARM1_CONNECT_XARDAS") < 2000) && ShrineIsObsessed_NW_FARM1_CONNECT_XARDAS)
		{
			if (SHRINEHEALING)
			{
				ShrineIsObsessed_NW_FARM1_CONNECT_XARDAS = false;
				ShrineIsObsessed = false;
			};
		}
		else if ((Npc_GetDistToWP(hero, "NW_TROLLAREA_PATH_66") < 2000) && ShrineIsObsessed_NW_TROLLAREA_PATH_66)
		{
			if (SHRINEHEALING)
			{
				ShrineIsObsessed_NW_TROLLAREA_PATH_66 = false;
				ShrineIsObsessed = false;
			};
		}
		else if ((Npc_GetDistToWP(hero, "NW_TROLLAREA_PATH_04") < 2000) && ShrineIsObsessed_NW_TROLLAREA_PATH_04)
		{
			if (SHRINEHEALING)
			{
				ShrineIsObsessed_NW_TROLLAREA_PATH_04 = false;
				ShrineIsObsessed = false;
			};
		}
		else if ((Npc_GetDistToWP(hero, "SAGITTA") < 2000) && ShrineIsObsessed_SAGITTA)
		{
			if (SHRINEHEALING)
			{
				ShrineIsObsessed_SAGITTA = false;
				ShrineIsObsessed = false;
			};
		}
		else if ((Npc_GetDistToWP(hero, "NW_BIGMILL_MALAKSVERSTECK_02") < 2000) && ShrineIsObsessed_NW_BIGMILL_MALAKSVERSTECK_02)
		{
			if (SHRINEHEALING)
			{
				ShrineIsObsessed_NW_BIGMILL_MALAKSVERSTECK_02 = false;
				ShrineIsObsessed = false;
			};
		}
		else if ((Npc_GetDistToWP(hero, "NW_FARM3_BIGWOOD_02") < 2000) && ShrineIsObsessed_NW_FARM3_BIGWOOD_02)
		{
			if (SHRINEHEALING)
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
///******************************************************************************************
/// PrayShrine: end
///******************************************************************************************
func int PC_PrayShrine_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYSHRINE)
	{
		return true;
	};
};
instance PC_PrayShrine_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_PrayShrine_Condition;
	information							=	PC_PrayShrine_End_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void PC_PrayShrine_End_Info()
{
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
/// PrayShrine: heal shrine
///******************************************************************************************
instance PC_PrayShrine_HEALSHRINE (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_PrayShrine_HEALSHRINE_Condition;
	information							=	PC_PrayShrine_HEALSHRINE_Info;
	permanent							=	true;
	description							=	"Oczyœæ œwi¹tyniê";
};

func int PC_PrayShrine_HEALSHRINE_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYSHRINE)
	&& (Npc_HasItems(hero, ItMi_HolyWater))
	&& (ShrineIsObsessed)
	&& (MIS_Ulthar_HeileSchreine_PAL == LOG_RUNNING)
	{
		return true;
	};
};

func void PC_PrayShrine_HEALSHRINE_Info()
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
		ShrinesLeft = IntToString(7 - SHRINESHEALED);
		ShrinesText = ConcatStrings (ShrinesLeft, PRINT_NumberLeft);
		AI_PrintScreen (ShrinesText, -1, YPOS_GOLDGIVEN, FONT_ScreenSmall, 2);
	}
	else
	{
		B_Say (self, self, "$HEALLASTSHRINE");
		MIS_Ulthar_HeileSchreine_PAL = LOG_SUCCESS;
	};
	B_GivePlayerExp(100);
	B_ENDPRODUCTIONDIALOG();
}; 
///******************************************************************************************
func void PrayShrine_S1()
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
///******************************************************************************************
/// PrayShrine: paladine
///******************************************************************************************
instance PC_PrayShrine_Paladine (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_PrayShrine_Paladine_Condition;
	information							=	PC_PrayShrine_Paladine_Info;
	permanent							=	false;
	description							=	"Zmów modlitwê za paladynów";
};

func int PC_PrayShrine_Paladine_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYSHRINE)
	&& (MIS_MardukBeten == LOG_RUNNING)
	&& (Kapitel == 7)
	{
		return true;
	};
};

func void PC_PrayShrine_Paladine_Info()
{
	PrintScreen ("...Innosie, przyjmij do siebie swoje s³ugi...", -1, 33, FONT_ScreenSmall, 3);
	PrintScreen ("...b³ogos³aw je swym ogniem i zeœlij na nie si³ê...", -1, 36, FONT_ScreenSmall, 4);
	PrintScreen ("...by w imiê twe dzielne walczyæ mog³y... ", -1, 39, FONT_ScreenSmall, 5);
	PrintScreen ("...a¿ po zwyciêstwo lub œmieræ, którekolwiek ci milsze bêdzie.", -1, 42, FONT_ScreenSmall, 6);
};
///******************************************************************************************
/// PrayShrine: bless sword
///******************************************************************************************
instance PC_PrayShrine_BlessSword (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_PrayShrine_BlessSword_Condition;
	information							=	PC_PrayShrine_BlessSword_Info;
	permanent							=	true;
	description							=	"Konsekracja miecza (5000 szt. z³ota)";
};

func int PC_PrayShrine_BlessSword_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYSHRINE)
	&& (hero.guild == GIL_PAL)
	&& (Npc_GetDistToWP (hero,"NW_MONASTERY_CHAPELL_02") <= 500)
	&& ((Npc_HasItems(hero, ItMw_1H_Blessed_01) >= 1) || (Npc_HasItems(hero, ItMw_2H_Blessed_01) >= 1))
	{
		return true;
	};
};

func void PC_PrayShrine_BlessSword_Info()
{
	if (ShrineIsObsessed)
	{
		bsObsession += 1;
		PrintScreen	(PRINT_SCIsObsessed, -1, -1, FONT_Screen, 2);
		Snd_Play("DEM_Die");
	}
	else if (Npc_HasItems(hero, ItMi_Gold) >= 5000)
	{
		Npc_RemoveInvItems (hero, ItMi_Gold, 5000);
		
		var string concatDonation; concatDonation = ConcatStrings (IntToString(5000), PRINT_GoldGegeben);
		AI_PrintScreen (concatDonation, -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);
		
		if (Npc_HasItems(hero, ItMw_2H_Blessed_01) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMw_2H_Blessed_01);
			CreateInvItem (hero, ItMw_2H_Blessed_02);
			Wld_PlayEffect ("spellFX_PalHeal_ORIGIN", hero, hero, 0, 0, 0, false);
			Snd_Play("MFX_Heal_Cast");
			B_GivePlayerExp(400);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMw_1H_Blessed_01);
			CreateInvItem (hero, ItMw_1H_Blessed_02);
			Wld_PlayEffect ("spellFX_PalHeal_ORIGIN", hero, hero, 0, 0, 0, false);
			Snd_Play("MFX_Heal_Cast");
			B_GivePlayerExp(400);
		};
	}
	else
	{
		AI_PrintScreen (PRINT_NotEnoughGold, -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);
	};
}; 
///******************************************************************************************
/// PrayShrine: bless sword final
///******************************************************************************************
instance PC_PrayShrine_BlessSword_Final (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_PrayShrine_BlessSword_Final_Condition;
	information							=	PC_PrayShrine_BlessSword_Final_Info;
	permanent							=	true;
	description							=	"Konsekracja miecza (³zy Innosa)";
};

func int PC_PrayShrine_BlessSword_Final_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYSHRINE)
	&& (hero.guild == GIL_PAL)
	&& (Npc_GetDistToWP(hero, "NW_MONASTERY_CHAPELL_02") <= 500)
	&& (PAL_KnowsAbout_FINAL_BLESSING)
	&& (Npc_HasItems(hero, ItMw_1H_Blessed_02) >= 1 || Npc_HasItems(hero, ItMw_2H_Blessed_02) >= 1)
	{
		return true;
	};
};

func void PC_PrayShrine_BlessSword_FINAL_Info()
{
	if (ShrineIsObsessed)
	{
		bsObsession += 1;
		PrintScreen	(PRINT_SCIsObsessed, -1, -1, FONT_Screen, 2);
		Snd_Play("DEM_Die");
	}
	else if (Npc_HasItems(hero, ItPo_InnosTears) >= 1)
	{
		Npc_RemoveInvItem (hero, ItPo_InnosTears);
		
		if (Npc_HasItems(hero, ItMw_2H_Blessed_02) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMw_2H_Blessed_02);
			CreateInvItem (hero, ItMw_2H_Blessed_03);
			Wld_PlayEffect ("spellFX_PalHeal_ORIGIN", hero, hero, 0, 0, 0, false);
			Snd_Play("MFX_Heal_Cast");
			B_GivePlayerExp(1000);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMw_1H_Blessed_02);
			CreateInvItem (hero, ItMw_1H_Blessed_03);
			Wld_PlayEffect ("spellFX_PalHeal_ORIGIN", hero, hero, 0, 0, 0, false);
			Snd_Play("MFX_Heal_Cast");
			B_GivePlayerExp(1000);
		};
	}
	else
	{
		AI_PrintScreen (PRINT_NoInnosTears, -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);
	};
}; 
///******************************************************************************************
/// PrayShrine: pray
///******************************************************************************************
instance PC_PrayShrine_Pray (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_PrayShrine_Condition;
	information							=	PC_PrayShrine_Pray_Info;
	permanent							=	true;
	description							=	"Módl siê";
};

func void PC_PrayShrine_Pray_Info()
{
	if (ShrineIsObsessed)
	{
		bsObsession += 1;
		PrintScreen	(PRINT_SCIsObsessed, -1, -1, FONT_Screen, 2);
		Snd_Play("DEM_Die");
	}
	else
	{
		Info_ClearChoices	(PC_PrayShrine_Pray);
		Info_AddChoice		(PC_PrayShrine_Pray, Dialog_Back, PC_PrayShrine_Pray_Back);
		
		if (PrayDay != Wld_GetDay())
		{
			Info_AddChoice (PC_PrayShrine_Pray, "Chcê siê pomodliæ.", PC_PrayShrine_Pray_NoPay);
		}
		else
		{
			Info_AddChoice (PC_PrayShrine_Pray, "Chcê siê znów dzisiaj pomodliæ.", PC_PrayShrine_Pray_NoPay);
		};
		if (PrayDay != Wld_GetDay() && Npc_HasItems(hero, ItMi_Gold) >= 10)
		{
			Info_AddChoice (PC_PrayShrine_Pray, "Chcê siê pomodliæ i z³o¿yæ ofiarê 10 sztuk z³ota.", PC_PrayShrine_Pray_SmallPay);
		};
		if (PrayDay != Wld_GetDay() && Npc_HasItems(hero, ItMi_Gold) >= 100)
		{
			Info_AddChoice (PC_PrayShrine_Pray, "Chcê siê pomodliæ i z³o¿yæ ofiarê 100 sztuk z³ota.", PC_PrayShrine_Pray_MediumPay);
		};
		if (PrayDay != Wld_GetDay() && Npc_HasItems(hero, ItMi_Gold) >= 1000)
		{
			Info_AddChoice (PC_PrayShrine_Pray, "Chcê siê pomodliæ i z³o¿yæ ofiarê 1000 sztuk z³ota.", PC_PrayShrine_Pray_BigPay);
		};
	};
}; 

///******************************************************************************************
func void PC_PrayShrine_Pray_Back()
{
	Info_ClearChoices(PC_PrayShrine_Pray);
};

const string Print_ThankfulInnos = "Innos dziêkuje ci za modlitwê.";

func void PC_PrayShrine_Pray_NoPay()
{
	PrayDay = Wld_GetDay();
	hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
	PrintScreen (Print_ThankfulInnos, -1, -1, FONT_SCREEN, 2);
	
	Info_ClearChoices(PC_PrayShrine_Pray);
};

func void PC_PrayShrine_Pray_SmallPay()
{
	Npc_RemoveInvItems (hero, ItMi_Gold, 10);
	B_GivePlayerExp(10);
	
	PrayDay = Wld_GetDay();
	hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
	PrintScreen (Print_ThankfulInnos, -1, -1, FONT_SCREEN, 2);
	
	Info_ClearChoices(PC_PrayShrine_Pray);
};

func void PC_PrayShrine_Pray_MediumPay()
{
	Npc_RemoveInvItems (hero, ItMi_Gold, 100);
	B_GivePlayerExp(100);
	
	PrayDay = Wld_GetDay();
	hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
	PrintScreen (Print_ThankfulInnos, -1, -1, FONT_SCREEN, 2);
	
	Info_ClearChoices(PC_PrayShrine_Pray);
};

func void PC_PrayShrine_Pray_BigPay()
{
	Npc_RemoveInvItems (hero, ItMi_Gold, 1000);
	B_GivePlayerExp(1000);
	
	PrayDay = Wld_GetDay();
	hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
	PrintScreen (Print_ThankfulInnos, -1, -1, FONT_SCREEN, 2);
	
	Info_ClearChoices(PC_PrayShrine_Pray);
};
