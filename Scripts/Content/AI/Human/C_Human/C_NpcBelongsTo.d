///******************************************************************************************
/// C_NpcBelongsTo
///******************************************************************************************
func int C_NpcBelongsToOldCamp (var C_Npc slf)
{
	if (slf.npctype == NPCTYPE_OCMAIN || slf.npctype == NPCTYPE_OCAMBIENT)
	&& (slf.guild == GIL_VLK || slf.guild == GIL_MIL || slf.guild == GIL_PAL)
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
func int C_NpcBelongsToCity (var C_Npc slf)
{
	if (!C_NpcBelongsToOldCamp(slf))
	&& (slf.guild == GIL_VLK || slf.guild == GIL_MIL || slf.guild == GIL_PAL)
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
func int C_NpcBelongsToMonastery (var C_Npc slf)
{
	if (slf.guild == GIL_KDF || slf.guild == GIL_NOV)
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
func int C_NpcBelongsToFarm (var C_Npc slf)
{
	if (slf.guild == GIL_BAU || slf.guild == GIL_SLD)
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
func int C_NpcBelongsToBL (var C_Npc slf)
{
	if (slf.npctype == NPCTYPE_BL_AMBIENT || slf.npctype == NPCTYPE_BL_MAIN)
	{
		return true;
	};
	
	return false;
};
