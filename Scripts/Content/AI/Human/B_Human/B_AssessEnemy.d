///******************************************************************************************
///	B_AssessEnemy
///******************************************************************************************
func int B_AssessEnemy()
{
	if ((Hlp_GetInstanceID(other) != Hlp_GetInstanceID(hero))
	&& (other.guild < GIL_SEPERATOR_HUM)
	&& ((self.aivar[AIV_NoFightParker])
	|| (other.aivar[AIV_NoFightParker])))
	|| (other.guild > GIL_SEPERATOR_HUM && other.aivar[AIV_NoFightParker])
	{
		return false;
	};
	if (C_BodyStateContains(other, BS_SWIM) || C_BodyStateContains(other, BS_DIVE))
	&& (!self.aivar[AIV_MM_FollowInWater])
	{
		return false;
	};
	if (Npc_GetHeightToNpc(self, other) > PERC_DIST_HEIGHT)
	{
		return false;
	};
	if (self.aivar[AIV_PARTYMEMBER])
	{
		if (Npc_GetDistToNpc(self, other) > 1500)
		{
			return false;
		};
		/*
		if (!Npc_CanSeeNpc(self, other))
		{
			return false;
		};
		*/
	};
	if (C_PlayerisFakeBandit(self, other))
	&& (self.guild == GIL_BDT)
	{
		return false;
	};
	
	var C_NPC MGO; MGO = Hlp_GetNpc(Magic_Golem);
	var C_NPC LAR; LAR = Hlp_GetNpc(VLK_449_Lares);
	
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(LAR))
	&& (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(MGO))
	{
		return false;
	};
	if (self.aivar[AIV_EnemyOverride] || other.aivar[AIV_EnemyOverride])
	&& (other.guild < GIL_SEPERATOR_HUM)
	{
		return false;
	};
	if (Npc_GetAttitude(self, other) != ATT_HOSTILE)
	{
		return false;
	};
	if (C_NpcIsGateGuard(self))
	{
		return false;
	};
	if (Npc_IsPlayer(other) && (self.npctype == NPCTYPE_FRIEND))
	{
		return false;
	};
	
	if (Wld_GetGuildAttitude(self.guild, other.guild) != ATT_HOSTILE)
	{
		if (Npc_GetAttitude(self, other) == ATT_HOSTILE)
		&& (Npc_GetStateTime(self) > 2 || Npc_IsInState(self, ZS_ObservePlayer))
		&& (Npc_GetDistToNpc(self, other) <= PERC_DIST_INTERMEDIAT)
		{
			B_Attack (self, other, self.aivar[AIV_LastPlayerAR], 0);
			return true;
		}
		else
		{
			return false;
		};
	};
	
	B_Attack (self, other, AR_GuildEnemy, 0);
	return true;
};
