///******************************************************************************************
/// ZS_Stand_ArmsCrossed
///******************************************************************************************
func void ZS_Stand_ArmsCrossed()
{
	Perception_Set_Normal();
	
	B_ResetAll		(self);
	AI_SetWalkmode	(self, NPC_WALK);
	
	if (Npc_GetDistToWP(self,self.wp) > TA_DIST_SELFWP_MAX)
    {
		AI_GotoWP (self, self.wp);
	};
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

func int ZS_Stand_ArmsCrossed_loop()
{
	if (Npc_IsOnFP(self, "STAND"))
	{
		AI_AlignToFP(self);
		if (self.aivar[AIV_TAPOSITION] == NOTINPOS_WALK)
  		{
  			self.aivar[AIV_TAPOSITION] = NOTINPOS;
  		};
	}
	else if (Wld_IsFPAvailable(self, "STAND"))
	{
		AI_GotoFP		(self, "STAND");
		AI_StandUp		(self);
		AI_AlignToFP	(self);
		
		self.aivar[AIV_TAPOSITION] = NOTINPOS_WALK;
	}
	else
	{
		AI_AlignToWP(self);
		if (self.aivar[AIV_TAPOSITION] == NOTINPOS_WALK)
  		{
  			self.aivar[AIV_TAPOSITION] = NOTINPOS;
  		};
	};
	
	if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
	{
		AI_StandUp	(self);
		AI_PlayAni	(self, "T_STAND_2_LGUARD");
		
		self.aivar[AIV_TAPOSITION] = ISINPOS;
	};
	
	if (Npc_GetStateTime(self) > 5)
	&& (self.aivar[AIV_TAPOSITION] == ISINPOS)
	{
		var int random; random = Hlp_Random(7);
		
		if (random == 0)
		{
			AI_PlayAni (self, "T_LGUARD_SCRATCH");
		}
		else if (random == 1)
		{
			AI_PlayAni (self, "T_LGUARD_STRETCH");
		}
		else if (random == 2)
		{
			AI_PlayAni (self, "T_LGUARD_CHANGELEG");
		};
		
		if (Hlp_Random(200) == 1)
		&& (CurrentLevel == ADDONWORLD_ZEN)
		&& (!RavenIsDead)
		&& (self.guild != GIL_PIR)
		{
			B_EVENT_PORTAL_EARTHQUAKE();
		};
		
		Npc_SetStateTime (self, 0);
	};
	
	return LOOP_CONTINUE;
};

func void ZS_Stand_ArmsCrossed_end()
{
	AI_PlayAni (self, "T_LGUARD_2_STAND");
};
