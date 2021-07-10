///******************************************************************************************
///	B_StopLookAt
///******************************************************************************************
func void B_StopLookAt (var C_NPC slf)
{
	var C_NPC target; target = Npc_GetLookAtTarget(slf);
	if (Hlp_IsValidNpc(target))
	{
		AI_StopLookAt(slf);
	};
};

///******************************************************************************************
///	B_LookAtNpc
///******************************************************************************************
func void B_LookAtNpc (var C_NPC slf, var C_NPC oth)
{
	B_StopLookAt(slf);
	AI_LookAtNpc (slf, oth);
};

///******************************************************************************************
///	B_TurnToNpc
///******************************************************************************************
func void B_TurnToNpc (var C_NPC slf, var C_NPC oth)
{
	if (!Npc_CanSeeNpc(slf, oth))
	{
		AI_PlayAni (slf, "T_QUICKTURN");
	};
	AI_TurnToNpc (slf, oth);
};

///******************************************************************************************
///	B_ResetAll
///******************************************************************************************
func void B_ResetAll (var C_NPC slf)
{
	B_StopLookAt(slf);
	if (!movieMode)
	{
		AI_RemoveWeapon(slf);
	};
};
