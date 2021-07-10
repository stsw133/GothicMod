///******************************************************************************************
///	C_WantToReactToSneaker
///******************************************************************************************
func int C_WantToReactToSneaker (var C_NPC slf, var C_NPC oth)
{
    if (Npc_GetDistToNpc(slf, oth) > 700)
    {
		return false;
	};
	
    if (slf.guild == GIL_DMT)
	|| (slf.guild == GIL_STRF)
	|| (slf.guild == GIL_BDT && !C_NpcBelongsToBL(slf))
	{
		return false;
	};
	
    if (slf.npctype == NPCTYPE_FRIEND) && (Npc_IsPlayer(oth))
    {
		return false;
	};
	
	if (Npc_GetAttitude(slf, oth) == ATT_FRIENDLY)
	{
		return false;
	};
	
	if (C_NpcIsGateGuard(self))
	{
		return false;
	};
	
	return true;
};
