//******************************************************************************************
//	B_SCObsession
//******************************************************************************************

var int SC_IsObsessed;
var int SC_ObsessionCounter;

//******************************************************************************************
func void B_ClearSCObsession (var C_NPC heiler)
{
	if (Hlp_GetInstanceID(heiler) != Hlp_GetInstanceID(hero))
	{
		AI_StopProcessInfos(heiler);
	};
	
	SC_IsObsessed = false;
	SC_ObsessionCounter = 0;
	PrintScreen	(PRINT_ClearSCObsession, -1, -1, FONT_Screen, 3);
};

//******************************************************************************************
func void B_SCIsObsessed (var C_NPC dementor)
{
	if (Hlp_GetInstanceID(dementor) != Hlp_GetInstanceID(hero))
	{
		AI_StopProcessInfos(dementor);
	};
	
	if (!Npc_HasItems(hero, ItAm_ProtDementor))
	{
		if (SC_ObsessionCounter >= 2)
		{
			SC_IsObsessed = true;
			PrintScreen	(PRINT_SCIsObsessed, -1, -1, FONT_Screen, 2);
		};
		SC_ObsessionCounter += 1;
	};
};
