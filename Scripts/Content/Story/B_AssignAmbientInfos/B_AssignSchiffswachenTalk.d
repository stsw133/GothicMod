///******************************************************************************************
///	B_AssignSchiffswachenTalk
///******************************************************************************************
func void B_AssignSchiffswachenGuard (var C_Npc Schiffswache)
{
	if (MIS_ShipIsFree || MIS_SCVisitShip == LOG_RUNNING)
	{
		if (Schiffswache.voice == 4)
		{
			AI_Output (self, other, "DIA_Pal_Schiffswache_Ambient_04_00"); //Obserwujemy ciê, wiêc lepiej o tym pamiêtaj.
		};
		if (Schiffswache.voice == 9)
		{
			AI_Output (self, other, "DIA_Pal_Schiffswache_Ambient_09_01"); //Nie wpl¹cz siê w jakieœ k³opoty, bêd¹c tutaj.
		};
		if (Schiffswache.voice == 12)
		{
			AI_Output (self, other, "DIA_Pal_Schiffswache_Ambient_12_02"); //Nawet nie myœl o kradzie¿y, jasne?
		};
		
		AI_StopProcessInfos (Schiffswache);
		Npc_SetRefuseTalk 	(Schiffswache, 60);
		Npc_SetRefuseTalk 	(Pal_220_Schiffswache, 60);
		Npc_SetRefuseTalk 	(Pal_221_Schiffswache, 60);
		Npc_SetRefuseTalk 	(Pal_222_Schiffswache, 60);
		Npc_SetRefuseTalk 	(Pal_223_Schiffswache, 60);
		Npc_SetRefuseTalk 	(Pal_224_Schiffswache, 60);
		Npc_SetRefuseTalk 	(Pal_225_Schiffswache, 60);
		Npc_SetRefuseTalk 	(Pal_226_Schiffswache, 60);
		Npc_SetRefuseTalk 	(Pal_227_Schiffswache, 60);
		Npc_SetRefuseTalk 	(Pal_228_Schiffswache, 60);
	}
	else
	{
		B_Say (self, other, "$ALARM");
		AI_StopProcessInfos(self);
		B_Attack (self, other, AR_GuardStopsIntruder, 1);
		
		Npc_SetRefuseTalk 	(Schiffswache, 20);
		Npc_SetRefuseTalk 	(Pal_220_Schiffswache, 20);
		Npc_SetRefuseTalk 	(Pal_221_Schiffswache, 20);
		Npc_SetRefuseTalk 	(Pal_222_Schiffswache, 20);
		Npc_SetRefuseTalk 	(Pal_223_Schiffswache, 20);
		Npc_SetRefuseTalk 	(Pal_224_Schiffswache, 20);
		Npc_SetRefuseTalk 	(Pal_225_Schiffswache, 20);
		Npc_SetRefuseTalk 	(Pal_226_Schiffswache, 20);
		Npc_SetRefuseTalk 	(Pal_227_Schiffswache, 20);
		Npc_SetRefuseTalk 	(Pal_228_Schiffswache, 20);
	};
};

///******************************************************************************************
func void B_AssignSchiffswachenInfos (var C_Npc Schiffswache)
{
	if (Mis_OCGateOpen)
	{
		if (Schiffswache.voice == 4)
		{
			AI_Output (self, other, "DIA_Pal_Schiffswache_AmbientKap5_04_00"); //Przeklêci orkowie najechali zamek Garonda. Natychmiast musimy coœ zrobiæ!
		};
		if (Schiffswache.voice == 9)
		{
			AI_Output (self, other, "DIA_Pal_Schiffswache_AmbientKap5_09_01"); //Jeœli kiedyœ dorwiemy drania, który otworzy³ g³ówn¹ bramê, nie bêdziemy z nim d³ugo rozmawiaæ. Zap³aci za sw¹ zdradê.
		};
		if (Schiffswache.voice == 12)
		{
			AI_Output (self, other, "DIA_Pal_Schiffswache_AmbientKap5_12_02"); //Nie mo¿emy d³u¿ej czekaæ. Bez pomocy nasi ch³opcy ugn¹ siê pod naciskiem kolejnej fali orkowych wojsk.
		};
	}
	else
	{
		if (Schiffswache.voice == 4)
		{
			AI_Output (self, other, "DIA_Pal_Schiffswache_AmbientKap5_04_03"); //Garond zwo³a³ pospolite ruszenie. Wkrótce wyruszamy do Górniczej Doliny.
		};
		if (Schiffswache.voice == 9)
		{
			AI_Output (self, other, "DIA_Pal_Schiffswache_AmbientKap5_09_04"); //Czas daæ orkom ostateczn¹ nauczkê.
		};
		if (Schiffswache.voice == 12)
		{
			AI_Output (self, other, "DIA_Pal_Schiffswache_AmbientKap5_12_05"); //Nie mogê siê doczekaæ, by pokazaæ orkom, co o nich myœlê. Wkrótce zaczynamy.
		};
	};
	AI_StopProcessInfos(Schiffswache);
};

///******************************************************************************************
func void B_AssignSchiffswachenTalk (var C_Npc Schiffswache)
{
	if (Kapitel >= 11)	{	B_AssignSchiffswachenInfos(Schiffswache);	}
	else 				{	B_AssignSchiffswachenGuard(Schiffswache);	};
};

func int B_AssignSchiffswachenInfoConditions (var C_Npc Schiffswache)
{
	if (Kapitel < 11)
	&& (!Npc_RefuseTalk(self))
	&& (MIS_SCVisitShip != LOG_RUNNING)	
	{
		return true;
	}
	else if	(Npc_IsInState(self, ZS_Talk))
	{
		return true;
	};
};

///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_PAL_220_Schiffswache_EXIT (C_Info)
{
	npc									=	PAL_220_Schiffswache;
	nr									=	999;
	condition							=	aTrue;
	information							=	DIA_PAL_220_Schiffswache_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void DIA_PAL_220_Schiffswache_EXIT_Info()
{
	AI_StopProcessInfos(self);
};
///******************************************************************************************
///	Schiffswache
///******************************************************************************************
instance DIA_PAL_220_Schiffswache (C_Info)
{
	npc									= 	PAL_220_Schiffswache;
	nr									= 	1;
	condition							= 	DIA_PAL_220_Schiffswache_Condition;
	information							= 	DIA_PAL_220_Schiffswache_Info;
	important							=	true;
	permanent							= 	true;
};
func int DIA_PAL_220_Schiffswache_Condition()
{
	B_AssignSchiffswachenInfoConditions(self);
};
func void DIA_PAL_220_Schiffswache_Info()
{
	B_AssignSchiffswachenTalk(self);
};
///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_PAL_221_Schiffswache_EXIT (C_Info)
{
	npc									=	PAL_221_Schiffswache;
	nr									=	999;
	condition							=	aTrue;
	information							=	DIA_PAL_221_Schiffswache_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void DIA_PAL_221_Schiffswache_EXIT_Info()
{
	AI_StopProcessInfos(self);
};
///******************************************************************************************
///	Schiffswache
///******************************************************************************************
instance DIA_PAL_221_Schiffswache (C_Info)
{
	npc									= 	PAL_221_Schiffswache;
	nr									= 	1;
	condition							= 	DIA_PAL_221_Schiffswache_Condition;
	information							= 	DIA_PAL_221_Schiffswache_Info;
	important							=	true;
	permanent							= 	true;
};
func int DIA_PAL_221_Schiffswache_Condition()
{
	B_AssignSchiffswachenInfoConditions(self);
};
func void DIA_PAL_221_Schiffswache_Info()
{
	B_AssignSchiffswachenTalk(self);
};
///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_PAL_222_Schiffswache_EXIT (C_Info)
{
	npc									=	PAL_222_Schiffswache;
	nr									=	999;
	condition							=	aTrue;
	information							=	DIA_PAL_222_Schiffswache_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void DIA_PAL_222_Schiffswache_EXIT_Info()
{
	AI_StopProcessInfos(self);
};
///******************************************************************************************
///	Schiffswache
///******************************************************************************************
instance DIA_PAL_222_Schiffswache (C_Info)
{
	npc									= 	PAL_222_Schiffswache;
	nr									= 	1;
	condition							= 	DIA_PAL_222_Schiffswache_Condition;
	information							= 	DIA_PAL_222_Schiffswache_Info;
	important							=	true;
	permanent							= 	true;
};
func int DIA_PAL_222_Schiffswache_Condition()
{
	B_AssignSchiffswachenInfoConditions(self);
};
func void DIA_PAL_222_Schiffswache_Info()
{
	B_AssignSchiffswachenTalk(self);
};
///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_PAL_223_Schiffswache_EXIT (C_Info)
{
	npc									=	PAL_223_Schiffswache;
	nr									=	999;
	condition							=	aTrue;
	information							=	DIA_PAL_223_Schiffswache_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void DIA_PAL_223_Schiffswache_EXIT_Info()
{
	AI_StopProcessInfos(self);
};
///******************************************************************************************
///	Schiffswache
///******************************************************************************************
instance DIA_PAL_223_Schiffswache (C_Info)
{
	npc									=	PAL_223_Schiffswache;
	nr									=	1;
	condition							=	DIA_PAL_223_Schiffswache_Condition;
	information							=	DIA_PAL_223_Schiffswache_Info;
	important							=	true;
	permanent							=	true;
};
func int DIA_PAL_223_Schiffswache_Condition()
{
	B_AssignSchiffswachenInfoConditions(self);
};
func void DIA_PAL_223_Schiffswache_Info()
{
	B_AssignSchiffswachenTalk(self);
};
///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_PAL_224_Schiffswache_EXIT (C_Info)
{
	npc									=	PAL_224_Schiffswache;
	nr									=	999;
	condition							=	aTrue;
	information							=	DIA_PAL_224_Schiffswache_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void DIA_PAL_224_Schiffswache_EXIT_Info()
{
	AI_StopProcessInfos(self);
};
///******************************************************************************************
///	Schiffswache
///******************************************************************************************
instance DIA_PAL_224_Schiffswache (C_Info)
{
	npc									=	PAL_224_Schiffswache;
	nr									=	1;
	condition							=	DIA_PAL_224_Schiffswache_Condition;
	information							=	DIA_PAL_224_Schiffswache_Info;
	important							=	true;
	permanent							=	true;
};
func int DIA_PAL_224_Schiffswache_Condition()
{
	B_AssignSchiffswachenInfoConditions(self);
};
func void DIA_PAL_224_Schiffswache_Info()
{
	B_AssignSchiffswachenTalk(self);
};
///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_PAL_225_Schiffswache_EXIT (C_Info)
{
	npc									=	PAL_225_Schiffswache;
	nr									=	999;
	condition							=	aTrue;
	information							=	DIA_PAL_225_Schiffswache_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void DIA_PAL_225_Schiffswache_EXIT_Info()
{
	AI_StopProcessInfos(self);
};
///******************************************************************************************
///	Schiffswache
///******************************************************************************************
instance DIA_PAL_225_Schiffswache (C_Info)
{
	npc									=	PAL_225_Schiffswache;
	nr									=	1;
	condition							=	DIA_PAL_225_Schiffswache_Condition;
	information							=	DIA_PAL_225_Schiffswache_Info;
	important							=	true;
	permanent							=	true;
};
func int DIA_PAL_225_Schiffswache_Condition()
{
	B_AssignSchiffswachenInfoConditions(self);
};
func void DIA_PAL_225_Schiffswache_Info()
{
	B_AssignSchiffswachenTalk(self);
};
///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_PAL_226_Schiffswache_EXIT (C_Info)
{
	npc									=	PAL_226_Schiffswache;
	nr									=	999;
	condition							=	aTrue;
	information							=	DIA_PAL_226_Schiffswache_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void DIA_PAL_226_Schiffswache_EXIT_Info()
{
	B_AssignSchiffswachenTalk(self);
};
///******************************************************************************************
///	Schiffswache
///******************************************************************************************
instance DIA_PAL_226_Schiffswache (C_Info)
{
	npc									=	PAL_226_Schiffswache;
	nr									=	1;
	condition							=	DIA_PAL_226_Schiffswache_Condition;
	information							=	DIA_PAL_226_Schiffswache_Info;
	important							=	true;
	permanent							=	true;
};
func int DIA_PAL_226_Schiffswache_Condition()
{
	B_AssignSchiffswachenInfoConditions(self);
};
func void DIA_PAL_226_Schiffswache_Info()
{
	B_AssignSchiffswachenTalk(self);
};
///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_PAL_227_Schiffswache_EXIT (C_Info)
{
	npc									=	PAL_227_Schiffswache;
	nr									=	1;
	condition							=	DIA_PAL_227_Schiffswache_Condition;
	information							=	DIA_PAL_227_Schiffswache_Info;
	important							=	true;
	permanent							=	true;
};
func void DIA_PAL_227_Schiffswache_EXIT_Info()
{
	B_AssignSchiffswachenTalk(self);
};
///******************************************************************************************
///	Schiffswache
///******************************************************************************************
instance DIA_PAL_227_Schiffswache (C_Info)
{
	npc									=	PAL_227_Schiffswache;
	nr									=	1;
	condition							=	DIA_PAL_227_Schiffswache_Condition;
	information							=	DIA_PAL_227_Schiffswache_Info;
	important							=	true;
	permanent							=	true;
};
func int DIA_PAL_227_Schiffswache_Condition()
{
	B_AssignSchiffswachenInfoConditions(self);
};
func void DIA_PAL_227_Schiffswache_Info()
{
	B_AssignSchiffswachenTalk(self);
};
///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_PAL_228_Schiffswache_EXIT (C_Info)
{
	npc									=	PAL_228_Schiffswache;
	nr									=	1;
	condition							=	DIA_PAL_228_Schiffswache_Condition;
	information							=	DIA_PAL_228_Schiffswache_Info;
	important							=	true;
	permanent							=	true;
};
func void DIA_PAL_228_Schiffswache_EXIT_Info()
{
	B_AssignSchiffswachenTalk(self);
};
///******************************************************************************************
///	Schiffswache
///******************************************************************************************
instance DIA_PAL_228_Schiffswache (C_Info)
{
	npc									=	PAL_228_Schiffswache;
	nr									=	1;
	condition							=	DIA_PAL_228_Schiffswache_Condition;
	information							=	DIA_PAL_228_Schiffswache_Info;
	important							=	true;
	permanent							=	true;
};
func int DIA_PAL_228_Schiffswache_Condition()
{
	B_AssignSchiffswachenInfoConditions(self);
};
func void DIA_PAL_228_Schiffswache_Info()
{
	B_AssignSchiffswachenTalk(self);
};
