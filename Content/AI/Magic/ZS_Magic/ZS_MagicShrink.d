///******************************************************************************************
///	ZS_MagicShrink
///******************************************************************************************
func int ZS_MagicShrink()
{
	if (!Npc_HasBodyFlag(self,BS_FLAG_INTERRUPTABLE))
	{
		AI_StandUp(self);
	}
	else
	{
		AI_StandUpQuick(self);
	};
	
	self.aivar[AIV_MM_ShrinkState] = 0;
	//SPL_State_Shrink = 0;
};

func int ZS_MagicShrink_Loop()
{	
	if 		(self.aivar[AIV_MM_ShrinkState] == 0)	{	Mdl_SetModelScale(self,	0.90, 0.90, 0.90); self.aivar[AIV_MM_ShrinkState] = 1;		}
	else if	(self.aivar[AIV_MM_ShrinkState] == 1)	{	Mdl_SetModelScale(self,	0.85, 0.85, 0.85); self.aivar[AIV_MM_ShrinkState] = 2;		}
	else if	(self.aivar[AIV_MM_ShrinkState] == 2)	{	Mdl_SetModelScale(self,	0.80, 0.80, 0.80); self.aivar[AIV_MM_ShrinkState] = 3;		}
	else if	(self.aivar[AIV_MM_ShrinkState] == 3)	{	Mdl_SetModelScale(self,	0.75, 0.75, 0.75); self.aivar[AIV_MM_ShrinkState] = 4;		}
	else if	(self.aivar[AIV_MM_ShrinkState] == 4)	{	Mdl_SetModelScale(self,	0.70, 0.70, 0.70); self.aivar[AIV_MM_ShrinkState] = 5;		}
	else if	(self.aivar[AIV_MM_ShrinkState] == 5)	{	Mdl_SetModelScale(self,	0.65, 0.65, 0.65); self.aivar[AIV_MM_ShrinkState] = 6;		}
	else if	(self.aivar[AIV_MM_ShrinkState] == 6)	{	Mdl_SetModelScale(self,	0.60, 0.60, 0.60); self.aivar[AIV_MM_ShrinkState] = 7;		}
 	else if	(self.aivar[AIV_MM_ShrinkState] == 7)	{	Mdl_SetModelScale(self,	0.55, 0.55, 0.55); self.aivar[AIV_MM_ShrinkState] = 8;		}
	else if	(self.aivar[AIV_MM_ShrinkState] == 8)	{	Mdl_SetModelScale(self,	0.50, 0.50, 0.50); self.aivar[AIV_MM_ShrinkState] = 9;		}
	else if	(self.aivar[AIV_MM_ShrinkState] == 9)	{	Mdl_SetModelScale(self,	0.45, 0.45, 0.45); self.aivar[AIV_MM_ShrinkState] = 10;	}
	else if	(self.aivar[AIV_MM_ShrinkState] == 10)	{	Mdl_SetModelScale(self,	0.40, 0.40, 0.40); self.aivar[AIV_MM_ShrinkState] = 11;	}
	else if	(self.aivar[AIV_MM_ShrinkState] == 11)	{	Mdl_SetModelScale(self,	0.35, 0.35, 0.35); self.aivar[AIV_MM_ShrinkState] = 12;	}
	else if	(self.aivar[AIV_MM_ShrinkState] == 12)	{	Mdl_SetModelScale(self,	0.30, 0.30, 0.30); self.aivar[AIV_MM_ShrinkState] = 13;	}
	else if (self.aivar[AIV_MM_ShrinkState] == 13) 	
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, -((self.attribute[ATR_HITPOINTS] * 9) / 10));
		Npc_ChangeAttribute (self, ATR_HITPOINTS_MAX, -((self.attribute[ATR_HITPOINTS_MAX] * 9) / 10));
		Npc_ChangeAttribute (self, ATR_STRENGTH, -((self.attribute[ATR_STRENGTH] * 9) / 10));
		self.protection[PROT_BLUNT] = self.protection[PROT_BLUNT] / 10;
		self.protection[PROT_EDGE] = self.protection[PROT_EDGE] / 10;
		self.protection[PROT_FIRE] = self.protection[PROT_FIRE] / 10;
		self.protection[PROT_FLY] =	0;
		self.protection[PROT_MAGIC] = self.protection[PROT_MAGIC] / 10;
		self.protection[PROT_POINT] = self.protection[PROT_POINT] / 10;
		
		self.aivar[AIV_MM_ShrinkState] = 14;
	}
	else if (self.aivar[AIV_MM_ShrinkState] == 14) 
	{
		Npc_ClearAIQueue(self);
		self.start_aistate = ZS_MagicShrunk;
		AI_StartState (self, ZS_MagicShrunk, 1, "");
		return LOOP_END;
	};
	
	/*
	if (SPL_State_Shrink == 0)			{	Mdl_SetModelScale (self, 0.90, 0.90, 0.90); SPL_State_Shrink = 1;	}
	else if	(SPL_State_Shrink == 1)		{	Mdl_SetModelScale (self, 0.85, 0.85, 0.85); SPL_State_Shrink = 2;	}
	else if	(SPL_State_Shrink == 2)		{	Mdl_SetModelScale (self, 0.80, 0.80, 0.80); SPL_State_Shrink = 3;	}
	else if	(SPL_State_Shrink == 3)		{	Mdl_SetModelScale (self, 0.75, 0.75, 0.75); SPL_State_Shrink = 4;	}
	else if	(SPL_State_Shrink == 4)		{	Mdl_SetModelScale (self, 0.70, 0.70, 0.70); SPL_State_Shrink = 5;	}
	else if	(SPL_State_Shrink == 5)		{	Mdl_SetModelScale (self, 0.65, 0.65, 0.65); SPL_State_Shrink = 6;	}
	else if	(SPL_State_Shrink == 6)		{	Mdl_SetModelScale (self, 0.60, 0.60, 0.60); SPL_State_Shrink = 7;	}
 	else if	(SPL_State_Shrink == 7)		{	Mdl_SetModelScale (self, 0.55, 0.55, 0.55); SPL_State_Shrink = 8;	}
	else if	(SPL_State_Shrink == 8)		{	Mdl_SetModelScale (self, 0.50, 0.50, 0.50); SPL_State_Shrink = 9;	}
	else if	(SPL_State_Shrink == 9)		{	Mdl_SetModelScale (self, 0.45, 0.45, 0.45); SPL_State_Shrink = 10;	}
	else if	(SPL_State_Shrink == 10)	{	Mdl_SetModelScale (self, 0.40, 0.40, 0.40); SPL_State_Shrink = 11;	}
	else if	(SPL_State_Shrink == 11)	{	Mdl_SetModelScale (self, 0.35, 0.35, 0.35); SPL_State_Shrink = 12;	}
	else if	(SPL_State_Shrink == 12)	{	Mdl_SetModelScale (self, 0.30, 0.30, 0.30); SPL_State_Shrink = 13;	}
	else if (SPL_State_Shrink == 13) 	
	{
		Npc_ChangeAttribute (self,ATR_HITPOINTS, -((self.attribute[ATR_HITPOINTS] * 9) / 10));
		Npc_ChangeAttribute (self,ATR_HITPOINTS_MAX, -((self.attribute[ATR_HITPOINTS_MAX] * 9) / 10));
		Npc_ChangeAttribute (self,ATR_STRENGTH, -((self.attribute[ATR_STRENGTH] * 9) / 10));
		self.protection[PROT_BLUNT] = self.protection[PROT_BLUNT] / 10;
		self.protection[PROT_EDGE] = self.protection[PROT_EDGE] / 10;
		self.protection[PROT_FIRE] = self.protection[PROT_FIRE] / 10;
		self.protection[PROT_FLY] = 0;
		self.protection[PROT_MAGIC] = self.protection[PROT_MAGIC] / 10;
		self.protection[PROT_POINT] = self.protection[PROT_POINT] / 10;
		
		SPL_State_Shrink = 14;
	}
	else if (SPL_State_Shrink == 14)
	{
		Npc_ClearAIQueue(self);
		self.start_aistate = ZS_MagicShrunk;
		AI_StartState (self, ZS_MagicShrunk, 1, "");
		
		SPL_State_Shrink = 0;
		SPL_Disallow_Shrink = false;
		
		return LOOP_END;
	};
	*/
	
	AI_Wait (self, 0.38);
	
	return LOOP_CONTINUE;
};

func void ZS_MagicShrink_End()
{
};

///******************************************************************************************
///	ZS_MagicShrunk
///******************************************************************************************
func void ZS_MagicShrunk()
{
	Npc_SetTarget (self, hero);
};

func int ZS_MagicShrunk_Loop()
{
	AI_Flee(self);
	return LOOP_CONTINUE;
};

func void ZS_MagicShrunk_End()
{
};
