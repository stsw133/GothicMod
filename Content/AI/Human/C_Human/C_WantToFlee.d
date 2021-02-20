///******************************************************************************************
///	C_WantToFlee
///******************************************************************************************
func int C_WantToFlee (var C_NPC slf, var C_NPC oth)
{
 	///***FIXME***
// 	return false;
	
	/// EXIT IF...
 	/// ------ Npctype_Friend flieht nie ------
	if (slf.npctype == NPCTYPE_FRIEND)
	{
		return false;
	};
	
 	/// ------ Partymember flieht nie ------
	if (slf.aivar[AIV_PartyMember] == true)
	|| (slf.aivar[AIV_ArenaFight] == AF_RUNNING)
	|| (slf.aivar[AIV_IgnoreCrime] == IGNORE_Fear)
	{
		return false;
	};
 
 	/// ------ GateGuards fliehen nie ------
	if (C_NpcIsGateGuard(slf))
	{
		return false;
	};

	var C_Item slfArmor; slfArmor = Npc_GetEquippedArmor(slf);
	var C_Item othArmor; othArmor = Npc_GetEquippedArmor(oth);

 	/// FUNC
 	/// ------ Flucht, wenn other VIEL stärker ist ------
	if (oth.guild > GIL_SEPERATOR_HUM)
	&& (slf.level+10 <= oth.level)
 	{
		return true;
	};
//	else if (slfArmor.cond_value[2]+5 <= othArmor.cond_value[2])
//	{
//		return true;
//	};
	
	return false;
};
