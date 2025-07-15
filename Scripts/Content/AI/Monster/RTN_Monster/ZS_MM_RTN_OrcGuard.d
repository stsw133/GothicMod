///******************************************************************************************
/// ZS_MM_Rtn_OrcGuard
///******************************************************************************************
func void ZS_MM_Rtn_OrcGuard() 
{
	Perception_Set_Monster_Rtn();
	
	AI_SetWalkmode (self, NPC_WALK);
	B_DeSynchronize();
	
	if (!Hlp_StrCmp(Npc_GetNearestWP(self), self.wp))
	{
		AI_GotoWP (self, self.WP);
	};
	
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

///******************************************************************************************
func int ZS_MM_Rtn_OrcGuard_loop()
{
	if (Npc_IsOnFP(self, "ROAM"))
	{
		AI_AlignToFP(self);
		if (self.aivar[AIV_TAPOSITION] == NOTINPOS_WALK)
		{
			self.aivar[AIV_TAPOSITION] = NOTINPOS;
		};
	}
	else if (Wld_IsFPAvailable(self, "ROAM"))
	{
		AI_GotoFP		(self, "ROAM");
		AI_StandUp		(self);
		AI_AlignToFP	(self);
		
		self.aivar[AIV_TAPOSITION] = NOTINPOS_WALK;
	}
	else
	{
		AI_AlignToWP(self); 
		if (self.aivar[AIV_TAPOSITION] == NOTINPOS_WALK)
		{
			self.aivar[AIV_TAPOSITION] = NOTINPOS;
		};
	};
	
	if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
	&& (Npc_IsOnFP(self, "ROAM"))
	{
		if (!Npc_HasItems(self, ItMw_2H_OrcHalberd_01))
		{
			CreateInvItems (self, ItMw_2H_OrcHalberd_01, 1);
			//EquipItem (self, ItMw_2H_OrcHalberd_01);
			AI_EquipBestMeleeWeapon(self);
		};
		
		AI_ReadyMeleeWeapon	(self);
		AI_AlignToFP		(self);
		AI_StandUp			(self);
		AI_PlayAni			(self, "T_STAND_2_HALBERD");
		
		self.aivar[AIV_TAPOSITION] = ISINPOS;
	};
	
	return LOOP_CONTINUE;
};

///******************************************************************************************
func void ZS_MM_Rtn_OrcGuard_end()
{
};
