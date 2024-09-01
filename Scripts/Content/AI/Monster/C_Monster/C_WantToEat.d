///******************************************************************************************
/// C_WantToEat
///******************************************************************************************
func int C_WantToEat (var C_Npc slf, var C_Npc oth)
{
	if (slf.aivar[AIV_PARTYMEMBER])
	{
		return false;
	};
	
	if (slf.guild == GIL_SCAVENGER)
	{
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		|| (oth.guild == GIL_BLOODFLY)
		|| (oth.guild == GIL_GIANT_BUG)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_GOBBO)
		|| (oth.guild == GIL_HARPY)
		|| (oth.guild == GIL_LIVESTOCK)
		|| (oth.guild == GIL_LURKER)
		|| (oth.guild == GIL_MEATBUG)
		|| (oth.guild == GIL_MINECRAWLER)
		|| (oth.guild == GIL_MOLERAT)
//		|| (oth.guild == GIL_SCAVENGER)
		|| (oth.guild == GIL_SHADOWBEAST)
		|| (oth.guild == GIL_SNAPPER)
		|| (oth.guild == GIL_SUMMONED_WOLF)
		|| (oth.guild == GIL_TIGER)
		|| (oth.guild == GIL_WARAN)
		|| (oth.guild == GIL_WOLF)
		{
			return true;
		};
	};
	
	if (slf.guild == GIL_GIANT_RAT)
	{
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		|| (oth.guild == GIL_BLOODFLY)
		|| (oth.guild == GIL_GIANT_BUG)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_GOBBO)
		|| (oth.guild == GIL_HARPY)
		|| (oth.guild == GIL_LIVESTOCK)
		|| (oth.guild == GIL_LURKER)
		|| (oth.guild == GIL_MEATBUG)
		|| (oth.guild == GIL_MINECRAWLER)
		|| (oth.guild == GIL_MOLERAT)
		|| (oth.guild == GIL_SCAVENGER)
		|| (oth.guild == GIL_SHADOWBEAST)
		|| (oth.guild == GIL_SNAPPER)
		|| (oth.guild == GIL_SUMMONED_WOLF)
		|| (oth.guild == GIL_TIGER)
		|| (oth.guild == GIL_WARAN)
		|| (oth.guild == GIL_WOLF)
		{
			return true;
		};
	};
	
	if (slf.guild == GIL_GIANT_BUG)
	{
		if (oth.guild == GIL_BLOODFLY)
//		|| (oth.guild == GIL_GIANT_BUG)
		|| (oth.guild == GIL_MEATBUG)
		|| (oth.guild == GIL_MINECRAWLER)
		{
			return true;
		};
	};
	
	if (slf.guild == GIL_WARAN)
	{
		if (oth.guild == GIL_GOBBO)
		|| (oth.guild == GIL_HARPY)
		|| (oth.guild == GIL_SCAVENGER)
		{
			return true;
		};
	};
	
	if (slf.guild == GIL_WOLF && slf.aivar[AIV_MM_REAL_ID] != ID_Keiler)
	{
		if (oth.guild < GIL_SEPERATOR_HUM)
//		|| (oth.guild > GIL_SEPERATOR_ORC)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_LIVESTOCK)
		|| (oth.guild == GIL_MOLERAT)
		{
			return true;
		};
	};
	
	if (slf.guild == GIL_SUMMONED_WOLF)
	{
		if (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_LIVESTOCK)
		|| (oth.guild == GIL_MOLERAT)
		{
			return true;
		};
	};
	
	if (slf.guild == GIL_MINECRAWLER)
	{
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		|| (oth.guild == GIL_BLOODFLY)
		|| (oth.guild == GIL_GIANT_BUG)
		|| (oth.guild == GIL_MEATBUG)
//		|| (oth.guild == GIL_MINECRAWLER)
		{
			return true;
		};
	};
	
	if (slf.guild == GIL_LURKER)
	{
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		|| (oth.guild == GIL_GOBBO)
		{
			return true;
		};
	};
	
	if (slf.guild == GIL_ZOMBIE)
	{
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		{
			return true;
		};
	};
	
	if (slf.guild == GIL_SNAPPER)
	{
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_GOBBO)
		|| (oth.guild == GIL_HARPY)
		|| (oth.guild == GIL_LIVESTOCK)
		|| (oth.guild == GIL_LURKER)
		|| (oth.guild == GIL_MOLERAT)
		|| (oth.guild == GIL_SCAVENGER)
		|| (oth.guild == GIL_SHADOWBEAST)
//		|| (oth.guild == GIL_SNAPPER)
		|| (oth.guild == GIL_SUMMONED_WOLF)
		|| (oth.guild == GIL_TIGER)
		|| (oth.guild == GIL_WARAN)
		|| (oth.guild == GIL_WOLF)
		{
			return true;
		};
	};
	
	if (slf.guild == GIL_SHADOWBEAST)
	{
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_GOBBO)
		|| (oth.guild == GIL_HARPY)
		|| (oth.guild == GIL_LIVESTOCK)
		|| (oth.guild == GIL_LURKER)
		|| (oth.guild == GIL_MOLERAT)
		|| (oth.guild == GIL_SCAVENGER)
//		|| (oth.guild == GIL_SHADOWBEAST)
		|| (oth.guild == GIL_SNAPPER)
		|| (oth.guild == GIL_SUMMONED_WOLF)
		|| (oth.guild == GIL_TIGER)
		|| (oth.guild == GIL_WARAN)
		|| (oth.guild == GIL_WOLF)
		{
			return true;
		};
	};
	
	return false;
};
