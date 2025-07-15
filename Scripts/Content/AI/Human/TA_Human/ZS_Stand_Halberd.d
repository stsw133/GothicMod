///******************************************************************************************
/// ZS_Stand_Halberd
///******************************************************************************************
func void ZS_Stand_Halberd()
{
	Perception_Set_Normal();
	
	B_ResetAll		(self);
	AI_SetWalkmode	(self, NPC_WALK);
	
	if (Npc_GetDistToWP(self,self.wp) > TA_DIST_SELFWP_MAX)
	{
		AI_GotoWP (self, self.wp);
	};
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

func int ZS_Stand_Halberd_loop()
{
	if (Npc_IsOnFP(self, "STAND"))
	{ 
		AI_AlignToFP(self);
		if (self.aivar[AIV_TAPOSITION] == NOTINPOS_WALK)
		{
			self.aivar[AIV_TAPOSITION] = NOTINPOS;
		};
	} 
	else if (Wld_IsFPAvailable(self,"STAND"))
	{
		AI_GotoFP		(self, "STAND");
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
	//&& (Npc_IsOnFP(self, "STAND"))
	{
		if (!Npc_HasItems(self, ItMw_2H_OrcHalberd_01))
		&& (self.aivar[AIV_Gender] >= ORCMALE || self.guild > GIL_SEPERATOR_ORC)
		{
			CreateInvItems	(self, ItMw_2H_OrcHalberd_01, 1);
			//EquipItem (self, ItMw_2H_OrcHalberd_01);
			AI_EquipBestMeleeWeapon (self);
		}
		else if (!Npc_HasItems(self, ItMw_2h_Mil_Halberd))
		{
			CreateInvItems (self, ItMw_2h_Mil_Halberd, 1);
			//EquipItem (self, ItMw_2h_Mil_Halberd);
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
