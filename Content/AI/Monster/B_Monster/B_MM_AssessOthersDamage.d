///******************************************************************************************
///	B_MM_AssessOthersDamage
///******************************************************************************************
func void B_MM_AssessOthersDamage()
{
	/// ------ POISON ------
	if (Npc_IsPlayer(victim))
	&& ((self.aivar[AIV_MM_REAL_ID] == ID_BLOODFLY)
	|| (self.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLER)
	|| (self.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERWARRIOR)
//	|| (self.aivar[AIV_MM_REAL_ID] == ID_TREANT)
	|| (self.aivar[AIV_MM_REAL_ID] == ID_SWAMPDRONE)
	|| (self.aivar[AIV_MM_REAL_ID] == ID_SWAMPBITER)
	|| (self.aivar[AIV_MM_REAL_ID] == ID_SWAMPSHARK))
	{
		MOD_PoisonON();
	};
	
	///EXIT IF...
	/// ------ wenn ich zu weit weg bin ------	///wichtig für Aufruf über FIGHTSOUND aus ZS_MM_Rtn_Summoned
	if (Npc_GetDistToNpc(self,victim) > PERC_DIST_INTERMEDIAT)
	&& (Npc_GetDistToNpc(self,other) > PERC_DIST_INTERMEDIAT)
	{
		return;
	};
	
	/// ------ wenn Opfer hinter Wand ------
	if (!Npc_CanSeeNpcFreeLOS(self,victim))
	{
		return;
	};
	
	/// ------ Party-Monster -----
	if (self.aivar[AIV_PARTYMEMBER] == true)
	{
		/// ------ Player wird angegriffen ------
		if (Npc_IsPlayer(victim))
		{
			Npc_ClearAIQueue	(self);
			B_ClearPerceptions	(self);
			Npc_SetTarget		(self, other);
			AI_StartState		(self, ZS_MM_Attack, false, "");
			return;
		};
		
		/// ------ Player greift an ------
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
	
	/// ------ Sonderfall: Wolf ------
	if (self.guild == GIL_WOLF)
	{
		if (victim.guild == GIL_WOLF)
		&& (other.guild == GIL_WOLF)
		&& (Npc_IsPlayer(other))
		&& (Npc_IsDead(victim)) 
		{
			Npc_ClearAIQueue(self);
			B_ClearPerceptions(self);
			self.start_aistate = ZS_MM_Rtn_Summoned;
			AI_StartState (self, ZS_MM_Rtn_Summoned, false, "");
			return;
		};
	};
	
	///FUNC
	if (self.guild == GIL_STONEGUARDIAN)
	&& (victim.guild == GIL_STONEGUARDIAN)
	&& (self.aivar[AIV_EnemyOverride] == true)
	{
		B_AWAKE_STONEGUARDIAN(self);
	};	
	
	/// ------ Freund wird angegriffen ------
	if (Wld_GetGuildAttitude(self.guild,victim.guild) == ATT_FRIENDLY)
	&& (Wld_GetGuildAttitude(self.guild,other.guild) != ATT_FRIENDLY)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		Npc_SetTarget		(self, other);
		AI_StartState		(self, ZS_MM_Attack, false, "");
		return;
	};
	
	/// ------ Freund greift an ------
	if (Wld_GetGuildAttitude(self.guild,other.guild) == ATT_FRIENDLY)
	&& (Wld_GetGuildAttitude(self.guild,victim.guild) != ATT_FRIENDLY)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		Npc_SetTarget		(self, victim);
		AI_StartState		(self, ZS_MM_Attack, false, "");
		return;
	};
};
