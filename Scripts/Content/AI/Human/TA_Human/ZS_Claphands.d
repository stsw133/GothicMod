///******************************************************************************************
/// ZS_Claphands
///******************************************************************************************
func void ZS_Claphands()
{
	Perception_Set_Normal();
	
	B_ResetAll		(self);
	AI_SetWalkmode	(self, NPC_WALK);
	
	if (Npc_GetDistToWP(self, self.wp) > TA_DIST_SELFWP_MAX)
    {
		AI_GotoWP (self, self.wp);
	};
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

func int ZS_Claphands_LOOP()
{
	if (Npc_IsOnFP(self, "CLAPHANDS"))
 	{
 		AI_AlignToFP(self);
  		if (self.aivar[AIV_TAPOSITION] == NOTINPOS_WALK)
  		{
			self.aivar[AIV_TAPOSITION] = NOTINPOS;
		};
 	}
 	else if (Wld_IsFPAvailable(self, "CLAPHANDS"))
 	{
 		AI_GotoFP		(self, "CLAPHANDS");
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
	&& (Npc_IsOnFP(self, "CLAPHANDS"))
	{
		AI_AlignToFP	(self);
		AI_StandUp		(self);
		AI_PlayAni		(self, "T_STAND_2_CLAPHANDS");
		
		self.aivar[AIV_TAPOSITION] = ISINPOS;
	};
	
	return LOOP_CONTINUE;
};

func void ZS_CLAPHANDS_END()
{
	AI_PlayAni (self, "T_CLAPHANDS_2_STAND");
};
