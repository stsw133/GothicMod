///******************************************************************************************
///	B_MM_AssessWarn
///******************************************************************************************
func void B_MM_AssessWarn()
{
	/// ------ Orcs reagieren NUR hier auf warns (unten nur Monster) ------
	if (self.guild > GIL_SEPERATOR_ORC)
	{
		if (Npc_IsInState(self,ZS_MM_Attack))
		{
			return;
		};
		
		if (Wld_GetGuildAttitude(self.guild,other.guild) == ATT_FRIENDLY)
		{
			Npc_ClearAIQueue	(self);
			Npc_SetTarget		(self, victim);
			B_ClearPerceptions	(self);
			AI_StartState		(self, ZS_MM_Attack, false, "");
			return;
		};
		
		return;
	};
	
	/// EXIT IF...
	/// ------ warns von Humans ignorieren ------
	if (other.guild < GIL_SEPERATOR_HUM)
	{
		return;
	};
	
	/// ------- Monster sollen sich zu Tode stürzen, etc. ------
	if (Npc_GetHeightToNpc(self,other) > PERC_DIST_HEIGHT)
	{
		return;
	};
	
	/// FUNC
	/// ------ Im ZS_MM_Attack interessieren mich nur die warns von Fress-Opfern ------
	if (Npc_IsInState(self,ZS_MM_Attack))
	{
		if (C_PredatorFoundPrey(self,other))
		&& (self.aivar[AIV_MM_PRIORITY] == PRIO_EAT)
		{
			Npc_ClearAIQueue(self);
			Npc_SetTarget (self, other);
		}
		else
		{
			other = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);
		};
		
		return;
	};
	
	/// ------ Rudelkollege hat warn gesendet ------
	if (self.guild == other.guild)
	&& (self.aivar[AIV_MM_Packhunter] == true)
	{
		/// ------ Sonderfall: Wolf ------
		if (self.guild == GIL_WOLF)
		&& (victim.guild == GIL_WOLF)
		&& (Npc_IsPlayer(victim))
		{
			return;
		};
		
		/// ------ warn aus Attack gesendet ------
		if (Npc_IsInState(other,ZS_MM_Attack))
		{
			Npc_ClearAIQueue	(self);
			Npc_SetTarget		(self, victim);
			B_ClearPerceptions	(self);
			AI_StartState		(self, ZS_MM_Attack, false, "");
			return;
		};
		
		/// ------ warn aus ThreatenEnemy gesendet ------
		if (Npc_IsInState(other,ZS_MM_ThreatenEnemy))
		{
			AI_SetWalkmode (self, NPC_RUN);
			AI_GotoNpc (self, victim);
			return;
		};
	};
	
	return;
};
