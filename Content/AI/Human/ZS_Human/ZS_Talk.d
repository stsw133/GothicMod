///******************************************************************************************
///	ZS_Talk
///******************************************************************************************

var int zsTalkBugfix;

///******************************************************************************************
FUNC void ZS_Talk()
{
	/// ------ Spieler spricht schon mit jemand anderem ------
	if (other.aivar[AIV_INVINCIBLE] == true)
	{
		return;
	};
	
	/// FUNC 
	/// ------ damit kein Dialogteilnehmer angegriffen wird ------
	self.aivar[AIV_INVINCIBLE] = true;
	other.aivar[AIV_INVINCIBLE] = true;
	
	/// ------ NUR bei Humans ------
	if (self.guild < GIL_SEPERATOR_HUM)
	{
		/// ------ NSC sieht Spieler an (funzt auch im Sitzen) ------
		if (C_BodyStateContains(self,BS_SIT))
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
		
		/// ------ NSC steckt ggf. Waffe weg ------
		AI_RemoveWeapon(self);
	};
	
	/// ------ NSC dreht sich zum Spieler ------
	if (!C_BodystateContains(self,BS_SIT))
	{
		B_TurnToNpc (self, other);
	};
	
	/// ------ Spieler dreht sich zum Npc ------
	if (!C_BodystateContains(other,BS_SIT))
	{
		B_TurnToNpc (other, self);
		
		/// ------ Spieler zu nah dran ------
		if (Npc_GetDistToNpc(other,self) < 80)
		{
			AI_Dodge(other);
		};
	};
	
	/// ------ NUR bei Humans ------
	if (self.guild < GIL_SEPERATOR_HUM)
	{
		/// ------ Set Face Expression ------
		if (Npc_GetAttitude(self,other) == ATT_ANGRY)
		|| (Npc_GetAttitude(self,other) == ATT_HOSTILE)
		{
			if (!C_PlayerIsFakeBandit(self,other))
			|| (self.guild != GIL_BDT)
			{
				Mdl_StartFaceAni (self, "S_ANGRY", 1, -1);
			};
		};
		
		/// ------ Ambient Infos zuweisen ------
		if (self.npctype == NPCTYPE_AMBIENT)
		|| (self.npctype == NPCTYPE_OCAMBIENT)
		|| (self.npctype == NPCTYPE_BL_AMBIENT)
		|| (self.npctype == NPCTYPE_TAL_AMBIENT)
		{
			B_AssignAmbientInfos(self);
			/*
			/// ------ Cityguide -------
			if (C_NpcBelongsToCity(self))
			{
				B_AssignCityGuide(self);
			};
			*/
		};
		
		DIA_Teach_JOIN.npc = Hlp_GetInstanceID(self);
		DIA_Trade_JOIN.npc = Hlp_GetInstanceID(self);
		DIA_Actions_JOIN.npc = Hlp_GetInstanceID(self);
		
		/// ------ Heiltrank geben k�nnen ------
		if (self.aivar[AIV_PARTYMEMBER] == true)
		&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Biff))
		&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Biff_NW))
		&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Biff_DI))
		&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Pardos))
		&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Pardos_NW))
		{
			B_Addon_GivePotion(self);
		};
		
		/// ------ ToughGuy NEWS zuweisen -------
		if (C_NpcIsToughGuy(self))
		&& (self.aivar[AIV_ToughGuyNewsOverride] == false)
		{
			B_AssignToughGuyNEWS(self);
		};
		
		/// ------ Ambient NEWS zuweisen -------
		if (C_NpcHasAmbientNews(self))
		{
			B_AssignAmbientNEWS(self);
		};
	};
	
	if (self.guild == GIL_DRAGON)
	{
		AI_PlayAni (self, "T_STAND_2_TALK");
	};
	
	/*
	if (self.aivar[AIV_TalkedToPlayer] == true) && ...
	{
		B_Say (self,other,"$ABS_COMMANDER"); //Ich h�rte, du warst beim Kommandanten und hast die Sache wieder in Ordnung gebracht.
		B_Say (self,other,"$ABS_MONASTERY"); //Ich h�rte, du warst bei Vater Parlan und hast Bu�e getan..
		B_Say (self,other,"$ABS_FARM");	//Ich h�rte, du warst bei Lee und und hast die Sache wieder in Ordnung gebracht.
		ABS_GOOD		//Das ist gut!
	};
	*/ /// *** FIXME ***
	
	/// ------ START Multiple Choice Dialog ------
	AI_ProcessInfos(self);
	
	zsTalkBugfix = false;	///var resetten!
};

///******************************************************************************************
func INT ZS_Talk_Loop()
{
   	if (InfoManager_HasFinished())
   	&& (zsTalkBugfix == true)			///verhindert, da� InfoManager_HasFinished im ERSTEN FRAME der Loop abgefragt wird --> f�hrt sonst bei MOB-SITZENDEN NSCs (kein Scheiss) zu Abbruch der Loop im ERSTEN FRAME! 
   										///(Problem besteht wegen falscher Reihenfolge der Befehle AI_ProcessInfos und InfoManager_HasFinished)
   	{
		self.aivar[AIV_INVINCIBLE] = false;
		other.aivar[AIV_INVINCIBLE] = false;
		self.aivar[AIV_NpcStartedTalk] = false;
		self.aivar[AIV_TalkedToPlayer] = true;
		
		/// ------ NUR bei Humans ------
		if (self.guild < GIL_SEPERATOR_HUM)
		{
			B_StopLookAt(self);
			Mdl_StartFaceAni (self, "S_NEUTRAL", 1, -1);
		};
		
		if (self.guild == GIL_DRAGON)
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
FUNC VOID ZS_Talk_End()
{
	/// ------ damit nicht nach Dialog+Losgehen gegr��t wird ------
	Npc_SetRefuseTalk (other, 20);
	
	/// ------ wenn Spieler in meinem Raum ------
	if (C_NpcIsBotheredByPlayerRoomGuild(self))
	|| ((Wld_GetPlayerPortalGuild() == GIL_PUBLIC) && (Npc_GetAttitude(self,other) != ATT_FRIENDLY))
	{
		AI_StartState (self, ZS_ObservePlayer, false, "");
	};
};
