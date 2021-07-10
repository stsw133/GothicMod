///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Grimbald_EXIT   (C_INFO)
{
	npc         = BAU_982_Grimbald;
	nr          = 999;
	condition   = DIA_Grimbald_EXIT_Condition;
	information = DIA_Grimbald_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};

FUNC INT DIA_Grimbald_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Grimbald_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
 
///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Grimbald_HALLO		(C_INFO)
{
	npc		 = 	BAU_982_Grimbald;
	nr		 = 	3;
	condition	 = 	DIA_Grimbald_HALLO_Condition;
	information	 = 	DIA_Grimbald_HALLO_Info;

	description	 = 	"Czekasz tu na kogoœ?";
};

func int DIA_Grimbald_HALLO_Condition ()
{
	return TRUE;
};
var int Grimbald_PissOff;

func void DIA_Grimbald_HALLO_Info ()
{
	AI_Output			(other, self, "DIA_Grimbald_HALLO_15_00"); //Czekasz tu na kogoœ?
	
	if 	(
		(Npc_IsDead(Grimbald_Snapper1))
		&& (Npc_IsDead(Grimbald_Snapper2))
		&& (Npc_IsDead(Grimbald_Snapper3)))
			{
				AI_Output			(self, other, "DIA_Grimbald_HALLO_07_01"); //Polujê. To chyba oczywiste.
				Grimbald_PissOff = TRUE;
			}
			else
			{
				AI_Output			(self, other, "DIA_Grimbald_HALLO_07_02"); //Ju¿ nie. Przecie¿ przyszed³eœ, prawda?
				
				Info_ClearChoices	(DIA_Grimbald_HALLO);
				Info_AddChoice	(DIA_Grimbald_HALLO, "Muszê siê zaj¹æ kilkoma sprawami.", DIA_Grimbald_HALLO_nein );
				Info_AddChoice	(DIA_Grimbald_HALLO, "Czym siê zajmujesz?", DIA_Grimbald_HALLO_Was );
				Info_AddChoice	(DIA_Grimbald_HALLO, "Dlaczego czeka³eœ na mnie?", DIA_Grimbald_HALLO_ich );
			};
};

func void DIA_Grimbald_HALLO_ich ()
{
	AI_Output			(other, self, "DIA_Grimbald_HALLO_ich_15_00"); //Dlaczego czeka³eœ na mnie?
	AI_Output			(self, other, "DIA_Grimbald_HALLO_ich_07_01"); //Wygl¹dasz na silnego. Przyda mi siê pomoc kogoœ takiego jak ty.
};

func void DIA_Grimbald_HALLO_Was ()
{
	AI_Output			(other, self, "DIA_Grimbald_HALLO_Was_15_00"); //Co chcesz zrobiæ?
	AI_Output			(self, other, "DIA_Grimbald_HALLO_Was_07_01"); //Chcê zapolowaæ na zêbacze, ale obawiam siê, ¿e mo¿e ich byæ zbyt du¿o jak na si³y jednego myœliwego.

	Info_AddChoice	(DIA_Grimbald_HALLO, "Na mnie nie licz.", DIA_Grimbald_HALLO_Was_neinnein );
	Info_AddChoice	(DIA_Grimbald_HALLO, "Dobrze, pomogê ci. IdŸ przodem.", DIA_Grimbald_HALLO_Was_ja );
};
func void DIA_Grimbald_HALLO_Was_neinnein ()
{
	AI_Output			(other, self, "DIA_Grimbald_HALLO_Was_neinnein_15_00"); //Na mnie nie licz.
	AI_Output			(self, other, "DIA_Grimbald_HALLO_Was_neinnein_07_01"); //Tchórz!
	Grimbald_PissOff = TRUE;
	Info_ClearChoices	(DIA_Grimbald_HALLO);
};

func void DIA_Grimbald_HALLO_Was_ja ()
{
	AI_Output			(other, self, "DIA_Grimbald_HALLO_Was_ja_15_00"); //Dobrze, pomogê ci. IdŸ przodem.
	AI_Output			(self, other, "DIA_Grimbald_HALLO_Was_ja_07_01"); //Tylko nie zbli¿aj siê za bardzo do czarnego trolla. Rozerwa³by ciê na strzêpy, jasne?
	AI_Output			(self, other, "DIA_Grimbald_HALLO_Was_ja_07_02"); //Biada ci, jeœli stchórzysz.
	B_StartOtherRoutine	(self,"Jagd");
	AI_StopProcessInfos (self);
};

func void DIA_Grimbald_HALLO_nein ()
{
	AI_Output			(other, self, "DIA_Grimbald_HALLO_nein_15_00"); //Muszê siê zaj¹æ kilkoma sprawami.
	AI_Output			(self, other, "DIA_Grimbald_HALLO_nein_07_01"); //Nie pleæ bzdur. Co to za wa¿ne sprawy, które masz niby za³atwiæ w tej g³uszy?
};

///////////////////////////////////////////////////////////////////////
//	Info Jagd
///////////////////////////////////////////////////////////////////////
instance DIA_Grimbald_Jagd		(C_INFO)
{
	npc		 = 	BAU_982_Grimbald;
	nr		 = 	3;
	condition	 = 	DIA_Grimbald_Jagd_Condition;
	information	 = 	DIA_Grimbald_Jagd_Info;
	permanent	 = 	TRUE;

	description	 = 	"Mo¿esz mnie nauczyæ polowaæ?";
};

func int DIA_Grimbald_Jagd_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Grimbald_HALLO))
	&& (Grimbald_TeachAnimalTrophy == FALSE)
		{
				return TRUE;
		};
};

func void DIA_Grimbald_Jagd_Info ()
{
	AI_Output			(other, self, "DIA_Grimbald_Jagd_15_00"); //Mo¿esz mnie nauczyæ polowaæ?
	if 	((Npc_IsDead(Grimbald_Snapper1))
		&& (Npc_IsDead(Grimbald_Snapper2))
		&& (Npc_IsDead(Grimbald_Snapper3)))
		|| (Grimbald_PissOff == FALSE)
	{
		AI_Output			(self, other, "DIA_Grimbald_Jagd_07_01"); //Hmmm. Dobrze. Co prawda do tej pory nie bardzo mi pomog³eœ, ale nie zamierzam ciê od razu skreœlaæ.
		Grimbald_TeachAnimalTrophy = TRUE;
		self.aivar[AIV_CanTeach] = true;
	}
	else
	{
		AI_Output			(self, other, "DIA_Grimbald_Jagd_07_02"); //Pewnie. Ale to bêdzie trochê kosztowaæ.
		B_Say_Gold (self, other, 200);
	
		Info_ClearChoices	(DIA_Grimbald_Jagd);
		Info_AddChoice	(DIA_Grimbald_Jagd, "Muszê siê zastanowiæ.", DIA_Grimbald_Jagd_zuviel );
		Info_AddChoice	(DIA_Grimbald_Jagd, "W porz¹dku.", DIA_Grimbald_Jagd_ja );
	};
};

func void DIA_Grimbald_Jagd_ja ()
{
	AI_Output			(other, self, "DIA_Grimbald_Jagd_ja_15_00"); //Dobrze. Oto pieni¹dze.

		if (B_GiveInvItems (other, self, ItMi_Gold,200))
		{
			AI_Output			(self, other, "DIA_Grimbald_Jagd_ja_07_01"); //W porz¹dku. Powiedz mi, kiedy bêdziesz chcia³ siê czegoœ nauczyæ.
			Grimbald_TeachAnimalTrophy = TRUE;
			self.aivar[AIV_CanTeach] = true;
		}
		else
		{
			AI_Output			(self, other, "DIA_Grimbald_Jagd_ja_07_02"); //Przynieœ pieni¹dze, a mo¿e siê czegoœ nauczysz.
		};
	Info_ClearChoices	(DIA_Grimbald_Jagd);
};  

func void DIA_Grimbald_Jagd_zuviel ()
{
	AI_Output			(other, self, "DIA_Grimbald_Jagd_zuviel_15_00"); //Pomyœlê o tym.
	AI_Output			(self, other, "DIA_Grimbald_Jagd_zuviel_07_01"); //Skoro tak mówisz.
	Info_ClearChoices	(DIA_Grimbald_Jagd);
};

///////////////////////////////////////////////////////////////////////
//	Info NovChase
///////////////////////////////////////////////////////////////////////
instance DIA_Grimbald_NovChase		(C_INFO)
{
	npc		 = 	BAU_982_Grimbald;
	nr		 = 	3;
	condition	 = 	DIA_Grimbald_NovChase_Condition;
	information	 = 	DIA_Grimbald_NovChase_Info;

	description	 = 	"Czy nie przechodzi³ têdy jakiœ nowicjusz?";

};

func int DIA_Grimbald_NovChase_Condition ()
{
	if (MIS_NOVIZENCHASE == LOG_RUNNING)
		{
				return TRUE;
		};
};

func void DIA_Grimbald_NovChase_Info ()
{
	AI_Output			(other, self, "DIA_Grimbald_NovChase_15_00"); //Czy nie przechodzi³ têdy jakiœ nowicjusz?
	AI_Output			(self, other, "DIA_Grimbald_NovChase_07_01"); //Przesz³o têdy dzisiaj wielu dziwnych ludzi, w³¹czaj¹c tych dwóch ¿artownisiów przy kamiennym ³uku.
	AI_Output			(self, other, "DIA_Grimbald_NovChase_07_02"); //Faktycznie, by³ z nimi pewien nowicjusz z Klasztoru Magów Ognia.
	B_GivePlayerXP(150);
};

///////////////////////////////////////////////////////////////////////
//	Info Trolltot
///////////////////////////////////////////////////////////////////////
instance DIA_Grimbald_Trolltot		(C_INFO)
{
	npc		 = 	BAU_982_Grimbald;
	nr		 = 	3;
	condition	 = 	DIA_Grimbald_Trolltot_Condition;
	information	 = 	DIA_Grimbald_Trolltot_Info;
	important	 = 	TRUE;

};

func int DIA_Grimbald_Trolltot_Condition ()
{
	if (Npc_IsDead(Troll_Black))
		{
				return TRUE;
		};
};

func void DIA_Grimbald_Trolltot_Info ()
{
	AI_Output			(self, other, "DIA_Grimbald_Trolltot_07_00"); //Czarny troll nie ¿yje. Dobra robota. Nigdy nie s¹dzi³em, ¿e zabicie tych bestii jest w ogóle mo¿liwe.
	B_GivePlayerXP(50);
};
