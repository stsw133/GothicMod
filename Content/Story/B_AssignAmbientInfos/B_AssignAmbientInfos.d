// *****************************************************
// B_AssignAmbientInfos
// --------------------
// Verteiler. Aufruf aller B_AssignAmbientInfos-Befehle,
// abhängig von Gilde und Geschlecht
// *****************************************************

FUNC VOID B_AssignAmbientInfos (var C_NPC slf)
{
	// ------ NOV ------
	if (slf.guild == GIL_NOV)
	{	
		if (slf.npctype == NPCTYPE_AMBIENT)
		{
			if (slf.voice == 3)		{	B_AssignAmbientInfos_Nov_3 (slf);	};
			if (slf.voice == 8) 	{	B_AssignAmbientInfos_Nov_8 (slf);	};
		};
	};

	// ------ DMT ------
	if (slf.guild == GIL_DMT)
	{	
		if (slf.npctype == NPCTYPE_AMBIENT)
		|| (slf.npctype == NPCTYPE_OCAMBIENT)
		{
			if (slf.voice == 19) 	{	B_AssignDementorTalk (slf);		};	
		};
	};
};	
