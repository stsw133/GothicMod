///******************************************************************************************
/// ZS_Unconscious
///******************************************************************************************
func void ZS_Unconscious()
{
	Npc_PercEnable (self, PERC_ASSESSMAGIC, B_AssessMagic);
	
	if (C_BodyStateContains(self, BS_SWIM))
	|| (C_BodyStateContains(self, BS_DIVE))
	{
		Npc_ClearAIQueue 	(self);
		B_ClearPerceptions	(self);
		AI_StartState 		(self, ZS_Dead, false, "");
		return;
	};
	
	/// FUNC
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;
	
	Npc_SetRefuseTalk	(self, 0);
	Npc_SetTempAttitude	(self, Npc_GetPermAttitude(self, hero));
	B_StopLookAt		(self);
	AI_StopPointAt		(self);
	AI_UnequipWeapons	(self);
	
	MOD_Defeated (other, self, DBP_Defeated);
	
	if (self.guild < GIL_SEPERATOR_HUM)
	&& (Npc_IsPlayer(other))
	{
		self.aivar[AIV_LastFightAgainstPlayer] = FIGHT_LOST;
		
		if (self.aivar[AIV_ArenaFight] == AF_RUNNING)
		{
			self.aivar[AIV_ArenaFight] = AF_AFTER;
		};
	};
	
	if (Npc_IsPlayer(self))
	{
		other.aivar[AIV_LastFightAgainstPlayer] = FIGHT_WON;
		
		if (other.aivar[AIV_ArenaFight] == AF_RUNNING)
		{
			other.aivar[AIV_ArenaFight] = AF_AFTER;
		};
	};
	
	/// MOD (to check if it is even neeeded)
	B_GiveTradeInv(self);
	B_ClearRuneInv(self);
};

///******************************************************************************************
func int ZS_Unconscious_Loop()
{
	if (Npc_GetStateTime(self) < HAI_TIME_UNCONSCIOUS)
	{
		return LOOP_CONTINUE;
	}
	else
	{
		return LOOP_END;
	};
};

///******************************************************************************************
func void ZS_Unconscious_End()
{
	self.aivar[AIV_RANSACKED] = false;
	
	AI_StandUp(self);
	
	if (Npc_IsPlayer(self))
	{
		return;
	};
	
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Raven))
	{
		self.aivar[AIV_MagicUser] = true;
		B_Attack (self, hero, AR_GuildEnemy, 0);
		return;
	};
	
	/// FUNC
	if (Npc_CanSeeNpcFreeLOS(self, other))
	&& (Npc_GetDistToNpc(self, other) < PERC_DIST_INTERMEDIAT)
	{
		B_TurnToNpc (self, other);
		
		if (C_NpcIsToughGuy(self))
		&& (Npc_GetPermAttitude(self, other) != ATT_HOSTILE)
		&& (self.npctype != NPCTYPE_FRIEND)
		{
			B_Say (self, other, "$NEXTTIMEYOUREINFORIT");
		}
		else
		{
			B_Say (self, other, "$OHMYHEAD");
		};
	};
	
	Npc_PerceiveAll(self);
	
	if (Wld_DetectItem(self, ITEM_KAT_NF) || Wld_DetectItem(self, ITEM_KAT_FF))
	&& (Hlp_IsValidItem(item))
	&& (Npc_GetDistToItem(self, item) <= 500)
	{
		AI_TakeItem (self, item);
	};
	
	AI_EquipBestMeleeWeapon(self);
	AI_EquipBestRangedWeapon(self);
	
	AI_StartState (self, ZS_HealSelf, false, "");
	return;
};
