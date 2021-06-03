///******************************************************************************************
///	B_AssessThreat
///******************************************************************************************
func void B_AssessThreat()
{
	/// ------ weiter weg als PERC_DIST für ASSESSTHREAT ------
	if (Npc_GetDistToNpc(self, other) > PERC_DIST_INTERMEDIAT)
	{
		return;
	};
	
	/// ------ NPC kann den Spieler nicht sehen ------
	if (!Npc_CanSeeNpc(self, other))
	{
		return;
	};
	
	/// ------ gezogene Waffen sind diesem NPC egal ------
	if (!C_NpcIsBotheredByWeapon(self, other))
	{
		return;
	};
	
	Npc_ClearAIQueue	(self);
	B_ClearPerceptions	(self);
	AI_StartState 		(self, ZS_ReactToWeapon, false, "");
	return;
};
