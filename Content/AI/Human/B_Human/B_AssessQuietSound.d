///******************************************************************************************
///	B_AssessQuietSound
///******************************************************************************************
func void B_AssessQuietSound()
{
	/// ------ SoundSource ist KEIN NPC (kann fallengelassenes Item sein) ------
	if (!Hlp_IsValidNpc(other))
	{
		return;
	};
	
	/// ------- Burgzinnenwachen sollen sich nicht zu Tode stürzen, etc. ------
	if (Npc_GetHeightToNpc(self, other) > PERC_DIST_HEIGHT)
	{
		return;
	};
	
	/// ------- Player im Haus und NSC in anderem Stockwerk ------
	if (Wld_GetPlayerPortalGuild() >= GIL_NONE)
	&& (Npc_GetHeightToNpc(self, other) > PERC_DIST_INDOOR_HEIGHT)
	{
		return;
	};
	
	/// ------- Schlafende wecken oder Schritte im Raum hören ------
	if (B_AssessEnterRoom())
	{
		return;
	};
	
	/// ------ Torwachen reagiern nicht auf Quiet Sound ------
	if (C_NpcIsGateGuard(self))
	{
		return;
	};
	
	/// ------ NPC ist NICHT hostile (upset-(temp-) oder Gilden-hostile) ------
	/// ------ UND hat auch keine Important-Info ------
	if (Npc_GetAttitude(self, other) != ATT_HOSTILE)
	&& (!Npc_CheckInfo(self, 1))
	{
		return;
	};
	
	/// ------ NICHT Override-Enemies ------
	if (Npc_GetAttitude(self, other) == ATT_HOSTILE)
	&& ((self.aivar[AIV_EnemyOverride])
	|| (C_PlayerIsFakeBandit(self, other) && (self.guild == GIL_BDT)))
	{
		return;
	};
	
	/// ------ NPC kann Soundquelle sehen ------
	if (Npc_CanSeeSource(self))
	{
		return;
	};
	
	/// FUNC
	Npc_ClearAIQueue 	(self);
	B_ClearPerceptions	(self);
	AI_StartState 		(self, ZS_ObservePlayer, true, "");
	return;
};
