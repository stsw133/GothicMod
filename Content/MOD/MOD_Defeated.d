///******************************************************************************************
///	MOD_Defeated
///******************************************************************************************
func void MOD_Defeated (var C_NPC slf, var C_NPC oth)
{
	/// ------ if player or his teammate defeated or killed someone ------
	if (Npc_IsPlayer(slf))
	&& (oth.aivar[AIV_VictoryXPGiven] == false)
	{
		B_GivePlayerXP(oth.level*XP_PER_VICTORY);
		oth.aivar[AIV_VictoryXPGiven] = true;
	}
	else if (slf.aivar[AIV_PARTYMEMBER] == true)
	&& (oth.aivar[AIV_VictoryXPGiven] == false)
	{
		B_GivePlayerXP(oth.level*XP_PER_VICTORY/2);
		oth.aivar[AIV_VictoryXPGiven] = true;
	};
};
