///******************************************************************************************
///	B_MagicStopBurn
///******************************************************************************************

const int SPL_MAGICBURN_DAMAGE_PER_SEC = 2;	//1

///******************************************************************************************
func void B_StopMagicBurn()
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
	
	//AI_StopFX (self, "VOB_BURN");
};	

///******************************************************************************************
///	ZS_MagicBurn
///******************************************************************************************
func void B_RestartBurn()
{
	if (Npc_GetLastHitSpellID(self) == SPL_Firerain)
	|| (Npc_GetLastHitSpellID(self) == SPL_ChargeFireball)		
	|| (Npc_GetLastHitSpellID(self) == SPL_InstantFireball)		
	|| (Npc_GetLastHitSpellID(self) == SPL_Firebolt)		
	{
		Npc_SetStateTime (self, 0);
		return;
	};
	
	if (Npc_GetLastHitSpellID(self) == SPL_IceWave)
	|| (Npc_GetLastHitSpellID(self) == SPL_IceCube)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_MagicFreeze, 0, "");
	};
};

func int ZS_MagicBurn()
{
	Npc_PercEnable (self, PERC_ASSESSSTOPMAGIC, B_StopMagicBurn);
	
	if (!Npc_HasBodyFlag(self, BS_FLAG_INTERRUPTABLE))
	{
		AI_StandUp(self);
	}
	else
	{
		AI_StandUpQuick(self);
	};
	
//	Npc_PlayAni (self, "S_FIRE_VICTIM");
};

func int ZS_MagicBurn_Loop()
{
	Npc_PercEnable (self, PERC_ASSESSMAGIC, B_RestartBurn);
	
	if (Npc_GetStateTime(self) == 1)
	{
		Npc_SetStateTime (self, 0);
		B_MagicHurtNpc (other, self, SPL_MAGICBURN_DAMAGE_PER_SEC);
	};
	
	//Npc_PlayAni (self, "S_FIRE_VICTIM");
	
	if (self.attribute[ATR_HITPOINTS] <= 0)
	{
		Npc_ClearAIQueue(self);
		AI_StandUp		(self);
		
		return LOOP_END;
	};
	
	return LOOP_CONTINUE;
};

func void ZS_MagicBurn_End()
{
};
