///******************************************************************************************
///	B_StopMysRoot
///******************************************************************************************
/*
func void B_RestartMysRoot()
{
	if (Npc_GetLastHitSpellID(self) == SPL_MysRoot)
	{
		Npc_SetStateTime (self, 0);
	};
};

func void B_StopMysRoot()
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
///	ZS_MysRoot
///******************************************************************************************
func int ZS_MysRoot()
{
	Npc_PercEnable	(self, PERC_ASSESSMAGIC, B_RestartMysRoot);
	Npc_PercEnable	(self, PERC_ASSESSDAMAGE, B_AssessDamage);
	Npc_StopAni		(self, "S_FIRE_VICTIM");
	Npc_ClearAIQueue(self);
	AI_StandUp		(self);
	
	if (!C_BodyStateContains(self, BS_UNCONSCIOUS)) 
	{
		AI_PlayAniBS (self, "T_STAND_2_FREEZE_VICTIM", BS_UNCONSCIOUS);
	};
};

func int ZS_MysRoot_Loop()
{
	if (Npc_GetStateTime(self) > SPL_TIME_MysRoot + (other.damage[DAM_INDEX_MAGIC] * SPL_TIME_MysRoot/100))
	{
		B_StopMysRoot();
		return LOOP_END;
	};
	
	return LOOP_CONTINUE;
};

func void ZS_MysRoot_End()
{
};
*/