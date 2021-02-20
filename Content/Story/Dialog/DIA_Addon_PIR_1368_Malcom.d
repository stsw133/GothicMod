// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Addon_Malcom_EXIT(C_INFO)
{
	npc			= PIR_1368_Addon_Malcom;
	nr			= 999;
	condition	= DIA_Addon_Malcom_EXIT_Condition;
	information	= DIA_Addon_Malcom_EXIT_Info;
	permanent	= true;
	description = "Musz� i��.";
};
FUNC INT DIA_Addon_Malcom_EXIT_Condition()
{
	return true;
};
func VOID DIA_Addon_Malcom_EXIT_Info()
{	
	AI_Output (other, self, "DIA_Addon_Malcom_perm_15_00"); //Musz� i��.
	
	if (MalcomBotschaft == true)
	{
		AI_Output (self, other, "DIA_Addon_Malcom_perm_04_01"); //Nie daj si� po�re� �adnym bestiom. To niebezpieczna okolica.
	}
	else
	{
		AI_Output	(self, other, "DIA_Addon_Malcom_Add_04_03"); //Hej! Je�eli wracasz do obozu, to przeka� co� Henry'emu.
		AI_Output	(self, other, "DIA_Addon_Malcom_Lager_04_04"); //Te drzewa s� strasznie twarde.
		AI_Output	(self, other, "DIA_Addon_Malcom_Lager_04_05"); //Wycinka jest ci�ka, wi�c jeszcze przez jaki� czas drewna nie b�dzie. Powiedz mu to.
		MalcomBotschaft = true;
	};
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
//								Hello
// ************************************************************
instance DIA_Addon_Malcom_Hello		(C_INFO)
{
	npc		 	= PIR_1368_Addon_Malcom;
	nr		 	= 1;
	condition	= DIA_Addon_Malcom_Hello_Condition;
	information	= DIA_Addon_Malcom_Hello_Info;

	important 	= true;
};

func int DIA_Addon_Malcom_Hello_Condition ()
{
	if (Npc_IsInState (self, ZS_Talk))
	&& (self.aivar[AIV_TalkedToPlayer] == false)
	{
		return true;
	};
};

func void DIA_Addon_Malcom_Hello_Info ()
{
	AI_Output	(self, other, "DIA_Addon_Malcom_Hello_04_01"); //Nie jeste� st�d, prawda?
	AI_Output	(self, other, "DIA_Addon_Malcom_Hello_04_02"); //Wygl�dasz na kogo�, kto widzia� ju� spory kawa�ek �wiata.
};

// ************************************************************
//					Hallo 2 	(Was machst du?)
// ************************************************************
instance DIA_Addon_Malcom_WasMachen		(C_INFO)
{
	npc		 	= PIR_1368_Addon_Malcom;
	nr		 	= 2;
	condition	= DIA_Addon_Malcom_WasMachen_Condition;
	information	= DIA_Addon_Malcom_WasMachen_Info;

	description	= "Zaj�ty?";
};
func int DIA_Addon_Malcom_WasMachen_Condition ()
{
	return true;
};
func void DIA_Addon_Malcom_WasMachen_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Malcom_WasMachen_15_00"); //Zaj�ty?
	AI_Output	(self, other, "DIA_Addon_Malcom_WasMachen_04_01"); //S�uchaj uwa�nie, bo nie b�d� powtarza�. Henry chce drewna, co oznacza, �e musz� wyci�� jeszcze sporo drzew.
	if (Henry.aivar[AIV_TalkedToPlayer] == false)
	{
		AI_Output	(other, self, "DIA_Addon_Malcom_WasMachen_15_02"); //Henry?
		AI_Output	(self, other, "DIA_Addon_Malcom_Add_04_00"); //Dowodzi nasz� grup�.
	};
	AI_Output	(self, other, "DIA_Addon_Malcom_WasMachen_04_04"); //Stoi przed obozem i lubi sobie pogada�.
	AI_Output	(self, other, "DIA_Addon_Malcom_WasMachen_04_05"); //Wiesz, r�ne rzeczy o tym, �e musimy robi� to, co do nas nale�y, dla dobra innych i takie tam brednie.
	AI_Output	(self, other, "DIA_Addon_Malcom_WasMachen_04_06"); //Oczywi�cie on nawet palcem nie kiwnie.
};

// ************************************************************
// 					Holz - Nachricht f�r Henry
// ************************************************************
instance DIA_Addon_Malcom_Entertrupp		(C_INFO)
{
	npc		 = 	PIR_1368_Addon_Malcom;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Malcom_Entertrupp_Condition;
	information	 = 	DIA_Addon_Malcom_Entertrupp_Info;

	description	 = 	"Henry jest waszym przyw�dc�?";
};
func int DIA_Addon_Malcom_Entertrupp_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Malcom_WasMachen))
	{
		return true;
	};
};
func void DIA_Addon_Malcom_Entertrupp_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Malcom_Entertrupp_15_00"); //Henry jest waszym przyw�dc�?
	AI_Output	(self, other, "DIA_Addon_Malcom_WasMachen_04_03"); //Tak. Jest dow�dc� naszej grupy aborda�owej.
	AI_Output	(self, other, "DIA_Addon_Malcom_Add_04_01"); //Za to naszym kapitanem jest Greg.
	if (GregIsBack == false)
	{
		AI_Output (self, other, "DIA_Addon_Malcom_Add_04_02"); //Ale nie ma go w tej chwili.
	};
};

// ************************************************************
// 						Wo ist Lager
// ************************************************************
instance DIA_Addon_Malcom_Lager		(C_INFO)
{
	npc		 	= PIR_1368_Addon_Malcom;
	nr		 	= 3;
	condition	= DIA_Addon_Malcom_Lager_Condition;
	information	= DIA_Addon_Malcom_Lager_Info;

	description	= "Gdzie le�y wasz ob�z?";
};
func int DIA_Addon_Malcom_Lager_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Malcom_WasMachen))
	{
		return true;
	};
};
func void DIA_Addon_Malcom_Lager_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Malcom_Lager_15_00"); //Gdzie le�y wasz ob�z?
	AI_Output	(self, other, "DIA_Addon_Malcom_Lager_04_01"); //Id� t� �cie�k� na zach�d.
	AI_Output	(self, other, "DIA_Addon_Malcom_Lager_04_02"); //Na pewno spotkasz Henry'ego.
};
