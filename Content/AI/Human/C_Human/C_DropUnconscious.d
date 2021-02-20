///******************************************************************************************
///	C_DropUnconscious
///******************************************************************************************
func int C_DropUnconscious()
{
	//if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Raven))
	//|| (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(Raven))
	//{
	//	return true;
	//};
	
	/// ------ Folgende NSCs töten immer ------
	if (other.guild > GIL_SEPERATOR_HUM)
	|| (other.guild == GIL_DMT)
	|| (other.guild == GIL_BDT)
	|| (other.aivar[AIV_DropDeadAndKill] == true)
	{
		return false;
	};
	
	/// ------ nur echte Humans können Unconscious werden ------
	if (self.guild < GIL_SEPERATOR_HUM)
	{
		if (self.guild != GIL_DMT)
		&& (self.guild != GIL_BDT)
		&& (self.aivar[AIV_DropDeadAndKill] == false)
		{
			return true;
		};
	};
	
	return false;
};
