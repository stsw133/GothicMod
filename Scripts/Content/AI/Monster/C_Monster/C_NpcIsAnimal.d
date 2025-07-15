///******************************************************************************************
/// C_NpcIsAnimal
///******************************************************************************************
func int C_NpcIsAnimal (var C_Npc slf)
{
	if (slf.guild == GIL_MEATBUG)
	|| (slf.guild == GIL_LIVESTOCK)
	|| (slf.guild == GIL_SCAVENGER)
	|| (slf.guild == GIL_GIANT_RAT)
	|| (slf.guild == GIL_GIANT_BUG)
	|| (slf.guild == GIL_BLOODFLY)
	|| (slf.guild == GIL_WARAN)
	|| (slf.guild == GIL_WOLF)
	|| (slf.guild == GIL_MINECRAWLER)
	|| (slf.guild == GIL_LURKER)
	|| (slf.guild == GIL_SNAPPER)
	|| (slf.guild == GIL_SHADOWBEAST)
	|| (slf.guild == GIL_TIGER)
	|| (slf.guild == GIL_TROLL)
	|| (slf.guild == GIL_SWAMPSHARK)
	|| (slf.guild == GIL_MOLERAT)
	|| (slf.guild == GIL_ALLIGATOR)
	|| (slf.guild == GIL_WILD)
	{
		return true;
	};
	
	return false;
};
