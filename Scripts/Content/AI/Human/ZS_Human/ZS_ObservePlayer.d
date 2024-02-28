///******************************************************************************************
/// ZS_ObservePlayer
///******************************************************************************************
func void ZS_ObservePlayer()
{
	Perception_Set_Normal();
	
	/// FUNC
	if (!C_BodystateContains(self, BS_SIT))
	{
		AI_StandUp 	(self);
		B_LookAtNpc	(self, other);
		B_TurnToNpc	(self, other);
	}
	else
	{
		B_LookAtNpc (self, other);
	};
	
	if (Npc_WasInState(self, ZS_Sleep))
	{
		B_Say (self, other, "$YOUDISTURBEDMYSLUMBER");
	};
	
	if (self.aivar[AIV_SeenLeftRoom])
	&& (Npc_IsPlayer(other))
	{
		self.aivar[AIV_SeenLeftRoom] = false;
		if (!Player_LeftRoomComment)
		{
			B_Say (self, other, "$WHATDIDYOUDOINTHERE");
			Player_LeftRoomComment = true;
		};
	};
	
	self.aivar[AIV_StateTime] = Hlp_RandomRange(1, 2);
};

///******************************************************************************************
func int ZS_ObservePlayer_Loop()
{
	if (C_BodyStateContains(other, BS_SNEAK))
	&& (!Player_SneakerComment)
	{
		Player_SneakerComment = true;
		
		AI_PointAtNpc	(self, other);
		B_Say 			(self, other, "$WHATSTHISSUPPOSEDTOBE");
		AI_StopPointAt	(self);
		
		Npc_SendPassivePerc (self, PERC_ASSESSWARN, self, other);
	};
	
	if (Npc_GetStateTime(self) > self.aivar[AIV_StateTime])
	{
		if (!C_BodystateContains(self, BS_SIT))
		{
			B_TurnToNpc (self, other);
		};
		
		self.aivar[AIV_StateTime] = Hlp_RandomRange(1, 2);
		Npc_SetStateTime (self, 0);
	};
	
	if (Npc_GetDistToNpc (self, other) > PERC_DIST_INTERMEDIAT)
	{
		Npc_ClearAIQueue(self);
		return LOOP_END;
	}
	else
	{
		return LOOP_CONTINUE;
	};
};

///******************************************************************************************
func void ZS_ObservePlayer_End()
{
	B_StopLookAt(self);
};
