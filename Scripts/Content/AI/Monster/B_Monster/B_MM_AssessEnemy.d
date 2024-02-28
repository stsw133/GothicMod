///******************************************************************************************
/// B_MM_AssessEnemy
///******************************************************************************************
func void B_MM_AssessEnemy()
{
	if (self.guild == GIL_DRAGON)
	&& ((Npc_HasItems(hero, ItAm_InnosEye) >= 1)
	 || (Npc_HasItems(hero, ItMw_1h_Special_05) >= 1)
	 || (Npc_HasItems(hero, ItMw_2h_Special_05) >= 1)
	 || (Npc_HasItems(hero, ItMw_1h_Ignite_05) >= 1)
	 || (Npc_HasItems(hero, ItMw_2h_Ignite_05) >= 1))
	&& (!self.aivar[AIV_TalkedToPlayer]) /// new!!!
	{
		return;
	};
	
	if (self.aivar[AIV_NoFightParker])
	|| (other.aivar[AIV_NoFightParker])
	{
		return;
	};
	
	if (self.aivar[AIV_EnemyOverride])
	&& (other.guild < GIL_SEPERATOR_HUM)
	{
		return;
	};
	
	var C_Npc MGO; MGO = Hlp_GetNpc(OreGolem);
	var C_Npc LAR; LAR = Hlp_GetNpc(VLK_449_Lares);
	
	if (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(LAR))
	&& (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(MGO))
	{
		return;
	};
	
	if (Npc_GetDistToWP(self, "OC_RAMP_07") <= 500)
	{
		return;
	};
	
	if (other.aivar[AIV_INVINCIBLE])
	{
		return;
	};
	
	if (C_BodyStateContains(other, BS_SWIM) || C_BodyStateContains(other, BS_DIVE))
	&& (!self.aivar[AIV_MM_FollowInWater])
	{
		return;
	};
	
	if (Npc_GetHeightToNpc(self, other) > PERC_DIST_HEIGHT)
	{
		return;
	};
	
	if (Npc_IsPlayer(other))
	&& (other.guild > GIL_SEPERATOR_HUM)
	&& (Wld_GetGuildAttitude(self.guild, other.guild) != ATT_HOSTILE)
	{
		return;
	};
	
	if (self.senses_range > PERC_DIST_MONSTER_ACTIVE_MAX)
	&& (Npc_GetDistToNpc(self, other) > PERC_DIST_MONSTER_ACTIVE_MAX)
	&& (!Npc_CanSeeNpc(self, other))
	{
		return;
	};
	
	if (self.guild == GIL_ORC || self.guild == GIL_FRIENDLY_ORC)
	&& (C_BodyStateContains(other, BS_SNEAK) || C_BodyStateContains(other, BS_STAND))
	&& (!Npc_CanSeeNpc(self, other))
	{
		return;
	};
	
	if (!Npc_CanSeeNpcFreeLOS(self, other))
	{
		return;
	};
	
	if (self.aivar[AIV_PARTYMEMBER])
	{
		if (other.npctype == NPCTYPE_FRIEND)
		{
			return;
		};
		
		Npc_ClearAIQueue	(self);
		Npc_SetTarget		(self, other);
		B_ClearPerceptions	(self);
		AI_StartState 		(self, ZS_MM_Attack, false, "");
		return;
	};
	
	if (!self.aivar[AIV_MM_ThreatenBeforeAttack])
	{
		Npc_ClearAIQueue	(self);
		Npc_SetTarget		(self, other);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_MM_Attack, false, "");
		return;
	};
	
	if (Npc_IsInState(self, ZS_MM_EatBody))
	{
		if (Npc_GetDistToNpc(self, other) <= FIGHT_DIST_MONSTER_ATTACKRANGE)
		{
			Npc_ClearAIQueue	(self);
			Npc_SetTarget		(self, other);
			B_ClearPerceptions	(self);
			AI_StartState		(self, ZS_MM_Attack, false, "");
		};
		return;		
	};
	
	if (Npc_IsInState(self, ZS_MM_Hunt))
	{
		if (Npc_GetDistToNpc(self, other) <= FIGHT_DIST_MONSTER_ATTACKRANGE)
		{
			Npc_ClearAIQueue	(self);
			Npc_SetTarget 		(self, other);
			B_ClearPerceptions	(self);
			AI_StartState 		(self, ZS_MM_Attack, false, "");
		};
		return;
	};
	
	if (C_PredatorFoundPrey(self, other))
	{
		Npc_ClearAIQueue	(self);
		Npc_SetTarget 		(self, other);
		B_ClearPerceptions	(self);
		AI_StartState 		(self, ZS_MM_Hunt, false, "");
		return;
	};
	
	if (C_PredatorFoundPrey(other, self))
	{
		if (!Npc_IsInState(other, ZS_MM_Hunt))
		&& (Npc_GetDistToNpc(self, other) <= FIGHT_DIST_MONSTER_FLEE)
		{
			Npc_ClearAIQueue	(self);
			Npc_SetTarget 		(self, other);
			B_ClearPerceptions	(self);
			AI_StartState 		(self, ZS_MM_Flee, false, "");
		};
		return;
	};
	
	/// FUNC
	Npc_ClearAIQueue	(self);
	B_ClearPerceptions	(self);
	AI_StartState 		(self, ZS_MM_ThreatenEnemy, false, "");
	return;
};
