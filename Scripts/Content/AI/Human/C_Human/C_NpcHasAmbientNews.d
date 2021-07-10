///******************************************************************************************
///	C_NpcHasAmbientNews
///******************************************************************************************
func int C_NpcHasAmbientNews (var C_NPC slf)
{
	if (slf.aivar[AIV_NewsOverride])
	{
		return false;
	};
	
	if (B_GetPlayerCrime(slf) == CRIME_NONE)
	{
		return false;
	};
	
	return true;
};
