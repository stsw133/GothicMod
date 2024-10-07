///******************************************************************************************
/// ZS_Attack
///******************************************************************************************
func void B_AssessSurprise()
{
	Npc_SetTarget (self, other);
	self.aivar[AIV_ATTACKREASON] = AR_GuildEnemy;
};

///******************************************************************************************
func void ZS_Attack()
{
	Perception_Set_Minimal();
	
	Npc_PercEnable (self, PERC_ASSESSSURPRISE, B_AssessSurprise);
	
	B_ValidateOther();
	self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
	
	if (C_WantToFlee(self, other))
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		Npc_SetTarget 		(self, other);
		AI_StartState 		(self, ZS_Flee, false, "");
		return;
	};
	
	/// FUNC
	if (!self.aivar[AIV_LOADGAME])
	{
		B_Say_AttackReason();
	};
	
	if (Npc_IsInFightMode(self, FMODE_NONE))
	{
		AI_EquipBestRangedWeapon 	(self);
		AI_EquipBestMeleeWeapon 	(self);
	};
	
	AI_StandUp		(self);
	B_StopLookAt	(self);
	B_TurnToNpc		(self, other);
	AI_SetWalkmode 	(self, NPC_RUN);
	
	if (self.aivar[AIV_Guardpassage_Status] != GP_PassGate)
	{
		self.aivar[AIV_Guardpassage_Status]	= GP_NONE;
	};
	self.aivar[AIV_LastAbsolutionLevel]	= B_GetCurrentAbsolutionLevel(self);
	self.aivar[AIV_PursuitEnd] = false;
	self.aivar[AIV_StateTime] = 0;
	self.aivar[AIV_TAPOSITION] = 0;
	self.aivar[AIV_HitByOtherNpc] = 0;
	self.aivar[AIV_SelectSpell] = 0;
	
	/// MOD
	if (self.guild == GIL_DMT)
	{
		Wld_StopEffect("DEMENTOR_FX");
		Snd_Play("MFX_FEAR_CAST");
	};
};

///******************************************************************************************
func int ZS_Attack_Loop()
{
	B_GregComesToDexter();
	
	Npc_GetTarget(self);
	
	/// MOD
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Gregy))
	{
		if (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]/2)
		{
			Npc_ClearAIQueue	(self);
			B_ClearPerceptions	(self);
			Npc_SetTarget 		(self, other);
			AI_StartState 		(self, ZS_MM_Flee, false, "");
			return LOOP_END;
		};
	};
	
	if (Npc_GetDistToNpc(self, other) > self.aivar[AIV_FightDistCancel])
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
		
		if (other.guild < GIL_SEPERATOR_HUM)
		{
			B_Say (self, other,	"$RUNCOWARD");
		};
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
				B_TurnToNpc (self, other);
				self.aivar[AIV_Dist] = Npc_GetDistToNpc(self, other);
				self.aivar[AIV_StateTime] = Npc_GetStateTime(self);
			};
		};
		
		return LOOP_CONTINUE;
	};
	
	if (B_GetCurrentAbsolutionLevel(self) > self.aivar[AIV_LastAbsolutionLevel])
	{
		Npc_ClearAIQueue(self);
		AI_StandUp(self);
		return LOOP_END;
	};
	
	if (C_BodyStateContains(other, BS_SWIM) || C_BodyStateContains(other, BS_DIVE))
	&& (!self.aivar[AIV_MM_FollowInWater])
	{
		Npc_ClearAIQueue(self);
		AI_StandUp(self);
		
		self.aivar[AIV_PursuitEnd] = true;
		return LOOP_END;
	};
	
	/// FUNC
	if (self.aivar[AIV_WaitBeforeAttack] >= 1)
	{
		AI_Wait (self, 0.8);
		self.aivar[AIV_WaitBeforeAttack] = 0;
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
	
	if (!C_BodyStateContains(other, BS_RUN) && !C_BodyStateContains(other, BS_JUMP))
	{
		Npc_SetStateTime (self, 0);
	};
	
	if (Npc_GetStateTime(self) > 2)
	&& (self.aivar[AIV_TAPOSITION] == 0)
	{
		B_CallGuards();
		self.aivar[AIV_TAPOSITION] = 1;
	};
	
	if (Npc_GetStateTime(self) > 8)
	&& (self.aivar[AIV_TAPOSITION] == 1)
	{
		B_CallGuards();
		self.aivar[AIV_TAPOSITION] = 2;
	};
	
	B_CreateAmmo	(self);
	B_SelectWeapon	(self, other);
	
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
		Npc_ClearAIQueue(self);
		
		if (Hlp_IsValidNpc(other))
		&& (Npc_IsPlayer(other))
		&& (C_NpcIsDown(other))
		{
			Npc_SetTempAttitude(self, Npc_GetPermAttitude(self, hero));
		};
		
		if (self.aivar[AIV_ATTACKREASON] != AR_KILL)
		{
			Npc_PerceiveAll(self);
			Npc_GetNextTarget(self);
		};
		
		if (Hlp_IsValidNpc(other))
		&& (!C_NpcIsDown(other))
		&& (Npc_GetDistToNpc(self, other) < PERC_DIST_INTERMEDIAT || Npc_IsPlayer(other))
		&& (Npc_GetHeightToNpc(self, other) < PERC_DIST_HEIGHT)
		&& (!other.aivar[AIV_Invisible])
		&& (!(C_PlayerIsFakeBandit(self, other) && self.guild == GIL_BDT))
		{
			if (Wld_GetGuildAttitude(self.guild, other.guild) == ATT_HOSTILE)
			{
				self.aivar[AIV_ATTACKREASON] = AR_GuildEnemy;
				if (Npc_IsPlayer(other))
				{
					self.aivar[AIV_LastPlayerAR] = AR_GuildEnemy;
					self.aivar[AIV_LastFightAgainstPlayer] = FIGHT_CANCEL;
					self.aivar[AIV_LastFightComment] = false;
				};
			}
			else if (Npc_GetAttitude(self, other) == ATT_HOSTILE)
			{
				self.aivar[AIV_ATTACKREASON] = self.aivar[AIV_LastPlayerAR];
			};
			
			return LOOP_CONTINUE;
		}
		else
		{
			Npc_ClearAIQueue(self);
			
			if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_CANCEL)
			&& (self.aivar[AIV_LASTTARGET] != Hlp_GetInstanceID(hero))
			{
				self.aivar[AIV_LastFightComment] = true;
			};
			
			return LOOP_END;
		};
	};
};

///******************************************************************************************
func void ZS_Attack_End()
{
	/// MOD
	if (!self.aivar[AIV_PartyMember])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
		self.aivar[AIV_DamageDealtByPlayer] = 0;
	};
	
	/// ...
	other = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);
	
	if (self.aivar[AIV_PursuitEnd])
	{
		if (Hlp_IsValidNpc(other))
		&& (Npc_IsPlayer(other))
		&& (self.npctype != NPCTYPE_FRIEND)
		{
			Npc_SetTempAttitude (self, ATT_HOSTILE);
		};
		
		if (self.aivar[AIV_ArenaFight] == AF_RUNNING)
		{
			self.aivar[AIV_ArenaFight] = AF_AFTER;
		};
	};
	
	if (!self.aivar[AIV_PursuitEnd])
	{
		if (B_GetCurrentAbsolutionLevel(self) > self.aivar[AIV_LastAbsolutionLevel])
		{
			B_Say (self, other , "$WISEMOVE");
		}
		else
		{
			B_Say_AttackEnd();
		};
	};
	
	if (other.aivar[AIV_DefeatedByPlayer] == DBP_Killed)
	&& (Wld_GetGuildAttitude(self.guild, hero.guild) != ATT_HOSTILE)
	{
		B_SetAttitude(self, ATT_FRIENDLY);
	};
	
	if (Npc_IsInState(other, ZS_Unconscious))
	&& (C_NpcHasAttackReasonToKill(self))
	{
		B_FinishingMove (self, other);
	};
	
	AI_RemoveWeapon(self);
	
	if (C_NpcIsDown(other))
	&& (C_WantToRansack(self))
	&& (!other.aivar[AIV_RANSACKED] || C_NpcRansacksAlways(self))
	&& (Npc_GetDistToNpc(self, other) < PERC_DIST_INTERMEDIAT)
	{
		other.aivar[AIV_RANSACKED] = true;
		
		if (other.guild < GIL_SEPERATOR_HUM)
		{
			AI_StartState (self, ZS_RansackBody, false, "");
			return;
		}
		else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(AlligatorJack))
		&& (Npc_HasItems(other, ItFoMuttonRaw) > 0)
		{
			AI_StartState (self, ZS_GetMeat, false, "");
			return;
		};
	};
	
	if (self.attribute[ATR_HITPOINTS] < (self.attribute[ATR_HITPOINTS_MAX]/2))
	{
		AI_StartState (self, ZS_HealSelf, false, "");
		return;
	};
};
