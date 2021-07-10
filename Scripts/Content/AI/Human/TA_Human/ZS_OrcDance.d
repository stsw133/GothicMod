// ******************
// Tanzen auf WP
// ******************

func void ZS_OrcDance()
{
	Perception_Set_Normal();
	
	B_ResetAll (self);
	  
	AI_SetWalkmode		(self,	NPC_WALK);	
	
	if (Npc_GetDistToWP (self,self.wp) > TA_DIST_SELFWP_MAX) 
	{
		AI_GotoWP		(self, self.wp);
		AI_AlignToWP	(self);
	};
};

func int ZS_OrcDance_Loop()
{
	AI_PlayAni(self, "T_DANCE_RANDOM_1");
	AI_PlayAni(self, "T_DANCE_RANDOM_2");

	AI_GotoWP		(self, self.wp);
//	AI_AlignToWP    (self);
	
	return LOOP_CONTINUE;
};

func void ZS_OrcDance_End()
{
	AI_StandUp (self);
};
