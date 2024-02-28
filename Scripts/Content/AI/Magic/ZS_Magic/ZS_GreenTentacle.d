///******************************************************************************************
///	B_StopGreenTentacle
///******************************************************************************************
func void B_RestartGreenTentacle()
{
	if (Npc_GetLastHitSpellID(self) == SPL_GreenTentacle)
	{
		Npc_SetStateTime (self, 0);
	};
};

func void B_StopGreenTentacle()
{
	Npc_PercEnable	(self, PERC_ASSESSMAGIC, B_AssessMagic);
	Npc_ClearAIQueue(self);
	AI_StandUp		(self);
	
	if (self.guild < GIL_SEPERATOR_HUM)
	{
		B_AssessDamage();
	}
	else
	{
		Npc_SetTempAttitude (self, ATT_HOSTILE);
	};
};

///******************************************************************************************
///	ZS_GreenTentacle
///******************************************************************************************
func int ZS_GreenTentacle()
{
	Npc_PercEnable	(self, PERC_ASSESSMAGIC, B_RestartGreenTentacle);
	Npc_PercEnable	(self, PERC_ASSESSDAMAGE, B_AssessDamage);
	Npc_StopAni		(self, "s_GreententacleA_Victim");
	Npc_StopAni		(self, "s_GreententacleB_Victim");
	Npc_StopAni		(self, "s_GreententacleC_Victim");
	Npc_ClearAIQueue(self);
	AI_StandUp		(self);
	
	if (!C_BodyStateContains(self, BS_UNCONSCIOUS))
	{
		if (self.guild < GIL_SEPERATOR_HUM)
		{
			var int randy;
			if (randy == 0)	{	AI_PlayAniBS (self, "T_STAND_2_GREENTENTACLEA_VICTIM", BS_UNCONSCIOUS);	};
			if (randy == 1)	{	AI_PlayAniBS (self, "T_STAND_2_GREENTENTACLEB_VICTIM", BS_UNCONSCIOUS);	};
			if (randy == 2)	{	AI_PlayAniBS (self, "T_STAND_2_GREENTENTACLEC_VICTIM", BS_UNCONSCIOUS);	};
		}
		else
		{
			AI_PlayAniBS (self, "T_STAND_2_FREEZE_VICTIM", BS_UNCONSCIOUS);
		};
	};
};

func int ZS_GreenTentacle_Loop()
{
	if (Npc_GetStateTime(self) > SPL_TIME_GreenTentacle)
	{
		B_StopGreenTentacle();
		return LOOP_END;
	};
	
	return LOOP_CONTINUE;
};

func void ZS_GreenTentacle_End()
{
};
