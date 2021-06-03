///******************************************************************************************
///	B_AssessDrawWeapon
///******************************************************************************************
func int B_AssessDrawWeapon()
{
	if (Npc_IsInFightMode(other, FMODE_NONE))
	{
		return false;
	};
	
	if (Npc_GetDistToNpc(self, other) > PERC_DIST_DIALOG)
	{
		return false;
	};
	
	if (!C_NpcIsBotheredByWeapon(self, other))
	{
		return false;
	};
	
	if (Npc_IsInState(self, ZS_ReactToWeapon))
	{
		return false;
	};
	
	if (Npc_IsInState(self, ZS_ObservePlayer))
	&& (Npc_WasInState(self, ZS_WatchFight))
	{
		return false;
	};
	
	if (!Npc_CanSeeNpc(self, other))
	{
		return false;
	};
	
	Npc_ClearAIQueue	(self);
	B_ClearPerceptions	(self);
	AI_StartState 		(self, ZS_ReactToWeapon, false, "");
	return true;
};
