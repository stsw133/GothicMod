///******************************************************************************************
/// MOBSI_GOLDHACKEN
///******************************************************************************************

var int GoldMob_01_Amount; const int GoldMob_01_AmounT_MAX = 5;
var int GoldMob_02_Amount; const int GoldMob_02_AmounT_MAX = 5;
var int GoldMob_03_Amount; const int GoldMob_03_AmounT_MAX = 5;
var int GoldMob_04_Amount; const int GoldMob_04_AmounT_MAX = 5;
var int GoldMob_05_Amount; const int GoldMob_05_AmounT_MAX = 9;
var int GoldMob_06_Amount; const int GoldMob_06_AmounT_MAX = 9;
var int GoldMob_07_Amount; const int GoldMob_07_AmounT_MAX = 9;
var int GoldMob_08_Amount; const int GoldMob_08_AmounT_MAX = 15;
var int GoldMob_09_Amount; const int GoldMob_09_AmounT_MAX = 15;
var int GoldMob_10_Amount; const int GoldMob_10_AmounT_MAX = 18;
var int GoldMob_11_Amount; const int GoldMob_11_AmounT_MAX = 18;
var int GoldMob_12_Amount; const int GoldMob_12_AmounT_MAX = 7;
var int GoldMob_13_Amount; const int GoldMob_13_AmounT_MAX = 12;
var int GoldMob_14_Amount; const int GoldMob_14_AmounT_MAX = 13;
var int GoldMob_15_Amount; const int GoldMob_15_AmounT_MAX = 14;
var int GoldMob_16_Amount; const int GoldMob_16_AmounT_MAX = 15;
var int GoldMob_17_Amount; const int GoldMob_17_AmounT_MAX = 16;
var int GoldMob_18_Amount; const int GoldMob_18_AmounT_MAX = 17;
var int GoldMob_19_Amount; const int GoldMob_19_AmounT_MAX = 18;
var int GoldMob_20_Amount; const int GoldMob_20_AmounT_MAX = 19;

///******************************************************************************************
func int B_GoldMob_Bestimmung()
{
	if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_PICK_01") && GoldMob_01_Amount_MAX > GoldMob_01_Amount)
	{
		GoldMob_01_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_PICK_02") && GoldMob_02_Amount_MAX > GoldMob_02_Amount)
	{
		GoldMob_02_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_PICK_03") && GoldMob_03_Amount_MAX > GoldMob_03_Amount)
	{
		GoldMob_03_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_PICK_04") && GoldMob_04_Amount_MAX > GoldMob_04_Amount)
	{
		GoldMob_04_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_LAGER_SIDE_PICK_01") && GoldMob_05_Amount_MAX > GoldMob_05_Amount)
	{
		GoldMob_05_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_LAGER_SIDE_PICK_02") && GoldMob_06_Amount_MAX > GoldMob_06_Amount)
	{
		GoldMob_06_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_LAGER_06") && GoldMob_07_Amount_MAX > GoldMob_07_Amount)
	{
		GoldMob_07_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_MC_PICK_01") && GoldMob_08_Amount_MAX > GoldMob_08_Amount)
	{
		GoldMob_08_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_MC_PICK_02") && GoldMob_09_Amount_MAX > GoldMob_09_Amount)
	{
		GoldMob_09_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_MC_PICK_03") && GoldMob_10_Amount_MAX > GoldMob_10_Amount)
	{
		GoldMob_10_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_MC_PICK_04") && GoldMob_11_Amount_MAX > GoldMob_11_Amount)
	{
		GoldMob_11_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_09_PICK") && GoldMob_12_Amount_MAX > GoldMob_12_Amount)
	{
		GoldMob_12_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_TO_MC_04_B") && GoldMob_13_Amount_MAX > GoldMob_13_Amount)
	{
		GoldMob_13_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_PICK_06") && GoldMob_14_Amount_MAX > GoldMob_14_Amount)
	{
		GoldMob_14_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_PICK_07") && GoldMob_15_Amount_MAX > GoldMob_15_Amount)
	{
		GoldMob_15_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_PICK_08") && GoldMob_16_Amount_MAX > GoldMob_16_Amount)
	{
		GoldMob_16_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_PICK_09") && GoldMob_17_Amount_MAX > GoldMob_17_Amount)
	{
		GoldMob_17_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_19") && GoldMob_18_Amount_MAX > GoldMob_18_Amount)
	{
		GoldMob_18_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_SLAVE_01") && GoldMob_19_Amount_MAX > GoldMob_19_Amount)
	{
		GoldMob_19_Amount += 1;
		return true;
	}
	else if (Hlp_StrCmp(Npc_GetNearestWP(self),"ADW_MINE_LAGER_05") && GoldMob_20_Amount_MAX > GoldMob_20_Amount)
	{
		GoldMob_20_Amount += 1;
		return true;
	};
	
	return false;
};
func void Goldhacken_S1()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_GOLDHACKEN;
		Ai_ProcessInfos(her);
	};
};
///******************************************************************************************
/// Goldhacken Dialog abbrechen
///******************************************************************************************

var int GoldCounter;
var int Learn_by_doing;
var int Truemmer_Count;

///******************************************************************************************
instance PC_Goldhacken_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_Goldhacken_End_Condition;
	information							=	PC_Goldhacken_End_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func int PC_Goldhacken_End_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_GOLDHACKEN)
	{	
		return true;
	};
};
func void PC_Goldhacken_End_Info()
{
	Truemmer_Count = 0;
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
/// Goldhacken
///******************************************************************************************
instance PC_Goldhacken_Addon_Hour (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_Goldhacken_Addon_Hour_Condition;
	information							=	PC_Goldhacken_Addon_Hour_Info;
	permanent							=	true;
	description							=	"Od³up trochê."; 
};
func int PC_Goldhacken_Addon_Hour_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_GOLDHACKEN)
	{
		return true;
	};
};
func void PC_Goldhacken_Addon_Hour_Info()
{
	Learn_by_doing += 1;
	
	if (Learn_by_doing == 10)
	{
		B_Upgrade_Hero_HackChance(2);
	}
	else if (Learn_by_doing == 15)
	{
		B_Upgrade_Hero_HackChance(3);
	}
	else if (Learn_by_doing == 20)
	{
		B_Upgrade_Hero_HackChance(5);
	};
	
	var int CurrentChance; CurrentChance = Hlp_Random(100);
	var int MultiNugget; MultiNugget = Hlp_Random(10);
	
	if (B_GoldMob_Bestimmung())
	{
		if (CurrentChance <= Hero_HackChance)
		{
			if (GoldCounter >= 20)
			&& (MultiNugget >= 8)
			{
				CreateInvItems (hero, ItMi_GoldNugget_Addon, 3);
				PrintScreen ("Odpad³y 3 samorodki z³ota!", -1, -1, FONT_ScreenSmall, 2);
				Truemmer_Count = 0;
			}
			else if (GoldCounter >= 7)
			&& (MultiNugget >= 5)
			{
				CreateInvItems (hero, ItMi_GoldNugget_Addon, 2);
				PrintScreen ("Odpad³y 2 samorodki z³ota!", -1, -1, FONT_ScreenSmall, 2);
				Truemmer_Count = 0;
				GoldCounter += 1;
			}
			else
			{
				CreateInvItems (hero, ItMi_GoldNugget_Addon, 1);
				PrintScreen ("Odpad³ 1 samorodek z³ota!", -1, -1, FONT_ScreenSmall, 2);
				Truemmer_Count = 0;
				GoldCounter += 1;
			};
		}
		else
		{
			PrintScreen ("Kawa³ki z³ota zasypuj¹ okolicê...", -1, -1, FONT_ScreenSmall, 2);
			Truemmer_Count += 1;
		};
	}
	else
	{
		PrintScreen ("Nic nie zosta³o.", -1, -1, FONT_ScreenSmall, 2);
		B_ENDPRODUCTIONDIALOG();
	};
};
///******************************************************************************************
/// Goldhacken Trümmerschlag
///******************************************************************************************
instance PC_Goldhacken_Addon_TSchlag (C_Info)
{
	npc									=	PC_Hero;
	nr									=	997;
	condition							=	PC_Goldhacken_Addon_TSchlag_Condition;
	information							=	PC_Goldhacken_Addon_TSchlag_Info;
	permanent							=	true;
	description							=	"Mocno uderz.";
};
func int PC_Goldhacken_Addon_TSchlag_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_GOLDHACKEN)
	&& (Truemmer_Count >= 2)
	&& (Knows_Truemmerschlag)
	{	
		return true;
	};
};
func void PC_Goldhacken_Addon_TSchlag_Info()
{
	var int TruemmerChance; TruemmerChance = Hlp_Random(100);
	
	if (TruemmerChance < 5)
	{
		PrintScreen ("Nic...", -1, -1, FONT_ScreenSmall, 2);
	}
	else
	{
		Snd_Play("RAVENS_EARTHQUAKE3");
		Wld_PlayEffect ("FX_EarthQuake", self, self, 0, 0, 0, false);
		
		if (TruemmerChance >= 85)
		{
			CreateInvItems (hero, ItMi_GoldNugget_Addon, 3);
			PrintScreen ("Odpad³y 3 samorodki z³ota!", -1, -1, FONT_ScreenSmall, 2);
		}
		else if (TruemmerChance >= 50)
		{
			CreateInvItems (hero, ItMi_GoldNugget_Addon, 2);
			PrintScreen ("Odpad³y 2 samorodki z³ota!", -1, -1, FONT_ScreenSmall, 2);
		}
		else
		{
			CreateInvItems (hero, ItMi_GoldNugget_Addon, 1);
			PrintScreen ("Odpad³ 1 samorodek z³ota!", -1, -1, FONT_ScreenSmall, 2);
		};
	};
	Truemmer_Count = 0;
};
///******************************************************************************************
/// Goldhacken Chance
///******************************************************************************************
instance PC_Goldhacken_Addon_Chance (C_Info)
{
	npc									=	PC_Hero;
	nr									=	998;
	condition							=	PC_Goldhacken_Addon_Chance_Condition;
	information							=	PC_Goldhacken_Addon_Chance_Info;
	permanent							=	true;
	description							=	"(Ocena zdolnoœci)";
};
func int PC_Goldhacken_Addon_Chance_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_GOLDHACKEN)
	{
		return true;
	};
};
func void PC_Goldhacken_Addon_Chance_Info()
{
	var string ConcatText;
	
	if (Hero_HackChance < 20)
	{
		ConcatText = ConcatStrings ("nieopierzony ¿ó³todziób (", IntToString(Hero_HackChance));
	}
	else if (Hero_HackChance < 40)
	{
		ConcatText = ConcatStrings ("przeciêtny kopacz (" , IntToString(Hero_HackChance));
	}
	else if (Hero_HackChance < 55)
	{
		ConcatText = ConcatStrings ("doœwiadczony kopacz (", IntToString(Hero_HackChance));
	}
	else if (Hero_HackChance < 75)
	{
		ConcatText = ConcatStrings ("urodzony kopacz ( ", IntToString(Hero_HackChance));
	}
	else if (Hero_HackChance < 90)
	{
		ConcatText = ConcatStrings ("piekielnie dobry kopacz ( ", IntToString(Hero_HackChance));
	}
	else if (Hero_HackChance < 98)
	{
		ConcatText = ConcatStrings ("mistrz kopania ( ", IntToString(Hero_HackChance));
	}
	else
	{
		ConcatText = ConcatStrings ("guru kopaczy ( ", IntToString(Hero_HackChance));
	};
	
	ConcatText = ConcatStrings (concatText, " procent)");
	PrintScreen (concatText, -1, -1, FONT_ScreenSmall, 2);
};
