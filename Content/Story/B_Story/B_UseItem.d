///******************************************************************************************
///	B_UseItem
///******************************************************************************************
func void B_UseItem (var C_NPC slf, var int itmInstance)
{
	if (C_BodyStateContains(slf, BS_SIT))
	{
		return;
	};
	
	var C_NPC target; target = Npc_GetLookAtTarget(slf);
	
	if (Hlp_IsValidNpc(target))
	{
		B_StopLookAt(slf);
		AI_UseItem (slf, itmInstance);
		B_LookAtNpc (slf, target);
	}
	else
	{
		AI_UseItem (slf, itmInstance);
	};
};
///******************************************************************************************
func void B_UseFakeScroll()
{
	if (C_BodystateContains(self, BS_SIT))
	{
		AI_StandUp	(self);
		B_TurnToNpc	(self, hero);
	};
	
	AI_RemoveWeapon(self);
	CreateInvItem (self, Fakescroll);
	
	var C_NPC target;
	target = Npc_GetLookAtTarget(self);
	
	if (Hlp_IsValidNpc(target))
	{
		B_StopLookAt		(self);
		AI_UseItemToState	(self, Fakescroll, 1);
		AI_Wait				(self, 1);
		AI_UseItemToState	(self, Fakescroll, -1);
		B_LookAtNpc			(self, hero);
	}
	else
	{
		AI_UseItemToState	(self, Fakescroll, 1);
		AI_Wait				(self, 1);
		AI_UseItemToState	(self, Fakescroll, -1);
	};
};
