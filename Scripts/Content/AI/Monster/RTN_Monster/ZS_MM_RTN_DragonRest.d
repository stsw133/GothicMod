///******************************************************************************************
/// ZS_MM_Rtn_DragonRest
///******************************************************************************************
func void ZS_MM_Rtn_DragonRest()  
{
	Npc_SetPercTime	(self, 1);
	self.aivar[AIV_MM_PRIORITY] = PRIO_EAT;
	
	Perception_Set_Monster_Rtn();
	Npc_PercEnable (self, PERC_ASSESSPLAYER, B_MM_AssessPlayer);
	Npc_PercEnable (self, PERC_ASSESSTALK, B_AssessTalk);
	
	AI_SetWalkmode (self, NPC_WALK);
	B_DeSynchronize();
	
	if (!Hlp_StrCmp(Npc_GetNearestWP(self), self.wp))
	{
		AI_GotoWP (self, self.WP);
	};
	if (Wld_IsFPAvailable(self,	"FP_ROAM"))
	{
		AI_GotoFP (self, "FP_ROAM");
	}
	else
	{
		AI_AlignToWP(self);
	};
	
	self.aivar[AIV_TAPOSITION] = 0;
};

///******************************************************************************************
func int ZS_MM_Rtn_DragonRest_Loop()
{
	if (!Wld_IsTime(self.aivar[AIV_MM_RestStart], 00, self.aivar[AIV_MM_RestEnd], 00))
	&& (self.aivar[AIV_MM_RestStart] != OnlyRoutine)
	{
		AI_StartState (self, ZS_MM_AllScheduler, true, "");
		return LOOP_END;
	};
	
	if (self.guild == GIL_DRAGON)
	{
		self.aivar[AIV_TAPOSITION] += 1;
		
		if (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX])
		&& (self.aivar[AIV_TAPOSITION] >= 2)
		{
			self.attribute[ATR_HITPOINTS] += 1;
			self.aivar[AIV_TAPOSITION] = 0;
		};
	};
	
	if (Hlp_Random(1000) <= 5)
	{
		AI_StandUp(self);
		var int randomMove; randomMove = Hlp_Random(3);
		
		if (randomMove == 0)	{	AI_PlayAni (self, "R_ROAM1");	};
		if (randomMove == 1)	{	AI_PlayAni (self, "R_ROAM2");	};
		if (randomMove == 2)	{	AI_PlayAni (self, "R_ROAM3");	};
	};
	
	return LOOP_CONTINUE;
};

///******************************************************************************************
func void ZS_MM_Rtn_DragonRest_End()
{
	AI_PlayAni (self, "T_REST_2_STAND");
};
