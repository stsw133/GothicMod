///******************************************************************************************
/// B_AssessUseMob
///******************************************************************************************
func void B_AssessUseMob()
{
	if (!Npc_IsPlayer(other)) 
	{
		return;
	};
	
	if (Wld_GetPlayerPortalGuild() >= GIL_NONE)
	&& (Npc_GetHeightToNpc(self, other) > PERC_DIST_INDOOR_HEIGHT)
	{
		return;
	};
	
	if (Wld_GetGuildAttitude(self.guild, other.guild) == ATT_FRIENDLY)
	&& (!Npc_IsDetectedMobOwnedByNpc(other, self))
	{
		return;
	};
	
	if (!C_IsUsedMobMyPossession(self, other))
	{
		return;
	};
	
	if (!Npc_CanSeeNpc(self, other))
	{
		if (Npc_IsInPlayersRoom(self))
		&& (Npc_IsInState(self, ZS_ObservePlayer) || Npc_IsInState(self, ZS_ClearRoom))
		{
			
		}
		else
		{
			return;
		};
	};
	
	var string detMob; detMob = Npc_GetDetectedMob(other);
	if (!Hlp_StrCmp(detMob, "CHESTBIG"))
	&& (!Hlp_StrCmp(detMob, "CHESTSMALL"))
	{
		return;
	};
	
	if (!C_WantToAttackThief(self, other))
	{
		if (C_NpcIsGateGuard(self))
		{
			B_MemorizePlayerCrime (self, other, CRIME_THEFT);
		};
		return;
	};
	
	/// FUNC
	B_Attack (self, other, AR_UseMob, 0);
	return;
};
