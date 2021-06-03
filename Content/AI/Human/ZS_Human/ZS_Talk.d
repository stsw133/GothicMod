///******************************************************************************************
///	ZS_Talk
///******************************************************************************************

var int zsTalkBugfix;

///******************************************************************************************
func void ZS_Talk()
{
	if (other.aivar[AIV_INVINCIBLE])
	{
		return;
	};
	
	///FUNC
	self.aivar[AIV_INVINCIBLE] = true;
	other.aivar[AIV_INVINCIBLE] = true;
	
	if (self.guild < GIL_SEPERATOR_HUM)
	{
		if (C_BodyStateContains(self, BS_SIT))
		{
			var C_NPC target; target = Npc_GetLookAtTarget(self);
			if (!Hlp_IsValidNpc(target))
			{
				AI_LookAtNpc (self, other);
			};
		}
		else
		{
			B_LookAtNpc (self, other);
		};
		AI_RemoveWeapon(self);
	};
	
	if (!C_BodystateContains(self, BS_SIT))
	{	
		B_TurnToNpc (self, other);
	};
	
	if (!C_BodystateContains(other, BS_SIT))
	{
		B_TurnToNpc (other, self);
		if (Npc_GetDistToNpc(other, self) < 80)
		{
			AI_Dodge(other);
		};
	};
	
	if (self.guild < GIL_SEPERATOR_HUM)
	{
		if (Npc_GetAttitude(self, other) == ATT_ANGRY)
		|| (Npc_GetAttitude(self, other) == ATT_HOSTILE)
		{
			if (!C_PlayerIsFakeBandit(self, other))
			|| (self.guild != GIL_BDT)
			{
				Mdl_StartFaceAni (self, "S_ANGRY", 1, -1);
			};
		};
		
		if (self.npctype == NPCTYPE_AMBIENT)
		|| (self.npctype == NPCTYPE_OCAMBIENT)
		|| (self.npctype == NPCTYPE_BL_AMBIENT)
		|| (self.npctype == NPCTYPE_TAL_AMBIENT)
		{
			B_AssignAmbientInfos(self);
			/*
			if (C_NpcBelongsToCity(self))
			{
				B_AssignCityGuide(self);
			};
			*/
		};
		
		DIA_Teach_JOIN.npc = Hlp_GetInstanceID(self);	///new!!!
		DIA_Trade_JOIN.npc = Hlp_GetInstanceID(self);	///new!!!
		DIA_Actions_JOIN.npc = Hlp_GetInstanceID(self);	///new!!!
		
		if (self.aivar[AIV_PARTYMEMBER])
		&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Biff))
		&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Biff_NW))
		&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Biff_DI))
		&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Pardos))
		&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Pardos_NW))
		{
			B_Addon_GivePotion(self);
		};
		
		if (C_NpcIsToughGuy(self))
		&& (!self.aivar[AIV_ToughGuyNewsOverride])
		{
			B_AssignToughGuyNEWS(self);
		};
		if (C_NpcHasAmbientNews(self))
		{
			B_AssignAmbientNEWS(self);
		};
	};
	
	if (self.guild == GIL_DRAGON)
	{
		AI_PlayAni (self, "T_STAND_2_TALK");
	};
	
	AI_ProcessInfos(self);
	zsTalkBugfix = false;
};

///******************************************************************************************
func INT ZS_Talk_Loop()
{
   	if (InfoManager_HasFinished())
   	&& (zsTalkBugfix)
   	{
		self.aivar[AIV_INVINCIBLE] = false;
		other.aivar[AIV_INVINCIBLE] = false;
		self.aivar[AIV_NpcStartedTalk] = false;
		self.aivar[AIV_TalkedToPlayer] = true;
		
		if (self.guild < GIL_SEPERATOR_HUM)
		{
			B_StopLookAt(self);
			Mdl_StartFaceAni (self, "S_NEUTRAL", 1, -1);
		}
		else if (self.guild == GIL_DRAGON)
		{
			AI_PlayAni (self, "T_TALK_2_STAND");
		};
		
		return LOOP_END;
  	}
  	else
   	{
   		zsTalkBugfix = true;
   		return LOOP_CONTINUE;
   	};
};

///******************************************************************************************
func void ZS_Talk_End()
{
	Npc_SetRefuseTalk(other, 20);
	
	if (C_NpcIsBotheredByPlayerRoomGuild(self))
	|| (Wld_GetPlayerPortalGuild() == GIL_PUBLIC && Npc_GetAttitude(self, other) != ATT_FRIENDLY)
	{
		AI_StartState(self, ZS_ObservePlayer, false, "");
	};
};
