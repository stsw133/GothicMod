///******************************************************************************************
/// ZS_ReactToWeapon
///******************************************************************************************
func void ZS_ReactToWeapon()
{
	Perception_Set_Minimal();
	Npc_PercEnable (self, PERC_ASSESSFIGHTSOUND, B_AssessFightSound);
	
	if (B_AssessEnemy())
	{
		return;
	};
	
	/// FUNC
	AI_StandUp 		(self);
	B_LookAtNpc 	(self, other);
	B_SelectWeapon 	(self, other);
	B_TurnToNpc 	(self, other);
	
	if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_WON)
	&& (self.aivar[AIV_LastPlayerAR] != AR_NONE)
	&& (Npc_IsPlayer(other))
	{
		B_Say (self, other, "$LOOKINGFORTROUBLEAGAIN");
	}
	else if (!Player_DrawWeaponComment)
	{
		if (Npc_IsInFightMode(other, FMODE_MAGIC))
		{
			B_Say (self, other, "$STOPMAGIC");
		}
		else
		{
			B_Say (self, other, "$WEAPONDOWN");
		};
		
		Player_DrawWeaponComment = true;
	};
	
	Npc_SendPassivePerc (self, PERC_ASSESSWARN, self, other);
	
	self.aivar[AIV_TAPOSITION] = false;
	self.aivar[AIV_StateTime] = 0;
};

///******************************************************************************************
func int ZS_ReactToWeapon_Loop()
{
	if (Npc_GetDistToNpc(self, other) > PERC_DIST_INTERMEDIAT)
	{
		Npc_ClearAIQueue	(self);
		AI_RemoveWeapon		(self);
		B_StopLookAt		(self);
		return LOOP_END;
	};
	if (Npc_IsInFightMode(other, FMODE_NONE))
	{
		Npc_ClearAIQueue	(self);
		B_Say				(self, other, "$WISEMOVE");
		AI_RemoveWeapon		(self);
		B_StopLookAt		(self);
		return LOOP_END;
	};
	
	/// FUNC
	if (Npc_GetStateTime(self) > self.aivar[AIV_StateTime])
	{
		if (!Npc_CanSeeNpc(self, other))
		{
			B_TurnToNpc (self, other);
		};
		self.aivar[AIV_StateTime] += 1;
	};
	
	if (!self.aivar[AIV_TAPOSITION])
	&& (Npc_GetStateTime(self) > 5)
	{
		if (Npc_IsInFightMode(other, FMODE_MAGIC))
		{
			B_Say (self, other, "$ISAIDSTOPMAGIC");
		}
		else
		{
			B_Say (self, other, "$ISAIDWEAPONDOWN");
		};
		
		self.aivar[AIV_TAPOSITION] = true;
	};
	
	if (Npc_GetStateTime(self) > 10)
	{
		B_Attack (self, other, AR_ReactToWeapon, 0);
	};
	
	return LOOP_CONTINUE;
};

///******************************************************************************************
func void ZS_ReactToWeapon_End()
{
	B_StopLookAt(self);
	AI_StartState (self, ZS_ObservePlayer, true, "");
};
