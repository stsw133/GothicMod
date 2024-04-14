///******************************************************************************************
/// B_Attack
///******************************************************************************************
func void B_Attack (var C_Npc slf, var C_Npc oth, var int attack_reason, var int wait)
{
	slf.aivar[AIV_WaitBeforeAttack] = wait;
	
	if (attack_reason == AR_SuddenEnemyInferno)
	{
		slf.aivar[AIV_EnemyOverride] = false;
		Npc_SendPassivePerc	(slf, PERC_ASSESSFIGHTSOUND, slf, oth);
	};
	
	if (Npc_IsInState(slf, ZS_Talk))
	{
		slf.aivar[AIV_Invisible] = false;
		oth.aivar[AIV_Invisible] = false;
	};
	
	if (Npc_IsInState(slf, ZS_Attack))
	&& (Hlp_GetInstanceID(oth) == slf.aivar[AIV_LASTTARGET])
	{
		if (!C_NpcHasAttackReasonToKill(slf))
		&& (attack_reason > slf.aivar[AIV_ATTACKREASON])
		{
			slf.aivar[AIV_ATTACKREASON] = attack_reason;
			
			if (Npc_IsPlayer(oth))
			{
				slf.aivar[AIV_LastPlayerAR] = attack_reason;
			};
		};
	}
	else
	{
		slf.aivar[AIV_ATTACKREASON] = attack_reason;
		if (Npc_IsPlayer(oth))
		{
			slf.aivar[AIV_LastPlayerAR] = attack_reason;
		};
	};
	
	if (slf.aivar[AIV_ATTACKREASON] == AR_SheepKiller)
	{
		B_MemorizePlayerCrime (slf, oth, CRIME_SHEEPKILLER);
	};
	
	if (slf.aivar[AIV_ATTACKREASON] == AR_ReactToDamage)
	|| (slf.aivar[AIV_ATTACKREASON] == AR_ReactToWeapon)
	{
		if (!C_NpcIsToughGuy(slf))
		&& (!(Npc_IsPlayer(oth) && slf.npctype == NPCTYPE_FRIEND))
		{
			B_MemorizePlayerCrime (slf, oth, CRIME_ATTACK);
		};
	};
	
	if (slf.aivar[AIV_ATTACKREASON] == AR_Theft)
	|| (slf.aivar[AIV_ATTACKREASON] == AR_UseMob)
	{
		B_MemorizePlayerCrime (slf, oth, CRIME_THEFT);
	};
	
	if (slf.aivar[AIV_ATTACKREASON] == AR_HumanMurderedHuman)
	{
		B_MemorizePlayerCrime (slf, oth, CRIME_MURDER);
	};
	
	if (Npc_IsInState(slf, ZS_Attack))
	{
		return;
	};
	
	/// FUNC
	if (slf.aivar[AIV_ATTACKREASON] == AR_KILL)
	{
		B_SetAttitude (slf, ATT_HOSTILE);
	};
	
	if (Npc_IsPlayer(oth))
	{
		slf.aivar[AIV_LastFightAgainstPlayer] = FIGHT_CANCEL;
		slf.aivar[AIV_LastFightComment] = false;
	};
	
	if (!Npc_IsInState(slf, ZS_Talk))
	{
		Npc_ClearAIQueue(slf);
	};
	
	B_ClearPerceptions(slf);
	Npc_SetTarget (slf, oth);
	AI_StartState (slf, ZS_Attack, C_BodyStateContains(slf, BS_LIE), "");
	
	return;
};
