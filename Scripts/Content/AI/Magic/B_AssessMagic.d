///******************************************************************************************
///	B_AssessMagic
///******************************************************************************************
func void B_AssessMagic()
{
	if (Npc_GetLastHitSpellCat(self) == SPELL_BAD)
	{
		Npc_SendPassivePerc	(self, PERC_ASSESSFIGHTSOUND, self, other);
	};
	
	
	
	/// ------ Whirlwind ------
	if (Npc_GetLastHitSpellID(self) == SPL_Whirlwind)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_Whirlwind, 0, "");
		return;
	}
	/// ------ Fear ------
	else if (Npc_GetLastHitSpellID(self) == SPL_Fear)	
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		Npc_SetTarget		(self, other);
		
		if (self.guild < GIL_SEPERATOR_HUM && self.guild != GIL_KDF && self.guild != GIL_PAL)
		{
			AI_StartState	(self, ZS_MagicFlee, 0, "");
			return;
		}
		else if (self.guild > GIL_SEPERATOR_HUM)
		&& (self.guild != GIL_DRAGON)
		&& (self.guild != GIL_TROLL)
		&& (self.guild != GIL_STONEGOLEM && self.guild != GIL_ICEGOLEM && self.guild != GIL_FIREGOLEM)
		{
			AI_StartState	(self, ZS_MM_Flee, 0, "");
			return;
		};
	}
	/// ------ ChargeZap ------
	else if (Npc_GetLastHitSpellID(self) == SPL_ChargeZap)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_ShortZapped, 0, "");
		return;
	};
	/// ------ SuckEnergy ------
	/*
	if (Npc_GetLastHitSpellID(self) == SPL_SuckEnergy)
	if (Npc_GetLastHitSpellID(self) == SPL_SuckEnergy)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_SuckEnergy, 0, "");
		return;
	};
	*/
	/// ------ GreenTentacle ------
	/*
	if (Npc_GetLastHitSpellID(self) == SPL_Greententacle)	
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_Greententacle, 0, "");
		return;
	};
	*/
	/// ------ Swarm ------
	/*
	if (Npc_GetLastHitSpellID(self) == SPL_Swarm)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_Swarm, 0, "");
		return;
	};
	*/
	/// ------ IceCube, IceWave ------
	/*
	if (Npc_GetLastHitSpellID(self) == SPL_IceCube)
	|| (Npc_GetLastHitSpellID(self) == SPL_IceWave)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_MagicFreeze, 0, "");
		return;
	};
	*/
	/// ------ FireRain ------
	/*
	if (Npc_GetLastHitSpellID(self) == SPL_Firerain)		
	{	
		Npc_ClearAIQueue	(self);
		//B_ClearPerceptions	(self);	//Sonst reagiert der NPC nicht!
		AI_StartState		(self, ZS_MagicBurnShort, 0, "");
		return;
	};
	*/
};
const func PLAYER_PERC_ASSESSMAGIC = B_AssessMagic; 	
