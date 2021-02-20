///******************************************************************************************
///	C_NpcHasAmbientNews
///******************************************************************************************
func int C_NpcHasAmbientNews (var C_NPC slf)
{
	/// ------ NSC petzt, hat aber hat keinen automatischen NEWS-Dialog ------
	if (slf.aivar[AIV_NewsOverride] == true)
	{
		return false;
	};
	
	if (B_GetPlayerCrime(slf) == CRIME_NONE)
	{
		return false;
	};
	
	return true;
};
