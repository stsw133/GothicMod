///******************************************************************************************
func void B_MM_AssessQuietSound_Sleep()
{
	if (Wld_GetGuildAttitude(self.guild, other.guild) == ATT_HOSTILE)
	{
		B_MM_AssessEnemy();
	};
};

///******************************************************************************************
/// ZS_MM_Rtn_Sleep
///******************************************************************************************
func void ZS_MM_Rtn_Sleep()
{
	Npc_PercEnable (self, PERC_ASSESSMAGIC, B_AssessMagic);
	Npc_PercEnable (self, PERC_ASSESSDAMAGE, B_MM_AssessDamage);
	Npc_PercEnable (self, PERC_ASSESSOTHERSDAMAGE, B_MM_AssessOthersDamage);
	Npc_PercEnable (self, PERC_ASSESSMURDER, B_MM_AssessOthersDamage);
	Npc_PercEnable (self, PERC_ASSESSWARN, B_MM_AssessWarn);
	Npc_PercEnable (self, PERC_ASSESSQUIETSOUND, B_MM_AssessQuietSound_Sleep);
	
	///FUNC
	AI_SetWalkmode (self, NPC_WALK);
	B_DeSynchronize();
	
	if (!Hlp_StrCmp(Npc_GetNearestWP(self), self.wp))
	{
		AI_GotoWP (self, self.WP);
	};
	if (Wld_IsFPAvailable(self, "FP_ROAM"))
	{
		AI_GotoFP (self, "FP_ROAM");
	};
	
	AI_PlayAni (self, "T_PERCEPTION");
	AI_PlayAniBS (self, "T_STAND_2_SLEEP", BS_LIE);
};

///******************************************************************************************
func int ZS_MM_Rtn_Sleep_loop()
{
	if (!Wld_IsTime(self.aivar[AIV_MM_SleepStart], 00, self.aivar[AIV_MM_SleepEnd], 00))
	&& (self.aivar[AIV_MM_SleepStart] != OnlyRoutine)
	{
		AI_StartState (self, ZS_MM_AllScheduler, true, "");
		return LOOP_END;
	};
	
	return LOOP_CONTINUE;
};

///******************************************************************************************
func void ZS_MM_Rtn_Sleep_end()
{
	AI_PlayAniBS (self, "T_SLEEP_2_STAND", BS_STAND);
};
