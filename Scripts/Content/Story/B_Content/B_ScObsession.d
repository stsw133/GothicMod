///******************************************************************************************
/// B_ScObsession
///******************************************************************************************

const string PRINT_ScIsObsessed						=	"Czujesz, ¿e coœ ciê ciœnie i dusi!";

///******************************************************************************************
func void B_ClearScObsession (var C_Npc heiler)
{
	if (Hlp_GetInstanceID(heiler) != Hlp_GetInstanceID(hero))
	{
		AI_StopProcessInfos(heiler);
	};
	
	MOD_ObsessionOFF();
	PrintScreen	("Czujesz ulgê.", -1, -1, FONT_Screen, 3);
};

///******************************************************************************************
func void B_SetScObsessed (var C_Npc dementor)
{
	if (Hlp_GetInstanceID(dementor) != Hlp_GetInstanceID(hero))
	{
		AI_StopProcessInfos(dementor);
	};
	
	if (!Npc_HasItems(hero, ItAm_Prot_Obsession))
	{
		MOD_ObsessionON();
		PrintScreen	(PRINT_SCIsObsessed, -1, -1, FONT_Screen, 2);
	};
};
