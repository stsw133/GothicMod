///******************************************************************************************
///	C_DropUnconscious
///******************************************************************************************
func int C_DropUnconscious()
{
	if (self.guild < GIL_SEPERATOR_HUM)
	&& (self.guild != GIL_DMT)
	&& (self.guild != GIL_BDT)
	&& (!self.aivar[AIV_DropDeadAndKill])
	{
		return true;
	};
	return false;
};
