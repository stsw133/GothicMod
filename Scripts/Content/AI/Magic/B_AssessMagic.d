///******************************************************************************************
///	B_AssessMagic
///******************************************************************************************
func void B_AssessMagic()
{
	var int dmg;
	
	if (Npc_GetLastHitSpellCat(self) == SPELL_BAD)
	{
		Npc_SendPassivePerc	(self, PERC_ASSESSFIGHTSOUND, self, other);
	};
	
	/// ------ ChargeZap ------
	if (Npc_GetLastHitSpellID(self) == SPL_ChargeZap)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_ShortZapped, 0, "");
		return;
	};
	/// ------ Fear ------
	if (Npc_GetLastHitSpellID(self) == SPL_Fear)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		Npc_SetTarget		(self, other);
		
		if (self.guild < GIL_SEPERATOR_HUM)
		&& (self.guild != GIL_KDF)
		&& (self.guild != GIL_PAL)
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
	/// ------ FireRain ------
	if (Npc_GetLastHitSpellID(self) == SPL_Firerain)
	{
		Npc_ClearAIQueue	(self);
		AI_StartState		(self, ZS_MagicBurnShort, 0, "");
		return;
	};
	/// ------ GreenTentacle ------
	if (Npc_GetLastHitSpellID(self) == SPL_GreenTentacle)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_GreenTentacle, 0, "");
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
	/// ------ SuckEnergy ------
	if (Npc_GetLastHitSpellID(self) == SPL_SuckEnergy)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_SuckEnergy, 0, "");
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
	/// ------ Whirlwind ------
	if (Npc_GetLastHitSpellID(self) == SPL_Whirlwind)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_Whirlwind, 0, "");
		return;
	};
	/// ------ NecLifeSteal ------
	if (Npc_GetLastHitSpellID(self) == SPL_NecLifeSteal)
	{
		dmg = B_GetMagicDamage(other, SPL_Damage_NecLifesteal, SPL_Scaling_NecLifesteal);
		if (self.protection[PROT_MAGIC] >= IMMUNE && self.protection[PROT_MAGIC] < dmg)
		{
			Npc_ChangeAttribute (other, ATR_HITPOINTS, dmg*SPL_Heal_NecLifesteal/100);
		};
		return;
	};
	/// ------ NecDeath ------
	if (Npc_GetLastHitSpellID(self) == SPL_NecDeath)
	{
		dmg = B_GetMagicDamage(other, SPL_Damage_NecDeath, SPL_Scaling_NecDeath);
		if (self.protection[PROT_MAGIC] >= IMMUNE && self.protection[PROT_MAGIC] < dmg)
		{
			B_MagicHurtNpc (other, self, (self.attribute[ATR_HITPOINTS_MAX]-self.attribute[ATR_HITPOINTS])*SPL_Percent_NecDeath/100);
		};
		return;
	};
};
const func PLAYER_PERC_ASSESSMAGIC = B_AssessMagic; 	
