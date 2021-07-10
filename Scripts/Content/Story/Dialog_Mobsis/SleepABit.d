///******************************************************************************************
///	PC_Sleep
///******************************************************************************************
func void PC_Sleep (var int t)
{
	AI_StopProcessInfos(self);
	
	PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
	self.aivar[AIV_INVINCIBLE] = false;
	
	if (Wld_IsTime(00,00,t,00))
	{
		Wld_SetTime(t,00);
	}
	else
	{
		t += 24;
		Wld_SetTime(t,00);
	};
	
	Wld_StopEffect("DEMENTOR_FX");
	
	if (SC_IsObsessed)
	{
 		PrintScreen	(PRINT_SleepOverObsessed, -1, -1, FONT_Screen, 2);
	}
	else
	{
		PrintScreen	(PRINT_SleepOver, -1, -1, FONT_Screen, 2);
		hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
		hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
	};
	
	PrintGlobals(PD_ITEM_MOBSI);
	Npc_SendPassivePerc (hero, PERC_ASSESSENTERROOM, null, hero);
};
///******************************************************************************************
func void SLEEPABIT_S1()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_SLEEPABIT;
		Ai_ProcessInfos(her);
		
		if (SC_IsObsessed)
		{
			Wld_PlayEffect ("DEMENTOR_FX", hero, hero, 0, 0, 0, false);
		};
	};
};
///******************************************************************************************
instance PC_NoSleep (c_Info)
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
	self.aivar[AIV_INVINCIBLE] = false;
	PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
};
///******************************************************************************************
instance PC_SleepTime_Morning (C_INFO)
{
	npc									=	PC_Hero;
	condition							=	PC_NoSleep_Condition;
	information							=	PC_SleepTime_Morning_Info;
	permanent							=	true;
	description							=	"Odpoczywaj do rana";
};
func void PC_SleepTime_Morning_Info()
{
	PC_Sleep(8);
};
///******************************************************************************************
instance PC_SleepTime_Noon (C_INFO)
{
	npc									=	PC_Hero;
	condition							=	PC_NoSleep_Condition;
	information							=	PC_SleepTime_Noon_Info;
	permanent							=	true;
	description							=	"Odpoczywaj do po³udnia";
};
func void PC_SleepTime_Noon_Info()
{
	PC_Sleep(12);
};
///******************************************************************************************
instance PC_SleepTime_Evening (C_INFO)
{
	npc									=	PC_Hero;
	condition							=	PC_NoSleep_Condition;
	information							=	PC_SleepTime_Evening_Info;
	permanent							=	true;
	description							=	"Odpoczywaj do nastêpnego wieczora";
};
func void PC_SleepTime_Evening_Info()
{
	PC_Sleep(20);
};
///******************************************************************************************
instance PC_SleepTime_Midnight (C_INFO)
{
	npc									=	PC_Hero;
	condition							=	PC_NoSleep_Condition;
	information							=	PC_SleepTime_Midnight_Info;
	permanent							=	true;
	description							=	"Odpoczywaj do pó³nocy";
};
func void PC_SleepTime_Midnight_Info()
{
	PC_Sleep(0);
};
