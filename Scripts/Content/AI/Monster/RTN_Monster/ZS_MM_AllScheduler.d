///******************************************************************************************
/// ZS_MM_AllScheduler
///******************************************************************************************
func void ZS_MM_AllScheduler()
{
	self.aivar[AIV_MM_PRIORITY] = PRIO_EAT;
	
	if (self.guild == GIL_STONEGUARDIAN && RavenIsDead)
	{
		B_KillNpc(self);
	};
	
	/// SLEEP
	if (Wld_IsTime(self.aivar[AIV_MM_SleepStart], 00, self.aivar[AIV_MM_SleepEnd], 00))
	|| (self.aivar[AIV_MM_SleepStart] == OnlyRoutine)
	{
		AI_StartState (self, ZS_MM_Rtn_Sleep, true, "");
	}
	/// REST
	else if (Wld_IsTime(self.aivar[AIV_MM_RestStart], 00, self.aivar[AIV_MM_RestEnd], 00))
	|| (self.aivar[AIV_MM_RestStart] == OnlyRoutine)
	{
		AI_StartState (self, ZS_MM_Rtn_Rest, true, "");
	}
	/// ROAM / GUARD
	else if (Wld_IsTime(self.aivar[AIV_MM_RoamStart], 00, self.aivar[AIV_MM_RoamEnd], 00))
	|| (self.aivar[AIV_MM_RoamStart] == OnlyRoutine)
	{
		if (self.aivar[AIV_MM_REAL_ID] == ID_ORCGUARDIAN)
		{
			AI_StartState (self, ZS_MM_Rtn_OrcGuard, true, "");
		}
		else
		{
			AI_StartState (self, ZS_MM_Rtn_Roam, true, "");
		};
	}
	/// EAT
	else if (Wld_IsTime(self.aivar[AIV_MM_EatGroundStart], 00, self.aivar[AIV_MM_EatGroundEnd], 00))
	|| (self.aivar[AIV_MM_EatGroundStart] == OnlyRoutine)
	{
		AI_StartState (self, ZS_MM_Rtn_EatGround, true, "");
	}
	/// WUSEL
	else if (Wld_IsTime(self.aivar[AIV_MM_WuselStart], 00, self.aivar[AIV_MM_WuselEnd], 00))
	|| (self.aivar[AIV_MM_WuselStart] == OnlyRoutine)
	{
		AI_StartState (self, ZS_MM_Rtn_Wusel, true, "");
	}
	/// SIT
	else if (Wld_IsTime(self.aivar[AIV_MM_OrcSitStart], 00, self.aivar[AIV_MM_OrcSitEnd], 00))
	|| (self.aivar[AIV_MM_OrcSitStart] == OnlyRoutine)
	{
		AI_StartState (self, ZS_MM_Rtn_OrcSit, true, "");
	}
	/// ...
	else
	{
		AI_StartState (self, ZS_MM_Rtn_Rest, true, "");
	};
};
