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
	if (self.aivar[AIV_DebuffID] == SPL_NecCurse && (Npc_IsPlayer(other) || other.aivar[AIV_PARTYMEMBER]))	{	Spell_Summon_NecCurse(other, self);	};
	if (self.aivar[AIV_PartyMember] && self.guild == GIL_SUMMONED && NPC_NecSkeleton_Total > 0)				{	NPC_NecSkeleton_Total -= 1;			};
};

///******************************************************************************************
func int ZS_Dead_loop()
{
	if (!self.aivar[AIV_TAPOSITION])
	{
		B_DragonKillCounter(self);
		self.aivar[AIV_TAPOSITION] = true;
	};
	return LOOP_CONTINUE;
};
