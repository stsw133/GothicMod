///******************************************************************************************
/// B_StopZapped
///******************************************************************************************

const int SPL_ZAPPED_DAMAGE_PER_SEC = 2;

///******************************************************************************************
func void B_StopZapped()
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
	
	AI_ContinueRoutine(self);
};

///******************************************************************************************
/// ZS_Zapped
///******************************************************************************************
func int ZS_Zapped()
{
	Npc_PercEnable (self, PERC_ASSESSSTOPMAGIC, B_StopZapped);
	
	if (!Npc_HasBodyFlag(self, BS_FLAG_INTERRUPTABLE))
	{
		AI_StandUp(self);
	}
	else
	{
		AI_StandUpQuick(self);
	};
	if (self.guild < GIL_SEPERATOR_HUM)
	{
		AI_PlayAni (self, "T_STAND_2_LIGHTNING_VICTIM");
	};
};

func int ZS_Zapped_Loop()
{
	if (Npc_GetStateTime(self) >= 1)
	{
		Npc_SetStateTime (self, 0);
		B_MagicHurtNpc (other, self, SPL_ZAPPED_DAMAGE_PER_SEC);
		
		if (self.attribute[ATR_HITPOINTS] <= 0)
		{
			Npc_ClearAIQueue(self);
			AI_StandUp		(self);
			
			return LOOP_END;
		};
		
		return LOOP_CONTINUE;
	};
};

func void ZS_Zapped_End()
{
};
