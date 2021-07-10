///******************************************************************************************
///	B_AssessDamage
///******************************************************************************************
func void B_AssessDamage()
{
	var C_NPC Quarho; Quarho = Hlp_GetNpc(NONE_ADDON_111_Quarhodron);
	var C_NPC Rhadem; Rhadem = Hlp_GetNpc(NONE_ADDON_112_Rhademes);
	
	if ((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Quarho)))
	|| ((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Rhadem)))
	{
		B_GhostSpecialDamage (other, self);
		return;
	};
	
	B_WeaponSpecialDamage (other, self);
	
	/// MASTERIES & SPECIAL WEAPONS & SELF FIGHT TEACH
	if (Npc_IsPlayer(other))
	{
		if (!C_BodyStateContains(self, BS_PARADE))
		{
			SPECIALWEAPONDAMAGE_CHECK();
		};
		SelfFightTeach_CHECK (other, other.weapon-2);
	};
	
	/// AIVARS
	if (self.aivar[AIV_ArenaFight] == AF_AFTER)
	{
		self.aivar[AIV_ArenaFight] = AF_AFTER_PLUS_DAMAGE;
	};
	
	if (self.aivar[AIV_EnemyOverride])
	{
		var C_NPC RAV; RAV = Hlp_GetNpc(BDT_1090_Addon_Raven);
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
				/// FUNC
				Npc_ClearAIQueue	(self);
				B_ClearPerceptions	(self);
				AI_StartState		(self, ZS_ReactToDamage, false, "");
				return;
			};
		};
	};	
	
	B_Attack (self, other, AR_ReactToDamage, 0);
	return;
};
