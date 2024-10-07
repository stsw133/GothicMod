///******************************************************************************************
/// C_IsUsedMobMyPossession
///******************************************************************************************
func int C_IsUsedMobMyPossession (var C_Npc slf, var C_Npc oth)
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

///******************************************************************************************
/// C_IsTakenItemMyPossession
///******************************************************************************************
func int C_IsTakenItemMyPossession (var C_Npc slf, var C_Npc oth, var C_Item itm)
{
	var int portalguild; portalguild = Wld_GetPlayerPortalGuild();
	
	if (Npc_OwnedByNpc(itm, slf)) 
	{
		if (Hlp_IsItem(itm, Holy_Hammer_MIS))
		{
			Hammer_Taken = true;
		};
		return true;
	};
	
	if (itm.flags & ITEM_DROPPED)
	{
		return false;
	};
	
	if (C_NpcIsBotheredByPlayerRoomGuild(self))
	|| (Wld_GetPlayerPortalGuild() == GIL_PUBLIC)
	{
		return true;
	};
	
	if (Wld_GetGuildAttitude(slf.guild, itm.ownerguild) == ATT_FRIENDLY)
	{
		return true;
	};
	
	return false;
};
