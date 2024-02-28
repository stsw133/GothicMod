///******************************************************************************************
/// B_MM_AssessBody
///******************************************************************************************
func void B_MM_AssessBody()
{
	if (self.guild > GIL_SEPERATOR_ORC)
	{
		return;
	};
	
	if (Npc_GetHeightToNpc(self, other) > PERC_DIST_HEIGHT)
	{
		return;
	};
	
	if (self.aivar[AIV_MM_PRIORITY] == PRIO_ATTACK)
	{
		return;
	};
	
	if (!C_WantToEat(self, other))
	{
		return;
	};
	
	if (Npc_IsInState(self, ZS_MM_Attack))
	{
		var C_Npc target; target = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);
		if (Npc_GetDistToNpc(target, other) <= FIGHT_DIST_MONSTER_ATTACKRANGE)
		{
			return;
		};
	};
	
	/// FUNC
	Npc_ClearAIQueue	(self);
	B_ClearPerceptions	(self);
	AI_StartState 		(self, ZS_MM_EatBody, false, "");
	return;
};
