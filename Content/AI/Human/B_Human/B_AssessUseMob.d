///******************************************************************************************
///	B_AssessUseMob
///******************************************************************************************
func void B_AssessUseMob()
{
	/// EXIT IF...
	/// ------ other ist NICHT der Spieler ------
	if (!Npc_IsPlayer(other)) 
	{
		return;
	};
	
	/// ------- Player im Haus und NSC in anderem Stockwerk ------
	if (Wld_GetPlayerPortalGuild() >= GIL_NONE) ///also NICHT Draussen (== -1)
	{
		if (Npc_GetHeightToNpc(self,other) > PERC_DIST_INDOOR_HEIGHT)
		{
			return;
		};
	};
	
	/// ------ ignorieren, wenn NSC-Gilde freundlich zu Taeter-Gilde ------
	if (Wld_GetGuildAttitude(self.guild,other.guild) == ATT_FRIENDLY)
	{
		if (!Npc_IsDetectedMobOwnedByNpc(other,self))
		{
			return;
		};
	};
	
	/// ------ Mob geh�rte mir nicht ------
	if (!C_IsUsedMobMyPossession(self,other))
	{
		return;
	};
	
	/// ------ NSC kann Taeter NICHT sehen ------
	if (!Npc_CanSeeNpc(self,other))
	{
		if (Npc_IsInPlayersRoom(self))
		&& ((Npc_IsInState(self,ZS_ObservePlayer)) || (Npc_IsInState(self,ZS_ClearRoom)))
		{
			///troztdem gesehen!
		}
		else
		{
			return;
		};
	};
	
	/// ------ nur bestimmte Mobsis ------
	var string detMob; detMob = Npc_GetDetectedMob(other);
	
	if (Hlp_StrCmp(detMob,"CHESTBIG") == false)
	&& (Hlp_StrCmp(detMob,"CHESTSMALL") == false)
	{
		return;
		
		/*
		/// ------ bei unwichtigen Mobs ------
		if (Hlp_StrCmp(detMob, "BEDHIGH") == true)
		|| (Hlp_StrCmp(detMob, "LEVER") == true)
		|| (Hlp_StrCmp(detMob, "TOUCHPLATE") == true)
		|| (Hlp_StrCmp(detMob, "TURNSWITCH") == true)
		|| (Hlp_StrCmp(detMob, "VWHEEL") == true)
		|| (Hlp_StrCmp(detMob, "LAB") == true)
		|| (Hlp_StrCmp(detMob, "RMAKER") == true)
		|| (Hlp_StrCmp(detMob, "BSANVIL") == true)
		|| (Hlp_StrCmp(detMob, "BSFIRE") == true)
		|| (Hlp_StrCmp(detMob, "STOVE") == true)
		|| (Hlp_StrCmp(detMob, "PAN") == true)
		|| (Hlp_StrCmp(detMob, "HERB") == true) ///BAUMSAEGE CAULDRON SMOKE BOOK BSCOOL BSSHARP SDW
		{
			B_Say (self, other, "$BLA"); ///***Fixme*** Raus aus meinem Bett!
		};

		return;
		*/
	};
	
	/// ------ ignore THEFT ------
	if (!C_WantToAttackThief(self,other))
	{
		/// ------ Torwachen greifen nicht an, memorizen aber News ------
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
