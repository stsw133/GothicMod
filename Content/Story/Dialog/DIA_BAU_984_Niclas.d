
// ***********************************************************
// 							EXIT
// ***********************************************************
INSTANCE DIA_Niclas_EXIT   (C_INFO)
{
	npc         = BAU_984_Niclas;
	nr          = 999;
	condition   = DIA_Niclas_EXIT_Condition;
	information = DIA_Niclas_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Niclas_EXIT_Condition()
{
	return true;
};
FUNC VOID DIA_Niclas_EXIT_Info()
{
	AI_StopProcessInfos (self);
};						

// ***********************************************************
// 							Hello
// ***********************************************************
INSTANCE DIA_Niclas_Hello   (C_INFO)
{
	npc         = BAU_984_Niclas;
	nr          = 1;
	condition   = DIA_Niclas_Hello_Condition;
	information = DIA_Niclas_Hello_Info;
	permanent   = false;
	important   = true;
};
FUNC INT DIA_Niclas_Hello_Condition()
{
	return true;
};
FUNC VOID DIA_Niclas_Hello_Info()
{
	AI_Output (self ,other,"DIA_Niclas_Hello_03_00"); //Ty te� uciek�e�?
	AI_Output (other,self ,"DIA_Niclas_Hello_15_01"); //Dlaczego tak uwa�asz?
	AI_Output (self ,other,"DIA_Niclas_Hello_03_02"); //Inaczej po co by� tu przychodzi�? Przecie� tu nic si� nie dzieje.
};

// ***********************************************************
// 							Ich wollte mich nur mal umsehen.
// ***********************************************************
INSTANCE DIA_Niclas_HaveALook   (C_INFO)
{
	npc         = BAU_984_Niclas;
	nr          = 1;
	condition   = DIA_Niclas_HaveALook_Condition;
	information = DIA_Niclas_HaveALook_Info;
	permanent   = false;
	description = "Chc� si� tylko troch� rozejrze�.";
};
FUNC INT DIA_Niclas_HaveALook_Condition()
{
	return true;
};
FUNC VOID DIA_Niclas_HaveALook_Info()
{
	AI_Output (other,self ,"DIA_Niclas_HaveALook_15_00"); //Chc� si� tylko troch� rozejrze�.
	AI_Output (self ,other,"DIA_Niclas_HaveALook_03_01"); //Prosz� bardzo. Mo�e kawa�ek pieczystego?
	
	CreateInvItems (self,ItFoMutton,1);
	
	Info_ClearChoices (DIA_Niclas_HaveALook);
	Info_AddChoice (DIA_Niclas_HaveALook,"Nie, dzi�kuj�.",DIA_Niclas_HaveALook_No);
	Info_AddChoice (DIA_Niclas_HaveALook,"Ch�tnie.",DIA_Niclas_HaveALook_Yes);
};

FUNC VOID DIA_Niclas_HaveALook_No ()
{
	AI_Output (other,self ,"DIA_Niclas_HaveALook_No_15_00"); //Nie, dzi�kuj�.
	AI_Output (self ,other,"DIA_Niclas_HaveALook_No_03_01"); //Czuj si� jak u siebie. Mam nadzieje, �e nie b�dzie ci przeszkadza�, je�li co� zjem.
	
	B_UseItem (self ,ItFoMutton);
	
	Info_ClearChoices (DIA_Niclas_HaveALook);
};

FUNC VOID DIA_Niclas_HaveALook_Yes ()
{
	AI_Output (other,self ,"DIA_Niclas_HaveALook_Yes_15_00"); //Ch�tnie.
	AI_Output (self ,other,"DIA_Niclas_HaveALook_Yes_03_01"); //Prosz�, najprzedniejszy udziec kretoszczura. Wed�ug mojego w�asnego przepisu.
	
	B_GiveInvItems (self ,other,ItFOMutton,1);
	
	Info_ClearChoices (DIA_Niclas_HaveALook);
};

// ***********************************************************
// 					Wieso bist du denn hier?
// ***********************************************************
INSTANCE DIA_Niclas_WhyHere   (C_INFO)
{
	npc         = BAU_984_Niclas;
	nr          = 2;
	condition   = DIA_Niclas_WhyHere_Condition;
	information = DIA_Niclas_WhyHere_Info;
	permanent   = false;
	description = "Wi�c co tu w�a�ciwie robisz?";
};
FUNC INT DIA_Niclas_WhyHere_Condition()
{
	return true;
};
FUNC VOID DIA_Niclas_WhyHere_Info()
{
	AI_Output (other,self ,"DIA_Niclas_WhyHere_15_00"); //Wi�c co tu w�a�ciwie robisz?
	AI_Output (self ,other,"DIA_Niclas_WhyHere_03_01"); //Jedynie tutaj odnajduj� spok�j. W mie�cie czuj� si� zniewolony i zaszczuty.
};

// ***********************************************************
// 			Musst du nicht arbeiten?		
// ***********************************************************
INSTANCE DIA_Niclas_ShouldntWork   (C_INFO)
{
	npc         = BAU_984_Niclas;
	nr          = 2;
	condition   = DIA_Niclas_ShouldntWork_Condition;
	information = DIA_Niclas_ShouldntWork_Info;
	permanent   = false;
	description = "Nie musisz pracowa�?";
};
FUNC INT DIA_Niclas_ShouldntWork_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Niclas_WhyHere))
	{
		return true;
	};	
};
FUNC VOID DIA_Niclas_ShouldntWork_Info()
{
	AI_Output (other, self,"DIA_Niclas_ShouldntWork_15_00"); //Nie musisz pracowa�?
	AI_Output (self ,other,"DIA_Niclas_ShouldntWork_03_01"); //Wszystko, czego potrzebuj�, zdobywam sam. Robi� strza�y, a natura dostarcza mi po�ywienia.
	AI_Output (other, self,"DIA_Niclas_ShouldntWork_15_02"); //A wi�c jeste� my�liwym?
	AI_Output (self ,other,"DIA_Niclas_ShouldntWork_03_03"); //Mo�na tak to uj��. Zabijam jednak tylko po to, by mie� co je��, nie dla pieni�dzy.
};

// ***********************************************************
// 			Dann kannst du mir bestimmt was beibringen.
// ***********************************************************
INSTANCE DIA_Niclas_CanTeachMe   (C_INFO)
{
	npc         = BAU_984_Niclas;
	nr          = 2;
	condition   = DIA_Niclas_CanTeachMe_Condition;
	information = DIA_Niclas_CanTeachMe_Info;
	permanent   = false;
	description = "Mo�e m�g�by� mnie czego� nauczy�.";
};
FUNC INT DIA_Niclas_CanTeachMe_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Niclas_ShouldntWork))
	{
		return true;
	};	
};
FUNC VOID DIA_Niclas_CanTeachMe_Info()
{
	AI_Output (other,self ,"DIA_Niclas_CanTeachMe_15_00"); //Mo�e m�g�by� mnie czego� nauczy�.
	AI_Output (self ,other,"DIA_Niclas_CanTeachMe_03_01"); //W�a�ciwie, czemu nie. Mog� ci pokaza�, jak si� pos�ugiwa� �ukiem.
	self.aivar[AIV_CanTeach] = true;
	
	Log_CreateTopic	(TOPIC_Teacher, LOG_NOTE);
	B_LogEntry		(TOPIC_Teacher, "Niclas mo�e mi pokaza�, jak skuteczniej pos�ugiwa� si� �ukiem.");
};
