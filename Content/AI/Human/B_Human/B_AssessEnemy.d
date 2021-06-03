///******************************************************************************************
///	B_AssessEnemy
///******************************************************************************************
func int B_AssessEnemy()
{
	/// ------- NoFightParker NPC kloppt sich nur mit Monstern oder dem Player, wird auch nie angegriffen ------
	if ((Hlp_GetInstanceID(other) != Hlp_GetInstanceID(hero))
	&& (other.guild < GIL_SEPERATOR_HUM)
	&& ((self.aivar[AIV_NoFightParker])
	|| (other.aivar[AIV_NoFightParker])))
	|| ((other.guild > GIL_SEPERATOR_HUM) && (other.aivar[AIV_NoFightParker]))
	{
		return false;
	};
	
	/// ------ Gegner im Wasser ------
	if (C_BodyStateContains(other, BS_SWIM) || C_BodyStateContains(other, BS_DIVE))
	&& (!self.aivar[AIV_MM_FollowInWater])
	{
		return false;
	};
	
	/// ------- Burgzinnenwachen sollen sich nicht zu Tode stürzen, etc. ------
	if (Npc_GetHeightToNpc(self, other) > PERC_DIST_HEIGHT)
	{
		return false;
	};
	
	/// ------- für Party-NSCs -------
	if (self.aivar[AIV_PARTYMEMBER] == true)
	{
		if (Npc_GetDistToNpc(self, other) > /*1500*/ 2000)
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
	
	/// ------- Verkleidete Banditen -----------
	if (C_PlayerisFakeBandit(self, other))
	&& (self.guild == GIL_BDT)
	{
		return false;
	};
	
	/// ------- Mag-Golem-Lares-Hack ------------
	var C_NPC MGO; MGO = Hlp_GetNpc(Magic_Golem);
	var C_NPC LAR; LAR = Hlp_GetNpc(VLK_449_Lares);
	
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(LAR))
	&& (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(MGO))
	{
		return false;
	};
	
	/// ------- OVERRIDE für Enemies, die noch vorher quatschen sollen ------
	if ((self.aivar[AIV_EnemyOverride]) || (other.aivar[AIV_EnemyOverride]))
	&& (other.guild < GIL_SEPERATOR_HUM)
	{
		return false;
	};
	
	/// ------- Sicherheitsabfrage (B_AssessEnemy wird auch von anderen Funktionen aufgerufen, nicht nur über Wahrnehmung) ------
	if (Npc_GetAttitude(self, other) != ATT_HOSTILE)
	{
		return false;
	};
	
	if (C_NpcIsGateGuard(self))
	{
		return false;
	};
	
	/// ------ Npctype_Friend ignoriert den Spieler-Enemy ------
	if (Npc_IsPlayer(other) && (self.npctype == NPCTYPE_FRIEND))
	{
		return false;
	};
	
	/// ------ ich bin nicht GILDEN-Hostile zu other ------
	if (Wld_GetGuildAttitude(self.guild, other.guild) != ATT_HOSTILE)
	{
		/// ------ ABER ich bin temp_hostile (d.h. hab gerade gegen den Spieler gekämpft) ------
		if (Npc_GetAttitude(self, other) == ATT_HOSTILE)
		&& ((Npc_GetStateTime(self) > 2) || Npc_IsInState(self,ZS_ObservePlayer))
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
