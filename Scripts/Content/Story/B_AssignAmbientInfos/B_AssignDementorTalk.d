///******************************************************************************************
func void DIA_Dementor_Exit()
{
	Npc_SetRefuseTalk	(self, 30);
	AI_StopProcessInfos	(self);
	
	//Wld_StopEffect("DEMENTOR_FX");
	//Snd_Play("MFX_FEAR_CAST");
	
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino1))
	|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino2))
	|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino3))
	|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino4))
	{
		DMT_Vino1.aivar[AIV_EnemyOverride] = false;
		DMT_Vino2.aivar[AIV_EnemyOverride] = false;
		DMT_Vino3.aivar[AIV_EnemyOverride] = false;
		DMT_Vino4.aivar[AIV_EnemyOverride] = false;
	};
	
	self.aivar[AIV_EnemyOverride] = false;
	B_Attack (self, other, AR_SuddenEnemyInferno, 1);
};
///******************************************************************************************
/// AmbientDementor
///******************************************************************************************
instance DIA_AmbientDementor (C_Info)
{
	nr									=	1;
	condition							=	aTrueIfNotRefuse;
	information							=	DIA_AmbientDementor_Info;
	important							=	true;
	permanent							=	true;
};
func void DIA_AmbientDementor_Info()
{
	Wld_PlayEffect	("DEMENTOR_FX", hero, hero, 0, 0, 0, false);
	Wld_PlayEffect	("spellFX_Fear", self, self, 0, 0, 0, false);
	AI_PlayAni		(self, "T_PRACTICEMAGIC5");
	B_SetScObsessed	(self);
	
	var int randy; randy = Hlp_Random(4);
	
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino1))
	|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino2))
	|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino3))
	|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino4))
	{	
		AI_Output (self, other, "DIA_VinoDementor_19_00"); //Przyszed�e� tu, by przeszkodzi� nam w rytuale? Jego dusza nale�y do nas! Ju� mu nie pomo�esz, magu!
	}
	else if (CurrentLevel == DRAGONISLAND_ZEN)
	{
		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DragonIsle_Keymaster))
		{
			AI_Output (self, other, "DIA_AmbientDementor_19_01"); //Spr�bujesz przeszkodzi� mi w moim zadaniu? Nie masz szans, �miertelniku!
			AI_Output (self, other, "DIA_AmbientDementor_19_02"); //Jeszcze nikomu nie uda�o si� przej�� przez moj� krypt�. Zawr��! Ty te� nigdy nie dotrzesz do �wi�tego Dworu Irdorath.
		}
		else
		{
			if (randy == 0)	{	AI_Output (self, other, "DIA_AmbientDementor_19_03");	};	//I tak dotar�e� zbyt daleko, n�dzny robaku. Nigdy nie zst�pisz do �wi�tego sanktuarium.
			if (randy == 1)	{	AI_Output (self, other, "DIA_AmbientDementor_19_04");	};	//St�j! Ani kroku dalej!
			if (randy == 2)	{	AI_Output (self, other, "DIA_AmbientDementor_19_05");	};	//Daleko zaszed�e�, ale to ju� koniec twojej drogi.
			if (randy == 3)	{	AI_Output (self, other, "DIA_AmbientDementor_19_06");	};	//Je�li chcesz zmierzy� si� z moim Panem, musisz najpierw mnie pokona�!
		};
	}
	else if (hero.guild == GIL_KDF)
	{
		if (randy == 0)	{	AI_Output (self, other, "DIA_AmbientDementor_19_07");	};	//N�dzna namiastko maga, nigdy nie sprostasz boskiej mocy mego Pana i Mistrza!
		if (randy == 1)	{	AI_Output (self, other, "DIA_AmbientDementor_19_08");	};	//A wi�c wybra�e� �cie�k� magii, by nas pokona�? Sprytny ruch, ale nawet to ci� teraz nie uratuje.
		if (randy == 2)	{	AI_Output (self, other, "DIA_AmbientDementor_19_09");	};	//Nawet jako mag nie zdo�asz nas zniszczy�.
		if (randy == 3)	{	AI_Output (self, other, "DIA_AmbientDementor_19_10");	};	//M�j Pan pozbawi ci� �ycia. Twoje kuglarskie sztuczki w niczym ci nie pomog�.
	}
	else
	{
		if (randy == 0)	{	AI_Output (self, other, "DIA_AmbientDementor_19_11");	};	//Poddaj si�, p�ki jeszcze mo�esz. St�d nie ma ucieczki.
		if (randy == 1)	{	AI_Output (self, other, "DIA_AmbientDementor_19_12");	};	//Teraz poznasz prawdziw� moc mego Pana. Nic ci� ju� nie uratuje!
		if (randy == 2)	{	AI_Output (self, other, "DIA_AmbientDementor_19_13");	};	//M�j Pan domaga si� twojej g�owy. Nie ma ju� dla ciebie ratunku.
		if (randy == 3)	{	AI_Output (self, other, "DIA_AmbientDementor_19_14");	};	//Wpad�e� w nasze sid�a. Po�egnaj si� z �yciem.
	};
	
	DIA_Dementor_Exit();
};

///******************************************************************************************
func void B_AssignDementorTalk (var C_Npc slf)
{
	if (slf.guild == GIL_DMT)
	&& (slf.npctype == NPCTYPE_AMBIENT)
	{
		DIA_AmbientDementor.npc = Hlp_GetInstanceID(slf);
	};
};

///******************************************************************************************
/// BridgeDementor
///******************************************************************************************
instance DIA_BridgeDementor (C_Info)
{
	npc									=	DMT_1200_Dementor;
	nr									=	1;
	condition							=	aTrueIfNotRefuse;
	information							=	DIA_BridgeDementor_Info;
	permanent							=	false;
	important							=	true;
};
func void DIA_BridgeDementor_Info()
{
	Wld_PlayEffect	("DEMENTOR_FX", hero, hero, 0, 0, 0, false);
	Wld_PlayEffect	("spellFX_Fear", self, self, 0, 0, 0, false);
	AI_PlayAni		(self, "T_PRACTICEMAGIC5");
	B_SetScObsessed	(self);
	
	AI_Output (self, other, "DIA_BridgeDementor_19_00"); //Wiedzieli�my, �e przyb�dziesz!
	AI_Output (self, other, "DIA_BridgeDementor_19_01"); //Wkr�tce m�j Mistrz zatryumfuje, a ca�y �wiat padnie przed nim na kolana!
	AI_Output (self, other, "DIA_BridgeDementor_19_02"); //Ty g�upcze! Nie masz poj�cia, przeciw komu wyst�pujesz! Twa zuchwa�o�� zostanie ukarana tu i teraz!
	
	//Npc_SetRefuseTalk	(self, 60);
	//AI_StopProcessInfos	(self);
	
	//Wld_StopEffect("DEMENTOR_FX");
	//Snd_Play("MFX_FEAR_CAST");
	
	//B_Attack (self, other, AR_NONE, 1);
	
	DIA_Dementor_Exit();
};

///******************************************************************************************
/// B_AssignDementorTalk_Ritual
///******************************************************************************************
func void B_AssignDementorTalk_Ritual()
{
	Wld_PlayEffect	("DEMENTOR_FX", hero, hero, 0, 0, 0, false);
	Wld_PlayEffect	("spellFX_Fear", self, self, 0, 0, 0, false);
	AI_PlayAni		(self, "T_PRACTICEMAGIC5");
	B_SetScObsessed	(self);
	
	if (!MIS_SCKnowsInnosEyeIsBroken)
	{
		AI_Output (self, other, "DIA_RitualDementor_19_00"); //Sp�ni�e� si�.
		AI_Output (self, other, "DIA_RitualDementor_19_01"); //Zniszczyli�my Oko Innosa. Ju� nigdy nie odzyska swojej dawnej mocy.
		AI_Output (self, other, "DIA_RitualDementor_19_02"); //Za chwil� przekonasz si�, �e wszelkie pr�by pokonania naszego Pana i Mistrza s� z g�ry skazane na niepowodzenie.
		
		MIS_SCKnowsInnosEyeIsBroken = true;
		B_LogEntry (TOPIC_INNOSEYE, "Te wredne draby zaczynaj� mnie denerwowa�. Zniszczyli Oko Innosa. Nie mam zielonego poj�cia, jak je naprawi�.");
 		B_LogEntry (TOPIC_TraitorPedro, "Znalaz�em Oko Innosa, ale nie natkn��em si� jak do tej pory na �aden �lad Pedra. Ci czarni magowie najwyra�niej si� z nim jako� porozumieli.");
		B_GivePlayerExp(500);
	}
	else
	{
		var int randy; randy = Hlp_Random(4);
		
	 	if (randy == 0)	{	AI_Output (self, other, "DIA_RitualDementor_19_03");	};	//Poznaj nasz� moc.
		if (randy == 1)	{	AI_Output (self, other, "DIA_RitualDementor_19_04");	};	//Za Pana Ciemno�ci!
		if (randy == 2)	{	AI_Output (self, other, "DIA_RitualDementor_19_05");	};	//Nie uciekniesz nam!
		if (randy == 3)	{	AI_Output (self, other, "DIA_RitualDementor_19_06");	};	//Zginiesz!
	};
	
	DIA_Dementor_Exit();
};

///******************************************************************************************
instance DIA_DMT_1201_Dementor (C_Info)
{
	npc									=	DMT_1201_Dementor;
	nr									=	1;
	condition							=	aTrueIfNotRefuse;
	information							=	B_AssignDementorTalk_Ritual;
	important							=	true;
	permanent							=	true;
};

///******************************************************************************************
instance DIA_DMT_1202_Dementor (C_Info)
{
	npc									=	DMT_1202_Dementor;
	nr									=	1;
	condition							=	aTrueIfNotRefuse;
	information							=	B_AssignDementorTalk_Ritual;
	important							=	true;
	permanent							=	true;
};

///******************************************************************************************
instance DIA_DMT_1203_Dementor (C_Info)
{
	npc									=	DMT_1203_Dementor;
	nr									=	1;
	condition							=	aTrueIfNotRefuse;
	information							=	B_AssignDementorTalk_Ritual;
	important							=	true;
	permanent							=	true;
};

///******************************************************************************************
instance DIA_DMT_1204_Dementor (C_Info)
{
	npc									=	DMT_1204_Dementor;
	nr									=	1;
	condition							=	aTrueIfNotRefuse;
	information							=	B_AssignDementorTalk_Ritual;
	important							=	true;
	permanent							=	true;
};

///******************************************************************************************
instance DIA_DMT_1205_Dementor (C_Info)
{
	npc									=	DMT_1205_Dementor;
	nr									=	1;
	condition							=	aTrueIfNotRefuse;
	information							=	B_AssignDementorTalk_Ritual;
	important							=	true;
	permanent							=	true;
};

///******************************************************************************************
instance DIA_DMT_1206_Dementor (C_Info)
{
	npc									=	DMT_1206_Dementor;
	nr									=	1;
	condition							=	aTrueIfNotRefuse;
	information							=	B_AssignDementorTalk_Ritual;
	important							=	true;
	permanent							=	true;
};

///******************************************************************************************
instance DIA_DMT_1207_Dementor (C_Info)
{
	npc									=	DMT_1207_Dementor;
	nr									=	1;
	condition							=	aTrueIfNotRefuse;
	information							=	B_AssignDementorTalk_Ritual;
	important							=	true;
	permanent							=	true;
};

///******************************************************************************************
instance DIA_DMT_1208_Dementor (C_Info)
{
	npc									=	DMT_1208_Dementor;
	nr									=	1;
	condition							=	aTrueIfNotRefuse;
	information							=	B_AssignDementorTalk_Ritual;
	important							=	true;
	permanent							=	true;
};

///******************************************************************************************
instance DIA_DMT_1209_Dementor (C_Info)
{
	npc									=	DMT_1209_Dementor;
	nr									=	1;
	condition							=	aTrueIfNotRefuse;
	information							=	B_AssignDementorTalk_Ritual;
	important							=	true;
	permanent							=	true;
};

///******************************************************************************************
instance DIA_DMT_1210_Dementor (C_Info)
{
	npc									=	DMT_1210_Dementor;
	nr									=	1;
	condition							=	aTrueIfNotRefuse;
	information							=	B_AssignDementorTalk_Ritual;
	important							=	true;
	permanent							=	true;
};

///******************************************************************************************
instance DIA_DMT_1211_Dementor (C_Info)
{
	npc									=	DMT_1211_Dementor;
	nr									=	1;
	condition							=	aTrueIfNotRefuse;
	information							=	B_AssignDementorTalk_Ritual;
	important							=	true;
	permanent							=	true;
};
