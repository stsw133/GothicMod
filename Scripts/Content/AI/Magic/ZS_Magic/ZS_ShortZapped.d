///******************************************************************************************
///	B_StopShortZapped
///******************************************************************************************

const int SPL_TIME_SHORTZAPPED = 2;

///******************************************************************************************
func void B_StopShortZapped()
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
///	ZS_ShortZapped
///******************************************************************************************
func int ZS_ShortZapped()
{
	Npc_PercEnable (self, PERC_ASSESSSTOPMAGIC, B_StopShortZapped);
	
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

func int ZS_ShortZapped_Loop()
{	
	if (Npc_GetStateTime(self) > SPL_TIME_SHORTZAPPED)	
	{
		B_StopShortZapped();
	};
};

func void ZS_ShortZapped_End()
{
};
