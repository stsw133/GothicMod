///******************************************************************************************
/// B_MM_AssessPlayer
///******************************************************************************************
func void B_MM_AssessPlayer()
{
	if (other.aivar[AIV_INVINCIBLE]) 
	{
		return;
	};
	
	if (C_NpcIsDown(other))
	{
		return;
	};
	
	/// FUNC
	B_AssignDragonTalk(self);
	
	if (Npc_GetDistToNpc(self, other) <= 700)
	&& (Npc_CheckInfo(self, 1))
	{
		if (self.guild == GIL_DRAGON)
		|| (self.guild != GIL_DRAGON && Npc_GetDistToNpc(self, other) <= PERC_DIST_DIALOG)
		{
			if (!C_BodyStateContains(other, BS_FALL))
			&& (!C_BodyStateContains(other, BS_SWIM))
			&& (!C_BodyStateContains(other, BS_DIVE))
			{
				self.aivar[AIV_NpcStartedTalk] = true;
				B_AssessTalk();
				return;
			};
		};
	};
	
	if (self.aivar[AIV_PARTYMEMBER])
	{
		if (Npc_GetDistToNpc(self, hero) < 500)
		&& (!C_BodyStateContains(self, BS_STAND))
		{
			Npc_ClearAIQueue(self);
			AI_StandUp		(self);
			AI_TurnToNpc	(self, hero);
		};
	};
};
