//******************************************************************************************
//	EXIT
//******************************************************************************************
INSTANCE DIA_Larius_EXIT (C_INFO)
{
	npc									=	VLK_400_Larius;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Larius_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Larius_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Hello
//******************************************************************************************
INSTANCE DIA_Larius_Hello (C_INFO)
{
	npc									=	VLK_400_Larius;
	nr									=	1;
	condition							=	DIA_Larius_Hello_Condition;
	information							=	DIA_Larius_Hello_Info;
	important							=	true;
};

FUNC INT DIA_Larius_Hello_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	{
		return true;
	};
};

FUNC VOID DIA_Larius_Hello_Info()
{
	AI_Output (self, other, "DIA_Larius_Hello_01_00"); //Czego chcesz? Jeœli masz jak¹œ sprawê, musisz siê najpierw umówiæ.
};

//******************************************************************************************
//	Wer bist du
//******************************************************************************************
INSTANCE DIA_Larius_WhoAreYou (C_INFO)
{
	npc									=	VLK_400_Larius;
	nr									=	2;
	condition							=	atrue;
	information							=	DIA_Larius_WhoAreYou_Info;
	permanent							=	false;
	description							=	"Kim jesteœ?";
};

FUNC VOID DIA_Larius_WhoAreYou_Info()
{
	AI_Output (other, self, "DIA_Larius_WhoAreYou_15_00"); //Kim jesteœ?
	AI_Output (self, other, "DIA_Larius_WhoAreYou_01_01"); //Jestem Larius, miejscowy gubernator.
	AI_Output (self, other, "DIA_Larius_WhoAreYou_01_02"); //Chocia¿ w tym momencie mo¿e trudno w to uwierzyæ, jestem najbardziej wp³ywowym cz³owiekiem w tym mieœcie.
	AI_Output (other, self, "DIA_Larius_WhoAreYou_15_03"); //A wiêc ty tutaj rz¹dzisz?
	AI_Output (self, other, "DIA_Larius_WhoAreYou_01_04"); //Ja... No có¿... w chwili obecnej mam zwi¹zane rêce.
	AI_Output (self, other, "DIA_Larius_WhoAreYou_01_05"); //Dopóki Lord Hagen nie opuœci miasta, to on sprawuje w³adzê.
};

//******************************************************************************************
//	Disturb
//******************************************************************************************
INSTANCE DIA_Larius_Disturb (C_INFO)
{
	npc									=	VLK_400_Larius;
	nr									=	3;
	condition							=	atrue;
	information							=	DIA_Larius_Disturb_Info;
//	permanent							=	true;
	description							=	"Nie chcia³em przeszkadzaæ.";
};

FUNC VOID DIA_Larius_Disturb_Info()
{
	AI_Output (other, self, "DIA_Larius_Disturb_15_00"); //Nie chcia³em przeszkadzaæ.
	AI_Output (self, other, "DIA_Larius_Disturb_01_01"); //A jednak przeszkadzasz. Wynoœ siê st¹d!
};

//******************************************************************************************
//	Wie siehts aus?
//******************************************************************************************
INSTANCE DIA_Larius_DieLage (C_INFO)
{
	npc									=	VLK_400_Larius;
	nr									=	2;
	condition							=	atrue;
	information							=	DIA_Larius_DieLage_Info;
//	permanent							=	true;
	description							=	"Co s³ychaæ?";
};

FUNC VOID DIA_Larius_DieLage_Info()
{
	AI_Output (other, self, "DIA_Larius_DieLage_15_00"); //Jak leci?
	AI_Output (self, other, "DIA_Larius_DieLage_01_01"); //A co ciê to obchodzi? Dopóki w mieœcie przebywaj¹ paladyni, Lord Hagen sprawuje tu w³adzê.
};

//******************************************************************************************
//	Richterueberfall
//******************************************************************************************
INSTANCE DIA_Larius_Richterueberfall (C_INFO)
{
	npc									=	VLK_400_Larius;
	nr									=	2;
	condition							=	DIA_Larius_Richterueberfall_Condition;
	information							=	DIA_Larius_Richterueberfall_Info;
	permanent							=	false;
	description							=	"Sêdzia wynaj¹³ kilku opryszków, ¿eby ciê uciszyli.";
};

FUNC INT DIA_Larius_Richterueberfall_Condition()
{
	if (SCKnowsRichterKomproBrief == true)
	{
		return true;
	};
};

FUNC VOID DIA_Larius_Richterueberfall_Info()
{
	AI_Output (other, self, "DIA_Larius_Richterueberfall_15_00"); //Sêdzia wynaj¹³ kilku opryszków, ¿eby ciê uciszyli.
	AI_Output (self, other, "DIA_Larius_Richterueberfall_01_01"); //Nie opowiadaj takich bzdur, chcesz skoñczyæ w areszcie?
	if ((hero.guild == GIL_MIL) || (hero.guild == GIL_PAL))
	{
		AI_Output (self ,other,"DIA_Larius_Richterueberfall_01_02"); //Nawet jeœli jesteœ wojownikiem Innosa...
	}
	else if (hero.guild == GIL_KDF)
	{
		AI_Output (self ,other,"DIA_Larius_Richterueberfall_01_03"); //Nawet jeœli jesteœ szanowanym magiem...
	};
	AI_Output (self, other, "DIA_Larius_Richterueberfall_01_04"); //Moje s³owo wci¹¿ coœ znaczy w tym mieœcie. Ostrzegam ciê, nie zamierzam s³uchaæ, jak bezczelnie szkalujesz dobre imiê sêdziego!
	
	B_GivePlayerXP(XP_BONUS_1);
	
	AI_StopProcessInfos(self);
};
