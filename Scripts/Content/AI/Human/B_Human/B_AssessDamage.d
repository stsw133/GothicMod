///******************************************************************************************
/// B_AssessDamage
///******************************************************************************************
func void B_AssessDamage()
{
	var C_Npc Quarho; Quarho = Hlp_GetNpc(NONE_ADDON_111_Quarhodron);
	var C_Npc Rhadem; Rhadem = Hlp_GetNpc(NONE_ADDON_112_Rhademes);
	
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Quarho))
	|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Rhadem))
	{
		B_GhostSpecialDamage (other, self);
		return;
	};
//	B_BeliarsWeaponSpecialDamage (other, self);
	
	/// MOD: FinishPercent
	if (Npc_IsPlayer(other) && mFinishPercent > 0 && (self.attribute[ATR_HITPOINTS]*100/self.attribute[ATR_HITPOINTS_MAX]) <= mFinishPercent)
	{
		B_MagicHurtNpc (other, self, self.attribute[ATR_HITPOINTS]);
		Wld_PlayEffect ("VOB_BURN_CHILD1", self, self, 0, 0, 0, false);
	};
	
	/// ...
	if (self.aivar[AIV_ArenaFight] == AF_AFTER)
	{
		self.aivar[AIV_ArenaFight] = AF_AFTER_PLUS_DAMAGE;
	};
	
	if (self.aivar[AIV_EnemyOverride])
	{
		var C_Npc RAV; RAV = Hlp_GetNpc(BDT_1090_Addon_Raven);
		if (Hlp_GetInstanceID(self) == (Hlp_GetInstanceID(RAV)))
		{
			self.aivar[AIV_EnemyOverride] = false;
		};
	};
	
	if (Npc_IsInState(self, ZS_Attack))
	{
		if (Npc_IsPlayer(other))
		&& (self.npctype == NPCTYPE_FRIEND)
		{
			return;
		};
		
		if (Npc_IsPlayer(other))
		&& (self.aivar[AIV_PARTYMEMBER])
		{
			return;
		};
		
		/// FUNC
		if (Hlp_GetInstanceID(other) != self.aivar[AIV_LASTTARGET])
		{
			if (self.aivar[AIV_HitByOtherNpc] == Hlp_GetInstanceID(other))
			|| (Hlp_GetInstanceID(other) != Hlp_GetInstanceID(hero)) 
			{
				Npc_SetTarget (self, other);
			}
			else
			{
				self.aivar[AIV_HitByOtherNpc] = Hlp_GetInstanceID(other);
			};
		};
		return;
	};
	
	if (B_AssessEnemy())
	{
		return;
	};
	
	if (!Npc_IsPlayer(other))
	&& (other.aivar[AIV_ATTACKREASON] == AR_NONE)
	{
		B_Attack (self, other, AR_NONE, 0);
		return;
	};
	
	if (Npc_IsInFightMode(other, FMODE_MELEE))
	|| (Npc_IsInFightMode(other, FMODE_FIST))
	|| (Npc_IsInFightMode(other, FMODE_NONE))
	{
		if (Npc_GetAttitude(self, other) == ATT_FRIENDLY)
		|| (self.npctype == NPCTYPE_FRIEND && Npc_IsPlayer(other))
		{
			if (!Npc_IsInState(self, ZS_ReactToDamage))
			{
				Npc_ClearAIQueue	(self);
				B_ClearPerceptions	(self);
				AI_StartState		(self, ZS_ReactToDamage, false, "");
				return;
			};
		};
	};	
	
	/// FUNC
	B_Attack (self, other, AR_ReactToDamage, 0);
	return;
};
