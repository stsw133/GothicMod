///******************************************************************************************
/// C_DropUnconscious
///******************************************************************************************
func int C_DropUnconscious()
{
	/// MOD
	//if (self.flags & NPC_FLAG_IMPORTANT)
	//{
	//	return false;
	//};
	
	/// ...
	if (other.guild > GIL_SEPERATOR_HUM)
	|| (other.guild == GIL_DMT)
	|| (other.guild == GIL_BDT)
	|| (other.aivar[AIV_DropDeadAndKill])
	{
		return false;
	};
	
	if (self.guild < GIL_SEPERATOR_HUM)
	&& (self.guild != GIL_DMT)
	&& (self.guild != GIL_BDT)
	&& (!self.aivar[AIV_DropDeadAndKill])
	{
		return true;
	};
	
	return false;
};
