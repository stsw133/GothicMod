///******************************************************************************************
///	C_WantToAttackMurder
///******************************************************************************************
func int C_WantToAttackMurder (var C_NPC slf, var C_NPC oth)
{
	/// ------ ausgenommeme Gilden ------
	if (slf.guild == GIL_DMT)
	|| (slf.guild == GIL_STRF)
	|| (slf.guild == GIL_DJG)
	|| (slf.guild == GIL_BDT)  
	{
		return false;
	};
	
	/// ------ NSC ignoriert Mord ------
	if (slf.aivar[AIV_IgnoreCrime] == IGNORE_Murder)
	{
		return false;
	};
	
	/// ------ Täter war Player und ich bin NPCType_Friend ------
	if (Npc_IsPlayer(oth) && (slf.npctype == NPCTYPE_FRIEND))
	{
		return false;
	};
	
	/// ------ Mörder hat guten Grund zu töten ------
	if (C_NpcHasAttackReasonToKill(oth))
	{
		return false;
	};
	
	/// ------ Torwachen bleiben stehen, memorizen aber News ------
	if (C_NpcIsGateGuard(slf))
	{
		return false;
	};
	
	return true;
};
