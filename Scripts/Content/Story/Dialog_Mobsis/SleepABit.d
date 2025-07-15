///******************************************************************************************
/// MOBSI_SleepABit
///******************************************************************************************
func void SleepABit_S1()
{
	if (Npc_IsPlayer(self))
	{
		if (bsRested > 0)
		{
			AI_UseMob (self, "BEDHIGH", -1);
			Print(ConcatStrings(ConcatStrings("Nie jesteœ jeszcze dostatecznie zmêczony! Brakuje ", IntToString(bsRested)), " sekund."));
			return;
		};
		
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_SleepABit;
		AI_ProcessInfos(self);
		
		if (bsObsession > 0)
		{
			Wld_PlayEffect ("DEMENTOR_FX", hero, hero, 0, 0, 0, false);
		};
		
		/// MOD (disabled because it is bugged - Gregy does not have animation)
		//if (GregyIsYourFollower)
		//{
		//	if (Npc_GetDistToNpc(Gregy, hero) < 1000)
		//	{
		//		B_StartOtherRoutine (Gregy, "SLEEP");
		//	};
		//};
	};
};

func int PC_SleepABit_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SleepABit)
	{
		return true;
	};
};

///******************************************************************************************
func void PC_Sleep (var int t)
{
	AI_StopProcessInfos(self);
	
	PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
	self.aivar[AIV_Invisible] = false;
	
	if (Wld_IsTime(00,00, t,00))
	{
		Wld_SetTime(t,00);
	}
	else
	{
		t += 24;
		Wld_SetTime(t,00);
	};
	
	Wld_StopEffect("DEMENTOR_FX");
	
	if (bsObsession > 0)
	{
 		PrintScreen (PRINT_SleepOverObsessed, -1, -1, FONT_Screen, 2);
	}
	else
	{
		if (bsRested != IMMUNE)	{	bsRested = 400;	};	///new!!! - about 8 hours in-game
		
		hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
		hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
		PrintScreen	(PRINT_SleepOver, -1, -1, FONT_Screen, 2);
	};
	hero.aivar[AIV_Stamina] = hero.aivar[AIV_Stamina_MAX];
	
	PrintGlobals(PD_ITEM_MOBSI);
	Npc_SendPassivePerc (hero, PERC_ASSESSENTERROOM, null, hero);
	GregyTeleportIfTooFar(); /// MOD
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance PC_NoSleep (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_SleepABit_Condition;
	information							=	PC_NoSleep_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void PC_NoSleep_Info()
{
	AI_StopProcessInfos(self);
	Wld_StopEffect("DEMENTOR_FX");
	self.aivar[AIV_Invisible] = false;
	PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
	
	/// MOD (disabled because it is bugged - Gregy does not have animation)
	//if (GregyIsYourFollower)
	//{
	//	B_StartOtherRoutine (Gregy, "FOLLOW");
	//};
};

///******************************************************************************************
/// Morning
///******************************************************************************************
instance PC_SleepTime_8 (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_SleepABit_Condition;
	information							=	PC_SleepTime_8_Info;
	permanent							=	true;
	description							=	"Odpoczywaj do rana";
};
func void PC_SleepTime_8_Info()
{
	PC_Sleep(8);
};

///******************************************************************************************
/// Noon
///******************************************************************************************
instance PC_SleepTime_12 (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_SleepABit_Condition;
	information							=	PC_SleepTime_12_Info;
	permanent							=	true;
	description							=	"Odpoczywaj do po³udnia";
};
func void PC_SleepTime_12_Info()
{
	PC_Sleep(12);
};

///******************************************************************************************
/// Afternoon
///******************************************************************************************
instance PC_SleepTime_16 (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_SleepABit_Condition;
	information							=	PC_SleepTime_16_Info;
	permanent							=	true;
	description							=	"Odpoczywaj do popo³udnia";
};
func void PC_SleepTime_16_Info()
{
	PC_Sleep(16);
};

///******************************************************************************************
/// Evening
///******************************************************************************************
instance PC_SleepTime_20 (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_SleepABit_Condition;
	information							=	PC_SleepTime_20_Info;
	permanent							=	true;
	description							=	"Odpoczywaj do wieczora";
};
func void PC_SleepTime_20_Info()
{
	PC_Sleep(20);
};

///******************************************************************************************
/// Midnight
///******************************************************************************************
instance PC_SleepTime_0 (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_SleepABit_Condition;
	information							=	PC_SleepTime_0_Info;
	permanent							=	true;
	description							=	"Odpoczywaj do pó³nocy";
};
func void PC_SleepTime_0_Info()
{
	PC_Sleep(0);
};
