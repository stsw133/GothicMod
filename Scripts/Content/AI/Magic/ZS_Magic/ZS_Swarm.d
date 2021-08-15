///******************************************************************************************
///	B_StopNecSwarm
///******************************************************************************************
func void B_RestartNecSwarm()
{
	if (Npc_GetLastHitSpellID(self) == SPL_NecSwarm)
	{
		Npc_SetStateTime (self, 0);
	};
};

func void B_StopNecSwarm()
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
///	ZS_NecSwarm
///******************************************************************************************
func int ZS_NecSwarm()
{
	Npc_PercEnable	(self, PERC_ASSESSMAGIC, B_RestartNecSwarm);
	Npc_StopAni		(self, "S_SWARM_VICTIM");
	Npc_ClearAIQueue(self);
	AI_StandUp		(self);
	
	if (!C_BodyStateContains(self, BS_UNCONSCIOUS))
	{
		AI_PlayAniBS (self, "T_STAND_2_SWARM_VICTIM", BS_UNCONSCIOUS);
	};
	
	self.aivar[AIV_SwarmStateTime] = 0;
};

func int ZS_NecSwarm_Loop()
{
	if (Npc_GetStateTime(self) > SPL_TIME_NecSwarm)
	{
		B_StopNecSwarm();
		return LOOP_END;
	};
	
	if (Npc_GetStateTime(self) != self.aivar[AIV_SwarmStateTime])
	{
		if (Npc_GetStateTime(self) == 2)
		{
			B_Say (self, other, "$RunAway");
		}
		else if (Npc_GetStateTime(self) == 6)
		{
			B_Say (self, other, "$Aargh_2");
		}
		else if (Npc_GetStateTime(self) == 7)
		{
			B_Say (self, other, "$Aargh_3");
		}
		else if (Npc_GetStateTime(self) == 8)
		{
			B_Say (self, other, "$Aargh_1");
		};
		
		self.aivar[AIV_SwarmStateTime] = Npc_GetStateTime(self);
		
		if (self.attribute[ATR_HITPOINTS] > SPL_Damage_NecSwarm)
		{
			B_MagicHurtNpc (other, self, SPL_Damage_NecSwarm);
		}
		else
		{
			B_MagicHurtNpc (other, self, self.attribute[ATR_HITPOINTS] - 1);
		};
	};
	
	return LOOP_CONTINUE;
};

func void ZS_NecSwarm_End()
{
};
/*
///******************************************************************************************
///	B_StopSwarm
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
///	ZS_Swarm
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
	
	self.aivar[AIV_SwarmStateTime] = 0;
};

func int ZS_Swarm_Loop()
{
	if (Npc_GetStateTime(self) > SPL_TIME_Swarm)
	{
		B_StopSwarm();
		return LOOP_END;
	};
	
	if (Npc_GetStateTime(self) != self.aivar[AIV_SwarmStateTime])
	{
		if (Npc_GetStateTime(self) == 2)
		{
			B_Say (self, other, "$RunAway");
		}
		else if (Npc_GetStateTime(self) == 6)
		{
			B_Say (self, other, "$Aargh_2");
		}
		else if (Npc_GetStateTime(self) == 7)
		{
			B_Say (self, other, "$Aargh_3");
		}
		else if (Npc_GetStateTime(self) == 8)
		{
			B_Say (self, other, "$Aargh_1");
		};
		
		self.aivar[AIV_SwarmStateTime] = Npc_GetStateTime(self);
		
		if (self.attribute[ATR_HITPOINTS] > SPL_Swarm_DAMAGE)
		{
			B_MagicHurtNpc (other, self, SPL_Swarm_DAMAGE);
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
*/