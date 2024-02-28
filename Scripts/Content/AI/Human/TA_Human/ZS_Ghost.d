///******************************************************************************************
/// ZS_Ghost
///******************************************************************************************
func void ZS_Ghost()
{
	var C_Npc Quarho; Quarho = Hlp_GetNpc(NONE_ADDON_111_Quarhodron);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Quarho))
	{
		if (!Ghost_SCKnowsHow2GetInAdanosTempel)
		{
			Npc_PercEnable (self, PERC_ASSESSTALK, B_AssessTalk);
		};
	}
	else
	{
		Npc_PercEnable (self, PERC_ASSESSTALK, B_AssessTalk);
	};
	
	Npc_PercEnable (self, PERC_ASSESSDAMAGE, B_AssessDamage);
	
	B_ResetAll		(self);
	Npc_SetPercTime	(self, 0.1);
	
	AI_StandUp		(self);
	AI_SetWalkmode	(self, NPC_WALK);
	AI_GotoWP		(self, self.wp);
	AI_AlignToWP	(self);
};

func int ZS_Ghost_Loop()
{
	if (Npc_GetStateTime(self) >= 5)
	{
		if (Npc_GetDistToNpc(self, hero) > PERC_DIST_DIALOG)
		{
			AI_AlignToWP(self);
			Npc_SetStateTime (self, 0);
		};
		
		B_RemoveGhost();
	};
	
	return LOOP_CONTINUE;
};

func void ZS_Ghost_End()
{
};

///******************************************************************************************
/// ZS_GhostWusel
///******************************************************************************************
func void ZS_GhostWusel()
{
	Npc_PercEnable (self, PERC_ASSESSTALK, B_AssessTalk);
	Npc_PercEnable (self, PERC_ASSESSDAMAGE, B_AssessDamage);
	
	B_ResetAll		(self);
	AI_StandUp		(self);
	AI_SetWalkmode	(self, NPC_WALK);
	
	if (!Hlp_StrCmp(Npc_GetNearestWP(self), self.wp))
	{
		AI_GotoWP (self, self.WP);
	};
	AI_GotoFP (self, "FP_ROAM");
};

func int ZS_GhostWusel_Loop()
{
	if (Npc_GetStateTime(self) >= 3)
	{
		if (Npc_IsOnFP(self, "FP_ROAM"))
		{
			if (Wld_IsNextFPAvailable(self,	"FP_ROAM"))
			{
				Npc_ClearAIQueue(self);
				AI_GotoNextFP (self, "FP_ROAM");
			};
		}
		else
		{
			if (!C_BodyStateContains(self, BS_WALK))
			&& (!C_BodyStateContains(self, BS_RUN))
			{
				AI_GotoFP (self, "FP_ROAM");
			};
		};
		
		Npc_SetStateTime (self, 0);
	};
	
	return LOOP_CONTINUE;
};

func void ZS_GhostWusel_End()
{
};
