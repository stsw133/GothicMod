///******************************************************************************************
///	B_AssessPlayer
///******************************************************************************************
func void B_AssessPlayer()
{
	/// ------ SC im Dialog ------
	if (other.aivar[AIV_INVINCIBLE])
	{
		return;
	};
	
	/// ------ Ignorieren, wenn SC tot, ohnmächtig oder in magischem Schlaf ------
	if (C_NpcIsDown(other))
	{
		return;
	};
	
	/// ------ Spieler ist in ein Monster verwandelt ------
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
			/// ------ Angriff, mit folgenden Ausnahmen ------
			if (!self.aivar[AIV_PARTYMEMBER])
			&& (self.npctype != NPCTYPE_FRIEND)
			{
				B_Attack (self, other, AR_GuildEnemy, 0);
				return;
			};
		};
	};
	
	/// ------ Spieler ist Enemy ------
	if (B_AssessEnemy())	
	{
		return;
	};
	
	/// -------- Spieler hat Banditen Rüstung an ------
	if (C_PlayerIsFakeBandit(self, other)
	&& (self.guild != GIL_BDT))
	{
		B_Attack (self, other, AR_GuildEnemy, 0);
	};
	
	/// ------ Spieler ist Mörder ------
	if (B_GetPlayerCrime(self) == CRIME_MURDER)
	&& (C_WantToAttackMurder(self, other))
	&& (Npc_GetDistToNpc(self, other) <= PERC_DIST_INTERMEDIAT)
	{
		B_Attack (self, other, AR_HumanMurderedHuman, 0);
		return;
	};
	
	/// ------ SC ist in einem Portalraum, der mir oder meinen Freuden gehört ------
	if (B_AssessEnterRoom())
	{
		return;
	};
	
	/// ------ SC hat irgendeine Waffe bereit -------
	if (B_AssessDrawWeapon())
	{
		return;
	}
	else
	{
		Player_DrawWeaponComment = false;
	};
	
	/// ------ SC schleicht -------
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
	else
	{
		if (!C_BodyStateContains(other, BS_STAND))
		{
			Player_SneakerComment = false;
		};
	};
	
	/// FLAG freimachen
	if (!C_BodyStateContains(other, BS_LIE))
	{
		Player_GetOutOfMyBedComment = false;
	};
	
	B_AssignDementorTalk(self);
	
	/// ------ Hat NSC Important Info für Spieler? Auch GUARDPASSAGE ------
	if (Npc_GetDistToNpc(self, other) <= PERC_DIST_DIALOG)
	&& (Npc_CheckInfo(self, 1))
	{
		/// ------ Gate Guards labern IMMER an ------
		if (C_NpcIsGateGuard(self))
		{
			self.aivar[AIV_NpcStartedTalk] = true;
			B_AssessTalk();
			return;
		}
		else
		{
			/// ------- Spieler fällt, schwimmt und taucht NICHT ------
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
	
	/// ------ sonst den Spieler einfach grüßen (wenn ich ihm entgegenkomme) ------
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
	
	/// ------ GuardPassage AIVAR des Spielers resetten ------
	if (C_NpcIsGateGuard(self))
	&& (Npc_GetDistToNpc(self, other) > PERC_DIST_DIALOG)
	&& (self.aivar[AIV_Guardpassage_Status] != GP_PassGate)
	{
		self.aivar[AIV_Guardpassage_Status] = GP_NONE;
	};
	
	return;
};
