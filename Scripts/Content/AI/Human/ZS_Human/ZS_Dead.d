///******************************************************************************************
/// ZS_Dead
///******************************************************************************************
func void ZS_Dead()
{
	self.aivar[AIV_RANSACKED] = false;
	self.aivar[AIV_PARTYMEMBER] = false;
	
	B_StopLookAt		(self);
	AI_StopPointAt		(self);
	AI_UnequipWeapons	(self);
	MOD_Defeated		(other, self, DBP_Killed);
	
	B_GiveTradeInv(self);
	B_GiveDeathInv(self);
	B_ClearRuneInv(self);
	
	B_DeletePetzCrime(self);
	self.aivar[AIV_NpcSawPlayerCommit] = CRIME_NONE;
	self.aivar[AIV_TAPOSITION] = false;
	
	/// MOD
	if (Npc_IsPlayer(self))
	{
		MOD_SetPoison(0);
	};
};

///******************************************************************************************
func int ZS_Dead_loop()
{
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
