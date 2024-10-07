///******************************************************************************************
/// ZS_MM_Attack
///******************************************************************************************
func void B_MM_AssessSurprise()
{
	Npc_SetTarget (self, other);
};

///******************************************************************************************
func void ZS_MM_Attack()
{
	Npc_SetPercTime (self, 1);
	Npc_PercEnable (self, PERC_ASSESSBODY, B_MM_AssessBody);
	Npc_PercEnable (self, PERC_ASSESSMAGIC, B_AssessMagic);
	Npc_PercEnable (self, PERC_ASSESSDAMAGE, B_MM_AssessDamage);
	Npc_PercEnable (self, PERC_ASSESSWARN, B_MM_AssessWarn);
	Npc_PercEnable (self, PERC_ASSESSSURPRISE, B_MM_AssessSurprise);
	
	B_ValidateOther();
	
	if (self.guild == GIL_LIVESTOCK && self.level <= 1)
	|| (self.guild == GIL_WILD && self.level <= 1)
	{
		Npc_ClearAIQueue 	(self);
		B_ClearPerceptions 	(self);
		Npc_SetTarget		(self, other);
		AI_StartState 		(self, ZS_MM_Flee, false, "");
		return;
	};
	
	/// FUNC
	AI_StandUp		(self);
	AI_SetWalkmode 	(self, NPC_RUN);
	
	Npc_SendPassivePerc	(self, PERC_ASSESSWARN,	other, self);
	
	self.aivar[AIV_PursuitEnd] = false;
	self.aivar[AIV_StateTime] = 0;
	self.aivar[AIV_HitByOtherNpc] = 0;
	self.aivar[AIV_SelectSpell] = 0;
	self.aivar[AIV_TAPOSITION] = 0;
};

///******************************************************************************************
func int ZS_MM_Attack_Loop()
{
	Npc_GetTarget(self);
	
	if (self.guild == GIL_DRAGON)
	|| (self.aivar[AIV_MM_Real_ID] == ID_AVATAR) /// new!!!
	{
		self.aivar[AIV_TAPOSITION] += 1;
		if (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX])
		&& (self.aivar[AIV_TAPOSITION] >= 2)
		{
			self.attribute[ATR_HITPOINTS] += 1;
			self.aivar[AIV_TAPOSITION] = 0;
		};
	};
	
	if (RavenIsDead)
	&& (self.guild == GIL_STONEGUARDIAN)
	{
		B_KillNpc(self);
	};
	
	if (CurrentLevel == OLDWORLD_ZEN)
	&& (Npc_GetDistToWP(self, "OC_RAMP_07") <= 500)
	{
		Npc_ClearAIQueue	(self);
		AI_StandUp			(self);
		AI_PlayAni			(self, "T_WARN");
		
		self.aivar[AIV_PursuitEnd] = true;
		return LOOP_END;
	};
	
	if (Npc_GetDistToNpc(self, other) > FIGHT_DIST_CANCEL)
	{
		Npc_ClearAIQueue(self);
		AI_StandUp(self);
		
		self.aivar[AIV_PursuitEnd] = true;
		return LOOP_END;
	};
	
	if (Npc_GetStateTime(self) > self.aivar[AIV_MM_FollowTime])
	&& (!self.aivar[AIV_PursuitEnd])
	{
		Npc_ClearAIQueue(self);
		AI_StandUp(self);
		
		self.aivar[AIV_PursuitEnd] = true;
		self.aivar[AIV_Dist] = Npc_GetDistToNpc(self, other);
		self.aivar[AIV_StateTime] = Npc_GetStateTime(self);
		
		AI_PlayAni (self, "T_WARN");
	};
	
	if (self.aivar[AIV_PursuitEnd])
	{
		if (Npc_GetDistToNpc(self, other) > self.senses_range)
		{
			return LOOP_END;
		};
		
		if (Npc_GetStateTime(self) > self.aivar[AIV_StateTime])
		{
			if (Npc_GetDistToNpc(self, other) < self.aivar[AIV_Dist])
			|| (!C_BodyStateContains(other, BS_RUN) && !C_BodyStateContains(other, BS_JUMP))
			{
				self.aivar[AIV_PursuitEnd] = false;
				Npc_SetStateTime (self, 0);
				self.aivar[AIV_StateTime] = 0;
			}
			else
			{
				AI_TurnToNpc (self, other);
				self.aivar[AIV_Dist] = Npc_GetDistToNpc(self, other);
				self.aivar[AIV_StateTime] = Npc_GetStateTime(self);
			};
		};
		
		return LOOP_CONTINUE;
	};
	
	if (C_BodyStateContains(other, BS_SWIM) || C_BodyStateContains(other, BS_DIVE))
	&& (!self.aivar[AIV_MM_FollowInWater])
	{
		Npc_ClearAIQueue(self);
		AI_StandUp(self);
		
		return LOOP_END;
	};
	
	/// FUNC
	if (self.aivar[AIV_WaitBeforeAttack] >= 1)
	{
		AI_Wait (self, 0.8);
		self.aivar[AIV_WaitBeforeAttack] = 0;
	};
	
	/// changed!!!
	if (self.aivar[AIV_SummonTime] > 0)
	{
		if (Npc_GetStateTime(self) > self.aivar[AIV_StateTime])
		{
			self.aivar[AIV_SummonTime] -= 1;
			self.aivar[AIV_StateTime] = Npc_GetStateTime(self);
			if (self.level == 0)
			{
				Npc_ChangeAttribute (self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]/100);
			};
		};
		
		if (self.aivar[AIV_SummonTime] == 0 && self.level == 0)
		{
			Npc_ChangeAttribute (self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS]);
		};
	};
	
	/// ...
	if (!C_BodyStateContains(other, BS_RUN) && !C_BodyStateContains(other, BS_JUMP))
	&& (Npc_GetStateTime(self) > 0)
	{
		Npc_SetStateTime (self, 0);
		self.aivar[AIV_StateTime] = 0;
	};
	
	if (self.aivar[AIV_MaxDistToWp] > 0)
	{
		if (Npc_GetDistToWP(self, self.wp) > self.aivar[AIV_MaxDistToWp])
		&& (Npc_GetDistToWP(other, self.wp) > self.aivar[AIV_MaxDistToWp])
		{
			self.fight_tactic = FAI_NAILED;
		}
		else
		{
			self.fight_tactic = self.aivar[AIV_OriginalFightTactic];
		};
	};
	
	if (self.guild > GIL_SEPERATOR_HUM && self.aivar[AIV_MagicUser])
	|| (self.guild == GIL_SKELETON)
	|| (self.guild == GIL_SUMMONED_SKELETON)
	|| (self.guild > GIL_SEPERATOR_ORC)
	{
		B_CreateAmmo(self);
		Npc_ChangeAttribute	(self, ATR_MANA, ATR_MANA_MAX);
		B_SelectWeapon (self, other);
	};
	
	if (Hlp_IsValidNpc(other))
	&& (!C_NpcIsDown(other))
	{
		if (!other.aivar[AIV_Invisible])
		{
			AI_Attack(self);
		}
		else
		{
			Npc_ClearAIQueue(self);
		};
		
		self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
		return LOOP_CONTINUE;
	}
	else
	{
		if (self.aivar[AIV_MM_PRIORITY] == PRIO_EAT)
		&& (C_WantToEat(self, other))
		{
			Npc_ClearAIQueue(self);
			AI_StandUp(self);
			
			return LOOP_END;
		};
		
		Npc_PerceiveAll(self);
		Npc_GetNextTarget(self);
		
		if (Hlp_IsValidNpc(other))
		&& (!C_NpcIsDown(other))
		&& (Npc_GetDistToNpc(self, other) < PERC_DIST_INTERMEDIAT || Npc_IsPlayer(other))
		&& (!other.aivar[AIV_Invisible])
		{
			self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
			return LOOP_CONTINUE;
		}
		else
		{
			Npc_ClearAIQueue(self);
			AI_StandUp(self);
			
			return LOOP_END;
		};
	};
};

///******************************************************************************************
func void ZS_MM_Attack_End()
{
	/// MOD
	if (!self.aivar[AIV_PartyMember])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
		self.aivar[AIV_DamageDealtByPlayer] = 0;
	};
	
	/// ...
	other = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);
	
	if (self.guild > GIL_SEPERATOR_HUM && self.aivar[AIV_MagicUser])
	|| (self.guild == GIL_SKELETON)
	|| (self.guild == GIL_SUMMONED_SKELETON)
	|| (self.guild > GIL_SEPERATOR_ORC)
	{
		AI_RemoveWeapon(self);
	};
	
	if (Npc_IsDead(other))
	&& (C_WantToEat(self, other))
	{
		Npc_ClearAIQueue(self);
		AI_StartState (self, ZS_MM_EatBody, false, "");
		
		return;
	};
};
