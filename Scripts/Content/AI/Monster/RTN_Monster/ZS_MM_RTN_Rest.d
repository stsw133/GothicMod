///******************************************************************************************
/// ZS_MM_Rtn_Rest
///******************************************************************************************
func void ZS_MM_Rtn_Rest()
{
	Perception_Set_Monster_Rtn();
	
	AI_SetWalkmode (self, NPC_WALK);
	B_DeSynchronize();
	
	if (!Hlp_StrCmp(Npc_GetNearestWP(self), self.wp))
	{
		AI_GotoWP (self, self.WP);
	};
	
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

///******************************************************************************************
func int ZS_MM_Rtn_Rest_Loop()
{
	if (self.guild == GIL_STONEGUARDIAN)
	&& (RavenIsDead)
	{
		B_KillNpc(self);
	};
	
	if (!Wld_IsTime(self.aivar[AIV_MM_RestStart], 00, self.aivar[AIV_MM_RestEnd], 00))
	&& (self.aivar[AIV_MM_RestStart] != OnlyRoutine)
	{
		AI_StartState (self, ZS_MM_AllScheduler, true, "");
		return LOOP_END;
	};
	
	if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
	{
		if (Wld_IsFPAvailable(self,	"FP_ROAM"))
		{
			AI_GotoFP (self, "FP_ROAM");
		};
		if (Npc_IsOnFP(self, "FP_ROAM"))
		{
			self.aivar[AIV_TAPOSITION] = ISINPOS;
		};
	}
	else if (Hlp_Random(1000) <= 5)
	{
		var int randomMove; randomMove = Hlp_Random(3);
		
		if (randomMove == 0)	{	AI_PlayAni (self, "R_ROAM1");	};
		if (randomMove == 1)	{	AI_PlayAni (self, "R_ROAM2");	};
		if (randomMove == 2)	{	AI_PlayAni (self, "R_ROAM3");	};
	};
	
	return LOOP_CONTINUE;
};

///******************************************************************************************
func void ZS_MM_Rtn_Rest_End()
{
};
