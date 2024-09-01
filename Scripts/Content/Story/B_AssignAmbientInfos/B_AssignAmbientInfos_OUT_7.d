///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_OUT_7_EXIT (C_Info)
{
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// STANDARD
///******************************************************************************************
instance DIA_OUT_7_STANDARD (C_Info)
{
	nr									=	2;
	condition							=	DIA_OUT_7_STANDARD_Condition;
	information							=	DIA_OUT_7_STANDARD_Info;
	permanent							=	true;
	important							=	true;
};
func int DIA_OUT_7_STANDARD_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return true;
	};
};
func void DIA_OUT_7_STANDARD_Info()
{
	var int randy; randy = Hlp_Random(3);
	
	if (randy == 0)
	{
		AI_Output (self, other, "DIA_OUT_7_STANDARD_07_00"); //Ostatnio okolica sta�a si� o wiele bardziej niebezpieczna. Polne bestie to prawdziwa plaga.
	};
	if (randy == 1)
	{
		AI_Output (self, other, "DIA_OUT_7_STANDARD_07_01"); //Do tego musimy jeszcze p�aci� kontrybucj� na rzecz miasta. Je�li tego zaprzestaniemy, �ci�gniemy sobie na g�ow� paladyn�w.
	};
	if (randy == 2)
	{
		AI_Output (self, other, "DIA_OUT_7_STANDARD_07_02"); //Bunt Onara poci�gnie za sob� powa�ne konsekwencje. Wol� trzyma� si� od tego z daleka.
	};
	
	AI_StopProcessInfos(self);
};

///******************************************************************************************
func void B_AssignAmbientInfos_OUT_7 (var C_Npc slf)
{
	DIA_OUT_7_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_OUT_7_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
