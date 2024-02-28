///******************************************************************************************
/// ZS_RunToWP
///******************************************************************************************
func void ZS_RunToWP()
{
	Perception_Set_Normal();
	
	B_ResetAll		(self);
	AI_SetWalkmode	(self, NPC_RUN);
	
	if (Npc_GetDistToWP(self, self.wp) > TA_DIST_SELFWP_MAX)
    {
		AI_GotoWP (self, self.wp);
	};
	
	AI_AlignToWP(self);
	AI_PlayAni (self, "T_STAND_2_HGUARD");
};

func int ZS_RunToWP_Loop()
{
	if (Npc_GetStateTime(self) > 5)
	{
		if (Hlp_Random(2) == 0)
		{
			AI_PlayAni (self, "T_HGUARD_LOOKAROUND");
		};
		
		Npc_SetStateTime (self, 0);
	};
	
	return LOOP_CONTINUE;
};

func int ZS_RunToWP_End()
{
};
