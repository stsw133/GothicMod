///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Mortis_EXIT   (C_INFO)
{
	npc         = Mil_314_Mortis;
	nr          = 999;
	condition   = DIA_Mortis_EXIT_Condition;
	information = DIA_Mortis_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Mortis_EXIT_Condition()
{
	return true;
};

FUNC VOID DIA_Mortis_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Mortis_Hallo		(C_INFO)
{
	npc		 	 = 	Mil_314_Mortis;
	nr			 =  2;
	condition	 = 	DIA_Mortis_Hallo_Condition;
	information	 = 	DIA_Mortis_Hallo_Info;
	permanent    =  false;
	important	 = 	true;
};

func int DIA_Mortis_Hallo_Condition ()
{	
	if Npc_IsInState (self, ZS_Talk)
	&& ((Npc_KnowsInfo (other, DIA_Peck_FOUND_PECK) == false)
	&& (Kapitel < 9))
	{
		return true;
	};
};
func void DIA_Mortis_Hallo_Info ()
{
	AI_Output (self, other, "DIA_Mortis_Hallo_13_00"); //Czego chcesz? Pecka tu nie ma, wiêc nic nie wskórasz. PrzyjdŸ póŸniej.
	
};
///////////////////////////////////////////////////////////////////////
//	Info Waffe
///////////////////////////////////////////////////////////////////////
instance DIA_Mortis_Waffe		(C_INFO)
{
	npc		 	 = 	Mil_314_Mortis;
	nr			 =  2;
	condition	 = 	DIA_Mortis_Waffe_Condition;
	information	 = 	DIA_Mortis_Waffe_Info;
	permanent    =  false;
	description  =  "Gdzie jest Peck?";
};

func int DIA_Mortis_Waffe_Condition ()
{	
	if (MIS_Andre_Peck == LOG_RUNNING)
	&& ((Npc_KnowsInfo (other, DIA_Peck_FOUND_PECK) == false)
	&& (Kapitel < 9))
	{
		return true;
	};
};
func void DIA_Mortis_Waffe_Info ()
{
	AI_Output (other, self, "DIA_Mortis_Waffe_15_00"); //Gdzie jest Peck?
	AI_Output (self, other, "DIA_Mortis_Waffe_13_01"); //W³aœnie siê do nas przy³¹czy³eœ, prawda? A zatem witam w dru¿ynie.
	AI_Output (self, other, "DIA_Mortis_Waffe_13_02"); //Peck strasznie d³ugo zabawi³ w mieœcie. Za³o¿ê siê, ¿e ma spotkanie z t¹ s³odk¹ Vanj¹ z Czerwonej Latarni.
};
///////////////////////////////////////////////////////////////////////
//	Info Paket
///////////////////////////////////////////////////////////////////////
instance DIA_Mortis_Paket		(C_INFO)
{
	npc		 	 = 	Mil_314_Mortis;
	nr			 =  2;
	condition	 = 	DIA_Mortis_Paket_Condition;
	information	 = 	DIA_Mortis_Paket_Info;
	permanent    =  false;
	description  =  "Co wiesz na temat pewnej paczki z zielem?";
};

func int DIA_Mortis_Paket_Condition ()
{	
	if (MIS_ANDRE_WAREHOUSE == LOG_RUNNING) 
	{
		return true;
	};
};
func void DIA_Mortis_Paket_Info ()
{
	AI_Output (other, self, "DIA_Mortis_Paket_15_00"); //Co wiesz na temat pewnej paczki z zielem?
	AI_Output (self, other, "DIA_Mortis_Paket_13_01"); //Hmmm... Ostatnio s³ysza³em w tawernie portowej, jak Kardif rozmawia³ o niej z jakimœ innym mê¿czyzn¹.
	AI_Output (other, self, "DIA_Mortis_Paket_15_02"); //Kim by³ ten drugi?
	AI_Output (self, other, "DIA_Mortis_Paket_13_03"); //Nie mam pojêcia. Powiedzia³ tylko, ¿e znalaz³ najlepsz¹ mo¿liw¹ kryjówkê na ziele - a potem obaj zaczêli siê œmiaæ niczym pijani orkowie.
	
	B_LogEntry (TOPIC_WAREHOUSE,"Mortis pods³ucha³ w portowej knajpie rozmowê Kardifa z jakimœ innym mê¿czyzn¹. Zastanawiali siê, gdzie ukryæ paczkê.");
};
///////////////////////////////////////////////////////////////////////
//	Info Redlight
///////////////////////////////////////////////////////////////////////
instance DIA_Mortis_Redlight		(C_INFO)
{
	npc		 	 = 	Mil_314_Mortis;
	nr			 =  2;
	condition	 = 	DIA_Mortis_Redlight_Condition;
	information	 = 	DIA_Mortis_Redlight_Info;
	permanent    =  false;
	description  =  "Co mo¿esz mi powiedzieæ o dzielnicy portowej?";
};

func int DIA_Mortis_Redlight_Condition ()
{	
	if (MIS_ANDRE_REDLIGHT == LOG_RUNNING) 
	{
		return true;
	};
};
func void DIA_Mortis_Redlight_Info ()
{
	AI_Output (other, self, "DIA_Mortis_Redlight_15_00"); //Co wiesz na temat dzielnicy portowej? Muszê dotrzeæ do cz³owieka, który sprzedaje ziele bagienne.
	AI_Output (self, other, "DIA_Mortis_Redlight_13_01"); //Widzisz, ci faceci na dole nie s¹ specjalnie gadatliwi, a ju¿ na pewno nie powiedz¹ nic stra¿nikowi miejskiemu.
	AI_Output (self, other, "DIA_Mortis_Redlight_13_02"); //Jeœli chcesz siê czegoœ dowiedzieæ tam na dole, to musisz zdj¹æ zbrojê.
	AI_Output (other, self, "DIA_Mortis_Redlight_15_03"); //No dobrze, a potem?
	AI_Output (self, other, "DIA_Mortis_Redlight_13_04"); //Tawerna i burdel to dwa miejsca, gdzie mo¿esz zdobyæ informacje. Innymi s³owy, jeœli w ogóle zdo³asz siê czegoœ dowiedzieæ, to w³aœnie tam.
	
	B_LogEntry (TOPIC_REDLIGHT,"Mortis uwa¿a, ¿e jeœli chcê kupiæ bagienne ziele w dzielnicy portowej, powinienem siê tam udaæ bez zbroi. Najlepiej zacz¹æ poszukiwania od tawerny lub burdelu.");
};
