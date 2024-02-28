///******************************************************************************************
/// B_AssessTalk
///******************************************************************************************
func void B_AssessTalk()
{
	if (C_BodyStateContains(self, BS_RUN))
	&& (Npc_IsInState(self, ZS_FleeToWp))
	{
		return;
	};
	
	if (self.guild > GIL_SEPERATOR_HUM)
	&& (!Npc_CheckInfo(self, 1))
	&& (!Npc_CheckInfo(self, 0))
	{
		return;
	};
	
	if (self.guild < GIL_SEPERATOR_HUM)
	{
		if (B_AssessEnemy())
		{
			return;
		};
		
		if (B_GetPlayerCrime(self) == CRIME_MURDER)
		&& (C_WantToAttackMurder(self, other))
		{
			B_Attack (self, other, AR_HumanMurderedHuman, 0);
			return;
		};
		
		if (C_PlayerIsFakeBandit(self, other))
		&& (self.guild != GIL_BDT)
		{
			B_Attack (self, other, AR_GuildEnemy, 0);
			return;
		};
		
		if (C_RefuseTalk(self, other))
		{
			if (C_PlayerHasFakeGuild(self, other))
			{
				Npc_ClearAIQueue(self);
				AI_StartState (self, ZS_CommentFakeGuild, true, "");
				return;
			}
			else
			{
				B_Say (self, other, "$NOTNOW");
				return;
			};
		};
		
		/// MOD: ambient NPC does not want to talk
		if (self.npctype == NPCTYPE_AMBIENT)
		|| (self.npctype == NPCTYPE_OCAMBIENT)
		|| (self.npctype == NPCTYPE_BL_AMBIENT)
		{
			B_ExecAmbientInfos();
			return;
		};
	};
	
	/// FUNC
	if (!self.aivar[AIV_NpcStartedTalk])
	{
		if (C_BodyStateContains(self, BS_WALK) || C_BodyStateContains(self, BS_RUN))
		{
			B_Say (other, self, "$SC_HEYWAITASECOND");
		}
		else if (!Npc_CanSeeNpc(self, other))
		{
			var int rnd; rnd = Hlp_Random(100);
			if 		(rnd <= 25)	{	B_Say (other, self, "$SC_HEYTURNAROUND");	}
			else if (rnd <= 50)	{	B_Say (other, self, "$SC_HEYTURNAROUND02");	}
			else if (rnd <= 75)	{	B_Say (other, self, "$SC_HEYTURNAROUND03");	}
			else if (rnd <= 99) {	B_Say (other, self, "$SC_HEYTURNAROUND04");	};
		};
	};
	
	Npc_ClearAIQueue(self);
	B_ClearPerceptions(self);
	
	if (C_BodyStateContains(self, BS_SIT))
	{
		if (self.aivar[AIV_NpcStartedTalk])
		{
			AI_StandUpQuick(other);
		}
		else
		{
			AI_StandUp(other);
		};
		
		if (Npc_CanSeeNpc(self, other))
		{
			AI_StartState (self, ZS_Talk, false, "");
		}	
		else
		{
			if (Npc_IsInState(self, ZS_ObservePlayer))
			{
				AI_StandUp(self);
			};
			AI_StartState (self, ZS_Talk, true, "");
		};
		
		return;
	}
	else
	{
		if (self.aivar[AIV_NpcStartedTalk])
		{
			AI_StandUpQuick(self);
			AI_StandUpQuick(other);
		}
		else
		{
			AI_StandUp(self);
			AI_StandUp(other);
		};
		
		AI_StartState (self, ZS_Talk, false, "");
		return;
	};
};
