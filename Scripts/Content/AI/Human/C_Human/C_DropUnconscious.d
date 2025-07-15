///******************************************************************************************
/// C_DropUnconscious
///******************************************************************************************
func int C_DropUnconsciousBase(var C_Npc slf, var C_Npc oth)
{
	/// MOD
	//if (oth.flags & NPC_FLAG_IMPORTANT)
	//{
	//	return true;
	//};
	
	/// ...
	if (slf.guild > GIL_SEPERATOR_HUM)
	|| (slf.guild == GIL_DMT)
	|| (slf.guild == GIL_BDT)
	|| (slf.aivar[AIV_DropDeadAndKill])
	{
		return false;
	};
	
	if (oth.guild < GIL_SEPERATOR_HUM)
	&& (oth.guild != GIL_DMT)
	&& (oth.guild != GIL_BDT)
	&& (!oth.aivar[AIV_DropDeadAndKill])
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
func int C_DropUnconscious()
{
	return C_DropUnconsciousBase(other, self);
};
