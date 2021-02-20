//******************************************************************************************
//	Info EXIT
//******************************************************************************************
INSTANCE DIA_Geppert_EXIT (C_INFO)
{
	npc									=	STRF_1115_Geppert;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Geppert_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Geppert_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Info Hallo
//******************************************************************************************

var int Kervo_GotStuff;

//******************************************************************************************
instance DIA_Geppert_HALLO (C_INFO)
{
	npc									=	STRF_1115_Geppert;
	nr									=	4;
	condition							=	atrue;
	information							=	DIA_Geppert_HALLO_Info;
	permanent							=	false;
	important							=	true;
};

func void DIA_Geppert_HALLO_Info()
{
	if (Npc_IsDead(Kervo) == false)
	&& (Kervo_GotStuff == false)
	{
		if (hero.guild == GIL_KDF)
		{
			CreateInvItems (Kervo, ItMi_RuneBlank, 1);									
		}
		else
		{
			CreateInvItems (Kervo, ItMi_Nugget, 1);									
		};
		Kervo_GotStuff = true;
	};
	
	AI_Output (self, other, "DIA_Geppert_HALLO_10_00"); //Sta�! Kto idzie?
	AI_Output (self, other, "DIA_Geppert_HALLO_10_01"); //Nie chcesz mnie chyba wys�a� z powrotem do kopalni rudy, prawda?
	AI_Output (self, other, "DIA_Geppert_HALLO_10_02"); //Musz� ci� rozczarowa�. Nie wr�c� tam za nic w �wiecie.
	
	Info_ClearChoices(DIA_Geppert_HALLO);
	Info_AddChoice (DIA_Geppert_HALLO, "Co tutaj robisz?", DIA_Geppert_HALLO_Wasmachtihr);
	Info_AddChoice (DIA_Geppert_HALLO, "Jeste� zbieg�ym wi�niem, prawda?", DIA_Geppert_HALLO_Flucht);
};

func void DIA_Geppert_HALLO_Flucht()
{
	AI_Output (other, self, "DIA_Geppert_HALLO_Flucht_15_00"); //Jeste� zbieg�ym wi�niem, prawda?
	AI_Output (self, other, "DIA_Geppert_HALLO_Flucht_10_01"); //Prosz�, jaki jeste� domy�lny. Z jakiego innego powodu m�g�bym siedzie� w tej zat�ch�ej norze?
	Info_ClearChoices(DIA_Geppert_HALLO);
};

func void DIA_Geppert_HALLO_Wasmachtihr()
{
	AI_Output (other, self, "DIA_Geppert_HALLO_Wasmachtihr_15_00"); //Co tutaj robisz?
	if ((other.guild == GIL_MIL) || (other.guild == GIL_PAL))
	{
		AI_Output (self, other, "DIA_Geppert_HALLO_Wasmachtihr_10_01"); //Co to za krety�skie pytanie? Chowam si� przed wami, �o�nierzami.
		AI_Output (self, other, "DIA_Geppert_HALLO_Wasmachtihr_10_02"); //Przesta� kombinowa�. Albo od razu mnie zabij, albo spadaj st�d.
	}
	else
	{
		AI_Output (self, other, "DIA_Geppert_HALLO_Wasmachtihr_10_03"); //G�upie pytanie. Ukrywam si�. Te �winie ze stra�y wsz�dzie maj� swoich szpieg�w.
	};
	AI_Output (self, other, "DIA_Geppert_HALLO_Wasmachtihr_10_04"); //Nie dam si� ponownie wys�a� do kopalni, i ju�.
	
	Info_ClearChoices(DIA_Geppert_HALLO);
};

//******************************************************************************************
//	Info Braten
//******************************************************************************************
instance DIA_Geppert_BRATEN (C_INFO)
{
	npc									= 	STRF_1115_Geppert;
	nr									= 	5;
	condition							= 	DIA_Geppert_BRATEN_Condition;
	information							= 	DIA_Geppert_BRATEN_Info;
	permanent							= 	true;
	description							=	"Ta piecze� pachnie wspaniale.";
};

func int DIA_Geppert_BRATEN_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Geppert_HALLO))
	{
		return true;
	};
};

func void DIA_Geppert_BRATEN_Info()
{
	AI_Output (other, self, "DIA_Geppert_BRATEN_15_00"); //Ta piecze� pachnie wspaniale.
	AI_Output (self, other, "DIA_Geppert_BRATEN_10_01"); //Nie dotykaj!
	AI_StopProcessInfos(self);
};
