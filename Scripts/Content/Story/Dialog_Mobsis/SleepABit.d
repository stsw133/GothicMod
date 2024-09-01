///******************************************************************************************
/// PC_Sleep
///******************************************************************************************
func void SLEEPABIT_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_SLEEPABIT;
		AI_ProcessInfos(her);
		
		if (bsObsession > 0)
		{
			Wld_PlayEffect ("DEMENTOR_FX", hero, hero, 0, 0, 0, false);
		};
		
		/// MOD
		//if (GregyIsYourFollower)
		//{
		//	if (Npc_GetDistToNpc(Gregy, hero) < 1000)
		//	{
		//		B_StartOtherRoutine (Gregy, "SLEEP");
		//	};
		//};
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
 		PrintScreen	(PRINT_SleepOverObsessed, -1, -1, FONT_Screen, 2);
	}
	else
	{
		PrintScreen	(PRINT_SleepOver, -1, -1, FONT_Screen, 2);
		hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
		hero.aivar[AIV_Stamina] = hero.aivar[AIV_Stamina_MAX];
	};
	
	PrintGlobals(PD_ITEM_MOBSI);
	Npc_SendPassivePerc (hero, PERC_ASSESSENTERROOM, null, hero);
	
	/// MOD
	if (GregyIsYourFollower)
	{
		if (Npc_IsDead(Gregy) && Npc_GetDistToNpc(Gregy, hero) > (1 << 31) - 1)
		{
			Wld_InsertNpc (PIR_1302_Gregy, Npc_GetNearestWP(hero));
			Gregy = Hlp_GetNpc(PIR_1302_Gregy);
		};
		PIR_1302_Gregy_Rise(Gregy);
		
		Gregy.attribute[ATR_HITPOINTS] = Gregy.attribute[ATR_HITPOINTS_MAX];
		AI_Teleport	(Gregy, Npc_GetNearestWP(hero));
	};
};
///******************************************************************************************
instance PC_NoSleep (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_NoSleep_Condition;
	information							=	PC_NoSleep_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func int PC_NoSleep_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SLEEPABIT)
	{
		return true;
	};
};
func void PC_NoSleep_Info()
{
	AI_StopProcessInfos(self);
 	Wld_StopEffect("DEMENTOR_FX");
	self.aivar[AIV_Invisible] = false;
	PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
	
	//if (GregyIsYourFollower)
	//{
	//	B_StartOtherRoutine (Gregy, "FOLLOW");
	//};
};
///******************************************************************************************
instance PC_SleepTime_8 (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_NoSleep_Condition;
	information							=	PC_SleepTime_8_Info;
	permanent							=	true;
	description							=	"Odpoczywaj do rana - 08:00";
};
func void PC_SleepTime_8_Info()
{
	PC_Sleep(8);
};
///******************************************************************************************
instance PC_SleepTime_12 (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_NoSleep_Condition;
	information							=	PC_SleepTime_12_Info;
	permanent							=	true;
	description							=	"Odpoczywaj do po³udnia - 12:00";
};
func void PC_SleepTime_12_Info()
{
	PC_Sleep(12);
};
///******************************************************************************************
instance PC_SleepTime_16 (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_NoSleep_Condition;
	information							=	PC_SleepTime_16_Info;
	permanent							=	true;
	description							=	"Odpoczywaj do popo³udnia - 16:00";
};
func void PC_SleepTime_16_Info()
{
	PC_Sleep(16);
};
///******************************************************************************************
instance PC_SleepTime_20 (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_NoSleep_Condition;
	information							=	PC_SleepTime_20_Info;
	permanent							=	true;
	description							=	"Odpoczywaj do wieczora - 20:00";
};
func void PC_SleepTime_20_Info()
{
	PC_Sleep(20);
};
///******************************************************************************************
instance PC_SleepTime_0 (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_NoSleep_Condition;
	information							=	PC_SleepTime_0_Info;
	permanent							=	true;
	description							=	"Odpoczywaj do pó³nocy - 00:00";
};
func void PC_SleepTime_0_Info()
{
	PC_Sleep(0);
};
