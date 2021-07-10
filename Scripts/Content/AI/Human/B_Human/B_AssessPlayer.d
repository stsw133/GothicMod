///******************************************************************************************
///	B_AssessPlayer
///******************************************************************************************
func void B_AssessPlayer()
{
	if (other.aivar[AIV_INVINCIBLE])
	{
		return;
	};
	if (C_NpcIsDown(other))
	{
		return;
	};
	
	if (other.guild > GIL_SEPERATOR_HUM)
	{
		if (C_NpcIsGateGuard(self))
		{
			AI_StandUpQuick(self);
			B_Attack (self, other, AR_MonsterCloseToGate, 0);
			return;
		}
		else if (Wld_GetGuildAttitude(self.guild, other.guild) == ATT_HOSTILE)
		{
			if (!self.aivar[AIV_PARTYMEMBER])
			&& (self.npctype != NPCTYPE_FRIEND)
			{
				B_Attack (self, other, AR_GuildEnemy, 0);
				return;
			};
		};
	};
	
	if (B_AssessEnemy())	
	{
		return;
	};
	
	if (C_PlayerIsFakeBandit(self, other))
	&& (self.guild != GIL_BDT)
	{
		B_Attack (self, other, AR_GuildEnemy, 0);
	};
	
	if (B_GetPlayerCrime(self) == CRIME_MURDER)
	&& (C_WantToAttackMurder(self, other))
	&& (Npc_GetDistToNpc(self, other) <= PERC_DIST_INTERMEDIAT)
	{
		B_Attack (self, other, AR_HumanMurderedHuman, 0);
		return;
	};
	
	if (B_AssessEnterRoom())
	{
		return;
	};
	
	if (B_AssessDrawWeapon())
	{
		return;
	}
	else
	{
		Player_DrawWeaponComment = false;
	};
	
	if (C_BodyStateContains(other, BS_SNEAK))
	{
		if (!Npc_IsInState(self, ZS_ObservePlayer))
		&& (C_WantToReactToSneaker(self, other))
    	{
			Npc_ClearAIQueue	(self);
			B_ClearPerceptions	(self);
			AI_StartState 		(self, ZS_ObservePlayer, true, "");
			return;
    	};
	}
	else if (!C_BodyStateContains(other, BS_STAND))
	{
		Player_SneakerComment = false;
	};
	
	if (!C_BodyStateContains(other, BS_LIE))
	{
		Player_GetOutOfMyBedComment = false;
	};
	
	B_AssignDementorTalk(self);
	
	if (Npc_GetDistToNpc(self, other) <= PERC_DIST_DIALOG)
	&& (Npc_CheckInfo(self, 1))
	{
		if (C_NpcIsGateGuard(self))
		{
			self.aivar[AIV_NpcStartedTalk] = true;
			B_AssessTalk();
			return;
		}
		else
		{
			if (!C_BodyStateContains(other, BS_FALL))
			&& (!C_BodyStateContains(other, BS_SWIM))
			&& (!C_BodyStateContains(other, BS_DIVE))
			&& (B_GetPlayerCrime(self) == CRIME_NONE)
			&& (!C_RefuseTalk(self, other))
			&& (!C_PlayerHasFakeGuild(self, other))
			{
				self.aivar[AIV_NpcStartedTalk] = true;
				B_AssessTalk();
				return;
			};
		};
	};
	
	if (C_BodyStateContains(self, BS_WALK))
	&& (Npc_GetDistToNpc(self, other) <= PERC_DIST_DIALOG)
	&& (!Npc_RefuseTalk(other))
	&& (!C_NpcIsGateGuard(self))
	&& (!C_PlayerHasFakeGuild(self, other))
	{
		B_LookAtNpc 			(self, other);
		B_Say_GuildGreetings 	(self, other);
		B_StopLookAt 			(self);
		Npc_SetRefuseTalk		(other, 20);
	};
	
	if (C_NpcIsGateGuard(self))
	&& (Npc_GetDistToNpc(self, other) > PERC_DIST_DIALOG)
	&& (self.aivar[AIV_Guardpassage_Status] != GP_PassGate)
	{
		self.aivar[AIV_Guardpassage_Status] = GP_NONE;
	};
	
	return;
};
