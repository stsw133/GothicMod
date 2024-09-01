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
	AI_Output (self, other, "DIA_OCPAL_9_PEOPLE_09_01"); //Zamkiem dowodzi kapitan Garond. Choæ pewnie nie mo¿na mu zazdroœciæ tej posady.
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
	AI_Output (self, other, "DIA_OCPAL_9_LOCATION_09_01"); //W jej wschodniej czêœci orkowie wybudowali potê¿ny mur, chroni¹cy ich zapasy. Za nim znajduje siê dojœcie do przystani, przy której cumuj¹ swoje statki.
	AI_Output (self, other, "DIA_OCPAL_9_LOCATION_09_02"); //Mam nadziejê, ¿e zapasy nie dotr¹ do orków zbyt szybko. OBECNE problemy zupe³nie nam wystarczaj¹.
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
	AI_Output (other, self, "DIA_OCPAL_4_STANDARD_15_00"); //Jak siê maj¹ sprawy?
	
	if (Kapitel <= 9)
	{
		AI_Output (self, other, "DIA_OCPAL_4_STANDARD_09_01"); //Smoki zaatakowa³y ponownie! Jednak Innos ochroni nas w walce. Monstra Belaira zap³ac¹ za to wszystko w³asn¹ krwi¹!
	};
	if (Kapitel == 10)
	{
		if (MIS_KilledDragons < 4)
		{
			AI_Output (self, other, "DIA_OCPAL_4_STANDARD_09_02"); //£owcy smoków! Powinni byli przys³aæ tu paladynów!
		}
		else
		{
			AI_Output (self, other, "DIA_OCPAL_4_STANDARD_09_03"); //Teraz, kiedy nie ma ju¿ smoków, jedynym problemem pozostaj¹ orkowie!
		};
	};
	if (Kapitel >= 11)
	{
		if (!MIS_OCGateOpen)
		{
			AI_Output (self, other, "DIA_OCPAL_4_STANDARD_09_04"); //Musimy jak najszybciej za³adowaæ rudê na statki i uciekaæ z tej przeklêtej krainy.
		}
		else
		{
			AI_Output (self, other, "DIA_OCPAL_4_STANDARD_09_05"); //Zdrada! Brama nie powinna zostaæ otwarta. Œmieræ zdrajcom!
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
