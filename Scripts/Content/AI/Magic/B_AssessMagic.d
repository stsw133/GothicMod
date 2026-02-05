///******************************************************************************************
///	B_AssessMagic
///******************************************************************************************
func void B_AssessMagic()
{
	if (Npc_GetLastHitSpellCat(self) == SPELL_BAD)
	{
		Npc_SendPassivePerc	(self, PERC_ASSESSFIGHTSOUND, self, other);
	};
	
	/// ------ Curse ------
	if (Npc_GetLastHitSpellID(self) == SPL_Curse)
	{
		var int bh; bh = Buff_Has(self, Buff_Curse);
		if (bh)
		{
			Buff_Remove(bh);
		};
		Buff_Apply (self, Buff_Curse);
	};
	/// ------ Fear ------
	if (Npc_GetLastHitSpellID(self) == SPL_Fear)
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
		&& (self.guild != GIL_GOLEM)
		{
			AI_StartState	(self, ZS_MM_Flee, 0, "");
			return;
		};
	};
	/// ------ ChargeZap ------
	if (Npc_GetLastHitSpellID(self) == SPL_ChargeZap)
	{
		Npc_ClearAIQueue	(self);
		AI_StartState		(self, ZS_ShortZapped, 0, "");
		return;
	};
	/// ------ IceCube, IceWave ------
	if (Npc_GetLastHitSpellID(self) == SPL_IceCube)
	|| (Npc_GetLastHitSpellID(self) == SPL_IceWave)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_MagicFreeze, 0, "");
		return;
	};
	/// ------ Firerain ------
	if (Npc_GetLastHitSpellID(self) == SPL_Firerain)
	{
		Npc_ClearAIQueue	(self);
		AI_StartState		(self, ZS_MagicBurnShort, 0, "");
		return;
	};
	/// ------ Whirlwind ------
	if (Npc_GetLastHitSpellID(self) == SPL_Whirlwind)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_Whirlwind, 0, "");
		return;
	};
	/// ------ Fireburning, ChainLightning ------
	if (Npc_GetLastHitSpellID(self) == SPL_Fireburning)
	|| (Npc_GetLastHitSpellID(self) == SPL_ChainLightning)
	{
		if (self.guild < GIL_SEPERATOR_HUM)
		{
			B_AssessDamage();
		}
		else
		{
			Npc_SetTempAttitude (self, ATT_HOSTILE);
		};
		
		return;
	};
	/// ------ Swarm ------
	if (Npc_GetLastHitSpellID(self) == SPL_Swarm)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_Swarm, 0, "");
		return;
	};
	/// ------ Greententacle ------
	if (Npc_GetLastHitSpellID(self) == SPL_Greententacle)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_Greententacle, 0, "");
		return;
	};
	/// ------ SuckEnergy ------
	if (Npc_GetLastHitSpellID(self) == SPL_SuckEnergy)
	{
//		Npc_ClearAIQueue	(self);
//		B_ClearPerceptions	(self);
//		AI_StartState		(self, ZS_SuckEnergy, 0, "");
		
		if (self.protection[PROT_MAGIC] > IMMUNE && self.protection[PROT_MAGIC] < (SPL_Damage_SuckEnergy+other.attribute[ATR_POWER]))
		{
			Npc_ChangeAttribute (other, ATR_HITPOINTS, (SPL_Damage_SuckEnergy+other.attribute[ATR_POWER])/20);
		};
		
		return;
	};
	/// ------ Crush ------
	if (Npc_GetLastHitSpellID(self) == SPL_Crush)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_PlayAni			(self, "T_FALL_2_FALLEN");
//		AI_PlayAni			(self, "S_DEAD");
		AI_Wait				(self, 2);
		AI_PlayAni			(self, "T_FALLEN_2_STAND");
//		AI_StandUp			(self);
		return;
	};
};

const func PLAYER_PERC_ASSESSMAGIC = B_AssessMagic; 	
