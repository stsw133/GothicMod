// ************************************************************
// 			  				   EXIT 
// ************************************************************

INSTANCE DIA_Keroloth_EXIT(C_INFO)
{
	npc			= PAL_258_Keroloth;
	nr			= 999;
	condition	= DIA_Keroloth_EXIT_Condition;
	information	= DIA_Keroloth_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_Keroloth_EXIT_Condition()
{
	if (Kapitel < 9)
	{
		return true;
	};
};
 
FUNC VOID DIA_Keroloth_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

//**************************************************************
//	Ansprechen 
//**************************************************************
INSTANCE DIA_Keroloth_HELLO(C_INFO)
{
	npc			= PAL_258_Keroloth;
	nr			= 2;
	condition	= DIA_Keroloth_HELLO_Condition;
	information	= DIA_Keroloth_HELLO_Info;
	permanent	= false;
	important	= true;	
};                       

FUNC INT DIA_Keroloth_HELLO_Condition()
{
	if Npc_IsInState (self,ZS_Talk)
	{
		return true;
	};
};
 
FUNC VOID DIA_Keroloth_HELLO_Info()
{	
	AI_Output	(other ,self,"DIA_Keroloth_HELLO_15_00"); //Szkolisz ludzi?
	AI_Output	(self ,other,"DIA_Keroloth_HELLO_07_01"); //Tak. Jeœli bêdziemy musieli odeprzeæ atak orków lub nawet gorzej, smoków, to przyda siê ka¿da pomoc.
};
//***********************************************
//	Kannst DU mir was beibringen
//***********************************************

INSTANCE DIA_Keroloth_WantTeach(C_INFO)
{
	npc			= PAL_258_Keroloth;
	nr			= 3;
	condition	= DIA_Keroloth_WantTeach_Condition;
	information	= DIA_Keroloth_WantTeach_Info;
	permanent	= false;
	description = "Mo¿esz mnie te¿ czegoœ nauczyæ?";
};                       

FUNC INT DIA_Keroloth_WantTeach_Condition()
{
	if (Keroloths_BeutelLeer == false)
	{
	 	return true;
	};
};
 
FUNC VOID DIA_Keroloth_WantTeach_Info()
{	
	AI_Output 	(other,self ,"DIA_Keroloth_WantTeach_15_00"); //Mo¿esz mnie te¿ czegoœ nauczyæ?
	AI_Output 	(self ,other,"DIA_Keroloth_WantTeach_07_01"); //Pewnie. Wyszkolê ka¿dego dobrego cz³owieka.
	AI_Output 	(self ,other,"DIA_Keroloth_WantTeach_07_02"); //Jeœli chcesz tu przetrwaæ, to poza talentem bêdziesz potrzebowa³ dobrej broni.
	AI_Output 	(self ,other,"DIA_Keroloth_WantTeach_07_03"); //Zapytaj rycerza Tandora. On siê tob¹ zajmie.
		
	self.aivar[AIV_CanTeach] = true;
	Log_CreateTopic (TOPIC_Teacher_OC,LOG_NOTE);
	B_LogEntry (TOPIC_Teacher_OC,"Keroloth udziela na zamku lekcji walki mieczem.");
	
	Log_CreateTopic (TOPIC_Trader_OC,LOG_NOTE);
	B_LogEntry (TOPIC_Trader_OC,"Tandor handluje na zamku broni¹.");
};

//************************************
//	Suche andere Lehrer
//************************************

INSTANCE DIA_Keroloth_Udar(C_INFO)
{
	npc			= PAL_258_Keroloth;
	nr			= 4;
	condition	= DIA_Keroloth_Udar_Condition;
	information	= DIA_Keroloth_Udar_Info;
	permanent	= false;
	description = "A co z walk¹ na dystans?";
};                       

FUNC INT DIA_Keroloth_Udar_Condition()
{
	if (self.aivar[AIV_CanTeach] > false)
	&& (Keroloths_BeutelLeer == false)
	{
		return true;
	};
};
 
FUNC VOID DIA_Keroloth_Udar_Info()
{	
	AI_Output 	(other,self ,"DIA_Keroloth_Udar_15_00"); //A co z walk¹ na dystans?
	AI_Output	(self ,other,"DIA_Keroloth_Udar_07_01"); //O co chodzi?
	AI_Output 	(other,self ,"DIA_Keroloth_Udar_15_02"); //Czy tego te¿ mo¿esz mnie nauczyæ?
	AI_Output	(self ,other,"DIA_Keroloth_Udar_07_03"); //Nie, ale mo¿esz zapytaæ Udara, to dobry - nie, to NAJLEPSZY kusznik, jakiego znam.
	
	Log_CreateTopic	(TOPIC_Teacher_OC, LOG_NOTE);
	B_LogEntry		(TOPIC_Teacher_OC, "Udar, mieszkaniec zamku w Górniczej Dolinie, wie wszystko na temat pos³ugiwania siê kusz¹.");
};
//#####################################################################
//##
//##
//##							KAPITEL 3
//##
//##
//#####################################################################

// ************************************************************
// 	  				   EXIT KAP3
// ************************************************************

INSTANCE DIA_Keroloth_KAP3_EXIT(C_INFO)
{
	npc			= PAL_258_Keroloth;
	nr			= 999;
	condition	= DIA_Keroloth_KAP3_EXIT_Condition;
	information	= DIA_Keroloth_KAP3_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Keroloth_KAP3_EXIT_Condition()
{
	if (Kapitel == 9)	
	{
		return true;
	};
};
FUNC VOID DIA_Keroloth_KAP3_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

//#####################################################################
//##
//##
//##							KAPITEL 4
//##
//##
//#####################################################################


// ************************************************************
// 	  				   EXIT KAP4
// ************************************************************

INSTANCE DIA_Keroloth_KAP4_EXIT(C_INFO)
{
	npc			= PAL_258_Keroloth;
	nr			= 999;
	condition	= DIA_Keroloth_KAP4_EXIT_Condition;
	information	= DIA_Keroloth_KAP4_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Keroloth_KAP4_EXIT_Condition()
{
	if (Kapitel == 10)	
	{
		return true;
	};
};
FUNC VOID DIA_Keroloth_KAP4_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

///////////////////////////////////////////////////////////////////////
//	Info Kap4_Hello
///////////////////////////////////////////////////////////////////////
instance DIA_Keroloth_KAP4_HELLO		(C_INFO)
{
	npc		 = 	PAL_258_Keroloth;
	nr		 = 	40;
	condition	 = 	DIA_Keroloth_KAP4_HELLO_Condition;
	information	 = 	DIA_Keroloth_KAP4_HELLO_Info;

	description	 = 	"Masz strasznie zmartwion¹ minê.";
};

func int DIA_Keroloth_KAP4_HELLO_Condition ()
{
	if (Kapitel >= 10)	
		{
				return true;
		};
};

func void DIA_Keroloth_KAP4_HELLO_Info ()
{
	AI_Output			(other, self, "DIA_Keroloth_KAP4_HELLO_15_00"); //Masz strasznie zmartwion¹ minê.
	AI_Output			(self, other, "DIA_Keroloth_KAP4_HELLO_07_01"); //Niech to diabli. Mówiê ci, ¿e musisz byæ czujny jak jastrz¹b.
	AI_Output			(self, other, "DIA_Keroloth_KAP4_HELLO_07_02"); //Wystarczy, ¿e odwrócisz siê na moment i wszystkie twoje rzeczy znikaj¹. Przeklête bydlaki!

	Info_AddChoice	(DIA_Keroloth_KAP4_HELLO, DIALOG_BACK, DIA_Keroloth_KAP4_HELLO_ende );
	Info_AddChoice	(DIA_Keroloth_KAP4_HELLO, "Paladyn nie powinien traciæ panowania nad sob¹.", DIA_Keroloth_KAP4_HELLO_ruhig );
 	Info_AddChoice	(DIA_Keroloth_KAP4_HELLO, "Ktoœ ciê okrad³?", DIA_Keroloth_KAP4_HELLO_bestohlen );
	Info_AddChoice	(DIA_Keroloth_KAP4_HELLO, "Ale o kim mowa?", DIA_Keroloth_KAP4_HELLO_pack );
};
func void DIA_Keroloth_KAP4_HELLO_ende ()
{
	Info_ClearChoices	(DIA_Keroloth_KAP4_HELLO);
};

func void DIA_Keroloth_KAP4_HELLO_bestohlen ()
{
	AI_Output			(other, self, "DIA_Keroloth_KAP4_HELLO_bestohlen_15_00"); //Ktoœ ciê okrad³?
	AI_Output			(self, other, "DIA_Keroloth_KAP4_HELLO_bestohlen_07_01"); //Nie. Podrzucili mi do kieszeni 20 sztuk z³ota. Oczywiœcie, ¿e coœ ukradli, idioto!
	AI_Output			(self, other, "DIA_Keroloth_KAP4_HELLO_bestohlen_07_02"); //Mówiê, ci, niech tylko dorwê tê œwiniê...

	Info_AddChoice	(DIA_Keroloth_KAP4_HELLO, "A wiêc co straci³eœ?", DIA_Keroloth_KAP4_HELLO_bestohlen_wasfehlt );
};
func void DIA_Keroloth_KAP4_HELLO_bestohlen_wasfehlt ()
{
	AI_Output			(other, self, "DIA_Keroloth_KAP4_HELLO_bestohlen_wasfehlt_15_00"); //A wiêc co straci³eœ?
	AI_Output			(self, other, "DIA_Keroloth_KAP4_HELLO_bestohlen_wasfehlt_07_01"); //Moj¹ sakiewkê ze wszystkimi oszczêdnoœciami.
	AI_Output			(self, other, "DIA_Keroloth_KAP4_HELLO_bestohlen_wasfehlt_07_02"); //A teraz jej nie ma!
	AI_Output			(other, self, "DIA_Keroloth_KAP4_HELLO_bestohlen_wasfehlt_15_03"); //Znajdzie siê gdzieœ.
	AI_Output			(self, other, "DIA_Keroloth_KAP4_HELLO_bestohlen_wasfehlt_07_04"); //Niech no tylko go dorwê...

	Log_CreateTopic (TOPIC_KerolothsGeldbeutel, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_KerolothsGeldbeutel, LOG_RUNNING);
	B_LogEntry (TOPIC_KerolothsGeldbeutel,"Paladyn Keroloth straci³ swoj¹ sakiewkê. Twierdzi, ¿e ukradli mu j¹ ³owcy smoków."); 

	Info_ClearChoices	(DIA_Keroloth_KAP4_HELLO);
};

func void DIA_Keroloth_KAP4_HELLO_pack ()
{
	AI_Output			(other, self, "DIA_Keroloth_KAP4_HELLO_pack_15_00"); //Ale o kim mowa?
	
	if (hero.guild == GIL_DJG)
		{
			AI_Output			(self, other, "DIA_Keroloth_KAP4_HELLO_pack_07_01"); //O was, obdartych ³owcach smoków, oczywiœcie. A o kim innym?
		}
	else
		{
			AI_Output			(self, other, "DIA_Keroloth_KAP4_HELLO_pack_07_02"); //O tych obdartych ³owcach smoków, oczywiœcie. A myœla³eœ, ¿e o kim mówiê?
		};
		
	AI_Output			(self, other, "DIA_Keroloth_KAP4_HELLO_pack_07_03"); //Musisz uwa¿aæ, mówiê ci.
};

func void DIA_Keroloth_KAP4_HELLO_ruhig ()
{
	AI_Output			(other, self, "DIA_Keroloth_KAP4_HELLO_ruhig_15_00"); //Uspokój siê! Paladyn nie powinien traciæ panowania nad sob¹.
	AI_Output			(self, other, "DIA_Keroloth_KAP4_HELLO_ruhig_07_01"); //Nie chcê siê uspokoiæ. To by³o wszystko co mia³em, niech to cholera!
};

///////////////////////////////////////////////////////////////////////
//	Info GELDGEFUNDEN
///////////////////////////////////////////////////////////////////////
instance DIA_Keroloth_KAP4_GELDGEFUNDEN		(C_INFO)
{
	npc		 = 	PAL_258_Keroloth;
	nr		 = 	42;
	condition	 = 	DIA_Keroloth_KAP4_GELDGEFUNDEN_Condition;
	information	 = 	DIA_Keroloth_KAP4_GELDGEFUNDEN_Info;

	description	 = 	"Chyba znalaz³em twoj¹ sakiewkê.";
};

func int DIA_Keroloth_KAP4_GELDGEFUNDEN_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Keroloth_KAP4_HELLO))
		&& 	(
			(Npc_HasItems (other,ItMi_KerolothsGeldbeutel_MIS))
			|| (Npc_HasItems (other,ItMi_KerolothsGeldbeutelLeer_MIS))
			)		
		{
				return true;
		};
};

func void DIA_Keroloth_KAP4_GELDGEFUNDEN_Info ()
{
	AI_Output			(other, self, "DIA_Keroloth_KAP4_GELDGEFUNDEN_15_00"); //Chyba znalaz³em twoj¹ sakiewkê.
	TOPIC_END_KerolothsGeldbeutel = true;
	B_GivePlayerXP(XP_BONUS_4);
	if (B_GiveInvItems (other, self, ItMi_KerolothsGeldbeutelLeer_MIS,1))
	{
		AI_Output			(self, other, "DIA_Keroloth_KAP4_GELDGEFUNDEN_07_01"); //Sakiewka jest pusta. Co za œwinia to zrobi³a?
	
		Keroloths_BeutelLeer = true;
	};
	if (B_GiveInvItems (other, self, ItMi_KerolothsGeldbeutel_MIS,1))
	{
		AI_Output			(self, other, "DIA_Keroloth_KAP4_GELDGEFUNDEN_07_02"); //Co? Gdzie? Co za bydlak to zrobi³?
	};
	
	if (hero.guild == GIL_DJG)
	{
		Info_AddChoice	(DIA_Keroloth_KAP4_GELDGEFUNDEN, "Chwileczkê. A co z nagrod¹?", DIA_Keroloth_KAP4_GELDGEFUNDEN_Lohn );
	};

	Info_AddChoice	(DIA_Keroloth_KAP4_GELDGEFUNDEN, "Le¿a³a tam, obok kuŸni.", DIA_Keroloth_KAP4_GELDGEFUNDEN_Schmiede );
	Info_AddChoice	(DIA_Keroloth_KAP4_GELDGEFUNDEN, "Podejrzewam jednego z ³owców smoków.", DIA_Keroloth_KAP4_GELDGEFUNDEN_DJG );
	Info_AddChoice	(DIA_Keroloth_KAP4_GELDGEFUNDEN, "Sk¹d mam wiedzieæ?", DIA_Keroloth_KAP4_GELDGEFUNDEN_keineAhnung);
};
func void DIA_Keroloth_KAP4_GELDGEFUNDEN_keineAhnung ()
{
	AI_Output			(other, self, "DIA_Keroloth_KAP4_GELDGEFUNDEN_keineAhnung_15_00"); //Sk¹d mam wiedzieæ?

	if (hero.guild == GIL_DJG)
	{
		AI_Output			(self, other, "DIA_Keroloth_KAP4_GELDGEFUNDEN_keineAhnung_07_01"); //¯arty sobie ze mnie stroisz? To by³eœ ty, przyznaj siê.
		
		Info_ClearChoices	(DIA_Keroloth_KAP4_GELDGEFUNDEN);
		Info_AddChoice	(DIA_Keroloth_KAP4_GELDGEFUNDEN, "Podejrzewam jednego z ³owców smoków.", DIA_Keroloth_KAP4_GELDGEFUNDEN_DJG );
		Info_AddChoice	(DIA_Keroloth_KAP4_GELDGEFUNDEN, "Poca³uj mnie w dupê.", DIA_Keroloth_KAP4_GELDGEFUNDEN_keineAhnung_kannstmich );
	}
	else
	{
		AI_Output			(self, other, "DIA_Keroloth_KAP4_GELDGEFUNDEN_keineAhnung_07_02"); //Dowiem siê prawdy ju¿ niebawem.
		AI_StopProcessInfos (self);
	};
};
func void DIA_Keroloth_KAP4_GELDGEFUNDEN_keineAhnung_kannstmich ()
{
	AI_Output			(other, self, "DIA_Keroloth_KAP4_kannstmich_15_00"); //Poca³uj mnie w dupê.
	AI_Output			(self, other, "DIA_Keroloth_KAP4_kannstmich_07_01"); //Oduczê ciê okradaæ przyzwoitych ludzi.

	AI_StopProcessInfos	(self);
	B_Attack (self, other, AR_NONE, 1);	
};

func void DIA_Keroloth_KAP4_GELDGEFUNDEN_DJG ()
{
	AI_Output			(other, self, "DIA_Keroloth_KAP4_GELDGEFUNDEN_DJG_15_00"); //Podejrzewam jednego z ³owców smoków.
		
	AI_Output			(self, other, "DIA_Keroloth_KAP4_GELDGEFUNDEN_DJG_07_01"); //Wiedzia³em.
	
	if (hero.guild == GIL_DJG)
		{
			AI_Output			(self, other, "DIA_Keroloth_KAP4_GELDGEFUNDEN_DJG_07_02"); //Nigdy nie powinni byli wpuszczaæ takiego œmiecia do zamku.
		}
		else
		{
			AI_Output			(self, other, "DIA_Keroloth_KAP4_GELDGEFUNDEN_DJG_07_03"); //Tylko poczekaj, ju¿ ja dam tym œwiniom.
		};

	AI_StopProcessInfos	(self);
	other.aivar[AIV_INVINCIBLE] = false;

	if (Npc_IsDead(Ferros) == false)
		&& ((Npc_GetDistToNpc(self, Ferros)) <= 2000)
		{
			B_Attack (self, Ferros, AR_NONE, 1);
		}
	else if (Npc_IsDead(Jan) == false)
		&& ((Npc_GetDistToNpc(self, Jan)) <= 2000)
		{
			B_Attack (self, Jan, AR_NONE, 1);
		}
	else if (Npc_IsDead(Rethon) == false)
		&& ((Npc_GetDistToNpc(self, Rethon)) <= 2000)
		{
			B_Attack (self, Rethon, AR_NONE, 1);
		};
};

func void DIA_Keroloth_KAP4_GELDGEFUNDEN_Schmiede ()
{
	AI_Output			(other, self, "DIA_Keroloth_KAP4_GELDGEFUNDEN_Schmiede_15_00"); //Ehm. Le¿a³a tam, obok kuŸni.
	AI_Output			(self, other, "DIA_Keroloth_KAP4_GELDGEFUNDEN_Schmiede_07_01"); //Gdzie? Ko³o kuŸni? Musia³a tam wypaœæ z kieszeni ³owcy smoków. Nie mów, ¿e by³o inaczej.
};

func void DIA_Keroloth_KAP4_GELDGEFUNDEN_Lohn ()
{
	AI_Output			(other, self, "DIA_Keroloth_KAP4_GELDGEFUNDEN_Lohn_15_00"); //Chwileczkê. A co z nagrod¹?
	
 	if (Keroloths_BeutelLeer == true)
	{
		AI_Output			(self, other, "DIA_Keroloth_KAP4_GELDGEFUNDEN_Lohn_07_01"); //To twoja ostatnia deska ratunku. Ju¿ dawno nie dosta³eœ po zêbach, co?
		AI_StopProcessInfos	(self);
		B_Attack (self, other, AR_NONE, 1);	
	}
	else
	{
		AI_Output			(self, other, "DIA_Keroloth_KAP4_GELDGEFUNDEN_Lohn_07_02"); //Argh. Dobra. Masz tu parê monet. A teraz gadaj, kto to zrobi³?
		CreateInvItems (self, ItMi_Gold, 50);									
		B_GiveInvItems (self, other, ItMi_Gold, 50);					
		Keroloth_HasPayed = true;
	};
};

///////////////////////////////////////////////////////////////////////
//	Info belohnung
///////////////////////////////////////////////////////////////////////
instance DIA_Keroloth_KAP4_BELOHNUNG		(C_INFO)
{
	npc		 = 	PAL_258_Keroloth;
	nr		 = 	43;
	condition	 = 	DIA_Keroloth_KAP4_BELOHNUNG_Condition;
	information	 = 	DIA_Keroloth_KAP4_BELOHNUNG_Info;
	permanent	 = 	true;

	description	 = 	"Chcê moje znaleŸne za sakiewkê.";
};

func int DIA_Keroloth_KAP4_BELOHNUNG_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Keroloth_KAP4_GELDGEFUNDEN))
 		&& (Keroloth_HasPayed == false)
 		&& (hero.guild != GIL_KDF)
 		{
				return true;
		};
};

func void DIA_Keroloth_KAP4_BELOHNUNG_Info ()
{
 	AI_Output			(other, self, "DIA_Keroloth_KAP4_BELOHNUNG_15_00"); //Chcê moje znaleŸne za sakiewkê.

	if ((Keroloths_BeutelLeer == true) || (hero.guild == GIL_DJG))
	{
		AI_Output			(self, other, "DIA_Keroloth_KAP4_BELOHNUNG_07_01"); //Mo¿esz dostaæ w szczêkê!
		AI_StopProcessInfos	(self);
		B_Attack (self, other, AR_NONE, 1);	
	}
	else
	{
		AI_Output			(self, other, "DIA_Keroloth_KAP4_BELOHNUNG_07_02"); //To twoje najwiêksze zmartwienie? Masz tu parê monet i spadaj.
		
		CreateInvItems (self, ItMi_Gold, 50);									
		B_GiveInvItems (self, other, ItMi_Gold, 50);					
		
		Keroloth_HasPayed = true;
	};
};

///////////////////////////////////////////////////////////////////////
//	Info entspanndich
///////////////////////////////////////////////////////////////////////
instance DIA_Keroloth_KAP4_ENTSPANNDICH		(C_INFO)
{
	npc		 = 	PAL_258_Keroloth;
	nr		 = 	44;
	condition	 = 	DIA_Keroloth_KAP4_ENTSPANNDICH_Condition;
	information	 = 	DIA_Keroloth_KAP4_ENTSPANNDICH_Info;
	permanent	 = 	true;

	description	 = 	"Spokojnie.";
};

func int DIA_Keroloth_KAP4_ENTSPANNDICH_Condition ()
{
	if ((Npc_KnowsInfo(other, DIA_Keroloth_KAP4_GELDGEFUNDEN))
		&& (Kapitel >= 10))
		|| (MIS_OCGateOpen == true)
		{
				return true;
		};
};

func void DIA_Keroloth_KAP4_ENTSPANNDICH_Info ()
{
	AI_Output			(other, self, "DIA_Keroloth_KAP4_ENTSPANNDICH_15_00"); //Spokojnie.
	
	if (hero.guild == GIL_KDF)
	{
	AI_Output			(self, other, "DIA_Keroloth_KAP4_ENTSPANNDICH_07_01"); //Tak Mistrzu. Postaram siê.
	}
	else if (MIS_OCGateOpen == true)
	{
	AI_Output			(self, other, "DIA_Keroloth_KAP4_ENTSPANNDICH_07_02"); //Nie mogê tego udowodniæ, ale uwa¿am, ¿e ty jesteœ zdrajc¹, który otworzy³ wrota.
	AI_Output			(self, other, "DIA_Keroloth_KAP4_ENTSPANNDICH_07_03"); //Teraz za to zap³acisz.
	AI_StopProcessInfos (self);
	B_Attack (self, other, AR_NONE, 1);	
	}
	else 
	{
	AI_Output			(other, self, "DIA_Keroloth_KAP4_ENTSPANNDICH_15_04"); //Odzyska³eœ przecie¿ swoj¹ sakiewkê, prawda?
	AI_Output			(self, other, "DIA_Keroloth_KAP4_ENTSPANNDICH_07_05"); //Nie prowokuj mnie, ch³opcze! Zmiataj st¹d!
	AI_StopProcessInfos (self);
	};
};

//#####################################################################
//##
//##
//##							KAPITEL 5
//##
//##
//#####################################################################

// ************************************************************
// 	  				   EXIT KAP5
// ************************************************************

INSTANCE DIA_Keroloth_KAP5_EXIT(C_INFO)
{
	npc			= PAL_258_Keroloth;
	nr			= 999;
	condition	= DIA_Keroloth_KAP5_EXIT_Condition;
	information	= DIA_Keroloth_KAP5_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Keroloth_KAP5_EXIT_Condition()
{
	if (Kapitel == 11)	
	{
		return true;
	};
};
FUNC VOID DIA_Keroloth_KAP5_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};


//#####################################################################
//##
//##
//##							KAPITEL 6
//##
//##
//#####################################################################

// ************************************************************
// 	  				   EXIT KAP6
// ************************************************************


INSTANCE DIA_Keroloth_KAP6_EXIT(C_INFO)
{
	npc			= PAL_258_Keroloth;
	nr			= 999;
	condition	= DIA_Keroloth_KAP6_EXIT_Condition;
	information	= DIA_Keroloth_KAP6_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Keroloth_KAP6_EXIT_Condition()
{
	if (Kapitel == 12)	
	{
		return true;
	};
};
FUNC VOID DIA_Keroloth_KAP6_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};
