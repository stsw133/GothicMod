///******************************************************************************************
/// ZS_FleeToWp
///******************************************************************************************
func void ZS_FleeToWp()
{
	Perception_Set_Normal();
	
	B_ResetAll(self);
	
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Cornelius))
	{
		Npc_PercDisable (self, PERC_ASSESSENTERROOM);
	};
	//B_Say_Overlay (self, other, "$RUNAWAY");
	
	AI_SetWalkmode (self, NPC_RUN);
	/// MOD
	if (self.guild < GIL_SEPERATOR_HUM && self.aivar[AIV_Gender] < ORCMALE)
	{
		Mdl_ApplyOverlayMds	(self, "HUMANS_FLEE.MDS");
	};
	
	if (Npc_GetDistToWP(self, self.wp) > TA_DIST_SELFWP_MAX)
    {
		AI_GotoWP (self, self.wp);
	};
	
	AI_AlignToWP(self);
	AI_PlayAni (self, "T_STAND_2_HGUARD");
};

func int ZS_FleeToWp_Loop()
{
	if (Npc_GetStateTime(self) > 5)
	{
		if (Hlp_Random(2))
		{
			AI_PlayAni (self, "T_HGUARD_LOOKAROUND");
		};
		Npc_SetStateTime (self, 0);
	};
	
	return LOOP_CONTINUE;
};

func int ZS_FleeToWp_End()
{
};
