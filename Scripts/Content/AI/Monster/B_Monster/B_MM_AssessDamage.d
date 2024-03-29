///******************************************************************************************
/// B_MM_AssessDamage
///******************************************************************************************
func void B_MM_AssessDamage()
{
	self.aivar[AIV_MM_PRIORITY] = PRIO_ATTACK;
	
//	B_BeliarsWeaponSpecialDamage (other, self);
	
	/// MOD: FinishPercent
	if (Npc_IsPlayer(other) && mFinishPercent > 0 && (self.attribute[ATR_HITPOINTS]*100/self.attribute[ATR_HITPOINTS_MAX]) <= mFinishPercent)
	{
		B_MagicHurtNpc (other, self, self.attribute[ATR_HITPOINTS]);
		Wld_PlayEffect ("VOB_BURN_CHILD1", self, self, 0, 0, 0, false);
	};
	
	/// ...
	if (Npc_HasItems(other, Holy_Hammer_MIS) > 0)
	{
		Npc_GetInvItem(other, Holy_Hammer_MIS);
		
		var C_Npc MagGol; MagGol = Hlp_GetNpc(OreGolem);
		var C_Item OthWeap; OthWeap = Npc_GetReadiedWeapon(other);
		
		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(MagGol))
		&& (Hlp_GetInstanceID(OthWeap) == Hlp_GetInstanceID(item))
		{
			Npc_ChangeAttribute (self, ATR_HITPOINTS, -1000);
			return;
		};
	};
	
	if (self.guild == GIL_STONEGUARDIAN)
	&& (self.aivar[AIV_EnemyOverride])
	{
		B_AWAKE_STONEGUARDIAN(self);
	};
	
	if (C_PredatorFoundPrey(other, self))
	{
		Npc_ClearAIQueue	(self);
		Npc_SetTarget 		(self, other);
		B_ClearPerceptions	(self);
		AI_StartState 		(self, ZS_MM_Flee, false, "");
		return;
	};
	
	if (Npc_IsInState(self, ZS_MM_Attack))
	{
		if (Npc_IsPlayer(other))
		&& (self.aivar[AIV_PARTYMEMBER])
		{
			return;
		};
		
		if (self.aivar[AIV_MM_REAL_ID] == ID_SKELETON)
		&& (other.aivar[AIV_MM_REAL_ID] == ID_SKELETON_MAGE)
		{
			return;
		};
		
		/// FUNC
		if (Hlp_GetInstanceID (other) != self.aivar[AIV_LASTTARGET])
		{
			if (self.aivar[AIV_HitByOtherNpc] == Hlp_GetInstanceID(other))
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
	
	/// FUNC
	Npc_ClearAIQueue	(self);
	Npc_SetTarget		(self, other);
	B_ClearPerceptions	(self);
	AI_StartState		(self, ZS_MM_Attack, false, "");
	return;
};
