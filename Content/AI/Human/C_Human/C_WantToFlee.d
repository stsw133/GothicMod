///******************************************************************************************
///	C_WantToFlee
///******************************************************************************************
func int C_WantToFlee (var C_NPC slf, var C_NPC oth)
{
//	return false;
 	
 	/// ------ Npctype_Friend flieht nie ------
	if (slf.npctype == NPCTYPE_FRIEND)
	{
		return false;
	};
	
 	/// ------ Partymember flieht nie ------
	if (slf.aivar[AIV_PARTYMEMBER])
	{
		return false;
	};
 	
 	/// ------ GateGuards fliehen nie ------
	if (C_NpcIsGateGuard(slf))
	{
		return false;
	};
	
 	/// ------ Flucht, wenn other VIEL stärker ist ------
 	if ((2*slf.level) < oth.level)
	&& (oth.guild > GIL_SEPERATOR_HUM)	///new
 	{
		return true;
 	};
 	
	return false;
};
