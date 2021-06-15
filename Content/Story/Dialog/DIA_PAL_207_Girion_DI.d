///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Girion_DI_XIT   (C_INFO)
{
	npc         = PAL_207_Girion_DI;
	nr          = 999;
	condition   = DIA_Girion_DI_EXIT_Condition;
	information = DIA_Girion_DI_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Girion_DI_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Girion_DI_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Girion_DI_Hallo		(C_INFO)
{
	npc			 = 	PAL_207_Girion_DI;
	nr			 = 	2;
	condition	 = 	DIA_Girion_DI_Hallo_Condition;
	information	 = 	DIA_Girion_DI_Hallo_Info;
	PERMANENT 	 =  TRUE;

	description	 = 	"Wszystko w porz¹dku?";
};
func int DIA_Girion_DI_Hallo_Condition ()
{	
	if (Npc_IsDead(UndeadDragon)== FALSE)
	{
		return TRUE;
	};
};
func void DIA_Girion_DI_Hallo_Info ()
{
	AI_Output			(other, self, "DIA_Girion_DI_Hallo_15_00"); //Czy wszystko w porz¹dku?

	if (ORkSturmDI == TRUE)
		{
			AI_Output			(self, other, "DIA_Girion_DI_Hallo_08_01"); //Orkowie wykazali siê spor¹ odwag¹, staj¹c przeciwko mnie.
			AI_Output			(self, other, "DIA_Girion_DI_Hallo_08_02"); //Wdanie siê w walkê z królewskim paladynem nie by³o z ich strony zbyt m¹dre.
		}
	else if (hero.guild == GIL_PAL)
		{
			AI_Output			(self, other, "DIA_Girion_DI_Hallo_08_03"); //Tak myœlê. Jak du¿o czasu potrzeba ci na wype³nienie misji?
		}
	else
		{
			AI_Output			(self, other, "DIA_Girion_DI_Hallo_08_04"); //Nie traktuj mnie jak idioty. Rób, co musisz, a potem oddawaj statek.
		};
};

//**************************************
//			Ich will trainieren
//**************************************
INSTANCE DIA_Girion_DI_Teach(C_INFO)
{
	npc			= PAL_207_Girion_DI;
	nr			= 5;
	condition	= DIA_Girion_DI_Teach_Condition;
	information	= DIA_Girion_DI_Teach_Info;
	permanent	= FALSE;
	description = "Nauczaj mnie - szybciej siê st¹d wszyscy wydostaniemy!";
};                       

FUNC INT DIA_Girion_DI_Teach_Condition()
{
	if (Npc_IsDead(UndeadDragon)== FALSE)
	{
		return TRUE;
	};
};
 
FUNC VOID DIA_Girion_DI_Teach_Info()
{	
	AI_Output (other,self 	,"DIA_Girion_DI_Teach_15_00"); //Jeœli mnie wytrenujesz, bêdziemy mogli szybciej opuœciæ to miejsce.
	AI_Output (self ,other 	,"DIA_Girion_DI_Teach_08_01"); //Wygl¹da na to, ¿e nie mam innego wyboru.
	self.aivar[AIV_CanTeach] = true;
};

///////////////////////////////////////////////////////////////////////
//	Info OrcEliteRing
///////////////////////////////////////////////////////////////////////
instance DIA_Girion_DI_OrcEliteRing		(C_INFO)
{
	npc			 = 	PAL_207_Girion_DI;
	nr          = 	99;	
	condition	 = 	DIA_Girion_DI_OrcEliteRing_Condition;
	information	 = 	DIA_Girion_DI_OrcEliteRing_Info;
	permanent	 = 	TRUE;

	description	 = 	"Mam tu pierœcieñ orkowego herszta.";
};

func int DIA_Girion_DI_OrcEliteRing_Condition ()
{	
	if  (Npc_HasItems (other,ItRi_OrcEliteRing))
		{
				return TRUE;
		};
};

var int DIA_Girion_DI_OrcEliteRing_OneTime;
func void DIA_Girion_DI_OrcEliteRing_Info ()
{
	AI_Output			(other, self, "DIA_Girion_DI_OrcEliteRing_15_00"); //Mam tu pierœcieñ orkowego herszta.

	if (DIA_Girion_DI_OrcEliteRing_OneTime == FALSE)
	{
		AI_Output			(self, other, "DIA_Girion_DI_OrcEliteRing_08_01"); //Przypuszczam, ¿e móg³by siê przydaæ Lordowi Hagenowi.
		DIA_Girion_DI_OrcEliteRing_OneTime = TRUE;
	};

	AI_Output			(self, other, "DIA_Girion_DI_OrcEliteRing_08_02"); //Daj go mnie, a ja dostarczê go Hagenowi.

	Info_ClearChoices	(DIA_Girion_DI_OrcEliteRing);
	Info_AddChoice	(DIA_Girion_DI_OrcEliteRing, "Wola³bym go raczej zatrzymaæ dla siebie.", DIA_Girion_DI_OrcEliteRing_behalten );
	Info_AddChoice	(DIA_Girion_DI_OrcEliteRing, "Proszê, weŸ go.", DIA_Girion_DI_OrcEliteRing_geben );
};
func void DIA_Girion_DI_OrcEliteRing_geben ()
{
	AI_Output			(other, self, "DIA_Girion_DI_OrcEliteRing_geben_15_00"); //Proszê, weŸ go.
	AI_Output			(self, other, "DIA_Girion_DI_OrcEliteRing_geben_08_01"); //Dziêkujê. I tak nie mam co z nim zrobiæ.
	Info_ClearChoices	(DIA_Girion_DI_OrcEliteRing);
	B_GiveInvItems (other, self, ItRi_OrcEliteRing,1);
	B_GivePlayerXP(300);
};

func void DIA_Girion_DI_OrcEliteRing_behalten ()
{
	AI_Output			(other, self, "DIA_Girion_DI_OrcEliteRing_behalten_15_00"); //Wola³bym go raczej zatrzymaæ dla siebie.
	AI_Output			(self, other, "DIA_Girion_DI_OrcEliteRing_behalten_08_01"); //Bardzo proszê. I tak nic z nim nie zrobisz.
	Info_ClearChoices	(DIA_Girion_DI_OrcEliteRing);
};

///////////////////////////////////////////////////////////////////////
//	Info UndeadDragonDead
///////////////////////////////////////////////////////////////////////
instance DIA_Girion_DI_UndeadDragonDead		(C_INFO)
{
	npc			 = 	PAL_207_Girion_DI;
	nr			 = 	2;
	condition	 = 	DIA_Girion_DI_UndeadDragonDead_Condition;
	information	 = 	DIA_Girion_DI_UndeadDragonDead_Info;
	permanent	 = 	TRUE;
	
	description = 	"Mo¿emy odp³ywaæ.";
};

func int DIA_Girion_DI_UndeadDragonDead_Condition ()
{	
	if (Npc_IsDead(UndeadDragon))
	{
		return TRUE;
	};
};

var int DIA_Girion_DI_UndeadDragonDead_OneTime;
func void DIA_Girion_DI_UndeadDragonDead_Info ()
{
	AI_Output			(other ,self, "DIA_Girion_DI_UndeadDragonDead_15_00"); //Mo¿emy odp³ywaæ.
	AI_Output			(self ,other, "DIA_Girion_DI_UndeadDragonDead_08_01"); //Najwy¿szy czas. Ju¿ myœla³em, ¿e przyjdzie mi spêdziæ resztê ¿ycia na tym klifie.

	if (DIA_Girion_DI_UndeadDragonDead_OneTime == FALSE)
		{
			AI_Output			(self ,other, "DIA_Girion_DI_UndeadDragonDead_08_02"); //A teraz przeka¿ mi dowodzenie nad okrêtem.
			AI_Output			(other ,self, "DIA_Girion_DI_UndeadDragonDead_15_03"); //Nie dotarliœmy jeszcze do Khorinis. A skoro ju¿ o tym mowa, to wcale nie mam ochoty tam wracaæ.
			AI_Output			(other ,self, "DIA_Girion_DI_UndeadDragonDead_15_04"); //Mam ju¿ doœæ tego miejsca.
			AI_Output			(self ,other, "DIA_Girion_DI_UndeadDragonDead_08_05"); //Te¿ o tym myœla³em. Ale to nie miejsce ani czas na takie dyskusje. Pogadamy na ten temat, kiedy znajdziemy siê na morzu.
			AI_Output			(self ,other, "DIA_Girion_DI_UndeadDragonDead_08_06"); //Niezale¿nie od wszystkiego cieszê siê, ¿e uda³o ci siê wróciæ na statek w jednym kawa³ku.
			
			if (hero.guild == GIL_PAL)
			{
				AI_Output			(self ,other, "DIA_Girion_DI_UndeadDragonDead_08_07"); //Jesteœ prawdziwym wojownikiem Innosa. Nie mam co do tego ¿adnych w¹tpliwoœci. Cieszê siê, ¿e jesteœmy po tej samej stronie.
			}
			else
			{
				AI_Output			(self ,other, "DIA_Girion_DI_UndeadDragonDead_08_08"); //Nawet jeœli jesteœ draniem, tym razem post¹pi³eœ w³aœciwie.
			};
			
			DIA_Girion_DI_UndeadDragonDead_OneTime = TRUE;
		};

	AI_Output			(self ,other, "DIA_Girion_DI_UndeadDragonDead_08_09"); //Dobrze. A teraz idŸ do kapitana i ka¿ mu odp³yn¹æ z tego miejsca.
	AI_StopProcessInfos (self);
};
