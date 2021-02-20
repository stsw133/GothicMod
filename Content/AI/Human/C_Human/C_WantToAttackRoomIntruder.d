///******************************************************************************************
///	C_WantToAttackRoomIntruder
///******************************************************************************************
func int C_WantToAttackRoomIntruder (var C_NPC slf)
{
	if (self.guild == GIL_MIL)
	|| (self.guild == GIL_PAL)
	|| (self.guild == GIL_SLD)
	|| (self.guild == GIL_DJG)
	|| (B_GetPlayerCrime(self) != CRIME_NONE)
	{
		return true;
	};
	
	return false;
};
