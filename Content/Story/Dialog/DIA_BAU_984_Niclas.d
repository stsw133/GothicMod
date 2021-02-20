
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
	AI_Output (self ,other,"DIA_Niclas_Hello_03_00"); //Ty te¿ uciek³eœ?
	AI_Output (other,self ,"DIA_Niclas_Hello_15_01"); //Dlaczego tak uwa¿asz?
	AI_Output (self ,other,"DIA_Niclas_Hello_03_02"); //Inaczej po co byœ tu przychodzi³? Przecie¿ tu nic siê nie dzieje.
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
	description = "Chcê siê tylko trochê rozejrzeæ.";
};
FUNC INT DIA_Niclas_HaveALook_Condition()
{
	return true;
};
FUNC VOID DIA_Niclas_HaveALook_Info()
{
	AI_Output (other,self ,"DIA_Niclas_HaveALook_15_00"); //Chcê siê tylko trochê rozejrzeæ.
	AI_Output (self ,other,"DIA_Niclas_HaveALook_03_01"); //Proszê bardzo. Mo¿e kawa³ek pieczystego?
	
	CreateInvItems (self,ItFoMutton,1);
	
	Info_ClearChoices (DIA_Niclas_HaveALook);
	Info_AddChoice (DIA_Niclas_HaveALook,"Nie, dziêkujê.",DIA_Niclas_HaveALook_No);
	Info_AddChoice (DIA_Niclas_HaveALook,"Chêtnie.",DIA_Niclas_HaveALook_Yes);
};

FUNC VOID DIA_Niclas_HaveALook_No ()
{
	AI_Output (other,self ,"DIA_Niclas_HaveALook_No_15_00"); //Nie, dziêkujê.
	AI_Output (self ,other,"DIA_Niclas_HaveALook_No_03_01"); //Czuj siê jak u siebie. Mam nadzieje, ¿e nie bêdzie ci przeszkadzaæ, jeœli coœ zjem.
	
	B_UseItem (self ,ItFoMutton);
	
	Info_ClearChoices (DIA_Niclas_HaveALook);
};

FUNC VOID DIA_Niclas_HaveALook_Yes ()
{
	AI_Output (other,self ,"DIA_Niclas_HaveALook_Yes_15_00"); //Chêtnie.
	AI_Output (self ,other,"DIA_Niclas_HaveALook_Yes_03_01"); //Proszê, najprzedniejszy udziec kretoszczura. Wed³ug mojego w³asnego przepisu.
	
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
	description = "Wiêc co tu w³aœciwie robisz?";
};
FUNC INT DIA_Niclas_WhyHere_Condition()
{
	return true;
};
FUNC VOID DIA_Niclas_WhyHere_Info()
{
	AI_Output (other,self ,"DIA_Niclas_WhyHere_15_00"); //Wiêc co tu w³aœciwie robisz?
	AI_Output (self ,other,"DIA_Niclas_WhyHere_03_01"); //Jedynie tutaj odnajdujê spokój. W mieœcie czujê siê zniewolony i zaszczuty.
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
	description = "Nie musisz pracowaæ?";
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
	AI_Output (other, self,"DIA_Niclas_ShouldntWork_15_00"); //Nie musisz pracowaæ?
	AI_Output (self ,other,"DIA_Niclas_ShouldntWork_03_01"); //Wszystko, czego potrzebujê, zdobywam sam. Robiê strza³y, a natura dostarcza mi po¿ywienia.
	AI_Output (other, self,"DIA_Niclas_ShouldntWork_15_02"); //A wiêc jesteœ myœliwym?
	AI_Output (self ,other,"DIA_Niclas_ShouldntWork_03_03"); //Mo¿na tak to uj¹æ. Zabijam jednak tylko po to, by mieæ co jeœæ, nie dla pieniêdzy.
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
	description = "Mo¿e móg³byœ mnie czegoœ nauczyæ.";
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
	AI_Output (other,self ,"DIA_Niclas_CanTeachMe_15_00"); //Mo¿e móg³byœ mnie czegoœ nauczyæ.
	AI_Output (self ,other,"DIA_Niclas_CanTeachMe_03_01"); //W³aœciwie, czemu nie. Mogê ci pokazaæ, jak siê pos³ugiwaæ ³ukiem.
	self.aivar[AIV_CanTeach] = true;
	
	Log_CreateTopic	(TOPIC_Teacher, LOG_NOTE);
	B_LogEntry		(TOPIC_Teacher, "Niclas mo¿e mi pokazaæ, jak skuteczniej pos³ugiwaæ siê ³ukiem.");
};
