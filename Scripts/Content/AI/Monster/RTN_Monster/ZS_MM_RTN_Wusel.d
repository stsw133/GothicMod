///******************************************************************************************
/// ZS_MM_Rtn_Wusel
///******************************************************************************************
func void ZS_MM_Rtn_Wusel()
{
	Perception_Set_Monster_Rtn();
	
	AI_SetWalkmode (self, NPC_RUN);
	
	if (!Hlp_StrCmp(Npc_GetNearestWP(self), self.wp))
	{
		AI_GotoWP (self, self.WP);
	};
	AI_GotoFP (self, "FP_ROAM");
};

///******************************************************************************************
func int ZS_MM_Rtn_Wusel_loop()
{
	if (!Wld_IsTime(self.aivar[AIV_MM_WuselStart], 00, self.aivar[AIV_MM_WuselEnd], 00))
	&& (self.aivar[AIV_MM_WuselStart] != OnlyRoutine)
	{
		AI_StartState (self, ZS_MM_AllScheduler, true, "");
		return LOOP_END;
	};
	
	if (Npc_GetStateTime(self) >= 1)
	{
		if (Npc_IsOnFP(self, "FP_ROAM"))
		{
			if (Wld_IsNextFPAvailable(self,	"FP_ROAM"))
			{
				Npc_ClearAIQueue(self);
				AI_GotoNextFP (self, "FP_ROAM");
			};
		}
		else if (!C_BodyStateContains(self, BS_WALK))
		&& (!C_BodyStateContains(self, BS_RUN))
		{
			AI_GotoFP (self, "FP_ROAM");
		};
		
		Npc_SetStateTime (self, 0);
		
		self.aivar[AIV_TAPOSITION] = NOTINPOS;
	};
	
	return LOOP_CONTINUE;
};

///******************************************************************************************
func void ZS_MM_Rtn_Wusel_end()
{
};
