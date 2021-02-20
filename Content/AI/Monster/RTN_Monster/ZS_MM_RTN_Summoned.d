///******************************************************************************************
func void B_SummonedAssessTalk()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]);
};

func void ZS_MM_Rtn_Summoned()
{
	Npc_SetPercTime	(self,	1);
	Npc_PercEnable	(self,	PERC_ASSESSPLAYER,		B_MM_AssessPlayer);
	Npc_PercEnable	(self,	PERC_ASSESSENEMY,		B_MM_AssessEnemy);
	
	Npc_PercEnable	(self,	PERC_ASSESSMAGIC,  		B_AssessMagic);
	Npc_PercEnable	(self,	PERC_ASSESSDAMAGE,		B_MM_AssessDamage);
	Npc_PercEnable	(self,  PERC_ASSESSFIGHTSOUND, 	B_MM_AssessOthersDamage);

	Npc_PercEnable 	(self,	PERC_ASSESSTALK,		B_SummonedAssessTalk);

	B_SetAttitude (self, ATT_FRIENDLY);
	self.aivar[AIV_PARTYMEMBER] = true;

	AI_StandUp(self);
	AI_SetWalkmode (self, NPC_RUN);
};

func int ZS_MM_Rtn_Summoned_Loop()
{
	if (Npc_GetDistToNpc(self,hero) > 400)
	{
		AI_GotoNpc(self,hero);
	}
	else
	{
		if (Npc_GetStateTime(self) >= 1)
		{
			if (!Npc_CanSeeNpc(self,hero))
			{
				AI_TurnToNpc(self,hero);
			};
			
			if (self.aivar[AIV_SummonTime] != -1)
			{
				self.aivar[AIV_SummonTime] = (self.aivar[AIV_SummonTime] + Npc_GetStateTime(self));
				if (self.aivar[AIV_SummonTime] >= MONSTER_SUMMON_TIME)
				{
					Npc_ChangeAttribute (self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]);
				};
			};
			
			Npc_SetStateTime (self, 0);
		};
	};

	self.wp = Npc_GetNearestWP(self);
	return LOOP_CONTINUE;
};

func void ZS_MM_Rtn_Summoned_End()
{
};
