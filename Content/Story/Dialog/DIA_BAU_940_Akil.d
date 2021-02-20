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
		AI_Output (other, self, "DIA_Akil_EXIT_15_00"); //Muszê ju¿ iœæ.
		AI_Output (self, other, "DIA_Akil_EXIT_13_02"); //Powodzenia. Naprawdê chcia³bym zrobiæ dla ciebie coœ wiêcej.
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
	description							=	"Masz jakieœ k³opoty?";
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
	AI_Output (other, self, "DIA_Akil_Hallo_15_00"); //Masz jakieœ k³opoty?
	AI_Output (self, other, "DIA_Akil_Hallo_13_01"); //...Ech... nie, nie... wszystko w porz¹dku. Chyba... bêdzie lepiej, jak ju¿ sobie pójdziesz.
	AI_Output (other, self, "DIA_Akil_Hallo_15_02"); //Na pewno?
	AI_Output (self, other, "DIA_Akil_Hallo_13_03"); //Ech... Tak, tak... wszystko w porz¹dku. Ty... ech... ja... ja... nie mogê teraz z tob¹ rozmawiaæ.
	
	QuestStep_AkilNeedHelp = SetQuestStatus (Quest_AkilNeedHelp, LOG_RUNNING, QuestStep_AkilNeedHelp);
	SetNoteEntry (Quest_AkilNeedHelp, LOG_MISSION, "Farmie Akila zagra¿aj¹ najemnicy.");
	
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
	AI_Output (self, other, "DIA_Akil_Nichtjetzt_13_00"); //Ech... Nie teraz, teraz nie mogê z tob¹ rozmawiaæ.
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
	AI_Output (self, other, "DIA_Akil_NachKampf_13_00"); //Dziêki Innosowi. Myœla³em, ¿e mój czas dobieg³ koñca.
	AI_Output (self, other, "DIA_Akil_NachKampf_13_01"); //Nazywam siê Akil. Uprawiam ten skromny skrawek ziemi.
	AI_Output (other, self, "DIA_Akil_NachKampf_15_02"); //Kim byli ci ludzie?
	if ((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG))
	{
		AI_Output (self, other, "DIA_Akil_NachKampf_13_03"); //Powinieneœ ich rozpoznaæ. To byli najemnicy z gospodarstwa Onara. Tacy jak ty.
	}
	else
	{
		AI_Output (self, other, "DIA_Akil_NachKampf_13_04"); //To byli najemnicy z gospodarstwa Onara. Ci dranie znaj¹ siê tylko na grabie¿ach i mordach.
	};
	AI_Output (self, other, "DIA_Akil_NachKampf_13_05"); //Ba³em siê najgorszego...
	AI_Output (self, other, "DIA_Akil_NachKampf_13_06"); //...có¿, dziêki Innosowi, ¿e do tego nie dosz³o. Powiedz mi, co mogê dla ciebie zrobiæ?
	
	Info_ClearChoices(DIA_Akil_NachKampf);
	Info_AddChoice (DIA_Akil_NachKampf, "Nic. Pod warunkiem, ¿e wszystko jest w porz¹dku.", DIA_Akil_NachKampf_Ehre);
	Info_AddChoice (DIA_Akil_NachKampf, "Mo¿e parê sztuk z³ota?", DIA_Akil_NachKampf_Gold);
	
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
	AI_Output (other, self, "DIA_Akil_NachKampf_Ehre_15_00"); //Nic. Pod warunkiem, ¿e wszystko jest w porz¹dku.
	AI_Output (self, other, "DIA_Akil_NachKampf_Ehre_13_01"); //Jesteœ wyj¹tkowym cz³owiekiem. Niech ciê Innos ma w swej opiece.
	
	B_GivePlayerXP(XP_BONUS_2);
	Info_ClearChoices(DIA_Akil_NachKampf);
};

FUNC VOID DIA_Akil_NachKampf_Gold()
{
	AI_Output (other, self, "DIA_Akil_NachKampf_Gold_15_00"); //Mo¿e parê sztuk z³ota?
	AI_Output (self, other, "DIA_Akil_NachKampf_Gold_13_01"); //Obawiam siê, ¿e ciê rozczarujê - jesteœmy biedakami. Wystarcza nam na proste ¿ycie.
	AI_Output (self, other, "DIA_Akil_NachKampf_Gold_13_02"); //Mogê ci tylko zaproponowaæ posi³ek. IdŸ do Kati, ona siê tob¹ zajmie.
	
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
		AI_Output (self, other, "DIA_Akil_Soeldner_13_01"); //Nabierasz mnie. Ci najemnicy chcieli zebraæ pieni¹dze za czynsz.
	}
	else
	{
		AI_Output (self, other, "DIA_Akil_Soeldner_13_02"); //Nie wiesz? Wynaj¹³ ich zarz¹dca Onar. Broni¹ jego gospodarstwa i zbieraj¹ dla niego czynsz.
		AI_Output (self, other, "DIA_Akil_Soeldner_13_03"); //To znaczy chodz¹ od domu do domu i zabieraj¹ co chc¹. A kto nie mo¿e zap³aciæ, poznaje smak stali.
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
	description							=	"S³ysza³eœ coœ o zaginionych mieszkañcach miasta?";
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
	AI_Output (other, self, "DIA_Addon_Akil_MissingPeople_15_00"); //S³ysza³eœ coœ o zaginionych mieszkañcach miasta?
	AI_Output (self, other, "DIA_Addon_Akil_MissingPeople_13_01"); //A to paradne! Czy s³ysza³em? Kilku moich parobków te¿ gdzieœ przepad³o.
	AI_Output (self, other, "DIA_Addon_Akil_MissingPeople_13_02"); //Choæby Tonak i Tabor, którzy pracowali na polu. Trzy dni temu przepadli. Jak kamieñ w wodê.
	AI_Output (self, other, "DIA_Addon_Akil_MissingPeople_13_03"); //Wiem, ¿e nie opuœciliby farmy bez s³owa. W koñcu nie trzyma³em ich tu si³¹.
	AI_Output (self, other, "DIA_Addon_Akil_MissingPeople_13_04"); //Po prostu zniknêli i, co gorsza, nikt nie potrafi powiedzieæ, co siê z nimi sta³o.
	AI_Output (self, other, "DIA_Addon_Akil_MissingPeople_13_05"); //Jeœli ich spotkasz, dasz mi znaæ, dobra?
	B_GivePlayerXP(XP_BONUS_0);
	
	QuestStep_MissingPeople = SetQuestStatus (Quest_MissingPeople, LOG_RUNNING, QuestStep_MissingPeople);
	SetNoteEntry (Quest_MissingPeople, LOG_MISSION, "Zaginêli robotnicy farmera Akila: Tonak i Telbor.");
	
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
	description							=	"Jeœli chodzi o twoich parobków...";
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
	AI_Output (other, self, "DIA_Addon_Akil_ReturnPeople_15_00"); //Jeœli chodzi o twoich parobków...
	if (Npc_GetDistToWP(Tonak_NW,"NW_FARM2_FIELD_TANOK") <= 1000)
	&& (Npc_GetDistToWP(Telbor_NW,"NW_FARM2_FIELD_TELBOR") <= 1000)
	{
		AI_Output (self, other, "DIA_Addon_Akil_ReturnPeople_13_01"); //Dziêki tobie wrócili. Jesteœ odwa¿nym cz³owiekiem.
	}
	else 
	{
		AI_Output (self, other, "DIA_Addon_Akil_ReturnPeople_13_02"); //Przynajmniej jeden z nich prze¿y³.
	};
	AI_Output (self, other, "DIA_Addon_Akil_ReturnPeople_13_03"); //Proszê, weŸ to z³oto. Zas³u¿y³eœ na nie.
	
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
	description							=	"Baltram mnie przys³a³...";
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
	AI_Output (other, self, "DIA_Akil_Lieferung_15_00"); //Baltram mnie przys³a³. Mam dla niego zabraæ dostawê.
	AI_Output (self, other, "DIA_Akil_Lieferung_13_01"); //A wiêc jesteœ jego nowym pos³añcem. W porz¹dku, mam ju¿ gotow¹ paczkê.
	
	CreateInvItems (self, ItMi_BaltramPaket, 1);
	B_GiveInvItems (self, other, ItMi_BaltramPaket, 1);
	Lieferung_Geholt = true;
	
	QuestStep_BaltramPacket = SetQuestStatus (Quest_BaltramPacket, LOG_PROGRESS, QuestStep_BaltramPacket);
	SetNoteEntry (Quest_BaltramPacket, LOG_MISSION, "Mam przesy³kê. Mogê j¹ teraz zabraæ do Baltrama...");
	SetNoteEntry (Quest_NagurPacket, LOG_MISSION, "Mam przesy³kê. Mogê j¹ teraz zabraæ do Nagura...");
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
	description							=	"Znasz mo¿e trochê okolicê?";
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
	AI_Output (other, self, "DIA_Akil_Gegend_15_00"); //Znasz mo¿e trochê okolicê?
	AI_Output (self, other, "DIA_Akil_Gegend_13_01"); //Jasne, co chcesz wiedzieæ?
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
	description							=	"Gdzie znajdê gospodarstwo Onara?";
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
	AI_Output (other, self, "DIA_Akil_Gegend_Onar_15_00"); //Gdzie znajdê gospodarstwo Onara?
	AI_Output (self, other, "DIA_Akil_Gegend_Onar_13_01"); //Cofnij siê do kamiennych schodów i idŸ drog¹ na wschód.
	AI_Output (self, other, "DIA_Akil_Gegend_Onar_13_02"); //Tak dojdziesz do tawerny. Stamt¹d idŸ dalej na wschód, dopóki nie dojdziesz do wielkich pól. Tam siê krêc¹ najemnicy.
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
	AI_Output (self, other, "DIA_Akil_Gegend_Taverne_13_01"); //Zapytaj Randolfa. On wie na ten temat wiêcej. By³ tam kilka razy.
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
	AI_Output (self, other, "DIA_Akil_Gegend_Wald_13_01"); //Tam jest pe³no potworów, a wilki nie s¹ z nich najgroŸniejsze.
	AI_Output (self, other, "DIA_Akil_Gegend_Wald_13_02"); //Podobno gdzieœ tam, w pieczarach, ukrywaj¹ siê te¿ bandyci. Ale jak na razie, zostawiaj¹ moje gospodarstwo w spokoju.
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
	description							=	"Czy coœ jeszcze siê dzia³o?";
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
	AI_Output (other, self, "DIA_Akil_Perm_15_00"); //Czy coœ jeszcze siê dzia³o?
	if (Kapitel == 9)
	{
		if (QuestStep_AkilSheeps == LOG_SUCCESS)
		{
			AI_Output (self, other, "DIA_Akil_Perm_13_01"); //Nie. Mam nadziejê, ¿e owce pozostan¹ tam, gdzie teraz s¹.
		}
		else
		{
			AI_Output (self, other, "DIA_Akil_Perm_13_02"); //Ci¹gle znikaj¹ mi owce. Nied³ugo nie bêdê móg³ nas wykarmiæ.
		};
	}
	else //Kapitel 4 & 5
	{
		if ((hero.guild == GIL_MIL) || (hero.guild == GIL_PAL))
		{
			AI_Output (self, other, "DIA_Akil_Perm_13_03"); //Wszêdzie pojawili siê orkowie. Ktoœ nawet wspomina³ o ich g³ównej kwaterze. Zapytaj o to farmera Lobarta.
		};
		if ((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG))
		{
			AI_Output (self, other, "DIA_Akil_Perm_13_04"); //Widziano te¿ w okolicy jaszczuroludzi. Na twoim miejscu nie szed³bym do jaskiñ.
		};
		if (hero.guild == GIL_KDF)
		{
			AI_Output (self, other, "DIA_Akil_Perm_13_05"); //Szukaj¹ ciê ludzie w czarnych kapturach.
			AI_Output (other, self, "DIA_Akil_Perm_15_06"); //O, to temat na ca³¹ powieœæ.
			AI_Output (self, other, "DIA_Akil_Perm_13_07"); //W porz¹dku. Tak sobie tylko pomyœla³em, ¿e o tym wspomnê.
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
	description							=	"Czy wydarzy³o siê jeszcze coœ nowego?";
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
	AI_Output (other, self, "DIA_Akil_SCHAFDIEB_15_00"); //Czy wydarzy³o siê jeszcze coœ nowego?
	AI_Output (self, other, "DIA_Akil_SCHAFDIEB_13_01"); //Ostatnio ktoœ kradnie mi owce. Nie mogê spaæ spokojnie.
	
	Info_ClearChoices(DIA_Akil_SCHAFDIEB);
	Info_AddChoice (DIA_Akil_SCHAFDIEB, "To nie mój problem.", DIA_Akil_SCHAFDIEB_nein);
	Info_AddChoice (DIA_Akil_SCHAFDIEB, "Ile owiec ci zginê³o?", DIA_Akil_SCHAFDIEB_wieviel);
	Info_AddChoice (DIA_Akil_SCHAFDIEB, "Kto móg³ to zrobiæ?", DIA_Akil_SCHAFDIEB_wer);
	
	QuestStep_AkilSheeps = SetQuestStatus (Quest_AkilSheeps, LOG_RUNNING, QuestStep_AkilSheeps);
	SetNoteEntry (Quest_AkilSheeps, LOG_MISSION, "Akilowi gin¹ kolejne owce. Podejrzewa, ¿e to sprawka bandytów ukrywaj¹cych siê w pobliskiej leœnej jaskini.");
};

func void DIA_Akil_SCHAFDIEB_wer()
{
	AI_Output (other, self, "DIA_Akil_SCHAFDIEB_wer_15_00"); //Kto móg³ to zrobiæ?
	AI_Output (self, other, "DIA_Akil_SCHAFDIEB_wer_13_01"); //Mam pewne podejrzenia.
	AI_Output (self, other, "DIA_Akil_SCHAFDIEB_wer_13_02"); //W jaskiniach w lesie ukrywaj¹ siê jacyœ paskudni osobnicy.
	AI_Output (self, other, "DIA_Akil_SCHAFDIEB_wer_13_03"); //Jakoœ trudno mi uwierzyæ, ¿e ¿ywi¹ siê jagódkami. Jestem prawie pewien, ¿e to przez nich znikaj¹ moje owce.
	Info_ClearChoices(DIA_Akil_SCHAFDIEB);
};

func void DIA_Akil_SCHAFDIEB_wieviel()
{
	AI_Output (other, self, "DIA_Akil_SCHAFDIEB_wieviel_15_00"); //Ile owiec ci zginê³o?
	AI_Output (self, other, "DIA_Akil_SCHAFDIEB_wieviel_13_01"); //Do tej pory straci³em co najmniej trzy.
};

func void DIA_Akil_SCHAFDIEB_nein()
{
	AI_Output (other, self, "DIA_Akil_SCHAFDIEB_nein_15_00"); //To nie mój problem.
	AI_Output (self, other, "DIA_Akil_SCHAFDIEB_nein_13_01"); //Rozumiem. Masz inne sprawy na g³owie.
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
	description							=	"Znalaz³em z³odziei owiec.";
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
	AI_Output (other, self, "DIA_Akil_SCHAFDIEBEPLATT_15_00"); //Znalaz³em z³odziei owiec.
	AI_Output (other, self, "DIA_Akil_SCHAFDIEBEPLATT_15_01"); //Mia³eœ racjê. To ci ludzie z lasu. Ju¿ nigdy ciê nie okradn¹.
	
	if ((hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
	{
		AI_Output (self, other, "DIA_Akil_SCHAFDIEBEPLATT_13_02"); //Dziêkujê, szlachetny s³ugo Innosa.
	}
	else if (hero.guild == GIL_MIL)
	{
		AI_Output (self, other, "DIA_Akil_SCHAFDIEBEPLATT_13_03"); //Dziêki. A wiêc stra¿ naprawdê dba o nas, prostych ch³opów.
	}
	else
	{
		AI_Output (self, other, "DIA_Akil_SCHAFDIEBEPLATT_13_04"); //Dziêki. Dziwny z ciebie najemnik. Nie taki jak ci, których zna³em do tej pory.
	};
	AI_Output (self, other, "DIA_Akil_SCHAFDIEBEPLATT_13_05"); //WeŸ to jako ma³y wyraz mojej wdziêcznoœci za tw¹ bezinteresown¹ pomoc.
	
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
	AI_Output (self, other, "DIA_Akil_AkilsSchaf_13_01"); //Bardzo dobrze. Tu masz kilka monet. Mam nadziejê, ¿e to wystarczy.
	
	CreateInvItems (self, ItMi_Gold, 150);
	B_GiveInvItems (self, other, ItMi_Gold, 150);
	
	Follow_Sheep_AKIL.aivar[AIV_PARTYMEMBER] = false;
	Follow_Sheep_AKIL.wp = "NW_FARM2_OUT_02";
	Follow_Sheep_AKIL.start_aistate = ZS_MM_AllScheduler; 
	
	B_GivePlayerXP(XP_BONUS_2);
};
