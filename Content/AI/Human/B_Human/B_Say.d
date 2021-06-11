///******************************************************************************************
///	B_Say
///******************************************************************************************
func void B_Say (var C_NPC slf, var C_Npc oth, var string text)
{
	AI_OutputSVM (slf, oth, text);
};

func void B_Say_Overlay (var C_NPC slf, var C_Npc oth, var string text)
{
	AI_OutputSVM_Overlay (slf, oth, text);
};

///******************************************************************************************
///	B_Say_Gold
///******************************************************************************************
func void B_Say_Gold (var C_NPC slf, var C_NPC oth, var int goldAmount)
{
	if (goldAmount == 1000)	{	B_Say (slf, oth, "$GOLD_1000");	};
	if (goldAmount == 950)	{	B_Say (slf, oth, "$GOLD_950");	};
	if (goldAmount == 900)	{	B_Say (slf, oth, "$GOLD_900");	};
	if (goldAmount == 850)	{	B_Say (slf, oth, "$GOLD_850");	};
	if (goldAmount == 800)	{	B_Say (slf, oth, "$GOLD_800");	};
	if (goldAmount == 750)	{	B_Say (slf, oth, "$GOLD_750");	};
	if (goldAmount == 700)	{	B_Say (slf, oth, "$GOLD_700");	};
	if (goldAmount == 650)	{	B_Say (slf, oth, "$GOLD_650");	};
	if (goldAmount == 600)	{	B_Say (slf, oth, "$GOLD_600");	};
	if (goldAmount == 550)	{	B_Say (slf, oth, "$GOLD_550");	};
	if (goldAmount == 500)	{	B_Say (slf, oth, "$GOLD_500");	};
	if (goldAmount == 450)	{	B_Say (slf, oth, "$GOLD_450");	};
	if (goldAmount == 400)	{	B_Say (slf, oth, "$GOLD_400");	};
	if (goldAmount == 350)	{	B_Say (slf, oth, "$GOLD_350");	};
	if (goldAmount == 300)	{	B_Say (slf, oth, "$GOLD_300");	};
	if (goldAmount == 250)	{	B_Say (slf, oth, "$GOLD_250");	};
	if (goldAmount == 200)	{	B_Say (slf, oth, "$GOLD_200");	};
	if (goldAmount == 150)	{	B_Say (slf, oth, "$GOLD_150");	};
	if (goldAmount == 100)	{	B_Say (slf, oth, "$GOLD_100");	};
	if (goldAmount == 90)	{	B_Say (slf, oth, "$GOLD_90");	};
	if (goldAmount == 80)	{	B_Say (slf, oth, "$GOLD_80");	};
	if (goldAmount == 70)	{	B_Say (slf, oth, "$GOLD_70");	};
	if (goldAmount == 60)	{	B_Say (slf, oth, "$GOLD_60");	};
	if (goldAmount == 50)	{	B_Say (slf, oth, "$GOLD_50");	};
	if (goldAmount == 40)	{	B_Say (slf, oth, "$GOLD_40");	};
	if (goldAmount == 30)	{	B_Say (slf, oth, "$GOLD_30");	};
	if (goldAmount == 20)	{	B_Say (slf, oth, "$GOLD_20");	};
	if (goldAmount == 10)	{	B_Say (slf, oth, "$GOLD_10");	};
};

///******************************************************************************************
///	B_Say_FleeReason
///******************************************************************************************
func void B_Say_FleeReason()
{
};


///******************************************************************************************
///	B_Say_GuildGreetings
///******************************************************************************************
func void B_Say_GuildGreetings (var C_NPC slf, var C_NPC oth)
{
	if (slf.guild == GIL_MIL)
	&& (oth.guild == GIL_MIL || oth.guild == GIL_PAL)
	{
		B_Say_Overlay (slf, oth, "$MILGREETINGS");
		return;
	};
	
	if (slf.guild == GIL_PAL)
	&& (oth.guild == GIL_PAL || oth.guild == GIL_MIL || oth.guild == GIL_KDF)
	{
		B_Say_Overlay (slf, oth, "$PALGREETINGS");
		return;
	};
	
	if (slf.guild == GIL_KDF)
	&& (oth.guild == GIL_PAL || oth.guild == GIL_NOV || oth.guild == GIL_KDF)
	{
		B_Say_Overlay (slf, oth, "$PALGREETINGS");
		return;
	};
	
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Bartok))
	&& (Bartok_OrkGesagt)
	{
		AI_Output (slf, oth, "DIA_Bartok_Angekommen_04_02");
		return;
	};
	
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Koch))
	{
		AI_Output (slf, oth, "Hackebeil_01_00");
		return;
	};
	
	if (Hlp_Random(100) <= 10)
	&& (Wld_IsRaining())
	{
		B_Say_Overlay (slf, oth, "$WEATHER");
		return;
	};
};

///******************************************************************************************
///	B_Say_Smalltalk
///******************************************************************************************
func void B_Say_Smalltalk()
{
    var int random;	random = Hlp_Random(120);
	var int Choice; Choice = Hlp_Random(2);
	
	if		(random < 5)	{	B_Say (self, self, "$SMALLTALK01");	}
	else if (random < 10)	{	B_Say (self, self, "$SMALLTALK02");	}
	else if (random < 15)	{	B_Say (self, self, "$SMALLTALK03");	}
	else if (random < 20)	{	B_Say (self, self, "$SMALLTALK04");	}
	else if (random < 25)	{	B_Say (self, self, "$SMALLTALK05");	}
	else if (random < 30)	{	B_Say (self, self, "$SMALLTALK06");	}
	else if (random < 35)	{	B_Say (self, self, "$SMALLTALK07");	}
	else if (random < 40)	{	B_Say (self, self, "$SMALLTALK08");	}
	else if (random < 45)	{	B_Say (self, self, "$SMALLTALK09");	}
	else if (random < 50)	{	B_Say (self, self, "$SMALLTALK10");	}
	else if (random < 55)	{	B_Say (self, self, "$SMALLTALK11");	}
	else if (random < 60)	{	B_Say (self, self, "$SMALLTALK12");	}
	else if (random < 65)	{	B_Say (self, self, "$SMALLTALK13");	}
	else if (random < 70)	{	B_Say (self, self, "$SMALLTALK14");	}
	else if (random < 75)	{	B_Say (self, self, "$SMALLTALK15");	}
	else if (random < 80)	{	B_Say (self, self, "$SMALLTALK16");	}
	else if (random < 85)	{	B_Say (self, self, "$SMALLTALK17");	}
	else if (random < 90)	{	B_Say (self, self, "$SMALLTALK18");	}
	else if (random < 95)	{	B_Say (self, self, "$SMALLTALK19");	}
	else if (random < 100)	{	B_Say (self, self, "$SMALLTALK20");	}
	else if (random < 105)	{	B_Say (self, self, "$SMALLTALK21");	}
	else if (random < 110)
	{
		if (Npc_GetTrueGuild(self) == GIL_NOV)
		|| (Npc_GetTrueGuild(self) == GIL_PAL)
		|| (Npc_GetTrueGuild(self) == GIL_KDF)
		{
			if (Choice == 0)
			{
				B_Say (self, self, "$SMALLTALK28");
			}
			else
			{
				B_Say (self, self, "$SMALLTALK22");
			};
		}
		else if (Npc_GetTrueGuild(self) == GIL_BDT)
		|| 		(Npc_GetTrueGuild(self) == GIL_SLD)
		|| 		(Npc_GetTrueGuild(self) == GIL_DJG)
		|| 		(Npc_GetTrueGuild(self) == GIL_PIR)
		{
			if (Choice == 0)
			{
				B_Say (self, self, "$SMALLTALK25");
			}
			else
			{
				B_Say (self, self, "$SMALLTALK22");
			};
		}
		else
		{
			B_Say (self, self, "$SMALLTALK22");
		};
	}
	else if (random < 115)
	{
		if (Npc_GetTrueGuild(self) == GIL_NOV)
		|| (Npc_GetTrueGuild(self) == GIL_PAL)
		|| (Npc_GetTrueGuild(self) == GIL_KDF)
		{
			if (Choice == 0)
			{
				B_Say (self, self, "$SMALLTALK29");
			}
			else
			{
				B_Say (self, self, "$SMALLTALK23");
			};
		}
		else if (Npc_GetTrueGuild(self) == GIL_BDT)
		|| 		(Npc_GetTrueGuild(self) == GIL_SLD)
		|| 		(Npc_GetTrueGuild(self) == GIL_DJG)
		|| 		(Npc_GetTrueGuild(self) == GIL_PIR)
		{
			if (Choice == 0)
			{
				B_Say (self, self, "$SMALLTALK26");
			}
			else
			{
				B_Say (self, self, "$SMALLTALK23");
			};
		}
		else
		{
			B_Say (self, self, "$SMALLTALK23");
		};
	}
	else if (random <= 120)
	{
		if (Npc_GetTrueGuild (self) == GIL_NOV)
		|| (Npc_GetTrueGuild (self) == GIL_PAL)
		|| (Npc_GetTrueGuild (self) == GIL_KDF)
		{
			if (Choice == 0)
			{
				B_Say (self, self, "$SMALLTALK30");
			}
			else
			{
				B_Say (self, self, "$SMALLTALK24");
			};
		}
		else if (Npc_GetTrueGuild(self) == GIL_BDT)
		|| 		(Npc_GetTrueGuild(self) == GIL_SLD)
		|| 		(Npc_GetTrueGuild(self) == GIL_DJG)
		|| 		(Npc_GetTrueGuild(self) == GIL_PIR)
		{
			if (Choice == 0)
			{
				B_Say (self, self, "$SMALLTALK27");
			}
			else
			{
				B_Say (self, self, "$SMALLTALK24");
			};
		}
		else
		{
			B_Say (self, self, "$SMALLTALK24");
		};
	};
};
