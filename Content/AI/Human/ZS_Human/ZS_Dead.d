///******************************************************************************************
///	ZS_Dead
///******************************************************************************************
func void ZS_Dead()
{
	self.aivar[AIV_RANSACKED] = false;
	self.aivar[AIV_PARTYMEMBER] = false;
	
	B_StopLookAt	(self);
	AI_StopPointAt	(self);
	
	MOD_Defeated (other, self);
	
	if (C_IAmCanyonRazor(self))
	{
		CanyonRazorBodyCount += 1;
		if (MIS_Addon_Greg_ClearCanyon == LOG_RUNNING)
		{
			B_CountCanyonRazor();
		};
	};
	
	if (self.aivar[AIV_MM_REAL_ID] == ID_SWAMPDRONE)
	{
		if (Npc_GetDistToNpc(self, other) < 300)
		{
			other.attribute[ATR_HITPOINTS] -= other.attribute[ATR_HITPOINTS]/5;
			if (Npc_IsPlayer(other))
			{
				MOD_PoisonON();
			};
		};
	};
	
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DiegoOW))
	{
		Diego_IsDead = true;
	};
	
	if (Npc_IsPlayer(other))
	{
		self.aivar[AIV_DefeatedByPlayer] = DBP_Killed;
		
		if (C_DropUnconscious())
		{
			MadKillerCount += 1; 
		};
		
		if (self.guild == GIL_GIANT_BUG)
		&& (MIS_Fester_KillBugs == LOG_RUNNING)
		{
			Festers_Giant_Bug_Killed += 1;
		};
		
		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Swamprat))
		&& (MIS_KrokoJagd == LOG_Running)
		{
			AlligatorJack_KrokosKilled += 1;
		};
		
		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Ramon))
		{
			Player_HasTalkedToBanditCamp = true;
		};
		
		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Franco))
		{
			if (MIS_HlpLogan == LOG_RUNNING)
			{
				MIS_HlpLogan = LOG_OBSOLETE;
			};
			if (MIS_HlpEdgor == LOG_RUNNING)
			{
				MIS_HlpEdgor = LOG_OBSOLETE;
			};
		};
		
		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Fortuno))
		{
			Log_SetTopicStatus (Topic_Addon_Fortuno, LOG_OBSOLETE);
		};
	};
	
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Goldminecrawler))
	{
		if (Minecrawler_Killed >= 9)
		&& (!Bloodwyn_Spawn)
		{
			AI_Teleport (Bloodwyn, "ADW_MINE_TO_MC_03");
			B_StartOtherRoutine (Bloodwyn, "MINE");
			B_GivePlayerXP(XP_BONUS_5);
			Bloodwyn_Spawn = true;
		}
		else
		{
			Minecrawler_Killed += 1;
		};
	};
	
	B_GiveTradeInv(self);
	B_GiveDeathInv(self);
	B_ClearRuneInv(self);
	
	B_DeletePetzCrime(self);
	self.aivar[AIV_NpcSawPlayerCommit] = CRIME_NONE;
	
	AI_UnequipWeapons(self);
	
	self.aivar[AIV_TAPOSITION] = false;
};

///******************************************************************************************
func int ZS_Dead_loop()
{
	if (!self.aivar[AIV_TAPOSITION])
	{
		B_DragonKillCounter(self);
		self.aivar[AIV_TAPOSITION] = true;
	};
	return LOOP_CONTINUE;
};
