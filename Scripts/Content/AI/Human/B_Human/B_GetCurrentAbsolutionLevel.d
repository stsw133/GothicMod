///******************************************************************************************
/// B_GetCurrentAbsolutionLevel
///******************************************************************************************
func int B_GetCurrentAbsolutionLevel (var C_Npc slf)
{
	/// ------ OldCamp ------
	if (C_NpcBelongsToOldCamp(slf))
	{
		return ABSOLUTIONLEVEL_OldCamp;
	};
	/// ------ City ------
	if (C_NpcBelongsToCity(slf))
	{
		return ABSOLUTIONLEVEL_City;
	};
	/// ------ Monastery ------
	if (C_NpcBelongsToMonastery(slf))
	{
		return ABSOLUTIONLEVEL_Monastery;
	};
	/// ------ Farm ------
	if (C_NpcBelongsToFarm(slf))
	{
		return ABSOLUTIONLEVEL_Farm;
	};
	/// ------ Banditenlager Addon ------
	if (C_NpcBelongsToBL(slf))
	{
		return ABSOLUTIONLEVEL_BL;
	};
	
	return 0;
};
