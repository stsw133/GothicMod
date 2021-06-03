///******************************************************************************************
///	B_AssessTheft
///******************************************************************************************
func void B_AssessTheft()
{
	/// ------ other ist NICHT der Spieler ------
	if (!Npc_IsPlayer(other))
	{
		return;
	};
	
	/// ------- Player im Haus und NSC in anderem Stockwerk ------
	if (Wld_GetPlayerPortalGuild() >= GIL_NONE)
	&& (Npc_GetHeightToNpc(self, other) > PERC_DIST_INDOOR_HEIGHT)
	{
		return;
	};
	
	/// ------ ignorieren, wenn NSC-Gilde freundlich zu Taeter-Gilde ------
	if (Wld_GetGuildAttitude(self.guild, other.guild) == ATT_FRIENDLY)
	{
		if (!Hlp_IsValidItem(item)) || (!Npc_OwnedByNpc(item, self))
		{
			return;
		};		
	};
	
	/// ------ Item gehörte mir nicht ------
	if (!C_IsTakenItemMyPossession(self, other, item))
	{
		return;
	};
	
	/// ------ NSC kann Taeter NICHT sehen ------
	if (!Npc_CanSeeNpc(self, other))
	{
		if (Npc_IsInPlayersRoom(self))
		&& ((Npc_IsInState(self, ZS_ObservePlayer)) || (Npc_IsInState(self, ZS_ClearRoom)))
		{
			
		}
		else
		{
			return;
		};
	};
	
	/// ------ ignore THEFT ------
	if (!C_WantToAttackThief(self, other))
	{
		/// ------ Torwachen greifen nicht an, memorizen aber News ------
		if (C_NpcIsGateGuard(self))
		{
			B_MemorizePlayerCrime (self, other, CRIME_THEFT);
		};
		return;
	};
	
	B_Attack (self, other, AR_Theft, 0);
	return;
};
