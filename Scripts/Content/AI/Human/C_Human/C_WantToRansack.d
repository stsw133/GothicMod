///******************************************************************************************
///	C_WantToRansack
///******************************************************************************************
func int C_WantToRansack (var C_NPC slf)
{
	if (slf.npctype == NPCTYPE_FRIEND) && (Npc_IsPlayer(other))
	{
		return false;
	};
	
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Raven))
	{
		return false;
	};
	
	if (slf.guild == GIL_DMT)
	|| (slf.guild == GIL_ORC)
	|| (slf.guild == GIL_PAL)
	|| (slf.guild == GIL_KDF)
	|| (slf.guild == GIL_NOV)
	|| (slf.guild == GIL_KDW)
	{
		return false;
	};
	
	return true;
};
