///******************************************************************************************
/// C_WantToFlee
///******************************************************************************************
func int C_WantToFlee (var C_Npc slf, var C_Npc oth)
{
//	return false;
	
	if (slf.aivar[AIV_IgnoreCrime] & IGNORE_Fear)
	{
		return false;
	};
	
	if (slf.npctype == NPCTYPE_FRIEND)
	|| (slf.aivar[AIV_PartyMember])
	|| (C_NpcIsGateGuard(slf))
	{
		return false;
	};
	
	if ((2*slf.level) < oth.level)
	&& (oth.guild > GIL_SEPERATOR_HUM)	/// new!!!
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
/// C_WantToRansack
///******************************************************************************************
func int C_WantToRansack (var C_Npc slf)
{
	if (slf.npctype == NPCTYPE_FRIEND && Npc_IsPlayer(other))
	{
		return false;
	};
	
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Raven))
	{
		return false;
	};
	
	if (slf.guild == GIL_PAL)
	|| (slf.guild == GIL_KDF)
	|| (slf.guild == GIL_NOV)
	|| (slf.guild == GIL_DMT)
	|| (slf.guild == GIL_KDW)
	|| (slf.guild == GIL_ORC)
	{
		return false;
	};
	
	return true;
};

///******************************************************************************************
/// C_WantToReactToSneaker
///******************************************************************************************
func int C_WantToReactToSneaker (var C_Npc slf, var C_Npc oth)
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
	
    if (slf.npctype == NPCTYPE_FRIEND && Npc_IsPlayer(oth))
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
