///******************************************************************************************
///	ZS_MagicShrink
///******************************************************************************************
func int ZS_MagicShrink()
{
	if (!Npc_HasBodyFlag(self, BS_FLAG_INTERRUPTABLE))
	{
		AI_StandUp(self);
	}
	else
	{
		AI_StandUpQuick(self);
	};
	
	//self.aivar[AIV_MM_ShrinkState] = 0;
};

func int ZS_MagicShrink_Loop()
{
	if 		(self.aivar[AIV_MM_ShrinkState] == 0)	{	Mdl_SetModelScale(self, 0.98, 0.98, 0.98); self.aivar[AIV_MM_ShrinkState] = 1;	}
	else if	(self.aivar[AIV_MM_ShrinkState] == 1)	{	Mdl_SetModelScale(self, 0.96, 0.96, 0.96); self.aivar[AIV_MM_ShrinkState] = 2;	}
	else if	(self.aivar[AIV_MM_ShrinkState] == 2)	{	Mdl_SetModelScale(self, 0.94, 0.94, 0.94); self.aivar[AIV_MM_ShrinkState] = 3;	}
	else if	(self.aivar[AIV_MM_ShrinkState] == 3)	{	Mdl_SetModelScale(self, 0.92, 0.92, 0.92); self.aivar[AIV_MM_ShrinkState] = 4;	}
	else if	(self.aivar[AIV_MM_ShrinkState] == 4)	{	Mdl_SetModelScale(self, 0.90, 0.90, 0.90); self.aivar[AIV_MM_ShrinkState] = 5;	}
	else if	(self.aivar[AIV_MM_ShrinkState] == 5)	{	Mdl_SetModelScale(self, 0.88, 0.88, 0.88); self.aivar[AIV_MM_ShrinkState] = 6;	}
	else if	(self.aivar[AIV_MM_ShrinkState] == 6)	{	Mdl_SetModelScale(self, 0.86, 0.86, 0.86); self.aivar[AIV_MM_ShrinkState] = 7;	}
 	else if	(self.aivar[AIV_MM_ShrinkState] == 7)	{	Mdl_SetModelScale(self, 0.84, 0.84, 0.84); self.aivar[AIV_MM_ShrinkState] = 8;	}
	else if	(self.aivar[AIV_MM_ShrinkState] == 8)	{	Mdl_SetModelScale(self, 0.82, 0.82, 0.82); self.aivar[AIV_MM_ShrinkState] = 9;	}
	else if	(self.aivar[AIV_MM_ShrinkState] == 9)	{	Mdl_SetModelScale(self, 0.80, 0.80, 0.80); self.aivar[AIV_MM_ShrinkState] = 10;	}
	else if	(self.aivar[AIV_MM_ShrinkState] == 10)	{	Mdl_SetModelScale(self, 0.78, 0.78, 0.78); self.aivar[AIV_MM_ShrinkState] = 11;	}
	else if	(self.aivar[AIV_MM_ShrinkState] == 11)	{	Mdl_SetModelScale(self, 0.76, 0.76, 0.76); self.aivar[AIV_MM_ShrinkState] = 12;	}
	else if	(self.aivar[AIV_MM_ShrinkState] == 12)	{	Mdl_SetModelScale(self, 0.74, 0.74, 0.74); self.aivar[AIV_MM_ShrinkState] = 13;	}
	else if (self.aivar[AIV_MM_ShrinkState] == 13) 	
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, -((self.attribute[ATR_HITPOINTS] * 3) / 10));
		Npc_ChangeAttribute (self, ATR_HITPOINTS_MAX, -((self.attribute[ATR_HITPOINTS_MAX] * 3) / 10));
		Npc_ChangeAttribute (self, ATR_STRENGTH, -((self.attribute[ATR_STRENGTH] * 3) / 10));
		self.protection[PROT_BLUNT] = self.protection[PROT_BLUNT] / 3;
		self.protection[PROT_EDGE] = self.protection[PROT_EDGE] / 3;
		self.protection[PROT_FIRE] = self.protection[PROT_FIRE] / 3;
		self.protection[PROT_FLY] =	0;
		self.protection[PROT_MAGIC] = self.protection[PROT_MAGIC] / 3;
		self.protection[PROT_POINT] = self.protection[PROT_POINT] / 3;
		
		self.aivar[AIV_MM_ShrinkState] = 14;
	}
	else if (self.aivar[AIV_MM_ShrinkState] == 14)
	{
		Npc_ClearAIQueue(self);
		self.start_aistate = ZS_MagicShrunk;
		AI_StartState (self, ZS_MagicShrunk, 1, "");
		return LOOP_END;
	};
	
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
	//AI_Flee(self);
	return LOOP_CONTINUE;
};

func void ZS_MagicShrunk_End()
{
};
