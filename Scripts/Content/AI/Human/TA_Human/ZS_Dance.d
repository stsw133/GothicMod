///******************************************************************************************
/// ZS_Dance
///******************************************************************************************
func void ZS_Dance()
{
	Perception_Set_Normal();
	
	B_ResetAll		(self);
	AI_SetWalkmode	(self, NPC_WALK);
	
	if (Npc_GetDistToWP(self,self.wp) > TA_DIST_SELFWP_MAX)
	{
		AI_GotoWP (self, self.wp);
		AI_AlignToWP(self);
	};
};

func int ZS_Dance_Loop()
{
	var int danceStyle;
	
	if (self.aivar[AIV_Gender] == ORCMALE)
	{
		danceStyle = Hlp_Random(2);
		
		if		(danceStyle == 0)	{	AI_PlayAni (self, "T_DANCE_RANDOM_1");	}
		else if	(danceStyle == 1)	{	AI_PlayAni (self, "T_DANCE_RANDOM_2");	};
	}
	else
	{
		danceStyle = Hlp_Random(9);
		
		if		(danceStyle == 0)	{	AI_PlayAni (self, "T_DANCE_01");	}
		else if	(danceStyle == 1)	{	AI_PlayAni (self, "T_DANCE_02");	}
		else if	(danceStyle == 2)	{	AI_PlayAni (self, "T_DANCE_03");	}
		else if	(danceStyle == 3)	{	AI_PlayAni (self, "T_DANCE_04");	}
		else if	(danceStyle == 4)	{	AI_PlayAni (self, "T_DANCE_05");	}
		else if	(danceStyle == 5)	{	AI_PlayAni (self, "T_DANCE_06");	}
		else if	(danceStyle == 6)	{	AI_PlayAni (self, "T_DANCE_07");	}
		else if	(danceStyle == 7)	{	AI_PlayAni (self, "T_DANCE_08");	}
		else if	(danceStyle == 8)	{	AI_PlayAni (self, "T_DANCE_09");	};
	};
	
	AI_GotoWP (self, self.wp);
	AI_AlignToWP(self);
	
	return LOOP_CONTINUE;
};

func void ZS_Dance_End()
{
	AI_StandUp(self);
};
