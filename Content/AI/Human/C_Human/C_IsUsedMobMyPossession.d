///******************************************************************************************
///	C_IsUsedMobMyPossession
///******************************************************************************************
func int C_IsUsedMobMyPossession(var C_NPC slf, var C_NPC oth)
{
	if (Npc_IsDetectedMobOwnedByNpc(other, self)) 
	{
		return true;
	};
	
	if (C_NpcIsBotheredByPlayerRoomGuild(self))
	|| (Wld_GetPlayerPortalGuild() == GIL_PUBLIC)
	{
		return true;
	};	
	
	return false;
};
