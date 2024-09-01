///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_OCPAL_9_EXIT (C_Info)
{
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_OCPAL_9_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	aTrue;
	information							=	DIA_OCPAL_9_PEOPLE_Info;
	permanent							=	true;
	description							=	"Kto tu dowodzi?";
};
func void DIA_OCPAL_9_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_OCPAL_9_PEOPLE_15_00"); //Kto tu dowodzi?
	AI_Output (self, other, "DIA_OCPAL_9_PEOPLE_09_01"); //Zamkiem dowodzi kapitan Garond. Cho� pewnie nie mo�na mu zazdro�ci� tej posady.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_OCPAL_9_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	aTrue;
	information							=	DIA_OCPAL_9_LOCATION_Info;
	permanent							=	true;
	description							=	"Co wiesz o tej dolinie?";
};
func void DIA_OCPAL_9_LOCATION_Info()
{
	AI_Output (other, self, "DIA_OCPAL_9_LOCATION_15_00"); //Co wiesz o tej dolinie?
	AI_Output (self, other, "DIA_OCPAL_9_LOCATION_09_01"); //W jej wschodniej cz�ci orkowie wybudowali pot�ny mur, chroni�cy ich zapasy. Za nim znajduje si� doj�cie do przystani, przy kt�rej cumuj� swoje statki.
	AI_Output (self, other, "DIA_OCPAL_9_LOCATION_09_02"); //Mam nadziej�, �e zapasy nie dotr� do ork�w zbyt szybko. OBECNE problemy zupe�nie nam wystarczaj�.
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_OCPAL_9_STANDARD (C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_OCPAL_9_STANDARD_Info;
	permanent							=	true;
	description							=	"Jak leci?";
};
func void DIA_OCPAL_9_STANDARD_Info()
{
	AI_Output (other, self, "DIA_OCPAL_4_STANDARD_15_00"); //Jak si� maj� sprawy?
	
	if (Kapitel <= 9)
	{
		AI_Output (self, other, "DIA_OCPAL_4_STANDARD_09_01"); //Smoki zaatakowa�y ponownie! Jednak Innos ochroni nas w walce. Monstra Belaira zap�ac� za to wszystko w�asn� krwi�!
	};
	if (Kapitel == 10)
	{
		if (MIS_KilledDragons < 4)
		{
			AI_Output (self, other, "DIA_OCPAL_4_STANDARD_09_02"); //�owcy smok�w! Powinni byli przys�a� tu paladyn�w!
		}
		else
		{
			AI_Output (self, other, "DIA_OCPAL_4_STANDARD_09_03"); //Teraz, kiedy nie ma ju� smok�w, jedynym problemem pozostaj� orkowie!
		};
	};
	if (Kapitel >= 11)
	{
		if (!MIS_OCGateOpen)
		{
			AI_Output (self, other, "DIA_OCPAL_4_STANDARD_09_04"); //Musimy jak najszybciej za�adowa� rud� na statki i ucieka� z tej przekl�tej krainy.
		}
		else
		{
			AI_Output (self, other, "DIA_OCPAL_4_STANDARD_09_05"); //Zdrada! Brama nie powinna zosta� otwarta. �mier� zdrajcom!
		};
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_OCPAL_9 (var C_Npc slf)
{
	DIA_OCPAL_9_EXIT.npc				=	Hlp_GetinstanceID(slf);
	DIA_OCPAL_9_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_OCPAL_9_LOCATION.npc			=	Hlp_GetinstanceID(slf);
	DIA_OCPAL_9_STANDARD.npc			=	Hlp_GetinstanceID(slf);
};
