///******************************************************************************************
/// B_KillNpc
///******************************************************************************************
func void B_KillNpc (var int npcInstance)
{
	var C_Npc npc; npc = Hlp_GetNpc(npcInstance);
	
	if (Hlp_IsValidNpc(npc))
	&& (!Npc_IsDead(npc))
	{
		npc.flags = default;
		CreateInvItem (npc, ItMi_OldCoin);
		Npc_ChangeAttribute (npc, ATR_HITPOINTS, -npc.attribute[ATR_HITPOINTS_MAX]);
	};
};

///******************************************************************************************
/// B_RemoveNpc
///******************************************************************************************
func void B_RemoveNpc (var int npcInstance)
{
	var C_Npc npc; npc = Hlp_GetNpc(npcInstance);
	
	if (Hlp_IsValidNpc(npc))
	&& (!Npc_IsDead(npc))
	{
		npc.flags = default;
		AI_Teleport (npc, "TOT");
		B_StartOtherRoutine (npc, "TOT");
		Npc_ChangeAttribute (npc, ATR_HITPOINTS, -npc.attribute[ATR_HITPOINTS_MAX]);
		AI_Teleport (npc, "TOT");
	};
};
