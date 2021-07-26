///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_NOV_3_EXIT (C_Info)
{
	nr									=	999;
	condition							=	aTrue;
	information							=	DIA_NOV_3_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void DIA_NOV_3_EXIT_Info()
{
	AI_StopProcessInfos(self);
};
///******************************************************************************************

var int Feger1_Permanent; 
var int Feger2_Permanent;

///******************************************************************************************
///	Fegen
///******************************************************************************************
instance DIA_NOV_3_Fegen (C_Info)
{
	nr			= 2;
	condition	= DIA_NOV_3_Fegen_Condition;
	information	= DIA_NOV_3_Fegen_Info;
	permanent	= TRUE;
	description = "Potrzebujê pomocy w sprz¹taniu sal nowicjuszy.";
};
func int DIA_NOV_3_Fegen_Condition()
{
	if (Kapitel == 7)
	&& (MIS_KlosterArbeit == LOG_RUNNING)
	&& (NOV_Helfer < 4)
	{
		return true;
	};
};
func void DIA_NOV_3_Fegen_Info()
{
	AI_Output (other, self, "DIA_NOV_3_Fegen_15_00"); //Potrzebujê pomocy w sprz¹taniu sal nowicjuszy.
	
	if (Hlp_GetInstanceID(Feger1) == Hlp_GetInstanceID(self))
	{
		if (NOV_Helfer < 1)
		&& (!Feger1_Permanent)
		{
			AI_Output (self, other, "DIA_NOV_3_Fegen_03_01"); //Czy¿by nikt nie zgodzi³ ci siê pomóc? Dobrze... Bêdê ci towarzyszy³ przy tym zajêciu, jeœli znajdziesz jeszcze przynajmniej jedn¹ osobê, która zgodzi siê na to samo.
			
			B_LogEntry (Topic_ParlanFegen, "Nowicjusz sprz¹taj¹cy piwnicê pomo¿e mi, jeœli zdo³am znaleŸæ innego chêtnego do pomocy w sprz¹taniu komnat.");
		}
		else if (NOV_Helfer >= 1)
		&& (!Feger1_Permanent)
		{
			AI_Output (self, other, "DIA_NOV_3_Fegen_03_02"); //Czy bêdê jedyn¹ osob¹ pomagaj¹c¹ ci w pracy?
			AI_Output (other, self, "DIA_NOV_3_Fegen_15_03"); //Nie, ju¿ ktoœ mi pomaga.
			AI_Output (self, other, "DIA_NOV_3_Fegen_03_04"); //A wiêc i ja do was do³¹czê.
			NOV_Helfer += 1;
			Feger1_Permanent = true;
			B_GivePlayerXP(50);
			
			AI_StopProcessInfos (self);
			Npc_ExchangeRoutine (self, "FEGEN");
			
			B_LogEntry (Topic_ParlanFegen, "Nowicjusz z piwnicy pomo¿e mi teraz posprz¹taæ komnaty.");
		}
		else if (Feger1_Permanent)
		{
			AI_Output (self, other, "DIA_NOV_3_Fegen_03_05"); //Bracie! Ju¿ przecie¿ ci pomagam, nie musisz mnie dalej nak³aniaæ.
		};
	};
	
	if (Hlp_GetInstanceID(Feger2) == Hlp_GetInstanceID(self))
	{
		if (!Feger2_Permanent)
		{
			AI_Output (self, other, "DIA_NOV_3_Fegen_03_08"); //Oczywiœcie, ¿e ci pomogê. My nowicjusze powinniœmy trzymaæ siê razem. Rêka rêkê myje, jeœli wiesz co mam na myœli.
			AI_Output (self, other, "DIA_NOV_3_Fegen_03_09"); //Potrzebujê jednak 50 sztuk z³ota, w koñcu muszê sp³aciæ Parlana.
			
			B_LogEntry (Topic_ParlanFegen, "Nowicjusz sprzed œwi¹tyni pomo¿e mi, jeœli dam mu 50 sztuk z³ota.");
			
			Info_ClearChoices	(DIA_NOV_3_Fegen);
			Info_AddChoice		(DIA_NOV_3_Fegen, "Mo¿e póŸniej...", DIA_NOV_3_Fegen_Nein);
			if (Npc_HasItems (other, ItMi_Gold) >= 50)
			{
				Info_AddChoice	(DIA_NOV_3_Fegen, "W porz¹dku, ju¿ p³acê.", DIA_NOV_3_Fegen_Ja);
			};
		}
		else
		{
			AI_Output (self, other, "DIA_NOV_3_Fegen_03_06"); //Przecie¿ obieca³em. Ty pomog³eœ mnie, ja pomogê tobie.
		};
	};
	
	if (Hlp_GetInstanceID(Feger1) != Hlp_GetInstanceID(self))
	&& (Hlp_GetInstanceID(Feger2) != Hlp_GetInstanceID(self))
	{
		AI_Output (self, other, "DIA_NOV_3_Fegen_03_07"); //Wykluczone - nie mam na to czasu. Poszukaj sobie kogoœ innego do pomocy.
	};
};
///******************************************************************************************
func void DIA_NOV_3_Fegen_Nein()
{
	AI_Output (other, self, "DIA_NOV_3_Fegen_Nein_15_00"); //Mo¿e innym razem, teraz nie staæ mnie na taki wydatek.
	Info_ClearChoices(DIA_NOV_3_Fegen);
};
func void DIA_NOV_3_Fegen_Ja()
{
	AI_Output (other, self, "DIA_NOV_3_Fegen_Ja_15_00"); //W porz¹dku, ju¿ p³acê.
	AI_Output (self, other, "DIA_NOV_3_Fegen_Ja_03_01"); //Biorê siê wiêc do pracy.
	
	B_GiveInvItems (other, self, ItMi_Gold, 50);
	NOV_Helfer += 1;
	B_GivePlayerXP(50);
	Feger2_Permanent = true;
	
	Info_ClearChoices	(DIA_NOV_3_Fegen);
	AI_StopProcessInfos	(self);
	Npc_ExchangeRoutine	(self, "FEGEN");
	
	B_LogEntry (Topic_ParlanFegen, "Nowicjusz sprzed œwi¹tyni pomo¿e mi teraz posprz¹taæ komnaty.");
};
///******************************************************************************************
///	Wurst
///******************************************************************************************
instance DIA_NOV_3_Wurst (C_Info)
{
	nr									=	3;
	condition							=	DIA_NOV_3_Wurst_Condition;
	information							=	DIA_NOV_3_Wurst_Info;
	permanent							=	true;
	description							=	"Chcesz spróbowaæ kie³basy?";
};
func int DIA_NOV_3_Wurst_Condition()
{
	if (Kapitel == 7)
	&& (MIS_GoraxEssen == LOG_RUNNING)
	&& (Npc_HasItems(self, ItFo_SchafsWurst) == 0)
	&& (Npc_HasItems(other, ItFo_SchafsWurst) >= 1)
	{
		return true;
	};
};
func void DIA_NOV_3_Wurst_Info()
{
	AI_Output (other, self, "DIA_NOV_3_Wurst_15_00"); //Mo¿e chcesz kie³basê?
	AI_Output (self, other, "DIA_NOV_3_Wurst_03_01"); //Jasne, czemu nie. Wygl¹da smakowicie.
	
	B_GiveInvItems (other, self, ItFo_SchafsWurst, 1);
	Wurst_Gegeben += 1;
	
	CreateInvItems (self, ITFO_Sausage, 1);
	B_UseItem (self, ITFO_Sausage);
	
	var string NovizeLeft; NovizeLeft = IntToString(13 - Wurst_Gegeben);
	var string NovizeText; NovizeText = ConcatStrings(NovizeLeft, PRINT_NovizenLeft);
	AI_PrintScreen (NovizeText, -1, YPOS_GOLDGIVEN, FONT_ScreenSmall, 2);
};
///******************************************************************************************
///	JOIN
///******************************************************************************************
instance DIA_NOV_3_JOIN (C_Info)
{
	nr									=	4;
	condition							=	DIA_NOV_3_JOIN_Condition;
	information							=	DIA_NOV_3_JOIN_Info;
	permanent							=	true;
	description							=	"Chcia³bym zostaæ magiem.";
};
func int DIA_NOV_3_JOIN_Condition()
{
	if (hero.guild == GIL_NOV)
	{
		return true;
	};
};
func void DIA_NOV_3_JOIN_Info()
{
	AI_Output (other, self, "DIA_NOV_3_JOIN_15_00"); //Chcia³bym zostaæ magiem.
	AI_Output (self, other, "DIA_NOV_3_JOIN_03_01"); //Wiêkszoœæ nowicjuszy tego pragnie, jednak niewielu z nich udaje siê zyskaæ tytu³ Wybrañca, i szansê przyjêcia do Krêgu Ognia.
	AI_Output (self, other, "DIA_NOV_3_JOIN_03_02"); //Najwy¿szym zaszczytem, jakiego mo¿esz dost¹piæ w naszym zakonie, jest tytu³ maga Krêgu Ognia.
	AI_Output (self, other, "DIA_NOV_3_JOIN_03_03"); //Bêdziesz musia³ ciê¿ko pracowaæ, by zas³u¿yæ na swoj¹ szansê.
};
///******************************************************************************************
///	PEOPLE
///******************************************************************************************
instance DIA_NOV_3_PEOPLE (C_Info)
{
	nr									=	5;
	condition							=	aTrue;
	information							=	DIA_NOV_3_PEOPLE_Info;
	permanent							=	true;
	description							=	"Kto jest przywódc¹ klasztoru?";
};
func void DIA_NOV_3_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_NOV_3_PEOPLE_15_00"); //Kto jest przywódc¹ klasztoru?
	AI_Output (self, other, "DIA_NOV_3_PEOPLE_03_01"); //My, nowicjusze, s³u¿ymy magom Krêgu Ognia. Oni zaœ podlegaj¹ decyzjom Najwy¿szej Rady, w sk³ad której wchodz¹ trzej najpotê¿niejsi magowie.
	AI_Output (self, other, "DIA_NOV_3_PEOPLE_03_02"); //Sprawami nowicjuszy zajmuje siê jednak Parlan. Prawie zawsze przesiaduje na dziedziñcu, nadzoruj¹c ich pracê.
};
///******************************************************************************************
///	LOCATION
///******************************************************************************************
instance DIA_NOV_3_LOCATION (C_Info)
{
	nr									=	6;
	condition							=	aTrue;
	information							=	DIA_NOV_3_LOCATION_Info;
	permanent							=	true;
	description							=	"Co mo¿esz mi powiedzieæ o tym klasztorze?";
};
func void DIA_NOV_3_LOCATION_Info()
{
	AI_Output (other, self, "DIA_NOV_3_LOCATION_15_00"); //Co mo¿esz mi powiedzieæ o tym klasztorze?
	AI_Output (self, other, "DIA_NOV_3_LOCATION_03_01"); //¯yjemy tu bardzo skromnie. Hodujemy owce i wytwarzamy wino.
	AI_Output (self, other, "DIA_NOV_3_LOCATION_03_02"); //Mamy te¿ bibliotekê, ale dostêp do niej posiadaj¹ jedynie magowie i wybrani nowicjusze.
	AI_Output (self, other, "DIA_NOV_3_LOCATION_03_03"); //My, nowicjusze, dbamy o to, by niczego nie zabrak³o magom Krêgu Ognia.
};
///******************************************************************************************
///	STANDARD
///******************************************************************************************
instance DIA_NOV_3_STANDARD (C_INFO)
{
	nr									=	10;
	condition							=	aTrue;
	information							=	DIA_NOV_3_STANDARD_Info;
	permanent							=	true;
	description							=	"Co nowego?";
};
func void DIA_NOV_3_STANDARD_Info()
{
	AI_Output (other, self, "DIA_NOV_3_STANDARD_15_00"); //Co s³ychaæ?
	
	if (Kapitel == 7)
	{
		if (hero.guild == GIL_KDF)
		{
			AI_Output (self, other, "DIA_NOV_3_STANDARD_03_01"); //Dobre pytanie! Nowicjusze rozmawiaj¹ tylko o tobie.
			AI_Output (self, other, "DIA_NOV_3_STANDARD_03_02"); //Naprawdê rzadko siê zdarza, aby ktoœ obcy zosta³ tak szybko przyjêty do Krêgu Ognia.
		}
		else
		{
			AI_Output (self, other, "DIA_NOV_3_STANDARD_03_03"); //Nadszed³ czas. Wkrótce któryœ z nowicjuszy zostanie przyjêty do Krêgu Ognia.
			AI_Output (self, other, "DIA_NOV_3_STANDARD_03_04"); //Wkrótce rozpoczn¹ siê próby.
		};
	};
	
	if (Kapitel == 8)
	|| (Kapitel == 9)
	{
		if (Pedro_Traitor)
		&& (MIS_NovizenChase != LOG_SUCCESS)
		{
	 		AI_Output (self, other, "DIA_NOV_3_STANDARD_03_05"); //Beliar zdo³a³ przenikn¹æ do naszego klasztoru! Jego potêga roœnie, skoro nawet tutaj ma ju¿ swoich sojuszników...
			AI_Output (self, other, "DIA_NOV_3_STANDARD_03_06"); //Pedro s³u¿y³ w zakonie przez lata. Obawiam siê jednak, ¿e spêdzi³ poza tymi murami zbyt wiele czasu, to zaœ os³abi³o jego wiarê i uczyni³o podatnym na wp³ywy Beliara.
		}
		else if (MIS_NovizenChase == LOG_SUCCESS)
		{
			AI_Output (self, other, "DIA_NOV_3_STANDARD_03_07"); //Przybywasz we w³aœciwym czasie. Chyba sam Innos ciê tu przys³a³.
			AI_Output (self, other, "DIA_NOV_3_STANDARD_03_08"); //Tajemnice zakonu poznasz ju¿ jako obroñca Oka.
		}
		else
		{
			if (MIS_OLDWORLD == LOG_SUCCESS)
			{
				AI_Output (self, other, "DIA_NOV_3_STANDARD_03_09"); //Z Górniczej Doliny docieraj¹ do nas niepokoj¹ce wieœci. Innos wystawia nas na ciê¿k¹ próbê.
			}
			else
			{
				AI_Output (self, other, "DIA_NOV_3_STANDARD_03_10"); //Paladyni, którzy wyruszyli w kierunku Górniczej Doliny, nie daj¹ znaku ¿ycia. Jedynie Najwy¿sza Rada wie, co nale¿y robiæ.
			};
		};
	};
	
	if (Kapitel == 10)
	{
		AI_Output (self, other, "DIA_NOV_3_STANDARD_03_11"); //Zniszczymy smoki z pomoc¹ naszego Pana! Jedynie gniew Innosa jest w stanie przeciwstawiæ siê bestiom Beliara.
	};
	
	if (Kapitel >= 11)
	{
		AI_Output (self, other, "DIA_NOV_3_STANDARD_03_12"); //Chwa³a Innosowi, ¿e nie dopuœci³ do nastêpnego konfliktu. Jedynie powrót na œcie¿kê naszego Pana da nam si³ê do przeciwstawienia siê Z³u.
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_NOV_3 (var C_Npc slf)
{
	DIA_NOV_3_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_NOV_3_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_NOV_3_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_NOV_3_LOCATION.npc				= Hlp_GetInstanceID(slf);
	DIA_NOV_3_STANDARD.npc				= Hlp_GetInstanceID(slf);
	DIA_NOV_3_Fegen.npc					= Hlp_GetInstanceID(slf);
	DIA_NOV_3_Wurst.npc					= Hlp_GetInstanceID(slf);
};
