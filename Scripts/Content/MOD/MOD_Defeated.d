///******************************************************************************************
///	MOD_Defeated
///******************************************************************************************
func void MOD_Defeated (var C_Npc slf, var C_Npc oth)
{
	/// ------ if player or his teammate defeated or killed someone ------
	if (Npc_IsPlayer(slf))
	&& (!oth.aivar[AIV_VictoryXPGiven])
	{
		B_GivePlayerXP(oth.level * XP_PER_VICTORY);
		oth.aivar[AIV_VictoryXPGiven] = true;
	}
	else if (slf.aivar[AIV_PARTYMEMBER])
	&& (!oth.aivar[AIV_VictoryXPGiven])
	{
//		B_GivePlayerXP(oth.level * XP_PER_VICTORY/2);
		B_GivePlayerXP(oth.level * XP_PER_VICTORY);
		oth.aivar[AIV_VictoryXPGiven] = true;
	};
};
