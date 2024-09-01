///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_Addon_TAL_BDT_13_EXIT (C_Info)
{
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// Hi
///******************************************************************************************
instance DIA_Addon_TAL_BDT_13_Hi (C_Info)
{
	nr									=	2;
	condition							=	aTrue;
	information							=	DIA_Addon_TAL_BDT_13_Hi_Info;
	permanent							=	true;
	description							=	"Co s�ycha�?";
};
func void DIA_Addon_TAL_BDT_13_Hi_Info()
{
	AI_Output (other, self, "DIA_Addon_TAL_BDT_13_Hi_15_00");//Co s�ycha�?
	AI_Output (self, other, "DIA_Addon_TAL_BDT_13_Hi_13_01");//Po�re ci� jaka� bestia albo sko�czysz w brzuchu jakiego� bydl�cia.
	AI_Output (self, other, "DIA_Addon_TAL_BDT_13_Hi_13_02");//To bagno b�dzie naszym grobem...
};

///******************************************************************************************
/// Tal
///******************************************************************************************
instance DIA_Addon_TAL_BDT_13_Tal (C_Info)
{
	nr									=	3;
	condition							=	aTrue;
	information							=	DIA_Addon_TAL_BDT_13_Tal_Info;
	permanent							=	true;
	description							=	"Co wiesz o tej dolinie?";
};
func void DIA_Addon_TAL_BDT_13_Tal_Info()
{
	AI_Output (other, self, "DIA_Addon_TAL_BDT_13_Tal_15_00");//Co wiesz o tej dolinie?
	AI_Output (self, other, "DIA_Addon_TAL_BDT_13_Tal_13_01");//Pe�no w niej starych rzeczy. Kruk kaza� nam wszystko zbiera�.
	AI_Output (self, other, "DIA_Addon_TAL_BDT_13_Tal_13_02");//Nie mam poj�cia, po co mu to, ale nikt przy zdrowych zmys�ach nie b�dzie nadstawia� karku za par� kamyk�w...
};

///******************************************************************************************
/// News
///******************************************************************************************
instance DIA_Addon_TAL_BDT_13_News (C_Info)
{
	nr									=	4;
	condition							=	aTrue;
	information							=	DIA_Addon_TAL_BDT_13_News_Info;
	permanent							=	true;
	description							=	"Co nowego?";
};
func void DIA_Addon_TAL_BDT_13_News_Info()
{
	AI_Output (other, self, "DIA_Addon_TAL_BDT_13_News_15_00");//Co nowego?
	AI_Output (self, other, "DIA_Addon_TAL_BDT_13_News_13_01");//Poprztykali�my si� z piratami.
	AI_Output (self, other, "DIA_Addon_TAL_BDT_13_News_13_02");//Dostarczali nam wi�ni�w, ale nie dostali za to z�amanego miedziaka. Nic dziwnego, �e s� w�ciekli.
	
	if (!BDT_13_einmal)
	{
		AI_Output (self, other, "DIA_Addon_TAL_BDT_13_News_13_03");//Ale co mog� zrobi�? Zaatakowa� ob�z?
		BDT_13_einmal = true;
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_Addon_TAL_BDT_13 (var C_Npc slf)
{
	DIA_Addon_TAL_BDT_13_EXIT.npc		=	Hlp_GetinstanceID(slf);
	DIA_Addon_TAL_BDT_13_HI.npc			=	Hlp_GetinstanceID(slf);
	DIA_Addon_TAL_BDT_13_TAL.npc		=	Hlp_GetinstanceID(slf);
	DIA_Addon_TAL_BDT_13_NEWS.npc		=	Hlp_GetinstanceID(slf);
};
