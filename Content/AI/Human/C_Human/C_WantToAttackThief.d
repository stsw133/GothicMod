///******************************************************************************************
///	C_WantToAttackThief
///******************************************************************************************
func int C_WantToAttackThief (var C_NPC slf, var C_NPC oth)
{
	/// ------ ausgenommeme Gilden ------
	if (slf.guild == GIL_DMT)
	|| (slf.guild == GIL_STRF)
	|| (slf.guild == GIL_DJG)
	{
		return false;
	};
	
	/// ------ NSC ignoriert Diebstahl ------
	if (slf.aivar[AIV_IgnoreCrime] == IGNORE_Theft)
	{
		return false;
	};
	
	if (slf.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)
	{
		return false;
	};
	
	/// ------ Täter war Player und ich bin NPCType_Friend ------
	if (Npc_IsPlayer(oth) && (slf.npctype == NPCTYPE_FRIEND))
	{
		return false;
	};
	
	/// ------ Torwachen bleiben stehen, memorizen aber Theft ------
	if (C_NpcIsGateGuard(slf))
	{
		return false;
	};
	
	return true;
};
