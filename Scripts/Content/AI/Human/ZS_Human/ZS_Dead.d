///******************************************************************************************
/// ZS_Dead
///******************************************************************************************
func void ZS_Dead()
{
	self.aivar[AIV_Ransacked] = false;
	self.aivar[AIV_PartyMember] = false;
	
	B_StopLookAt		(self);
	AI_StopPointAt		(self);
	AI_UnequipWeapons	(self);
	
//	B_GiveTradeInv		(self);
	B_GiveDeathInv		(self);
	B_ClearRuneInv		(self);
	
	MOD_Defeated (other, self, DBP_Killed);
	
	B_DeletePetzCrime(self);
	self.aivar[AIV_NpcSawPlayerCommit] = CRIME_NONE;
	self.aivar[AIV_TAPOSITION] = false;
	
	if (self.aivar[AIV_MM_REAL_ID] == ID_SWAMPDRONE && Npc_GetDistToNpc(self, hero) < 300)
	{
		MOD_SetPoison(bsPoison + 2);
	};
	
	/// MOD
	if (Npc_IsPlayer(self))
	{
		MOD_SetPoison(0);
	};
};

///******************************************************************************************
func int ZS_Dead_Loop()
{
	/// MOD (temporary)
	if (self.flags & NPC_FLAG_IMPORTANT)
	{
		self.attribute[ATR_HITPOINTS] = 1;
		AI_Wait (self, 10);
		AI_PlayAniBS (self, "T_WOUNDEDB_2_STAND", BS_UNCONSCIOUS);
	};
	
	/// MOD (bugfix)
	if (self.attribute[ATR_HITPOINTS] > 0)
	{
		return LOOP_END;
	};
	
	/// ...
	if (!self.aivar[AIV_TAPOSITION])
	{
		B_DragonKillCounter(self);
		self.aivar[AIV_TAPOSITION] = true;
	};
	
	return LOOP_CONTINUE;
};
