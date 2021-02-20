///******************************************************************************************
///	B_AssessTalk
///******************************************************************************************
func void B_AssessTalk()
{
	/// EXIT IF...
	/// ------- FORBIDDEN: Levelinspektor oder Rockefeller wird ignoriert ------
	if (C_BodyStateContains(self,BS_RUN))
	&& (Npc_IsInState(self,ZS_FleeToWp))
	{
		return;
	};
	
	/// ------ Exit-Conditions NUR für Monster
	if (self.guild > GIL_SEPERATOR_HUM)
	{
		/// ------ Monster hat keine Info ------
		if (Npc_CheckInfo(self,1) == false)
		{
			if (Npc_CheckInfo(self,0) == false)
			{
				return;
			};
		};
	};
	
	/// ------ Exit-Conditions NUR für Humans ------
	if (self.guild < GIL_SEPERATOR_HUM)
	{
		/// ------ Spieler ist Enemy ------
		if (B_AssessEnemy())
		{
			return;
		};
		
		/// ------ Spieler ist Mörder ------
		if (B_GetPlayerCrime(self) == CRIME_MURDER)
		&& (C_WantToAttackMurder(self,other))
		{
			B_Attack (self, other, AR_HumanMurderedHuman, 0);
			return;
		};
		
		if (C_PlayerIsFakeBandit(self,other))
		&& (self.guild != GIL_BDT)
		{
			B_Attack (self, other, AR_GuildEnemy, 0);
			return;
		};
		
		if (C_RefuseTalk(self,other))
		{
			if (C_PlayerHasFakeGuild(self,other))
			{
				Npc_ClearAIQueue(self);
				AI_StartState (self, ZS_CommentFakeGuild, true, "");
				return;
			}
			else
			{
				B_Say (self, other, "$NOTNOW");
				return;
			};
		};
	};
	
	/// Ambient NPC smalltalk
	if (self.npctype == NPCTYPE_AMBIENT)
	|| (self.npctype == NPCTYPE_OCAMBIENT)
	|| (self.npctype == NPCTYPE_BL_AMBIENT)
	{
		if (self.aivar[AIV_TalkedToPlayer] < Kapitel)
		{
			if (self.guild == GIL_PAL)
			&& (self.voice == 4)
			&& (self.npctype == NPCTYPE_OCAMBIENT)
			{
				if (Kapitel <= 9)	{	B_Say_Overlay (self,other,"DIA_OCPAL_4_STANDARD_04_01");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_OCPAL_4_STANDARD_04_02");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_OCPAL_4_STANDARD_04_06");	};
			}
			else if (self.guild == GIL_PAL)
			&& (self.voice == 9)
			&& (self.npctype == NPCTYPE_OCAMBIENT)
			{
				if (Kapitel <= 9)	{	B_Say_Overlay (self,other,"DIA_OCPAL_4_STANDARD_09_01");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_OCPAL_4_STANDARD_09_02");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_OCPAL_4_STANDARD_09_04");	};
			}
			else if (self.guild == GIL_MIL)
			&& (self.voice == 1)
			&& (self.npctype == NPCTYPE_OCAMBIENT)
			{
				if (Kapitel <= 9)	{	B_Say_Overlay (self,other,"DIA_OCVLK_1_STANDARD_01_01");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_OCVLK_1_STANDARD_01_02");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_OCVLK_1_STANDARD_01_04");	};
			}
			else if (self.guild == GIL_MIL)
			&& (self.voice == 6)
			&& (self.npctype == NPCTYPE_OCAMBIENT)
			{
				if (Kapitel <= 9)	{	B_Say_Overlay (self,other,"DIA_OCVLK_6_STANDARD_06_02");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_OCVLK_6_STANDARD_06_04");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_OCVLK_6_STANDARD_06_06");	};
			}
			else if (self.guild == GIL_MIL)
			&& (self.voice == 6)
			{
				if (Kapitel <= 7)	{	B_Say_Overlay (self,other,"DIA_MIL_6_STANDARD_06_02");	};
				if (Kapitel == 8)	{	B_Say_Overlay (self,other,"DIA_MIL_6_STANDARD_06_04");	};
				if (Kapitel == 9)	{	B_Say_Overlay (self,other,"DIA_MIL_6_STANDARD_06_05");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_MIL_6_STANDARD_06_07");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_MIL_6_STANDARD_06_08");	};
			}
			else if (self.guild == GIL_MIL)
			&& (self.voice == 7)
			{
				if (Kapitel <= 7)	{	B_Say_Overlay (self,other,"DIA_MIL_7_STANDARD_07_01");	};
				if (Kapitel == 8)	{	B_Say_Overlay (self,other,"DIA_MIL_7_STANDARD_07_02");	};
				if (Kapitel == 9)	{	B_Say_Overlay (self,other,"DIA_MIL_7_STANDARD_07_04");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_MIL_7_STANDARD_07_05");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_MIL_7_STANDARD_07_06");	};
			}
			else if (self.guild == GIL_VLK)
			&& (self.voice == 1)
			{
				if (Kapitel <= 7)	{	B_Say_Overlay (self,other,"DIA_VLK_1_STANDARD_01_01");	};
				if (Kapitel == 8)	{	B_Say_Overlay (self,other,"DIA_VLK_1_STANDARD_01_02");	};
				if (Kapitel == 9)	{	B_Say_Overlay (self,other,"DIA_VLK_1_STANDARD_01_03");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_VLK_1_STANDARD_01_04");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_VLK_1_STANDARD_01_05");	};
			}
			else if (self.guild == GIL_VLK)
			&& (self.voice == 6)
			{
				if (Kapitel <= 7)	{	B_Say_Overlay (self,other,"DIA_VLK_6_STANDARD_06_01");	};
				if (Kapitel == 8)	{	B_Say_Overlay (self,other,"DIA_VLK_6_STANDARD_06_02");	};
				if (Kapitel == 9)	{	B_Say_Overlay (self,other,"DIA_VLK_6_STANDARD_06_04");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_VLK_6_STANDARD_06_05");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_VLK_6_STANDARD_06_06");	};
			}
			else if (self.guild == GIL_VLK)
			&& (self.voice == 8)
			{
				if (Kapitel <= 7)	{	B_Say_Overlay (self,other,"DIA_Addon_VLK_8_STANDARD_08_00");	};
				if (Kapitel == 8)	{	B_Say_Overlay (self,other,"DIA_VLK_8_STANDARD_08_01");	};
				if (Kapitel == 9)	{	B_Say_Overlay (self,other,"DIA_VLK_8_STANDARD_08_03");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_VLK_8_STANDARD_08_06");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_VLK_8_STANDARD_08_07");	};
			}
			else if (self.guild == GIL_VLK)
			&& (self.voice == 16)
			{
				if (Kapitel <= 7)	{	B_Say_Overlay (self,other,"DIA_Addon_VLK_16_STANDARD_16_00");	SC_HearedAboutMissingPeople = true;	};
				if (Kapitel == 8)	{	B_Say_Overlay (self,other,"DIA_VLK_16_STANDARD_16_01");	};
				if (Kapitel == 9)	{	B_Say_Overlay (self,other,"DIA_VLK_16_STANDARD_16_04");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_VLK_16_STANDARD_16_06");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_VLK_16_STANDARD_16_07");	};
			}
			else if (self.guild == GIL_VLK)
			&& (self.voice == 17)
			{
				if (Kapitel <= 7)	{	B_Say_Overlay (self,other,"DIA_VLK_17_STANDARD_17_01");	};
				if (Kapitel == 8)	{	B_Say_Overlay (self,other,"DIA_VLK_17_STANDARD_17_01");	};
				if (Kapitel == 9)	{	B_Say_Overlay (self,other,"DIA_VLK_17_STANDARD_17_03");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_VLK_17_STANDARD_17_04");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_VLK_17_STANDARD_17_05");	};
			}
			else if (self.guild == GIL_SLD)
			&& (self.voice == 6)
			{
				if (Kapitel <= 7)	{	B_Say_Overlay (self,other,"DIA_SLD_6_STANDARD_06_02");	};
				if (Kapitel == 8)	{	B_Say_Overlay (self,other,"DIA_SLD_6_STANDARD_06_02");	};
				if (Kapitel == 9)	{	B_Say_Overlay (self,other,"DIA_SLD_6_STANDARD_06_03");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_SLD_6_STANDARD_06_09");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_SLD_6_STANDARD_06_12");	};
			}
			else if (self.guild == GIL_SLD)
			&& (self.voice == 7)
			{
				if (Kapitel <= 7)	{	B_Say_Overlay (self,other,"DIA_SLD_7_STANDARD_07_02");	};
				if (Kapitel == 8)	{	B_Say_Overlay (self,other,"DIA_SLD_7_STANDARD_07_02");	};
				if (Kapitel == 9)	{	B_Say_Overlay (self,other,"DIA_SLD_7_STANDARD_07_09");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_SLD_7_STANDARD_07_11");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_SLD_7_STANDARD_07_15");	};
			}
			else if (self.guild == GIL_BAU)
			&& (self.voice == 1)
			{
				if (Kapitel <= 7)	{	B_Say_Overlay (self,other,"DIA_BAU_1_STANDARD_01_01");	};
				if (Kapitel == 8)	{	B_Say_Overlay (self,other,"DIA_BAU_1_STANDARD_01_02");	};
				if (Kapitel == 9)	{	B_Say_Overlay (self,other,"DIA_BAU_1_STANDARD_01_03");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_BAU_1_STANDARD_01_04");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_BAU_1_STANDARD_01_05");	};
			}
			else if (self.guild == GIL_BAU)
			&& (self.voice == 7)
			{
				if (Kapitel <= 7)	{	B_Say_Overlay (self,other,"DIA_BAU_7_STANDARD_07_01");	};
				if (Kapitel == 8)	{	B_Say_Overlay (self,other,"DIA_BAU_7_STANDARD_07_02");	};
				if (Kapitel == 9)	{	B_Say_Overlay (self,other,"DIA_BAU_7_STANDARD_07_03");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_BAU_7_STANDARD_07_04");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_BAU_7_STANDARD_07_05");	};
			}
			else if (self.guild == GIL_BAU)
			&& (self.voice == 13)
			{
				if (Kapitel <= 7)	{	B_Say_Overlay (self,other,"DIA_BAU_13_STANDARD_13_01");	};
				if (Kapitel == 8)	{	B_Say_Overlay (self,other,"DIA_BAU_13_STANDARD_13_02");	};
				if (Kapitel == 9)	{	B_Say_Overlay (self,other,"DIA_BAU_13_STANDARD_13_03");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_BAU_13_STANDARD_13_04");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_BAU_13_STANDARD_13_05");	};
			}
			else if (self.guild == GIL_BAU)
			&& (self.voice == 16)
			{
				if (Kapitel <= 7)	{	B_Say_Overlay (self,other,"DIA_BAU_16_STANDARD_16_01");	};
				if (Kapitel == 8)	{	B_Say_Overlay (self,other,"DIA_BAU_16_STANDARD_16_02");	};
				if (Kapitel == 9)	{	B_Say_Overlay (self,other,"DIA_BAU_16_STANDARD_16_03");	};
				if (Kapitel == 10)	{	B_Say_Overlay (self,other,"DIA_BAU_16_STANDARD_16_04");	};
				if (Kapitel >= 11)	{	B_Say_Overlay (self,other,"DIA_BAU_16_STANDARD_16_05");	};
			}
			else
			{
				B_Say_Overlay (self, other, "$NotNow");
			};
			
			self.aivar[AIV_TalkedToPlayer] = Kapitel;
		}
		else
		{
			if (self.guild == GIL_PAL)
			&& (self.voice == 4)
			{
				if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_OWPAL_4_STANDARD_04_00");	}
				else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_OWPAL_4_STANDARD_04_01");	}
				else							{	B_Say_Overlay (self, other, "DIA_OWPAL_4_STANDARD_04_02");	};
			}
			else if (self.guild == GIL_BDT)
			&& (self.voice == 1)
			{
				if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_BDT_1_STANDARD_01_00");	}
				else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_BDT_1_STANDARD_01_01");	}
				else							{	B_Say_Overlay (self, other, "DIA_BDT_1_STANDARD_01_02");	};
			}
			else if (self.guild == GIL_BDT)
			&& (self.voice == 13)
			{
				if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_BDT_13_STANDARD_13_00");	}
				else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_BDT_13_STANDARD_13_01");	}
				else							{	B_Say_Overlay (self, other, "DIA_BDT_13_STANDARD_13_02");	};
			}
			else if (self.guild == GIL_STRF)
			&& (self.voice == 3)
			&& (self.npctype == NPCTYPE_BL_AMBIENT)
			{
				if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_Addon_Sklaven_3_STANDARD_03_00");	}
				else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_Addon_Sklaven_3_STANDARD_03_01");	}
				else							{	B_Say_Overlay (self, other, "DIA_Addon_Sklaven_3_STANDARD_03_02");	};
			}
			else if (self.guild == GIL_STRF)
			&& (self.voice == 1)
			{
				if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_STRF_1_STANDARD_01_00");	}
				else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_STRF_1_STANDARD_01_01");	}
				else							{	B_Say_Overlay (self, other, "DIA_STRF_1_STANDARD_01_02");	};
			}
			else if (self.guild == GIL_STRF)
			&& (self.voice == 13)
			{
				if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_STRF_13_STANDARD_13_00");	}
				else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_STRF_13_STANDARD_13_01");	}
				else							{	B_Say_Overlay (self, other, "DIA_STRF_13_STANDARD_13_02");	};
			}
			else if (self.guild == GIL_OUT)
			&& (self.voice == 1)
			{
				if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_OUT_1_STANDARD_01_00");	}
				else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_OUT_1_STANDARD_01_01");	}
				else							{	B_Say_Overlay (self, other, "DIA_OUT_1_STANDARD_01_02");	};
			}
			else if (self.guild == GIL_OUT)
			&& (self.voice == 7)
			{
				if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_OUT_7_STANDARD_07_00");	}
				else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_OUT_7_STANDARD_07_01");	}
				else							{	B_Say_Overlay (self, other, "DIA_OUT_7_STANDARD_07_02");	};
			}
			else if (self.guild == GIL_OUT)
			&& (self.voice == 13)
			{
				if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_OUT_1_STANDARD_13_00");	}
				else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_OUT_1_STANDARD_13_01");	}
				else							{	B_Say_Overlay (self, other, "DIA_OUT_1_STANDARD_13_02");	};
			}
			else
			{
				B_Say_Overlay (self, other, "$NotNow");
			};
		};
		return;
	};
	
	/// FUNC
	/// ------ Spieler labert NSC an ------
	if (self.aivar[AIV_NpcStartedTalk] == false)
	{
		if (C_BodyStateContains(self,BS_WALK) || C_BodyStateContains(self,BS_RUN))
		{
			B_Say (other, self, "$SC_HEYWAITASECOND");
		}
		else if (!Npc_CanSeeNpc(self,other))
		{
			var int rnd; rnd = Hlp_Random(100);
			if 		(rnd <= 25)	{	B_Say (other, self, "$SC_HEYTURNAROUND");	}
			else if (rnd <= 50)	{	B_Say (other, self, "$SC_HEYTURNAROUND02");	}
			else if (rnd <= 75)	{	B_Say (other, self, "$SC_HEYTURNAROUND03");	}
			else if (rnd <= 99) {	B_Say (other, self, "$SC_HEYTURNAROUND04");	};
		};
	};
	
	Npc_ClearAIQueue(self);
	B_ClearPerceptions(self);
	
	/// ------ NSC bleibt sitzen oder steht in Ruhe auf bzw. beendet Mobsi in Ruhe -----------------
	if (C_BodyStateContains(self,BS_SIT))
	{
		if (self.aivar[AIV_NpcStartedTalk] == true)
		{
			AI_StandUpQuick(other);
		}
		else
		{
			AI_StandUp(other);
		};
		
		if (Npc_CanSeeNpc(self,other))
		{
			AI_StartState (self, ZS_Talk, false, "");
		}	
		else
		{
			///HACK: Im ObservePlayer kann ein NSC sitzen, ohne daß in der END-Routine des ZS sauber aufgestanden wird (klar, denn ZS_ObservePlayer_End hat kein StandUp o.ä. - darf dies auch nicht haben)
			if (Npc_IsInState(self,ZS_ObservePlayer))
			{
				AI_StandUp(self);
			};
			AI_StartState (self, ZS_Talk, true, "");
		};
		return;
	}
	else
	{
		if (self.aivar[AIV_NpcStartedTalk] == true)
		{
			AI_StandUpQuick(self);
			AI_StandUpQuick(other);
		}
		else
		{
			AI_StandUp(self);
			AI_StandUp(other);
		};
		
		AI_StartState (self, ZS_Talk, false, "");
		return;
	};
};
