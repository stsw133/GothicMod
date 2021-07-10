///******************************************************************************************
///	C_WantToFlee
///******************************************************************************************
func int C_WantToFlee (var C_NPC slf, var C_NPC oth)
{
//	return false;
 	
	if (slf.npctype == NPCTYPE_FRIEND)
	{
		return false;
	};
	
	if (slf.aivar[AIV_PARTYMEMBER])
	{
		return false;
	};
 	
	if (C_NpcIsGateGuard(slf))
	{
		return false;
	};
	
 	if ((2*slf.level) < oth.level)
	&& (oth.guild > GIL_SEPERATOR_HUM)	///new!!!
 	{
		return true;
 	};
 	
	return false;
};
