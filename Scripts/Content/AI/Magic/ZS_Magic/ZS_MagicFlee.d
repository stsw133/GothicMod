///******************************************************************************************
/// B_StopMagicSleep
///******************************************************************************************

const int SPL_Time_Fear					=	5;

///******************************************************************************************
func int B_StopMagicFlee()
{
	Npc_PercDisable	(self, PERC_ASSESSDAMAGE);
	Npc_SetTarget	(self, other);
	AI_StartState	(self, ZS_Flee, 0, "");
};

///******************************************************************************************
/// ZS_MagicSleep
///******************************************************************************************
func void ZS_MagicFlee()
{
	if (self.guild == GIL_DRAGON)
	{
		AI_ContinueRoutine(self);
	};
	
	Npc_PercEnable (self, PERC_ASSESSDAMAGE, B_StopMagicFlee);
	Npc_PercEnable (self, PERC_ASSESSMAGIC, B_AssessMagic);
	
	if (self.aivar[AIV_Guardpassage_Status] != GP_PassGate)
	{
		self.aivar[AIV_Guardpassage_Status] = GP_NONE;
	};
	
	Npc_SetRefuseTalk	(self, 0);
	Npc_SetTempAttitude	(self, Npc_GetPermAttitude(self, hero));
	B_StopLookAt		(self);
	AI_StopPointAt		(self);
	
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
		var int randy; randy = Hlp_Random(3);
		if (randy == 0)	{	AI_PlayAniBS (self,	"T_STAND_2_FEAR_VICTIM1", BS_STAND);	};
		if (randy == 1)	{	AI_PlayAniBS (self,	"T_STAND_2_FEAR_VICTIM2", BS_STAND);	};
		if (randy == 2)	{	AI_PlayAniBS (self,	"T_STAND_2_FEAR_VICTIM3", BS_STAND);	};
	};
};

func int ZS_MagicFlee_Loop()
{
	if (Npc_GetStateTime(self) > SPL_Time_Fear)
	{
		Npc_ClearAIQueue(self);
		B_StopMagicFlee();
		//return LOOP_END;
	};
};

func void ZS_MagicFlee_End()
{
};
