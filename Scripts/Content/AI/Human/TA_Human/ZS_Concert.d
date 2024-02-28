///******************************************************************************************
/// ZS_Concert
///******************************************************************************************
func void ZS_Concert()
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

func int ZS_Concert_Loop()
{
	if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
	{
		if		(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(PIR_1394_IE_YellowPfeiffer))	{	AI_UseItemToState (self, ItMi_IEDudelGelb, 1);	}
		else if	(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(PIR_1390_IE_DrPymonte))		{	AI_UseItemToState (self, ItMi_IEHarfe, 1);		}
		else if	(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(PIR_1391_IE_TheFlail))		{	AI_UseItemToState (self, ItMi_IEdrum, 1);		}
		else if	(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(PIR_1392_IE_ThomasTheForger))	{	AI_UseItemToState (self, ItMi_IECello, 1);		}
		else if	(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(PIR_1393_IE_Unicorn))			{	AI_UseItemToState (self, ItMi_IELaute, 1);		}
		else if	(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(PIR_1395_IE_Lutter))			{	AI_UseItemToState (self, ItMi_IEDrumscheit, 1);	}
		else if	(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(PIR_1396_IE_Flex))			{	AI_UseItemToState (self, ItMi_IEDudelBlau, 1);	};
		
		self.aivar[AIV_TAPOSITION] = ISINPOS;
	};
	
	return LOOP_CONTINUE;
};

func void ZS_Concert_End()
{
	if		(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(PIR_1394_IE_YellowPfeiffer))	{	AI_UseItemToState (self, ItMi_IEDudelGelb, -1);	}
	else if	(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(PIR_1390_IE_DrPymonte))		{	AI_UseItemToState (self, ItMi_IEHarfe, -1);		}
	else if	(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(PIR_1391_IE_TheFlail))		{	AI_UseItemToState (self, ItMi_iedrum, -1);		}
	else if	(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(PIR_1392_IE_ThomasTheForger))	{	AI_UseItemToState (self, ItMi_IECello, -1);		}
	else if	(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(PIR_1393_IE_Unicorn))			{	AI_UseItemToState (self, ItMi_IELaute, -1);		}
	else if	(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(PIR_1395_IE_Lutter))			{	AI_UseItemToState (self, ItMi_IEDrumscheit, -1);	};
};
