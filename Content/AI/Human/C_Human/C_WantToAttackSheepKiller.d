///******************************************************************************************
///	C_WantToAttackSheepKiller
///******************************************************************************************
func int C_WantToAttackSheepKiller (var C_NPC slf, var C_NPC oth)
{
	/// ------ ausgenommeme Gilden ------
	if (slf.guild == GIL_DMT)
	|| (slf.guild == GIL_STRF)
	|| (slf.guild == GIL_BDT)
	|| (slf.guild == GIL_DJG)
	{
		return false;
	};
	
	/// ------ NSC ignoriert Sheepkiller ------
	if ((slf.aivar[AIV_IgnoreCrime] & IGNORE_Sheepkiller) == IGNORE_Sheepkiller)
	{
		return false;
	};
	
	/// ------ T�ter war Player und ich bin NPCType_Friend ------
	if (Npc_IsPlayer(oth) && (slf.npctype == NPCTYPE_FRIEND))
	{
		return false;
	};
	
	/// ------ T�ter hat gutenGrund,Schaf zu t�ten ------
	if (C_NpcHasAttackReasonToKill(oth))
	{
		return false;
	};
	
	/// ------ Schaf aus Versehen getroffen ------ (wichtig f�r Magie, z.B. bei KdF im Kloster)
	if (other.guild < GIL_SEPERATOR_HUM)
	&& (other.aivar[AIV_ATTACKREASON] != AR_NONE)
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
