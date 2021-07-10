///******************************************************************************************
///	C_BodyStateContains
///******************************************************************************************
func int C_BodyStateContains (var C_NPC slf, var int bodystate)
{
	if ((Npc_GetBodyState(slf) & (BS_MAX|BS_FLAG_INTERRUPTABLE|BS_FLAG_FREEHANDS)) == (bodystate & (BS_MAX|BS_FLAG_INTERRUPTABLE|BS_FLAG_FREEHANDS)))
	{
		return true;
	}
	else
	{
		return false;
	};
};
