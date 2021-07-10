///******************************************************************************************
///	B_MM_AssessOthersDamage
///******************************************************************************************
func void B_MM_AssessOthersDamage()
{
	if (Npc_GetDistToNpc(self, victim) > PERC_DIST_INTERMEDIAT)
	&& (Npc_GetDistToNpc(self, other) > PERC_DIST_INTERMEDIAT)
	{
		return;
	};
	if (!Npc_CanSeeNpcFreeLOS(self, victim))
	{
		return;
	};
	
	if (self.aivar[AIV_PARTYMEMBER])
	{
		if (Npc_IsPlayer(victim))
		{
			Npc_ClearAIQueue	(self);
			B_ClearPerceptions	(self);
			Npc_SetTarget		(self, other);
			AI_StartState		(self, ZS_MM_Attack, false, "");
			return;
		};
		if (Npc_IsPlayer(other))
		&& (!Npc_IsDead(victim))
		{
			Npc_ClearAIQueue	(self);
			B_ClearPerceptions	(self);
			Npc_SetTarget		(self, victim);
			AI_StartState		(self, ZS_MM_Attack, false, "");
			return;
		};
	};
	if (self.guild == GIL_WOLF)
	{
		if (victim.guild == GIL_WOLF)
		&& (other.guild == GIL_WOLF)
		&& (Npc_IsPlayer(other))
		&& (Npc_IsDead(victim))
		{
			Npc_ClearAIQueue	(self);
			B_ClearPerceptions	(self);
			self.start_aistate = ZS_MM_Rtn_Summoned;
			AI_StartState (self, ZS_MM_Rtn_Summoned, false, "");
			return;
		};
	};
	
	/// FUNC
	if (self.guild == GIL_STONEGUARDIAN)
	&& (victim.guild == GIL_STONEGUARDIAN)
	&& (self.aivar[AIV_EnemyOverride])
	{
		B_AWAKE_STONEGUARDIAN(self);
	};
	
	if (Wld_GetGuildAttitude(self.guild, victim.guild) == ATT_FRIENDLY)
	&& (Wld_GetGuildAttitude(self.guild, other.guild) != ATT_FRIENDLY)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		Npc_SetTarget		(self, other);
		AI_StartState		(self, ZS_MM_Attack, false, "");
		return;
	};
	
	if (Wld_GetGuildAttitude(self.guild, other.guild) == ATT_FRIENDLY)
	&& (Wld_GetGuildAttitude(self.guild, victim.guild) != ATT_FRIENDLY)
	&& (!Npc_IsDead(victim))
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		Npc_SetTarget		(self, victim);
		AI_StartState		(self, ZS_MM_Attack, false, "");
		return;
	};
};
