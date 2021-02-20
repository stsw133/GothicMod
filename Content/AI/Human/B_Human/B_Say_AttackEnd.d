///******************************************************************************************
///	B_Say_AttackEnd
///******************************************************************************************
func void B_Say_AttackEnd()
{
	/// ------ Enemy = Mensch oder Monster ------
	if (self.aivar[AIV_ATTACKREASON] == AR_GuildEnemy)
	|| (self.aivar[AIV_ATTACKREASON] == AR_MonsterMurderedHuman)
	{
		if (other.guild < GIL_SEPERATOR_HUM)
		{
			if (!Npc_IsDead(other))
			{
				if (self.aivar[AIV_LASTTARGET] == Hlp_GetInstanceID(other))
				{
					B_Say (self, other, "$KILLENEMY");
				}
				else
				{
					B_Say (self, other, "$GOODKILL");
				};
			}
			else
			{
				B_Say (self, other, "$ENEMYKILLED");
			};
		}
		else
		{
			if (self.aivar[AIV_PARTYMEMBER] == true)
			{
				if (Hlp_Random(5) > 0)
				&& (other.guild != GIL_DRAGON)
				{
					return;
				};
			};
			
			if (other.aivar[AIV_DefeatedByPlayer] != DBP_Killed)
			{
				if (self.voice == 9)
				{
					if (Hlp_Random(2) == 0) 
					{
						B_Say (self, other, "$ADDON_MONSTERKILLED");
					}
					else
					{
						B_Say (self, other, "$ADDON_MONSTERKILLED2");
					};
				}
				else if (self.voice == 12)
				{
					if ((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(GornOW))
					|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(GornDJG))
					|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(GornNW_vor_DJG))
					|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(GornNW_nach_DJG))
					|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Gorn_DI)))
					{
						if (Hlp_Random(2) == 0)
						{
							B_Say (self, other, "$ADDON_MONSTERKILLED");
						}
						else
						{
							B_Say (self, other, "$MONSTERKILLED");
						};
					}
					else
					{
						B_Say (self, other, "$ADDON_MONSTERKILLED");
					};
				}
				else
				{
					B_Say (self, other, "$MONSTERKILLED");
				};
			}
			else
			{
				B_Say (self, other, "$GOODMONSTERKILL");
			};
		};
		return;
	};
	
	/// ------ Spieler hat Item geklaut ------
	if (self.aivar[AIV_ATTACKREASON] == AR_Theft)
	{
		B_Say (self, other, "$THIEFDOWN");
		return;
	};
	
	/// ------ Spieler hat an Mob mit Besitzflag rumgefummelt (kann JEDES Mob sein) ------
	if (self.aivar[AIV_ATTACKREASON] == AR_UseMob)
	{
		B_Say (self, other, "$RUMFUMMLERDOWN");
		return;
	};
	
	/// ------ Schaf wurde angegriffen oder getötet (von Mensch oder Monster) ------
	if (self.aivar[AIV_ATTACKREASON] == AR_SheepKiller)
	{
		if (other.guild < GIL_SEPERATOR_HUM)
		{
			B_Say (self, other, "$SHEEPATTACKERDOWN");
		}
		else
		{
			B_Say (self, other, "$MONSTERKILLED");
		};
		return;
	};
	
	/// ------ Mensch hat Mensch ermordet ------
	if (self.aivar[AIV_ATTACKREASON] == AR_HumanMurderedHuman)
	{
		if (!Npc_IsDead(other))
		{
			if (self.aivar[AIV_LASTTARGET] == Hlp_GetInstanceID(other))
			{
				B_Say (self, other, "$KILLMURDERER");
			}
			else
			{
				B_Say (self, other, "$GOODKILL");
			};
		}
		else
		{
			B_Say (self, other, "$ENEMYKILLED");
		};
		return;
	};
	
	/// ------ Monster kämpft gegen Human - ich helfe Human ------
	if (self.aivar[AIV_ATTACKREASON] == AR_MonsterVsHuman)
	{
		if (self.voice == 9)
		|| (self.voice == 12)
		{
			B_Say (self, other, "$ADDON_MONSTERKILLED");
		}
		else
		{
			B_Say (self, other, "$MONSTERKILLED");
		};
		return;
	};
	
	/// ------ GateGuards halten nicht-feindliches Monster auf ------
	if (self.aivar[AIV_ATTACKREASON] == AR_MonsterCloseToGate)
	{
		B_Say (self, other, "$STUPIDBEASTKILLED");
		return;
	};
	
	/// ------ Täter hat mich verletzt ------
	if (self.aivar[AIV_ATTACKREASON] == AR_ReactToDamage)
	{
		B_Say (self, other, "$NEVERHITMEAGAIN");
		return;
	};
	
	/// ------ Täter hat trotz zweimaliger Warnung Waffe nicht weggesteckt ------
	if (self.aivar[AIV_ATTACKREASON] == AR_ReactToWeapon)
	{
		B_Say (self, other, "$YOUBETTERSHOULDHAVELISTENED");
		return;
	};
	
	/// ------ Spieler ist unbefugt in meinem Raum ------
	if (self.aivar[AIV_ATTACKREASON] == AR_ClearRoom)
	|| (self.aivar[AIV_ATTACKREASON] == AR_GuardCalledToRoom)
	{
		if (C_NpcIsBotheredByPlayerRoomGuild(self))
		{
			B_Say (self, other, "$GETUPANDBEGONE");
		}
		else
		{
			B_Say (self, other, "$NEVERENTERROOMAGAIN");
		};
		return;
	};
	
	/// ------ Spieler hat (verbotenen) Portalraum verlassen ------
	if (self.aivar[AIV_ATTACKREASON] == AR_LeftPortalRoom)
	{
		B_Say (self, other, "$NEVERENTERROOMAGAIN");
		return;
	};
	
	/// ------ GateGuards attackieren Eindringling ------
	if (self.aivar[AIV_ATTACKREASON] == AR_GuardStopsIntruder)
	{
		B_Say (self, other, "$KILLENEMY");
		return;
	};
	
	/// ------ Wache beendet Kampf, greift Täter an ------
	if (self.aivar[AIV_ATTACKREASON] == AR_GuardStopsFight)
	{
		if (other.guild != GIL_SLD) && (other.guild != GIL_DJG)
		{
			B_Say (self, other, "$THEREISNOFIGHTINGHERE");
		};
		return;
	};
	
	/// ------ Wache zu Dieb gerufen ------
	if (self.aivar[AIV_ATTACKREASON] == AR_GuardCalledToThief)
	{
		B_Say (self, other, "$RUMFUMMLERDOWN");
		return;
	};
	
	/// ------ kein Grund ------
	return;
};
