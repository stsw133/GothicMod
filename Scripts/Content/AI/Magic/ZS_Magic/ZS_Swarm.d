///******************************************************************************************
/// B_StopSwarm
///******************************************************************************************
func void B_RestartSwarm()
{
	if (Npc_GetLastHitSpellID(self) == SPL_Swarm)
	{
		Npc_SetStateTime (self, 0);
	};
};

func void B_StopSwarm()
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
/// ZS_Swarm
///******************************************************************************************
func int ZS_Swarm()
{
	Npc_PercEnable	(self, PERC_ASSESSMAGIC, B_RestartSwarm);
	Npc_StopAni		(self, "S_SWARM_VICTIM");
	Npc_ClearAIQueue(self);
	AI_StandUp		(self);
	
	if (!C_BodyStateContains(self, BS_UNCONSCIOUS))
	{
		AI_PlayAniBS (self, "T_STAND_2_SWARM_VICTIM", BS_UNCONSCIOUS);
	};
	
	self.aivar[AIV_MagicStateTime] = 0;
};

func int ZS_Swarm_Loop()
{
	if (Npc_GetStateTime(self) > SPL_TIME_Swarm)
	{
		B_StopSwarm();
		return LOOP_END;
	};
	
	if (Npc_GetStateTime(self) != self.aivar[AIV_MagicStateTime])
	{
		if		(Npc_GetStateTime(self) == 2)	{	B_Say (self, other, "$RunAway");	}
		else if	(Npc_GetStateTime(self) == 6)	{	B_Say (self, other, "$Aargh_2");	}
		else if	(Npc_GetStateTime(self) == 7)	{	B_Say (self, other, "$Aargh_3");	}
		else if	(Npc_GetStateTime(self) == 8)	{	B_Say (self, other, "$Aargh_1");	};
		
		self.aivar[AIV_MagicStateTime] = Npc_GetStateTime(self);
		
		if (self.attribute[ATR_HITPOINTS] > SPL_Damage_Swarm)
		{
			B_MagicHurtNpc (other, self, SPL_Damage_Swarm);
		}
		else
		{
			B_MagicHurtNpc (other, self, self.attribute[ATR_HITPOINTS] - 1);
		};
	};
	
	return LOOP_CONTINUE;
};

func void ZS_Swarm_End()
{
};
