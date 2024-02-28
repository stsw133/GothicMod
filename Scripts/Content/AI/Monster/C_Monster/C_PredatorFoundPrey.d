///******************************************************************************************
/// C_PredatorFoundPrey
///******************************************************************************************
func int C_PredatorFoundPrey (var C_Npc slf, var C_Npc oth)
{
	if (slf.guild == GIL_WOLF && slf.aivar[AIV_MM_REAL_ID] != ID_Keiler)
	{
		if (oth.guild == GIL_LIVESTOCK)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_MOLERAT)
		|| (oth.guild == GIL_SCAVENGER && oth.aivar[AIV_MM_REAL_ID] != ID_BITER)
		{
			return true;
		};
	};
	
	if (slf.guild == GIL_LURKER)
	&& (oth.guild == GIL_GOBBO)
	{
		return true;
	};
	
	if (slf.guild == GIL_SNAPPER)
	{
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild == GIL_GOBBO)
		|| (oth.guild == GIL_LIVESTOCK)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_MOLERAT)
		|| (oth.guild == GIL_SCAVENGER && oth.aivar[AIV_MM_REAL_ID] != ID_BITER)
		{
			return true;
		};
	};
	
	if (slf.guild == GIL_SHADOWBEAST)
	{
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		|| (oth.guild == GIL_LIVESTOCK)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_MOLERAT)
		|| (oth.guild == GIL_SCAVENGER && oth.aivar[AIV_MM_REAL_ID] != ID_BITER)
		{
			return true;
		};
	};
	
	return false;
};
