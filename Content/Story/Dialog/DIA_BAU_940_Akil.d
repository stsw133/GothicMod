//******************************************************************************************
//	EXIT
//******************************************************************************************
instance DIA_Akil_EXIT (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Akil_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

func void DIA_Akil_EXIT_Info()
{
	if (Kapitel < 9)
	{
		AI_Output (other, self, "DIA_Akil_EXIT_15_00"); //Musz� ju� i��.
		AI_Output (self, other, "DIA_Akil_EXIT_13_02"); //Powodzenia. Naprawd� chcia�bym zrobi� dla ciebie co� wi�cej.
	};
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Hallo
//******************************************************************************************
instance DIA_Akil_Hallo (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	4;
	condition							=	DIA_Akil_Hallo_Condition;
	information							=	DIA_Akil_Hallo_Info;
	description							=	"Masz jakie� k�opoty?";
};

func int DIA_Akil_Hallo_Condition()
{
	if (!Npc_IsDead(Alvares))
	&& (!Npc_IsDead(Engardo))
	{
		return true;
	};
};

func void DIA_Akil_Hallo_Info()
{
	AI_Output (other, self, "DIA_Akil_Hallo_15_00"); //Masz jakie� k�opoty?
	AI_Output (self, other, "DIA_Akil_Hallo_13_01"); //...Ech... nie, nie... wszystko w porz�dku. Chyba... b�dzie lepiej, jak ju� sobie p�jdziesz.
	AI_Output (other, self, "DIA_Akil_Hallo_15_02"); //Na pewno?
	AI_Output (self, other, "DIA_Akil_Hallo_13_03"); //Ech... Tak, tak... wszystko w porz�dku. Ty... ech... ja... ja... nie mog� teraz z tob� rozmawia�.
	
	QuestStep_AkilNeedHelp = SetQuestStatus (Quest_AkilNeedHelp, LOG_RUNNING, QuestStep_AkilNeedHelp);
	SetNoteEntry (Quest_AkilNeedHelp, LOG_MISSION, "Farmie Akila zagra�aj� najemnicy.");
	
	Akils_SLDStillthere = true;
	AI_StopProcessInfos(self);
};	

//******************************************************************************************
//	Nichtjetzt
//******************************************************************************************
instance DIA_Akil_Nichtjetzt (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	7;
	condition							=	DIA_Akil_Nichtjetzt_Condition;
	information							=	DIA_Akil_Nichtjetzt_Info;
	permanent							=	true;
	important							=	true;
};

func int DIA_Akil_Nichtjetzt_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	&& (!Npc_IsDead(Alvares))
	&& (!Npc_IsDead(Engardo))
	&& (Npc_KnowsInfo(other,DIA_Akil_Hallo))
	{
		return true;
	};
};

func void DIA_Akil_Nichtjetzt_Info()
{
	AI_Output (self, other, "DIA_Akil_Nichtjetzt_13_00"); //Ech... Nie teraz, teraz nie mog� z tob� rozmawia�.
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	NachKampf
//******************************************************************************************
instance DIA_Akil_NachKampf (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	5;
	condition							=	DIA_Akil_NachKampf_Condition;
	information							=	DIA_Akil_NachKampf_Info;
	important							=	true;
};

func int DIA_Akil_NachKampf_Condition()
{
	if (Npc_IsDead(Alvares))
	&& (Npc_IsDead(Engardo))
	{
		return true;
	};
};

func void DIA_Akil_NachKampf_Info()
{
	AI_Output (self, other, "DIA_Akil_NachKampf_13_00"); //Dzi�ki Innosowi. My�la�em, �e m�j czas dobieg� ko�ca.
	AI_Output (self, other, "DIA_Akil_NachKampf_13_01"); //Nazywam si� Akil. Uprawiam ten skromny skrawek ziemi.
	AI_Output (other, self, "DIA_Akil_NachKampf_15_02"); //Kim byli ci ludzie?
	if ((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG))
	{
		AI_Output (self, other, "DIA_Akil_NachKampf_13_03"); //Powiniene� ich rozpozna�. To byli najemnicy z gospodarstwa Onara. Tacy jak ty.
	}
	else
	{
		AI_Output (self, other, "DIA_Akil_NachKampf_13_04"); //To byli najemnicy z gospodarstwa Onara. Ci dranie znaj� si� tylko na grabie�ach i mordach.
	};
	AI_Output (self, other, "DIA_Akil_NachKampf_13_05"); //Ba�em si� najgorszego...
	AI_Output (self, other, "DIA_Akil_NachKampf_13_06"); //...c�, dzi�ki Innosowi, �e do tego nie dosz�o. Powiedz mi, co mog� dla ciebie zrobi�?
	
	Info_ClearChoices(DIA_Akil_NachKampf);
	Info_AddChoice (DIA_Akil_NachKampf, "Nic. Pod warunkiem, �e wszystko jest w porz�dku.", DIA_Akil_NachKampf_Ehre);
	Info_AddChoice (DIA_Akil_NachKampf, "Mo�e par� sztuk z�ota?", DIA_Akil_NachKampf_Gold);
	
	Npc_ExchangeRoutine	(self, "Start");
	
	self.flags = 0;
	
	if (Hlp_IsValidNpc(Kati))
	&& (!Npc_IsDead(Kati))
	{
		Npc_ExchangeRoutine	(Kati, "Start");
		AI_ContinueRoutine(Kati);
		Kati.flags = 0;
	};
	
	if (Hlp_IsValidNpc(Randolph))
	&& (!Npc_IsDead(Randolph))
	{
		Npc_ExchangeRoutine	(Randolph, "Start");
		AI_ContinueRoutine (Randolph);
		Randolph.flags = 0;
	};
	
	TOPIC_END_AkilsSLDStillthere = true;
	B_GivePlayerXP(XP_BONUS_1);
};

FUNC VOID DIA_Akil_NachKampf_Ehre()
{
	AI_Output (other, self, "DIA_Akil_NachKampf_Ehre_15_00"); //Nic. Pod warunkiem, �e wszystko jest w porz�dku.
	AI_Output (self, other, "DIA_Akil_NachKampf_Ehre_13_01"); //Jeste� wyj�tkowym cz�owiekiem. Niech ci� Innos ma w swej opiece.
	
	B_GivePlayerXP(XP_BONUS_2);
	Info_ClearChoices(DIA_Akil_NachKampf);
};

FUNC VOID DIA_Akil_NachKampf_Gold()
{
	AI_Output (other, self, "DIA_Akil_NachKampf_Gold_15_00"); //Mo�e par� sztuk z�ota?
	AI_Output (self, other, "DIA_Akil_NachKampf_Gold_13_01"); //Obawiam si�, �e ci� rozczaruj� - jeste�my biedakami. Wystarcza nam na proste �ycie.
	AI_Output (self, other, "DIA_Akil_NachKampf_Gold_13_02"); //Mog� ci tylko zaproponowa� posi�ek. Id� do Kati, ona si� tob� zajmie.
	
	B_GivePlayerXP(XP_BONUS_1);
	Info_ClearChoices(DIA_Akil_NachKampf);
	Kati_Mahlzeit = true;
};

//******************************************************************************************
//	Soeldner
//******************************************************************************************
instance DIA_Akil_Soeldner (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	7;
	condition							=	DIA_Akil_Soeldner_Condition;
	information							=	DIA_Akil_Soeldner_Info;
	description							=	"Czego chcieli od ciebie ci najemnicy?";
};

func int DIA_Akil_Soeldner_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Akil_NachKampf))
	{
		return true;
	};
};

func void DIA_Akil_Soeldner_Info()
{
	AI_Output (other, self, "DIA_Akil_Soeldner_15_00"); //Czego chcieli od ciebie ci najemnicy?
	if ((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG))
	{
		AI_Output (self, other, "DIA_Akil_Soeldner_13_01"); //Nabierasz mnie. Ci najemnicy chcieli zebra� pieni�dze za czynsz.
	}
	else
	{
		AI_Output (self, other, "DIA_Akil_Soeldner_13_02"); //Nie wiesz? Wynaj�� ich zarz�dca Onar. Broni� jego gospodarstwa i zbieraj� dla niego czynsz.
		AI_Output (self, other, "DIA_Akil_Soeldner_13_03"); //To znaczy chodz� od domu do domu i zabieraj� co chc�. A kto nie mo�e zap�aci�, poznaje smak stali.
	};
};

//******************************************************************************************
//	MissingPeople
//******************************************************************************************
instance DIA_Addon_Akil_MissingPeople (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	5;
	condition							=	DIA_Addon_Akil_MissingPeople_Condition;
	information							=	DIA_Addon_Akil_MissingPeople_Info;
	description							=	"S�ysza�e� co� o zaginionych mieszka�cach miasta?";
};

func int DIA_Addon_Akil_MissingPeople_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Akil_NachKampf))
	&& (SC_HearedAboutMissingPeople == true)
	{
		return true;
	};
};

func void DIA_Addon_Akil_MissingPeople_Info()
{
	AI_Output (other, self, "DIA_Addon_Akil_MissingPeople_15_00"); //S�ysza�e� co� o zaginionych mieszka�cach miasta?
	AI_Output (self, other, "DIA_Addon_Akil_MissingPeople_13_01"); //A to paradne! Czy s�ysza�em? Kilku moich parobk�w te� gdzie� przepad�o.
	AI_Output (self, other, "DIA_Addon_Akil_MissingPeople_13_02"); //Cho�by Tonak i Tabor, kt�rzy pracowali na polu. Trzy dni temu przepadli. Jak kamie� w wod�.
	AI_Output (self, other, "DIA_Addon_Akil_MissingPeople_13_03"); //Wiem, �e nie opu�ciliby farmy bez s�owa. W ko�cu nie trzyma�em ich tu si��.
	AI_Output (self, other, "DIA_Addon_Akil_MissingPeople_13_04"); //Po prostu znikn�li i, co gorsza, nikt nie potrafi powiedzie�, co si� z nimi sta�o.
	AI_Output (self, other, "DIA_Addon_Akil_MissingPeople_13_05"); //Je�li ich spotkasz, dasz mi zna�, dobra?
	B_GivePlayerXP(XP_BONUS_0);
	
	QuestStep_MissingPeople = SetQuestStatus (Quest_MissingPeople, LOG_RUNNING, QuestStep_MissingPeople);
	SetNoteEntry (Quest_MissingPeople, LOG_MISSION, "Zagin�li robotnicy farmera Akila: Tonak i Telbor.");
	
	QuestStep_AkilPeople = LOG_RUNNING;
};

//******************************************************************************************
//	ReturnPeople
//******************************************************************************************
instance DIA_Addon_Akil_ReturnPeople (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	5;
	condition							=	DIA_Addon_Akil_ReturnPeople_Condition;
	information							=	DIA_Addon_Akil_ReturnPeople_Info;
	description							=	"Je�li chodzi o twoich parobk�w...";
};

func int DIA_Addon_Akil_ReturnPeople_Condition()
{
	if (QuestStep_AkilPeople == LOG_RUNNING)
	&& (MissingPeopleReturnedHome == true)
	&& ((Npc_GetDistToWP(Tonak_NW,"NW_FARM2_FIELD_TANOK") <= 1000) || (Npc_GetDistToWP(Telbor_NW,"NW_FARM2_FIELD_TELBOR") <= 1000))
	{
		return true;
	};
};

func void DIA_Addon_Akil_ReturnPeople_Info()
{
	AI_Output (other, self, "DIA_Addon_Akil_ReturnPeople_15_00"); //Je�li chodzi o twoich parobk�w...
	if (Npc_GetDistToWP(Tonak_NW,"NW_FARM2_FIELD_TANOK") <= 1000)
	&& (Npc_GetDistToWP(Telbor_NW,"NW_FARM2_FIELD_TELBOR") <= 1000)
	{
		AI_Output (self, other, "DIA_Addon_Akil_ReturnPeople_13_01"); //Dzi�ki tobie wr�cili. Jeste� odwa�nym cz�owiekiem.
	}
	else 
	{
		AI_Output (self, other, "DIA_Addon_Akil_ReturnPeople_13_02"); //Przynajmniej jeden z nich prze�y�.
	};
	AI_Output (self, other, "DIA_Addon_Akil_ReturnPeople_13_03"); //Prosz�, we� to z�oto. Zas�u�y�e� na nie.
	
	B_GiveInvItems (self, other, itmi_Gold, 100);
	
	B_GivePlayerXP(XP_BONUS_1);
	QuestStep_AkilPeople = SetQuestStatus (Quest_AkilPeople, LOG_SUCCESS, QuestStep_AkilPeople);
};

//******************************************************************************************
//	Lieferung
//******************************************************************************************
instance DIA_Akil_Lieferung (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	20;
	condition							=	DIA_Akil_Lieferung_Condition;
	information							=	DIA_Akil_Lieferung_Info;
	description							=	"Baltram mnie przys�a�...";
};

func int DIA_Akil_Lieferung_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Akil_NachKampf))
	&& (QuestStep_BaltramPacket == LOG_RUNNING)
	{
		return true;
	};
};

func void DIA_Akil_Lieferung_Info()
{
	AI_Output (other, self, "DIA_Akil_Lieferung_15_00"); //Baltram mnie przys�a�. Mam dla niego zabra� dostaw�.
	AI_Output (self, other, "DIA_Akil_Lieferung_13_01"); //A wi�c jeste� jego nowym pos�a�cem. W porz�dku, mam ju� gotow� paczk�.
	
	CreateInvItems (self, ItMi_BaltramPaket, 1);
	B_GiveInvItems (self, other, ItMi_BaltramPaket, 1);
	Lieferung_Geholt = true;
	
	QuestStep_BaltramPacket = SetQuestStatus (Quest_BaltramPacket, LOG_PROGRESS, QuestStep_BaltramPacket);
	SetNoteEntry (Quest_BaltramPacket, LOG_MISSION, "Mam przesy�k�. Mog� j� teraz zabra� do Baltrama...");
	SetNoteEntry (Quest_NagurPacket, LOG_MISSION, "Mam przesy�k�. Mog� j� teraz zabra� do Nagura...");
};

//******************************************************************************************
//	Gegend
//******************************************************************************************
instance DIA_Akil_Gegend (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	90;
	condition							=	DIA_Akil_Gegend_Condition;
	information							=	DIA_Akil_Gegend_Info;
	description							=	"Znasz mo�e troch� okolic�?";
};

func int DIA_Akil_Gegend_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Akil_Soeldner))
	&& (Kapitel < 9)
	{
		return true;
	};
};

func void DIA_Akil_Gegend_Info()
{
	AI_Output (other, self, "DIA_Akil_Gegend_15_00"); //Znasz mo�e troch� okolic�?
	AI_Output (self, other, "DIA_Akil_Gegend_13_01"); //Jasne, co chcesz wiedzie�?
};

//******************************************************************************************
//	Hof
//******************************************************************************************
instance DIA_Akil_Hof (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	20;
	condition							=	DIA_Akil_Hof_Condition;
	information							=	DIA_Akil_Hof_Info;
	description							=	"Gdzie znajd� gospodarstwo Onara?";
};

func int DIA_Akil_Hof_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Akil_Gegend))
	{
		return true;
	};
};

func void DIA_Akil_Hof_Info()
{
	AI_Output (other, self, "DIA_Akil_Gegend_Onar_15_00"); //Gdzie znajd� gospodarstwo Onara?
	AI_Output (self, other, "DIA_Akil_Gegend_Onar_13_01"); //Cofnij si� do kamiennych schod�w i id� drog� na wsch�d.
	AI_Output (self, other, "DIA_Akil_Gegend_Onar_13_02"); //Tak dojdziesz do tawerny. Stamt�d id� dalej na wsch�d, dop�ki nie dojdziesz do wielkich p�l. Tam si� kr�c� najemnicy.
};

//******************************************************************************************
//	Taverne
//******************************************************************************************
instance DIA_Akil_Taverne (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	20;
	condition							=	DIA_Akil_Taverne_Condition;
	information							=	DIA_Akil_Taverne_Info;
	description							=	"Co to za gospoda, ta na wschodzie?";
};

func int DIA_Akil_Taverne_Condition ()
{
	if (Npc_KnowsInfo(other,DIA_Akil_Hof))
	{
		return true;
	};
};

func void DIA_Akil_Taverne_Info()
{
	AI_Output (other, self, "DIA_Akil_Gegend_Taverne_15_00"); //Co to za gospoda, ta na wschodzie?
	AI_Output (self, other, "DIA_Akil_Gegend_Taverne_13_01"); //Zapytaj Randolfa. On wie na ten temat wi�cej. By� tam kilka razy.
};

//******************************************************************************************
//	Wald
//******************************************************************************************
instance DIA_Akil_Wald (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	20;
	condition							=	DIA_Akil_Wald_Condition;
	information							=	DIA_Akil_Wald_Info;
	description							=	"Co jest w lasach za twoim gospodarstwem?";
};

func int DIA_Akil_Wald_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Akil_Gegend))
	{
		return true;
	};
};

func void DIA_Akil_Wald_Info()
{
	AI_Output (other, self, "DIA_Akil_Gegend_Wald_15_00"); //Co jest w lasach za twoim gospodarstwem?
	AI_Output (self, other, "DIA_Akil_Gegend_Wald_13_01"); //Tam jest pe�no potwor�w, a wilki nie s� z nich najgro�niejsze.
	AI_Output (self, other, "DIA_Akil_Gegend_Wald_13_02"); //Podobno gdzie� tam, w pieczarach, ukrywaj� si� te� bandyci. Ale jak na razie, zostawiaj� moje gospodarstwo w spokoju.
};

//******************************************************************************************
//	Perm
//******************************************************************************************
instance DIA_Akil_Perm (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	32;
	condition							=	DIA_Akil_Perm_Condition;
	information							=	DIA_Akil_Perm_Info;
	permanent							=	true;
	description							=	"Czy co� jeszcze si� dzia�o?";
};

func int DIA_Akil_Perm_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Akil_Soeldner))
	&& (Kapitel >= 9)
	{
		return true;
	};
};

func void DIA_Akil_Perm_Info()
{
	AI_Output (other, self, "DIA_Akil_Perm_15_00"); //Czy co� jeszcze si� dzia�o?
	if (Kapitel == 9)
	{
		if (QuestStep_AkilSheeps == LOG_SUCCESS)
		{
			AI_Output (self, other, "DIA_Akil_Perm_13_01"); //Nie. Mam nadziej�, �e owce pozostan� tam, gdzie teraz s�.
		}
		else
		{
			AI_Output (self, other, "DIA_Akil_Perm_13_02"); //Ci�gle znikaj� mi owce. Nied�ugo nie b�d� m�g� nas wykarmi�.
		};
	}
	else //Kapitel 4 & 5
	{
		if ((hero.guild == GIL_MIL) || (hero.guild == GIL_PAL))
		{
			AI_Output (self, other, "DIA_Akil_Perm_13_03"); //Wsz�dzie pojawili si� orkowie. Kto� nawet wspomina� o ich g��wnej kwaterze. Zapytaj o to farmera Lobarta.
		};
		if ((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG))
		{
			AI_Output (self, other, "DIA_Akil_Perm_13_04"); //Widziano te� w okolicy jaszczuroludzi. Na twoim miejscu nie szed�bym do jaski�.
		};
		if (hero.guild == GIL_KDF)
		{
			AI_Output (self, other, "DIA_Akil_Perm_13_05"); //Szukaj� ci� ludzie w czarnych kapturach.
			AI_Output (other, self, "DIA_Akil_Perm_15_06"); //O, to temat na ca�� powie��.
			AI_Output (self, other, "DIA_Akil_Perm_13_07"); //W porz�dku. Tak sobie tylko pomy�la�em, �e o tym wspomn�.
		};
	};
};

//******************************************************************************************
//	SchafDieb
//******************************************************************************************
instance DIA_Akil_SCHAFDIEB (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	2;
	condition							=	DIA_Akil_SCHAFDIEB_Condition;
	information							=	DIA_Akil_SCHAFDIEB_Info;
	description							=	"Czy wydarzy�o si� jeszcze co� nowego?";
};

func int DIA_Akil_SCHAFDIEB_Condition()
{
	if (Kapitel >= 9)
	{
		return true;
	};
};

func void DIA_Akil_SCHAFDIEB_Info()
{
	AI_Output (other, self, "DIA_Akil_SCHAFDIEB_15_00"); //Czy wydarzy�o si� jeszcze co� nowego?
	AI_Output (self, other, "DIA_Akil_SCHAFDIEB_13_01"); //Ostatnio kto� kradnie mi owce. Nie mog� spa� spokojnie.
	
	Info_ClearChoices(DIA_Akil_SCHAFDIEB);
	Info_AddChoice (DIA_Akil_SCHAFDIEB, "To nie m�j problem.", DIA_Akil_SCHAFDIEB_nein);
	Info_AddChoice (DIA_Akil_SCHAFDIEB, "Ile owiec ci zgin�o?", DIA_Akil_SCHAFDIEB_wieviel);
	Info_AddChoice (DIA_Akil_SCHAFDIEB, "Kto m�g� to zrobi�?", DIA_Akil_SCHAFDIEB_wer);
	
	QuestStep_AkilSheeps = SetQuestStatus (Quest_AkilSheeps, LOG_RUNNING, QuestStep_AkilSheeps);
	SetNoteEntry (Quest_AkilSheeps, LOG_MISSION, "Akilowi gin� kolejne owce. Podejrzewa, �e to sprawka bandyt�w ukrywaj�cych si� w pobliskiej le�nej jaskini.");
};

func void DIA_Akil_SCHAFDIEB_wer()
{
	AI_Output (other, self, "DIA_Akil_SCHAFDIEB_wer_15_00"); //Kto m�g� to zrobi�?
	AI_Output (self, other, "DIA_Akil_SCHAFDIEB_wer_13_01"); //Mam pewne podejrzenia.
	AI_Output (self, other, "DIA_Akil_SCHAFDIEB_wer_13_02"); //W jaskiniach w lesie ukrywaj� si� jacy� paskudni osobnicy.
	AI_Output (self, other, "DIA_Akil_SCHAFDIEB_wer_13_03"); //Jako� trudno mi uwierzy�, �e �ywi� si� jag�dkami. Jestem prawie pewien, �e to przez nich znikaj� moje owce.
	Info_ClearChoices(DIA_Akil_SCHAFDIEB);
};

func void DIA_Akil_SCHAFDIEB_wieviel()
{
	AI_Output (other, self, "DIA_Akil_SCHAFDIEB_wieviel_15_00"); //Ile owiec ci zgin�o?
	AI_Output (self, other, "DIA_Akil_SCHAFDIEB_wieviel_13_01"); //Do tej pory straci�em co najmniej trzy.
};

func void DIA_Akil_SCHAFDIEB_nein()
{
	AI_Output (other, self, "DIA_Akil_SCHAFDIEB_nein_15_00"); //To nie m�j problem.
	AI_Output (self, other, "DIA_Akil_SCHAFDIEB_nein_13_01"); //Rozumiem. Masz inne sprawy na g�owie.
	Info_ClearChoices(DIA_Akil_SCHAFDIEB);
	
	QuestStep_AkilSheeps = SetQuestStatus (Quest_AkilSheeps, LOG_CANCELED, QuestStep_AkilSheeps);
};

//******************************************************************************************
//	SchafDiebePlatt
//******************************************************************************************
instance DIA_Akil_SCHAFDIEBEPLATT (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	2;
	condition							=	DIA_Akil_SCHAFDIEBEPLATT_Condition;
	information							=	DIA_Akil_SCHAFDIEBEPLATT_Info;
	description							=	"Znalaz�em z�odziei owiec.";
};

func int DIA_Akil_SCHAFDIEBEPLATT_Condition()
{
	if (Kapitel >= 9)
//	&& (QuestStep_AkilSheeps == LOG_RUNNING)
	&& (Npc_KnowsInfo(other,DIA_Akil_SCHAFDIEB))
	&& (Npc_IsDead(BDT_1025_Bandit_H))
	&& (Npc_IsDead(BDT_1026_Bandit_H))
	&& (Npc_IsDead(BDT_1027_Bandit_H))
	{
		return true;
	};
};

func void DIA_Akil_SCHAFDIEBEPLATT_Info()
{
	AI_Output (other, self, "DIA_Akil_SCHAFDIEBEPLATT_15_00"); //Znalaz�em z�odziei owiec.
	AI_Output (other, self, "DIA_Akil_SCHAFDIEBEPLATT_15_01"); //Mia�e� racj�. To ci ludzie z lasu. Ju� nigdy ci� nie okradn�.
	
	if ((hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
	{
		AI_Output (self, other, "DIA_Akil_SCHAFDIEBEPLATT_13_02"); //Dzi�kuj�, szlachetny s�ugo Innosa.
	}
	else if (hero.guild == GIL_MIL)
	{
		AI_Output (self, other, "DIA_Akil_SCHAFDIEBEPLATT_13_03"); //Dzi�ki. A wi�c stra� naprawd� dba o nas, prostych ch�op�w.
	}
	else
	{
		AI_Output (self, other, "DIA_Akil_SCHAFDIEBEPLATT_13_04"); //Dzi�ki. Dziwny z ciebie najemnik. Nie taki jak ci, kt�rych zna�em do tej pory.
	};
	AI_Output (self, other, "DIA_Akil_SCHAFDIEBEPLATT_13_05"); //We� to jako ma�y wyraz mojej wdzi�czno�ci za tw� bezinteresown� pomoc.
	
	CreateInvItems (self, ItMi_Gold, 150);
	B_GiveInvItems (self, other, ItMi_Gold, 150);
	
	QuestStep_AkilSheeps = SetQuestStatus (Quest_AkilSheeps, LOG_SUCCESS, QuestStep_AkilSheeps);
	B_GivePlayerXP(XP_BONUS_4);
};

//******************************************************************************************
//	AkilsSchaf
//******************************************************************************************
instance DIA_Akil_AkilsSchaf (C_INFO)
{
	npc									=	BAU_940_Akil;
	nr									=	2;
	condition							=	DIA_Akil_AkilsSchaf_Condition;
	information							=	DIA_Akil_AkilsSchaf_Info;
	description							=	"(Oddaj owce Akila)";
};

func int DIA_Akil_AkilsSchaf_Condition()
{
	if (Kapitel >= 9)
	&& (Npc_GetDistToNpc(self,Follow_Sheep_AKIL) < 1000)
//	&& (QuestStep_AkilSheeps != 0)
	&& (Npc_KnowsInfo(other,DIA_Akil_SCHAFDIEB))
	{
		return true;
	};
};

func void DIA_Akil_AkilsSchaf_Info()
{
	//Joly: AI_Output (other, self, "DIA_Akil_AkilsSchaf_15_00"); //Ich habe die Schafdiebe gefunden.
	AI_Output (self, other, "DIA_Akil_AkilsSchaf_13_01"); //Bardzo dobrze. Tu masz kilka monet. Mam nadziej�, �e to wystarczy.
	
	CreateInvItems (self, ItMi_Gold, 150);
	B_GiveInvItems (self, other, ItMi_Gold, 150);
	
	Follow_Sheep_AKIL.aivar[AIV_PARTYMEMBER] = false;
	Follow_Sheep_AKIL.wp = "NW_FARM2_OUT_02";
	Follow_Sheep_AKIL.start_aistate = ZS_MM_AllScheduler; 
	
	B_GivePlayerXP(XP_BONUS_2);
};
