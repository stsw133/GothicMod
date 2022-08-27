///******************************************************************************************
///	C_WantToAttackSheepKiller
///******************************************************************************************
func int C_WantToAttackSheepKiller (var C_NPC slf, var C_NPC oth)
{
	if (slf.guild == GIL_DMT)
	|| (slf.guild == GIL_STRF)
	|| (slf.guild == GIL_BDT)
	|| (slf.guild == GIL_DJG)
	{
		return false;
	};
	
	if ((slf.aivar[AIV_IgnoreCrime] & IGNORE_Sheepkiller) > 0)
	{
		return false;
	};
	
	if (Npc_IsPlayer(oth) && (slf.npctype == NPCTYPE_FRIEND))
	{
		return false;
	};
	
	if (C_NpcHasAttackReasonToKill(oth))
	{
		return false;
	};
	
	if (other.guild < GIL_SEPERATOR_HUM)
	&& (other.aivar[AIV_ATTACKREASON] != AR_NONE)
	{
		return false;
	};
	
	if (C_NpcIsGateGuard(slf))
	{
		return false;
	};
	
	return true;
};

///******************************************************************************************
///	C_WantToAttackMurder
///******************************************************************************************
func int C_WantToAttackMurder (var C_NPC slf, var C_NPC oth)
{
	if (slf.guild == GIL_DMT)
	|| (slf.guild == GIL_STRF)
	|| (slf.guild == GIL_DJG)
	|| (slf.guild == GIL_BDT)  
	{
		return false;
	};
	
	if ((slf.aivar[AIV_IgnoreCrime] & IGNORE_Murder) > 0)
	{
		return false;
	};
	
	if (Npc_IsPlayer(oth) && (slf.npctype == NPCTYPE_FRIEND))
	{
		return false;
	};
	
	if (C_NpcHasAttackReasonToKill(oth))
	{
		return false;
	};
	
	if (C_NpcIsGateGuard(slf))
	{
		return false;
	};
	
	return true;
};

///******************************************************************************************
///	C_WantToAttackThief
///******************************************************************************************
func int C_WantToAttackThief (var C_NPC slf, var C_NPC oth)
{
	if (slf.guild == GIL_DMT)
	|| (slf.guild == GIL_STRF)
	|| (slf.guild == GIL_DJG)
	{
		return false;
	};
	
	if ((slf.aivar[AIV_IgnoreCrime] & IGNORE_Theft) > 0)
	{
		return false;
	};
	
	if (slf.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)
	{
		return false;
	};
	
	if (Npc_IsPlayer(oth) && (slf.npctype == NPCTYPE_FRIEND))
	{
		return false;
	};
	
	if (C_NpcIsGateGuard(slf))
	{
		return false;
	};
	
	return true;
};

///******************************************************************************************
///	C_WantToAttackRoomIntruder
///******************************************************************************************
func int C_WantToAttackRoomIntruder (var C_NPC slf)
{
	if (self.guild == GIL_MIL)
	|| (self.guild == GIL_PAL)
	|| (self.guild == GIL_SLD)
	|| (self.guild == GIL_DJG)
	|| (B_GetPlayerCrime(self) != CRIME_NONE)
	{
		return true;
	};
	
	return false;
};
