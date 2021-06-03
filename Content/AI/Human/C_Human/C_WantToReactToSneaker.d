///******************************************************************************************
///	C_WantToReactToSneaker
///******************************************************************************************
func int C_WantToReactToSneaker (var C_NPC slf, var C_NPC oth)
{
    /// ------ zu weit weg ------
    if (Npc_GetDistToNpc(slf, oth) > 700)
    {
		return false;
	};
	
    /// ------ ausgenommene Gilden ------
    if (slf.guild == GIL_DMT)
	|| (slf.guild == GIL_STRF)
	|| ((slf.guild == GIL_BDT) && !C_NpcBelongsToBL(slf))
	{
		return false;
	};
	
    /// ------ NPCTYPE FRIEND ------
    if (slf.npctype == NPCTYPE_FRIEND) && (Npc_IsPlayer(oth))
    {
		return false;
	};
	
	/// ------ ATT_FRIENDLY ------
	if (Npc_GetAttitude(slf, oth) == ATT_FRIENDLY)
	{
		return false;
	};
	
	/// ------ Torwachen bleiben stehen ------
	if (C_NpcIsGateGuard(self))
	{
		return false;
	};
	
	return true;
};
