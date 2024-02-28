///******************************************************************************************
func void B_AssessFollowPlayer()
{
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DiegoOW))
	{
		if (Npc_GetDistToNpc(self, hero) < self.aivar[AIV_FollowDist])
		&& (!self.aivar[AIV_TAPOSITION])
		{
			Npc_ClearAIQueue(self);
			AI_StandUp(self);
			self.aivar[AIV_TAPOSITION] = true;
		}
		else if (C_DiegoTooFar(0))
		&& (!self.aivar[AIV_TAPOSITION])
		{
			Npc_ClearAIQueue(self);
			AI_StandUp(self);
			self.aivar[AIV_TAPOSITION] = true;
			
			if (Npc_GetDistToNpc(self, hero) > PERC_DIST_DIALOG)
			{
				B_Say (self, other, "$SC_HEYWAITASECOND");
			};
		}
		else
		{
			B_AssessPlayer();
		};
		
		return;
	};
	
	if (Npc_GetDistToNpc(self, hero) < self.aivar[AIV_FollowDist])
	&& (!self.aivar[AIV_TAPOSITION])
	{
		if (!movieMode)
		{
			Npc_ClearAIQueue(self);
		};
		AI_StandUp(self);
		B_LookAtNpc(self, hero); /// new!!!
		self.aivar[AIV_TAPOSITION] = true;
	}
	else
	{
		B_AssessPlayer();
	};
};

func void B_AssessFollowFightSound()
{
	if (Npc_IsPlayer(other))
	|| (Npc_IsPlayer(victim))
	|| (other.aivar[AIV_PARTYMEMBER])
	|| (victim.aivar[AIV_PARTYMEMBER])
	{
		B_AssessFightSound();
	};
};

///******************************************************************************************
/// ZS_Follow_Player
///******************************************************************************************
func void ZS_Follow_Player()
{
	self.senses			=	SENSE_SEE|SENSE_HEAR|SENSE_SMELL;
	self.senses_range	=	2000;
	
	Npc_SetPercTime	(self, 0.3);
	
	Perception_Set_Minimal();
	
	Npc_PercEnable (self, PERC_ASSESSPLAYER, B_AssessFollowPlayer);
	Npc_PercEnable (self, PERC_ASSESSENEMY, B_AssessEnemy);
	Npc_PercEnable (self, PERC_ASSESSTALK, B_AssessTalk);
	Npc_PercEnable (self, PERC_MOVEMOB, B_MoveMob);
	Npc_PercEnable (self, PERC_ASSESSFIGHTSOUND, B_AssessFollowFightSound);
	
	B_ResetAll(self);
	AI_StandUp(self);
	if (!movieMode)
	{
		AI_SetWalkmode (self, NPC_RUN);
	};
	
	if (self.aivar[AIV_FollowDist] == 0)
	{
		self.aivar[AIV_FollowDist] = 300+Hlp_Random(300);	/// changed!!!
	};
};

func int ZS_Follow_Player_Loop()
{
	if (Npc_GetDistToNpc(self, hero) > self.aivar[AIV_FollowDist])
	{
		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DiegoOW))
		{
			if (C_DiegoTooFar(0))
			{
				if (Npc_GetStateTime(self) > 1)
				{
					B_TurnToNpc (self, hero);
					Npc_SetStateTime (self, 0);
				};
				
				return LOOP_CONTINUE;
			};
		};
		
		if (!C_BodyStateContains(self, BS_SWIM) && !movieMode)
		{
			AI_SetWalkmode (self, NPC_RUN);
		};
		
		AI_GotoNpc (self, hero);
		self.aivar[AIV_TAPOSITION] = false;
	}
	else if (Npc_GetStateTime(self) > 1)
	{
		if (!Npc_CanSeeNpc(self, hero))
		{
			B_TurnToNpc (self, hero);
		};
		
		Npc_SetStateTime (self, 0);
	};
	
	return LOOP_CONTINUE;
};

func void ZS_Follow_Player_End()
{
};
