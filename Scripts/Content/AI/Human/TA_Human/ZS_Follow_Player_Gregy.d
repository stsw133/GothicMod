///******************************************************************************************
func void PIR_1302_Gregy_Rise(var C_Npc slf)
{
	if (Npc_IsDead(slf) && Npc_GetDistToNpc(slf, hero) > 3000)
	{
		slf.attribute[ATR_HITPOINTS] = 1;
		AI_PlayAni (slf, "T_FALLEN_2_STAND");
		AI_PlayAni (slf, "R_ROAM2");
	};
	
	B_SetAttitude (slf, ATT_FRIENDLY);
	slf.aivar[AIV_PartyMember] = true;
	B_StartOtherRoutine (slf, "FOLLOW");
};

///******************************************************************************************
func void B_AssessFollowPlayer_Gregy()
{
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DiegoOW))
	{
		if (Npc_GetDistToNpc(self, hero) < self.aivar[AIV_FollowDist])
		&& (!self.aivar[AIV_TAPOSITION])
		{
			Npc_ClearAIQueue(self);
			AI_StandUp(self);
			self.aivar[AIV_TAPOSITION] = true;
		}
		else
		{
			B_AssessPlayer();
		};
		
		return;
	};
	
	if (Npc_GetDistToNpc(self, hero) < self.aivar[AIV_FollowDist])
	&& (!self.aivar[AIV_TAPOSITION])
	{
		Npc_ClearAIQueue(self);
		AI_StandUp(self);
		B_LookAtNpc(self, hero); /// new!!!
		self.aivar[AIV_TAPOSITION] = true;
	}
	else
	{
		B_AssessPlayer();
	};
};

///******************************************************************************************
/// ZS_Follow_Player_Gregy
///******************************************************************************************
func void ZS_Follow_Player_Gregy()
{
	Npc_SetPercTime	(self, 0.3);
	Perception_Set_Minimal();
	Npc_PercEnable (self, PERC_ASSESSPLAYER, B_AssessFollowPlayer_Gregy);
	Npc_PercEnable (self, PERC_ASSESSENEMY, B_AssessEnemy);
	Npc_PercEnable (self, PERC_ASSESSTALK, B_AssessTalk);
	Npc_PercEnable (self, PERC_MOVEMOB, B_MoveMob);
	Npc_PercEnable (self, PERC_ASSESSFIGHTSOUND, B_AssessFollowFightSound);
	
	B_ResetAll(self);
	AI_StandUp(self);
	AI_SetWalkmode (self, NPC_RUN);
};

func int ZS_Follow_Player_Gregy_Loop()
{
	Npc_PerceiveAll(self);
	
	Wld_DetectItem(self, ITEM_KAT_NF | ITEM_KAT_FF | ITEM_KAT_MUN | ITEM_KAT_NONE | ITEM_KAT_KEYS | ITEM_KAT_LIGHT | ITEM_KAT_ARMOR | ITEM_KAT_RUNE | ITEM_KAT_DOCS | ITEM_KAT_MAGIC | ITEM_KAT_FOOD | ITEM_KAT_POTIONS);
	if (Hlp_IsValidItem(item) && item.value > 0 && Npc_GetDistToItem(self, item) < 500 && Npc_GetHeightToItem(self, item) < 100)
	{
		AI_GotoItem (self, item);
		AI_TakeItem (self, item);
		
		if (Hlp_IsItem(item, ItFo_Booze) && Npc_HasItems(self, ItFo_Booze))
		{
			AI_UseItem(self, ItFo_Booze);
		}
		else if (Hlp_IsItem(item, ItMi_Joint) && Npc_HasItems(self, ItMi_Joint))
		{
			AI_UseItem(self, ItMi_Joint);
		};
	}
	else if (Npc_GetDistToNpc(self, hero) > self.aivar[AIV_FollowDist])
	{
		if (!C_BodyStateContains(self, BS_SWIM))
		{
			//if (Npc_GetDistToNpc(self, hero) > 1000 && !Npc_CanSeeNpc(hero, self))	{ AI_SetWalkmode (self, NPC_WALK); }
			//else																	{ AI_SetWalkmode (self, NPC_RUN); };
			AI_SetWalkmode (self, NPC_RUN);
		};
		
		AI_GotoNpc (self, hero);
		self.aivar[AIV_TAPOSITION] = false;
	}
	else if (Npc_GetStateTime(self) > 1)
	{
		if (!Npc_CanSeeNpc(self, hero))
		{
			B_TurnToNpc (self, hero);
		};
		
		Npc_SetStateTime (self, 0);
	};
	
	self.wp = Npc_GetNearestWP(hero);
	return LOOP_CONTINUE;
};

func void ZS_Follow_Player_Gregy_End()
{
};
