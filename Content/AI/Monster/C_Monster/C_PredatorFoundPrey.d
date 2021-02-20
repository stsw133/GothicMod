///******************************************************************************************
///	C_PredatorFoundPrey
///******************************************************************************************
func INT C_PredatorFoundPrey (var C_NPC slf, var C_NPC oth)
{
	/// ------ Wolf jagt... ------
	if (slf.guild == GIL_WOLF) && (slf.aivar[AIV_MM_REAL_ID] != ID_Keiler)
	{
		if (oth.guild == GIL_SHEEP)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_MOLERAT)
		|| ((oth.guild == GIL_SCAVENGER) && (oth.aivar[AIV_MM_REAL_ID] != ID_SWAMPBITER))
		{
			return true;
		};
	};
	
	/// ------ Lurker jagt... ------
	if (slf.guild == GIL_LURKER)
	{
		if (oth.guild == GIL_GOBBO)
		{
			return true;
		};
	};
	
	/// ------ Snapper jagt... ------
	if (slf.guild == GIL_SNAPPER)
	{
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild == GIL_GOBBO)
		|| (oth.guild == GIL_SHEEP)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_MOLERAT)
		|| ((oth.guild == GIL_SCAVENGER) && (oth.aivar[AIV_MM_REAL_ID] != ID_SWAMPBITER))
		{
			return true;
		};
	};
	
	/// ------ Shadowbeast jagt... ------
	if (slf.guild == GIL_SHADOWBEAST)
	{
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		|| (oth.guild == GIL_SHEEP)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_MOLERAT)
		|| ((oth.guild == GIL_SCAVENGER) && (oth.aivar[AIV_MM_REAL_ID] != ID_SWAMPBITER))
		{
			return true;
		};
	};
	
	return false;
};
