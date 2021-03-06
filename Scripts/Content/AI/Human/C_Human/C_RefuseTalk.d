///******************************************************************************************
///	C_RefuseTalk
///******************************************************************************************
func int C_RefuseTalk (var C_NPC slf, var C_NPC oth)
{
	if (Npc_RefuseTalk(slf))
	&& (C_NpcIsGateGuard(slf))
	&& (slf.aivar[AIV_Guardpassage_Status] == GP_NONE)
	{
		return true;
	};
	
	if (!slf.aivar[AIV_TalkedToPlayer])
	&& (Npc_GetDistToWP(slf, slf.wp) > 500)
	{
		if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Lothar))
		{
			return true;
		};
	};
	
	if (C_PlayerHasFakeGuild(slf, oth))
	&& (self.flags != NPC_FLAG_IMMORTAL)
	{
		return true;
	};
	
	return false;
};
