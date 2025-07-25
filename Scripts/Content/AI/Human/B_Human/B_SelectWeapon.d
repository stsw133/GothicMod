///******************************************************************************************
/// B_SelectWeapon
///******************************************************************************************
func void B_SelectWeapon (var C_Npc slf, var C_Npc oth)
{
	if (C_BodyStateContains(slf, BS_DIVE))
	|| (C_BodyStateContains(slf, BS_FALL))
	|| (C_BodyStateContains(slf, BS_SWIM))
	{
		return;
	};
	
	if (B_SelectSpell(slf, oth))
	{
		/// MOD (bugfix)
		if (slf.guild > GIL_SEPERATOR_HUM && !Npc_IsInFightMode(slf, FMODE_MAGIC))
		{
			if (!Npc_IsInFightMode(slf, FMODE_NONE) && !Npc_IsInFightMode(slf, FMODE_FIST))
			{
				if (C_BodyStateContains(slf, BS_RUN))
				{
					Npc_ClearAIQueue(slf);
					B_ClearPerceptions(slf);
				};
				AI_RemoveWeapon(slf);
			}
			else
			{
				slf.weapon = 0;
			};
		};
		/// ...
		return;
	}
	else
	{
		/// MOD (bugfix)
		if (slf.guild > GIL_SEPERATOR_HUM && Npc_IsInFightMode(slf, FMODE_MAGIC))
		{
			Npc_ClearAIQueue(slf);
			B_ClearPerceptions(slf);
			
			Npc_SetToFightMode(slf, FMODE_NONE);
		};
	};
	
	if (Npc_IsInFightMode(slf, FMODE_MAGIC))
	{
		if (!Npc_IsInFightMode(slf, FMODE_NONE))
		{
			AI_RemoveWeapon(slf);
		};
		
		AI_ReadyMeleeWeapon(slf);
		return;
	};
	
	if (Npc_IsInFightMode(slf, FMODE_FAR))
	{
		if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_RANGED_INNER) 
		|| (!Npc_HasEquippedMeleeWeapon(slf))
		{
			return;
		};
	};
	
	if (Npc_IsInFightMode(slf, FMODE_MELEE))
	{
		if (Npc_GetDistToNpc(slf, oth) <= FIGHT_DIST_RANGED_OUTER)
		|| (!Npc_HasEquippedRangedWeapon(slf))
		{
			return;
		};
	};
	
	if (Npc_HasEquippedMeleeWeapon(slf))
	&& (Npc_GetDistToNpc(slf, oth) <= FIGHT_DIST_RANGED_OUTER)
	{
		if (!Npc_IsInFightMode(slf, FMODE_NONE))
		{
			AI_RemoveWeapon(slf);
		};
		
		AI_ReadyMeleeWeapon(slf);
		return;
	};
	
	if (Npc_HasEquippedRangedWeapon(slf))
	&& (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_RANGED_INNER)
	&& (C_NpcHasAttackReasonToKill(slf) || Npc_GetAttitude(slf, oth) == ATT_HOSTILE)
	{
		if (!Npc_IsInFightMode(slf, FMODE_NONE))
		{
			AI_RemoveWeapon(slf);
		};
		
		AI_ReadyRangedWeapon(slf);
		return;
	};
	
	if (Npc_IsInFightMode(slf, FMODE_NONE))
	{
		if (Npc_HasEquippedMeleeWeapon(slf))
		{
			AI_ReadyMeleeWeapon(slf);
			return;
		};
		
		if (Npc_HasEquippedRangedWeapon(slf))
		{
			AI_ReadyRangedWeapon(slf);
			return;
		};
		
		AI_ReadyMeleeWeapon(slf);
		return;
	};
	
	return;
};
