///******************************************************************************************
///	Main_1
///******************************************************************************************
instance DIA_DragonTalk_Main_1 (C_Info)
{
	nr									=	10;
	condition							=	DIA_DragonTalk_Main_1_Condition;
	information							=	DIA_DragonTalk_Main_1_Info;
	permanent							=	false;
	description							=	"Co cię sprowadza do tego miejsca?";
};
func int DIA_DragonTalk_Main_1_Condition()
{
	if (MIS_KilledDragons == 0)
	{
		return true;
	};
};
func void DIA_DragonTalk_Main_1_Info()
{
	AI_Output (other, self, "DIA_DragonTalk_Main_1_15_00"); //Sługo ciemności! Co cię sprowadza do tego miejsca? Czy twoim jedynym celem jest sianie strachu i zniszczenia?
	AI_Output (self, other, "DIA_DragonTalk_Main_1_20_01"); //Prawdziwy cel naszego przybycia do tego świata nigdy nie zostanie ci wyjawiony, człowiecze.
	
	Info_AddChoice (DIA_DragonTalk_Main_1, "Jak mam zmusić do mówienia pozostałe smoki?", DIA_DragonTalk_Main_1_reden);
	Info_AddChoice (DIA_DragonTalk_Main_1, "Co muszę zrobić, aby ponownie cię wygnać?", DIA_DragonTalk_Main_1_verbannen);
	
	DragonTalk_Exit_Free = true;
};
///******************************************************************************************
func void DIA_DragonTalk_Main_1_verbannen()
{
	AI_Output (other, self, "DIA_DragonTalk_MAIN_1_verbannen_15_00"); //Na Innosa, co mam uczynić, by przegnać was precz z królestwa ludzi?
	AI_Output (self, other, "DIA_DragonTalk_MAIN_1_verbannen_20_01"); //By tego dokonać, musiałbyś najpierw zrozumieć znaczenie naszego spotkania.
	AI_Output (self, other, "DIA_DragonTalk_MAIN_1_verbannen_20_02"); //Ale żaden z nas nie wyjawi ci go z własnej woli.
	AI_Output (self, other, "DIA_DragonTalk_MAIN_1_verbannen_20_03"); //Tylko Oko mogłoby rozwiązać nasze języki i wyjawić ci nasz prawdziwy cel.
	AI_Output (self, other, "DIA_DragonTalk_MAIN_1_verbannen_20_04"); //W każdym razie, po swojej śmierci niewiele będziesz miał z tej wiedzy pożytku.
	
	if (hero.guild == GIL_DJG)
	{
		AI_Output (self, other, "DIA_DragonTalk_MAIN_1_verbannen_20_05"); //Doniesiono nam, że obrałeś drogę łowcy smoków.
		AI_Output (self, other, "DIA_DragonTalk_MAIN_1_verbannen_20_06"); //Dlatego wysłaliśmy do twojego świata nasz pomiot, by zapewnić przetrwanie naszej starożytnej dynastii.
		AI_Output (self, other, "DIA_DragonTalk_MAIN_1_verbannen_20_07"); //Przegrałeś tę wojnę, mały człowieczku.
		
		Log_CreateTopic (TOPIC_DRACHENEIER, LOG_MISSION);
		Log_SetTopicStatus (TOPIC_DRACHENEIER, LOG_RUNNING);
		B_LogEntry (TOPIC_DRACHENEIER, "Jeden z tych smoków mamrotał coś o 'potomkach' i utrzymaniu ciągłości jego rodu. Boję się, że te potwory rozpleniły się po całym cywilizowanym świecie.");
	}
	else
	{
		AI_Output (self, other, "DIA_DragonTalk_MAIN_1_verbannen_20_08"); //Oko pozwala ci rzucić mi wyzwanie, ale to w walce okaże się, czy jesteś mnie godzien.
	};
};
func void DIA_DragonTalk_Main_1_reden()
{
	AI_Output (other, self, "DIA_DragonTalk_MAIN_1_reden_15_00"); //Jak mam zmusić do mówienia pozostałe smoki?
	AI_Output (self, other, "DIA_DragonTalk_MAIN_1_reden_20_01"); //Tylko moje serce pozwoli ci odnowić moc Oka.
	AI_Output (self, other, "DIA_DragonTalk_MAIN_1_reden_20_02"); //Ale nigdy nie zdołasz wyrwać go z mojej piersi.
};
///******************************************************************************************
///	Main_2
///******************************************************************************************
instance DIA_DragonTalk_Main_2 (C_Info)
{
	nr									=	10;
	condition							=	DIA_DragonTalk_Main_2_Condition;
	information							=	DIA_DragonTalk_Main_2_Info;
	permanent							=	false;
	description							=	"Kto was tu przysłał?";
};
func int DIA_DragonTalk_Main_2_Condition()
{
	if (MIS_KilledDragons == 1)
	{
		return true;
	};
};
func void DIA_DragonTalk_Main_2_Info()
{
	AI_Output (other, self, "DIA_DragonTalk_Main_2_15_00"); //Kto wam rozkazuje? Kto was tu przysłał?
	AI_Output (self, other, "DIA_DragonTalk_Main_2_20_01"); //Naszymi czynami kieruje nasz Pan i jego Słowo Mocy. Wkrótce nikt nie zdoła oprzeć się jego woli.
	AI_Output (self, other, "DIA_DragonTalk_Main_2_20_02"); //Jego ramię sięga daleko poza Królestwo Umarłych. Duchy nocy gromadzą się wokół, oczekując jego nadejścia.
	AI_Output (self, other, "DIA_DragonTalk_Main_2_20_03"); //Wkrótce zostaniecie pokonani, a on zapanuje nad światem.
	AI_Output (self, other, "DIA_DragonTalk_Main_2_20_04"); //W porównaniu z nim, nawet my jesteśmy nic nie znaczącym pyłem.
	AI_Output (self, other, "DIA_DragonTalk_Main_2_20_05"); //Nasz Pan nadejdzie, by wskrzesić wasze ciała z popiołów i wykorzystać je do podporządkowania sobie tego świata.
	
	B_LogEntry (TOPIC_DRACHENJAGD, "Te smoki nie są samodzielnymi istotami. Służą jakiemuś panu, o którym nie chcą mówić - no, może poza bezwartościowymi przepowiedniami w stylu 'nasz pan przyjdzie i zniszczy świat, bla bla bla'. Nic nowego."); 
	
	DragonTalk_Exit_Free = true;
};
///******************************************************************************************
///	Main_3
///******************************************************************************************
instance DIA_DragonTalk_Main_3 (C_Info)
{
	nr									=	10;
	condition							=	DIA_DragonTalk_Main_3_Condition;
	information							=	DIA_DragonTalk_Main_3_Info;
	permanent							=	false;
	description							=	"Jak mogę pokonać twego pana?";
};
func int DIA_DragonTalk_Main_3_Condition()
{
	if (MIS_KilledDragons == 2)
	{
		return true;
	};
};
func void DIA_DragonTalk_Main_3_Info()
{
	AI_Output (other, self, "DIA_DragonTalk_Main_3_15_00"); //Jak mogę pokonać twego pana?
	AI_Output (self, other, "DIA_DragonTalk_Main_3_20_01"); //Mój Pan jest wszechpotężny i niemal niezwyciężony. Gdybyś okazał się wystarczająco głupi, by stawić mu czoła, czeka cię długa, powolna śmierć w okrutnych męczarniach.
	AI_Output (other, self, "DIA_DragonTalk_Main_3_15_02"); //Nie pierwszy raz słyszę coś takiego. NIEMAL niezwyciężony, a więc można go pokonać!
	AI_Output (other, self, "DIA_DragonTalk_Main_3_15_03"); //Mów więc! Co muszę uczynić?
	AI_Output (self, other, "DIA_DragonTalk_Main_3_20_04"); //Aby stawić mu czoła, musisz posiadać rzeczy, których on nigdy nie pozwoli ci zdobyć.
	AI_Output (other, self, "DIA_DragonTalk_Main_3_15_05"); //Co dokładnie?
	AI_Output (self, other, "DIA_DragonTalk_Main_3_20_06"); //Musisz posiąść najwspanialszą zbroję, jaką widział ten świat, i założyć ją do ostatniego starcia.
	
	if (other.guild == GIL_PAL || other.guild == GIL_MIL)
	{
		AI_Output (self, other, "DIA_Dragons_Add_20_01"); //Potrzebujesz miecza pobłogosławionego przez twojego boga.
	}
	else if (other.guild == GIL_KDF || other.guild == GIL_NOV)
	{
		AI_Output (self, other, "DIA_Dragons_Add_20_02"); //Potrzebujesz runy, która powstała specjalnie dla ciebie.
	}
	else
	{
		AI_Output (self, other, "DIA_Dragons_Add_20_00"); //Potrzebujesz oręża, który wykonano specjalnie dla ciebie.
	};
	
	AI_Output (self, other, "DIA_DragonTalk_Main_3_20_08"); //Ale najtrudniejszym do spełnienia warunkiem jest znalezienie pięciu towarzyszy gotowych pójść za tobą na pewną śmierć.
	AI_Output (self, other, "DIA_DragonTalk_Main_3_20_09"); //Dopiero wtedy możesz stawić czoła mojemu Panu.
	
	DragonTalk_Exit_Free = true;
};
///******************************************************************************************
///	KommMit
///******************************************************************************************
instance DIA_DragonTalk_Main_4 (C_Info)
{
	nr									=	10;
	condition							=	DIA_DragonTalk_Main_4_Condition;
	information							=	DIA_DragonTalk_Main_4_Info;
	permanent							=	false;
	description							=	"Gdzie znajdę twego pana?";
};
func int DIA_DragonTalk_Main_4_Condition()
{
	if (MIS_KilledDragons == 3)
	{
		return true;
	};
};
func void DIA_DragonTalk_Main_4_Info()
{
	AI_Output (other, self, "DIA_DragonTalk_Main_4_15_00"); //Gdzie znajdę twego pana?
	AI_Output (self, other, "DIA_DragonTalk_Main_4_20_01"); //Jego skarbiec znajduje się w kamiennym Dworze Irdorath. Tam go szukaj.
	AI_Output (self, other, "DIA_DragonTalk_Main_4_20_02"); //Póki nie uda mu się przywrócić właściwego porządku świata, będzie tam spoczywał, pogrążony w zadumie...
	AI_Output (other, self, "DIA_DragonTalk_Main_4_15_03"); //Daruj sobie szczegóły. Powiedz mi lepiej, gdzie się znajduje ten Dwór Irdorath.
	AI_Output (self, other, "DIA_DragonTalk_Main_4_20_04"); //Ha, ha, ha. Rozczarowałeś mnie, człowieczku. Przezwyciężyłeś tyle przeciwności i pokonałeś niemal wszystkich z nas, a teraz ośmieszasz się własną niewiedzą.
	AI_Output (self, other, "DIA_DragonTalk_Main_4_20_05"); //Jeśli nazwa Irdorath nic ci nie mówi, lepiej udaj się do swoich magów i poproś, by pozwolili ci sobie usługiwać.
	AI_Output (self, other, "DIA_DragonTalk_Main_4_20_06"); //Bo najwyraźniej nie jesteś jeszcze gotów, by dźwigać brzemię prawdziwej wiedzy.
	
	Log_CreateTopic		(TOPIC_BuchHallenVonIrdorath, LOG_MISSION);
	Log_SetTopicStatus	(TOPIC_BuchHallenVonIrdorath, LOG_RUNNING);
	B_LogEntry			(TOPIC_BuchHallenVonIrdorath, "Władca smoków skrył się podobno w potężnym i świętym Dworze Irdorath. To brzmi jakoś znajomo. Gdzie to ja mogłem o tym czytać?"); 
	B_NPC_IsAliveCheck	(OLDWORLD_ZEN);
	DragonTalk_Exit_Free = true;
};
///******************************************************************************************
func void B_AssignDragonTalk_Main (var C_Npc slf)
{
	DIA_DragonTalk_Main_1.npc				= Hlp_GetInstanceID(slf);
	DIA_DragonTalk_Main_2.npc				= Hlp_GetInstanceID(slf);
	DIA_DragonTalk_Main_3.npc				= Hlp_GetInstanceID(slf);
	DIA_DragonTalk_Main_4.npc				= Hlp_GetInstanceID(slf);	
};
///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_Dragon_Swamp_EXIT (C_Info)
{
	nr									=	999;
	condition							=	DIA_Dragon_Swamp_Exit_Condition;
	information							=	DIA_Dragon_Swamp_Exit_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func int DIA_Dragon_Swamp_Exit_Condition()
{
	if (DragonTalk_Exit_Free)
	{
		return true;
	};
};
func void DIA_Dragon_Swamp_Exit_Info()
{
	AI_Output (self, other, "DIA_Dragon_Swamp_Exit_20_00"); //Wyczerpała się moc Oka. Nadszedł twój kres, człowieku.
	
	Swampdragon = Hlp_GetNpc(dragon_swamp);
	Swampdragon.flags = 0;
	
	AI_StopProcessInfos(self);
	DragonTalk_Exit_Free = false;
	
	if (DJG_SwampParty_GoGoGo)
	{
		if (DJG_SwampParty)
		&& (!Npc_IsDead(DJG_Cipher))
		{
			B_StartOtherRoutine	(DJG_Rod, "SwampDragon");
		};
		B_StartOtherRoutine	(DJG_Cipher, "SwampDragon");
	};
	
	if (DJG_Biff_Stay)
	{
		B_StartOtherRoutine (Biff, "Follow");
		DJG_Biff_Stay = false;
	};
};
///******************************************************************************************
///	Hello
///******************************************************************************************
instance DIA_Dragon_Swamp_Hello (C_Info)
{
	nr									= 5;
	condition							= DIA_Dragon_Swamp_Hello_Condition;
	information							= DIA_Dragon_Swamp_Hello_Info;
	permanent							= false;
	important							= true;
};                       
func int DIA_Dragon_Swamp_Hello_Condition()
{
	if (Npc_HasItems(other, ItAm_InnosEye) >= 1)
	|| (Npc_HasItems(other, ItMw_1h_Special_05) >= 1)
	|| (Npc_HasItems(other, ItMw_2h_Special_05) >= 1)
	|| (Npc_HasItems(other, ItMw_1h_Ignite_05) >= 1)
	|| (Npc_HasItems(other, ItMw_2h_Ignite_05) >= 1)
	{
		return true;
	};	
};
func void DIA_Dragon_Swamp_Hello_Info()
{	
	AI_Output (self, other, "DIA_Dragon_Swamp_Hello_20_00"); //Biada ci, jeśli zbliżysz się jeszcze o krok!
	
	if (Mis_KilledDragons == 0)
	{
		AI_Output (other, self, "DIA_Dragon_Swamp_Hello_15_01"); //Ha. Oko Innosa najwyraźniej działa.
	};
	
	AI_Output (self, other, "DIA_Dragon_Swamp_Hello_20_02"); //Było tu przed tobą wielu takich jak ty. Żaden się nie ostał.
	AI_Output (other, self, "DIA_Dragon_Swamp_Hello_15_03"); //Oszczędzaj oddech. Twoje słowa mnie nie przestraszą, piekielny gadzie.
	AI_Output (other, self, "DIA_Dragon_Swamp_Hello_15_04"); //Odpowiesz na moje pytania albo utopię cię w twojej własnej krwi.
	AI_Output (self, other, "DIA_Dragon_Swamp_Hello_20_05"); //Ha, ha, ha. Śmiesz mi grozić, robaczku? Podaj choć jeden powód, dla którego nie miałbym cię od razu rozerwać na tysiąc strzępów.
	AI_Output (other, self, "DIA_Dragon_Swamp_Hello_15_06"); //Jestem wysłannikiem Innosa. Mam przy sobie święte Oko. Nie masz wyboru. Rób, co ci każę, albo spotka cię zasłużona kara.
	AI_Output (self, other, "DIA_Dragon_Swamp_Hello_20_07"); //Aargh. Mów! Czego ode mnie chcesz?
};
///******************************************************************************************
///	WERBISTDU
///******************************************************************************************
instance DIA_Dragon_Swamp_WERBISTDU (C_Info)
{
	nr									=	6;
	condition							=	DIA_Dragon_Swamp_WERBISTDU_Condition;
	information							=	DIA_Dragon_Swamp_WERBISTDU_Info;
	description							=	"Kim jesteś?";
};
func int DIA_Dragon_Swamp_WERBISTDU_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Dragon_Swamp_Hello))
	{
		return true;
	};
};
func void DIA_Dragon_Swamp_WERBISTDU_Info()
{
	AI_Output (other, self, "DIA_Dragon_Swamp_WERBISTDU_15_00"); //Kim jesteś?
	AI_Output (self, other, "DIA_Dragon_Swamp_WERBISTDU_20_01"); //Nazywam się Pandrodor. Dobrze ci radzę: uciekaj stąd, póki jeszcze możesz!
};
///******************************************************************************************
///	WOSINDDIEANDEREN
///******************************************************************************************
instance DIA_Dragon_Swamp_WOSINDDIEANDEREN (C_Info)
{
	nr									=	7;
	condition							=	DIA_Dragon_Swamp_WOSINDDIEANDEREN_Condition;
	information							=	DIA_Dragon_Swamp_WOSINDDIEANDEREN_Info;
	description							=	"Gdzie znajdę resztę twoich ohydnych pobratymców?";
};
func int DIA_Dragon_Swamp_WOSINDDIEANDEREN_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Dragon_Swamp_Hello))
	{
		return true;
	};
};
func void DIA_Dragon_Swamp_WOSINDDIEANDEREN_Info()
{
	AI_Output (other, self, "DIA_Dragon_Swamp_WOSINDDIEANDEREN_15_00"); //Gdzie znajdę resztę twoich ohydnych pobratymców?
	AI_Output (self, other, "DIA_Dragon_Swamp_WOSINDDIEANDEREN_20_01"); //Żywioły, od których wszystko pochodzi, utrzymują ten świat w harmonii.
	AI_Output (self, other, "DIA_Dragon_Swamp_WOSINDDIEANDEREN_20_02"); //Każdy z nich sprawuje władzę nad jedną częścią świata.
	AI_Output (self, other, "DIA_Dragon_Swamp_WOSINDDIEANDEREN_20_03"); //Szukaj żywiołów, a znajdziesz moich braci.
};
///******************************************************************************************
func void B_AssignDragonTalk_Swamp (var C_Npc slf)
{
	DIA_Dragon_Swamp_EXIT.npc				= Hlp_GetInstanceID(slf);
	DIA_Dragon_Swamp_Hello.npc				= Hlp_GetInstanceID(slf);
	DIA_Dragon_Swamp_WERBISTDU.npc			= Hlp_GetInstanceID(slf);
	DIA_Dragon_Swamp_WOSINDDIEANDEREN.npc	= Hlp_GetInstanceID(slf);
	B_AssignDragonTalk_Main(slf);
};
///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_Dragon_Rock_EXIT (C_Info)
{
	nr									=	999;
	condition							=	DIA_Dragon_Rock_Exit_Condition;
	information							=	DIA_Dragon_Rock_Exit_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func int DIA_Dragon_Rock_Exit_Condition()
{
	if (DragonTalk_Exit_Free)
	{
		return true;
	};
};
func void DIA_Dragon_Rock_Exit_Info()
{
	AI_Output (self, other, "DIA_Dragon_Rock_Exit_20_00"); //Dość gadania. Oko straciło swą ochronną moc. Przygotuj się na śmierć.
	AI_StopProcessInfos(self);
	DragonTalk_Exit_Free = false;
	self.flags = 0;
};
///******************************************************************************************
///	Hello
///******************************************************************************************
instance DIA_Dragon_Rock_Hello (C_Info)
{
	nr									=	1;
	condition							=	DIA_Dragon_Rock_Hello_Condition;
	information							=	DIA_Dragon_Rock_Hello_Info;
	permanent							=	false;
	important							=	true;
};
func int DIA_Dragon_Rock_Hello_Condition()
{
	if (Npc_HasItems(other, ItAm_InnosEye) >= 1)
	|| (Npc_HasItems(other, ItMw_1h_Special_05) >= 1)
	|| (Npc_HasItems(other, ItMw_2h_Special_05) >= 1)
	|| (Npc_HasItems(other, ItMw_1h_Ignite_05) >= 1)
	|| (Npc_HasItems(other, ItMw_2h_Ignite_05) >= 1)
	{
		return true;
	};	
};
func void DIA_Dragon_Rock_Hello_Info()
{
	AI_Output (self, other, "DIA_Dragon_Rock_Hello_20_00"); //Jeszcze jeden zadufany w sobie karzeł, który ośmielił się wspiąć na moją skałę... Ach, ludzie. Tacy waleczni... i tacy wątli.
	
	if (Mis_KilledDragons == 0)
	{
		AI_Output (other, self, "DIA_Dragon_Rock_Hello_15_01"); //Ej, ty mówisz!
	};
	
	AI_Output (self, other, "DIA_Dragon_Rock_Hello_20_02"); //Wypatroszę cię i rzucę twoje wnętrzności ścierwojadom.
	AI_Output (other, self, "DIA_Dragon_Rock_Add_15_00"); //Nie tak szybko! Mam tu Oko Innosa. Odpowiesz mi najpierw na moje pytania.
	AI_Output (self, other, "DIA_Dragon_Rock_Hello_20_04"); //Aaargh. Pytaj więc!
};
///******************************************************************************************
///	WERBISTDU
///******************************************************************************************
instance DIA_Dragon_Rock_WERBISTDU (C_Info)
{
	nr									=	6;
	condition							=	DIA_Dragon_Rock_WERBISTDU_Condition;
	information							=	DIA_Dragon_Rock_WERBISTDU_Info;
	description							=	"Kim jesteś?";
};
func int DIA_Dragon_Rock_WERBISTDU_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Dragon_Rock_Hello))
	{
		return true;
	};
};
func void DIA_Dragon_Rock_WERBISTDU_Info()
{
	AI_Output (other, self, "DIA_Dragon_Rock_WERBISTDU_15_00"); //Kim jesteś?
	AI_Output (self, other, "DIA_Dragon_Rock_WERBISTDU_20_01"); //Nazywam się Pedrakhan. Jak cię dopadnę, obedrę żywcem ze skóry!
};
///******************************************************************************************
///	HIERARCHIE
///******************************************************************************************
instance DIA_Dragon_Rock_HIERARCHIE (C_Info)
{
	nr									=	7;
	condition							=	DIA_Dragon_Rock_HIERARCHIE_Condition;
	information							=	DIA_Dragon_Rock_HIERARCHIE_Info;
	description							=	"Który z was, smoków, jest najpotężniejszy?";
};
func int DIA_Dragon_Rock_HIERARCHIE_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Dragon_Rock_Hello))
	{
		return true;
	};
};
func void DIA_Dragon_Rock_HIERARCHIE_Info()
{
	AI_Output (other, self, "DIA_Dragon_Rock_HIERARCHIE_15_00"); //Który z was, smoków, jest najpotężniejszy?
	AI_Output (self, other, "DIA_Dragon_Rock_HIERARCHIE_20_01"); //Czerpiemy naszą moc z żywiołów waszego świata. Ich hierarchia jest bardzo prosta.
	AI_Output (self, other, "DIA_Dragon_Rock_HIERARCHIE_20_02"); //Miękka ziemia obdarza życiem wszystkie istoty pod słońcem, ale otworzy się i pochłonie cię, jeśli zbliżysz się do niej za bardzo.
	AI_Output (self, other, "DIA_Dragon_Rock_HIERARCHIE_20_03"); //Skała, która prędzej pęknie, niż się podda, wznosi się dumnie ku niebu, by pogrzebać pod sobą nieostrożnych. A mimo to jest przecież najlepszą ochroną przed falą przypływu.
	AI_Output (self, other, "DIA_Dragon_Rock_HIERARCHIE_20_04"); //Iskra życia płonie w huczącym ogniu tego świata. A przecież ogień spala całe życie, pozostawiając po nim ledwie garstkę popiołu.
	AI_Output (self, other, "DIA_Dragon_Rock_HIERARCHIE_20_05"); //Wszystkie żywioły mają moc tworzenia i niszczenia. Ale tylko w wodzie, która stała się twarda jak skała, wszystko stanie się słupem soli, na którym życie jest niemożliwe.
};
///******************************************************************************************
func void B_AssignDragonTalk_Rock (var C_Npc slf)
{
	DIA_Dragon_Rock_EXIT.npc				= Hlp_GetInstanceID(slf);
	DIA_Dragon_Rock_Hello.npc				= Hlp_GetInstanceID(slf);
	DIA_Dragon_Rock_WERBISTDU.npc			= Hlp_GetInstanceID(slf);
	DIA_Dragon_Rock_HIERARCHIE.npc			= Hlp_GetInstanceID(slf);
	B_AssignDragonTalk_Main(slf);	
};
///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_Dragon_Fire_EXIT (C_Info)
{
	nr									= 999;
	condition							= DIA_Dragon_Fire_Exit_Condition;
	information							= DIA_Dragon_Fire_Exit_Info;
	permanent							= true;
	description							= DIALOG_END;
};
func int DIA_Dragon_Fire_Exit_Condition()
{
	if (DragonTalk_Exit_Free)
	{
		return true;
	};
};
func void DIA_Dragon_Fire_Exit_Info()
{
	AI_Output (self, other, "DIA_Dragon_Fire_Exit_20_00"); //Oko straciło swoją moc. Naciesz się ostatnimi chwilami życia.
	AI_StopProcessInfos(self);
	DragonTalk_Exit_Free = false;
	self.flags = 0;
	
	if (DJG_Biff_Stay)
	{
		B_StartOtherRoutine (Biff, "Follow");
		DJG_Biff_Stay = false;
	};
};
///******************************************************************************************
/// Hello
///******************************************************************************************
instance DIA_Dragon_Fire_Hello (C_Info)
{
	nr									=	1;
	condition							=	DIA_Dragon_Fire_Hello_Condition;
	information							=	DIA_Dragon_Fire_Hello_Info;
	permanent							=	false;
	important							=	true;
};
func int DIA_Dragon_Fire_Hello_Condition()
{
	if (Npc_HasItems(other, ItAm_InnosEye) >= 1)
	|| (Npc_HasItems(other, ItMw_1h_Special_05) >= 1)
	|| (Npc_HasItems(other, ItMw_2h_Special_05) >= 1)
	|| (Npc_HasItems(other, ItMw_1h_Ignite_05) >= 1)
	|| (Npc_HasItems(other, ItMw_2h_Ignite_05) >= 1)
	{
		return true;
	};
};
func void DIA_Dragon_Fire_Hello_Info()
{
	AI_Output (self, other, "DIA_Dragon_Fire_Hello_20_00"); //Trudno uwierzyć, że nadal znajdują się ludzie gotowi poświęcić własne życie, byle tylko zobaczyć prawdziwego smoka.
	
	if (Mis_KilledDragons == 0)
	{
		AI_Output (other, self, "DIA_Dragon_Fire_Hello_15_01"); //Jak na wielkiego, oślizłego jaszczura, jesteś strasznie wygadany.
	};
	
	AI_Output (other, self, "DIA_Dragon_Fire_Hello_15_02"); //Nie przyszedłem tu z wizytą towarzyską. Uprzejmości musimy chwilowo odłożyć na bok.
	AI_Output (self, other, "DIA_Dragon_Fire_Hello_20_03"); //Chyba nie chcesz mi powiedzieć, że zamierzasz rzucić mi wyzwanie?
	AI_Output (self, other, "DIA_Dragon_Fire_Hello_20_04"); //Ha, ha, ha! Skręcę ci kark, człowieczku!
	AI_Output (other, self, "DIA_Dragon_Fire_Hello_15_05"); //Nie tak szybko, przyjacielu. Mam ze sobą Oko Innosa! Nie masz wyboru - odpowiesz na moje pytania albo zdechniesz w męczarniach.
	AI_Output (self, other, "DIA_Dragon_Fire_Hello_20_06"); //Aaarh. Zatem pytaj, póki jeszcze możesz. Twoja władza nade mną wkrótce się skończy.
};
///******************************************************************************************
/// WerBistDu
///******************************************************************************************
instance DIA_Dragon_Fire_WerBistDu (C_Info)
{
	nr									=	5;
	condition							=	DIA_Dragon_Fire_WerBistDu_Condition;
	information							=	DIA_Dragon_Fire_WerBistDu_Info;
	description							=	"Kim jesteś?";
};
func int DIA_Dragon_Fire_WerBistDu_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Dragon_Fire_Hello))
	{
		return true;
	};
};
func void DIA_Dragon_Fire_WerBistDu_Info()
{
	AI_Output (other, self, "DIA_Dragon_Fire_WerBistDu_15_00"); //Kim jesteś?
	AI_Output (self, other, "DIA_Dragon_Fire_WerBistDu_20_01"); //Nazywam się Feomathar. To wszystko, czego się o mnie dowiesz.
	AI_Output (self, other, "DIA_Dragon_Fire_WerBistDu_20_02"); //Spalę cię na popiół, gdy tylko wyrwę się spod władzy Oka!
};
///******************************************************************************************
/// HORT
///******************************************************************************************
instance DIA_Dragon_Fire_HORT (C_Info)
{
	nr									=	5;
	condition							=	DIA_Dragon_Fire_HORT_Condition;
	information							=	DIA_Dragon_Fire_HORT_Info;
	description							=	"Gdzie jest twój skarb?";
};
func int DIA_Dragon_Fire_HORT_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Dragon_Fire_Hello))
	{
		return true;
	};
};
func void DIA_Dragon_Fire_HORT_Info()
{
	AI_Output (other, self, "DIA_Dragon_Fire_HORT_15_00"); //Każdy smok ma miejsce, w którym przechowuje swoje skarby. Gdzie jest twój skarb?
	AI_Output (self, other, "DIA_Dragon_Fire_HORT_20_01"); //W miejscu, do którego nigdy nie dotrzesz. Postaram się o to, gdy moc Oka osłabnie.
	AI_Output (self, other, "DIA_Dragon_Fire_HORT_20_02"); //Ukryłem swoje skarby wysoko na rozgrzanych skałach, gdzie nie dotrze żadna pozbawiona skrzydeł istota!
};
///******************************************************************************************
func void B_AssignDragonTalk_Fire (var C_Npc slf)
{
	DIA_Dragon_Fire_EXIT.npc				= Hlp_GetInstanceID(slf);
	DIA_Dragon_Fire_Hello.npc				= Hlp_GetInstanceID(slf);
	DIA_Dragon_Fire_WerBistDu.npc			= Hlp_GetInstanceID(slf);
	DIA_Dragon_Fire_HORT.npc				= Hlp_GetInstanceID(slf);
	B_AssignDragonTalk_Main(slf);
};
///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_Dragon_Ice_EXIT (C_Info)
{
	nr									=	999;
	condition							=	DIA_Dragon_Ice_Exit_Condition;
	information							=	DIA_Dragon_Ice_Exit_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func int DIA_Dragon_Ice_Exit_Condition()
{
	if (DragonTalk_Exit_Free)
	{
		return true;
	};
};
func void DIA_Dragon_Ice_Exit_Info()
{
	AI_Output (self, other, "DIA_Dragon_Ice_Exit_20_00"); //Władza Oka nade mną dobiegła końca. Twój czas na tym świecie również.
	AI_StopProcessInfos(self);
	DragonTalk_Exit_Free = false;
	self.flags = 0;
	
	if (DJG_Biff_Stay)
	{
		B_StartOtherRoutine (Biff, "Follow");
		DJG_Biff_Stay = false;
	};	
	
	Wld_InsertNpc (Draconian, "FP_ROAM_OW_ICEREGION_29_02");
	Wld_InsertNpc (Draconian, "FP_ROAM_OW_ICEREGION_30_01");
	Wld_InsertNpc (Draconian, "FP_ROAM_OW_BLOODFLY_05_01");
	Wld_InsertNpc (Draconian, "FP_ROAM_OW_BLOODFLY_05_01");
};
///******************************************************************************************
/// Hello
///******************************************************************************************
instance DIA_Dragon_Ice_Hello (C_Info)
{
	nr									=	1;
	condition							=	DIA_Dragon_Ice_Hello_Condition;
	information							=	DIA_Dragon_Ice_Hello_Info;
	permanent							=	false;
	important							=	true;
};
func int DIA_Dragon_Ice_Hello_Condition()
{
	if (Npc_HasItems(other, ItAm_InnosEye) >= 1)
	|| (Npc_HasItems(other, ItMw_1h_Special_05) >= 1)
	|| (Npc_HasItems(other, ItMw_2h_Special_05) >= 1)
	|| (Npc_HasItems(other, ItMw_1h_Ignite_05) >= 1)
	|| (Npc_HasItems(other, ItMw_2h_Ignite_05) >= 1)
	{
		return true;
	};
};
func void DIA_Dragon_Ice_Hello_Info()
{
	AI_Output (self, other, "DIA_Dragon_Ice_Hello_20_00"); //Dlaczego zakłócasz mój odpoczynek? Czy mam się zakopać jeszcze głębiej, byście mnie wreszcie zostawili w spokoju?
	
	if (Mis_KilledDragons == 0)
	{	
		AI_Output (other, self, "DIA_Dragon_Ice_Hello_15_01"); //Gadający smok. Chwała niech będzie Oku Innosa.
	};
	
	AI_Output (self, other, "DIA_Dragon_Ice_Hello_20_02"); //Zaprawdę, jesteście niezwykłymi istotami. Nieważne, ile razy przetoczy się przez was lodowaty wicher śmierci, zawsze znajdzie się jeden, który powstanie z popiołów, myśląc, że sądzone mu być bohaterem.
	AI_Output (self, other, "DIA_Dragon_Ice_Hello_20_03"); //Ale to się wkrótce zmieni. Osobiście dopilnuję, by tym razem żaden z was nie powstał.
	AI_Output (other, self, "DIA_Dragon_Ice_Hello_15_04"); //Milcz! Na moc świętego Oka, które powierzono w moje ręce, zaklinam cię: odpowiedz na moje pytania!
	AI_Output (self, other, "DIA_Dragon_Ice_Hello_20_05"); //Ha, ha, ha. Pytaj więc. Twoja wiedza i tak na nic ci się nie zda.
};
///******************************************************************************************
/// WERBISTDU
///******************************************************************************************
instance DIA_Dragon_Ice_WERBISTDU (C_Info)
{
	nr									=	5;
	condition							=	DIA_Dragon_Ice_WERBISTDU_Condition;
	information							=	DIA_Dragon_Ice_WERBISTDU_Info;
	description							=	"Kim jesteś?";
};
func int DIA_Dragon_Ice_WERBISTDU_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Dragon_Ice_Hello))
	{
		return true;
	};
};
func void DIA_Dragon_Ice_WERBISTDU_Info()
{
	AI_Output (other, self, "DIA_Dragon_Ice_WERBISTDU_15_00"); //Kim jesteś?
	AI_Output (self, other, "DIA_Dragon_Ice_WERBISTDU_20_01"); //Jestem Finkregh, pan lodu i śniegu, Strażnik Spotkania, i ten, który zakończy twój nędzny żywot.
};
///******************************************************************************************
/// BELIAR
///******************************************************************************************
instance DIA_Dragon_Ice_BELIAR (C_Info)
{
	nr									=	6;
	condition							=	DIA_Dragon_Ice_BELIAR_Condition;
	information							=	DIA_Dragon_Ice_BELIAR_Info;
	description							=	"Któremu bogu służysz?";
};
func int DIA_Dragon_Ice_BELIAR_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Dragon_Ice_Hello))
	{
		return true;
	};
};
func void DIA_Dragon_Ice_BELIAR_Info()
{
	AI_Output (other, self, "DIA_Dragon_Ice_BELIAR_15_00"); //Któremu bogu służysz?
	AI_Output (other, self, "DIA_Dragon_Ice_BELIAR_15_01"); //Jakież to przeklęte bóstwo pozwala, by tak odrażające istoty jak ty chodziły po naszym świecie?
	AI_Output (self, other, "DIA_Dragon_Ice_BELIAR_20_02"); //Próżno się trudzisz, próbując ogarnąć znaczenie naszego spotkania, mały bohaterze.
	AI_Output (self, other, "DIA_Dragon_Ice_BELIAR_20_03"); //Beliar nie tylko pozwolił na nasze przybycie. On KAZAŁ nam tutaj przybyć!
	AI_Output (self, other, "DIA_Dragon_Ice_BELIAR_20_04"); //Wsłuchani w jego święte słowa, nie spoczniemy, póki nie spełni się jego wola.
};
///******************************************************************************************
func void B_AssignDragonTalk_Ice (var C_Npc slf)
{
	DIA_Dragon_Ice_EXIT.npc				= Hlp_GetInstanceID(slf);
	DIA_Dragon_Ice_Hello.npc			= Hlp_GetInstanceID(slf);
	DIA_Dragon_Ice_WERBISTDU.npc		= Hlp_GetInstanceID(slf);
	DIA_Dragon_Ice_BELIAR.npc			= Hlp_GetInstanceID(slf);
	B_AssignDragonTalk_Main(slf);
};
///******************************************************************************************
/// BELIAR
///******************************************************************************************
instance DIA_Dragon_Fire_Island_EXIT (C_Info)
{
	npc									=	Dragon_Black;
	nr									=	999;
	condition							=	DIA_Dragon_Fire_Island_Exit_Condition;
	information							=	DIA_Dragon_Fire_Island_Exit_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func int DIA_Dragon_Fire_Island_Exit_Condition()
{
	if (DragonTalk_Exit_Free)
	{
		return true;
	};
};
func void DIA_Dragon_Fire_Island_Exit_Info()
{
	AI_StopProcessInfos(self);
	DragonTalk_Exit_Free = false;
	self.flags = 0;
};
///******************************************************************************************
/// Hello
///******************************************************************************************
instance DIA_Dragon_Fire_Island_Hello (C_Info)
{
	npc									=	Dragon_Black;
	nr									=	5;
	condition							=	DIA_Dragon_Fire_Island_Hello_Condition;
	information							=	DIA_Dragon_Fire_Island_Hello_Info;
	important							=	true;
};
func int DIA_Dragon_Fire_Island_Hello_Condition()
{
	if (Npc_HasItems(other, ItAm_InnosEye) >= 1)
	|| (Npc_HasItems(other, ItMw_1h_Special_05) >= 1)
	|| (Npc_HasItems(other, ItMw_2h_Special_05) >= 1)
	|| (Npc_HasItems(other, ItMw_1h_Ignite_05) >= 1)
	|| (Npc_HasItems(other, ItMw_2h_Ignite_05) >= 1)
	{
		return true;
	};
};
func void DIA_Dragon_Fire_Island_Hello_Info()
{
	AI_Output (self, other, "DIA_Dragon_Fire_Island_Hello_20_00"); //Zostań, człowieku. Moje zmysły podpowiadają mi, że to ty unicestwiłeś moich najbliższych.
	AI_Output (other, self, "DIA_Dragon_Fire_Island_Hello_15_01"); //Czyżby? Kogo nazywasz zabójcą, pomiocie piekieł?
	
	if (hero.guild == GIL_DJG)
	&& (DragonEggCounter >= 7)
	{
		AI_Output (self, other, "DIA_Dragon_Fire_Island_Hello_20_02"); //Nie wystarczy ci, że zniszczyłeś niemal całe nasze potomstwo?
	};
	
	AI_Output (self, other, "DIA_Dragon_Fire_Island_Hello_20_03"); //Masz na sumieniu mojego brata, Feomathara, i za to mi zapłacisz.
	
	if (hero.guild == GIL_DJG)
	&& (DragonEggCounter >= 7)
	{
		AI_Output (other, self, "DIA_Dragon_Fire_Island_Hello_15_04"); //Bez obaw. Resztę twoich pobratymców też dopadnę.
		AI_Output (self, other, "DIA_Dragon_Fire_Island_Hello_20_05"); //Arrrrh. Spalę cię na popiół i zrobię to z prawdziwą przyjemnością.
	};
	
	AI_Output (other, self, "DIA_Dragon_Fire_Island_Hello_15_06"); //Więc daruj sobie tę przemowę i przejdźmy od razu do rzeczy.
	AI_Output (self, other, "DIA_Dragon_Fire_Island_Hello_20_07"); //Daleko zaszedłeś, mały człowieczku, ale już nigdy nie opuścisz tych sal.
	AI_StopProcessInfos(self);
	
	B_LogEntry (TOPIC_HallenVonIrdorath, "Następny ognisty smok. Zaczynam ich mieć po dziurki w nosie. Jedyne, czego teraz chcę, to przedostać się przez rozpadlinę, którą widać za smokiem."); 
	
	DragonTalk_Exit_Free = false;
	self.flags = 0;
};
///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_Dragon_Undead_Exit (C_Info)
{
	npc									=	Dragon_Undead;
	nr									=	999;
	condition							=	DIA_Dragon_Undead_Exit_Condition;
	information							=	DIA_Dragon_Undead_Exit_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func int DIA_Dragon_Undead_Exit_Condition()
{
	if (DragonTalk_Exit_Free)
	{
		return true;
	};
};
func void DIA_Dragon_Undead_Exit_Info()
{
	AI_StopProcessInfos(self);
	DragonTalk_Exit_Free = false;
	self.flags = 0;
};
///******************************************************************************************
/// Hello
///******************************************************************************************
instance DIA_Dragon_Undead_Hello (C_Info)
{
	npc									=	Dragon_Undead;
	nr									=	5;
	condition							=	DIA_Dragon_Undead_Hello_Condition;
	information							=	DIA_Dragon_Undead_Hello_Info;
	important							=	true;
};
func int DIA_Dragon_Undead_Hello_Condition()
{
	if (Npc_HasItems(other, ItAm_InnosEye) >= 1)
	|| (Npc_HasItems(other, ItMw_1h_Special_05) >= 1)
	|| (Npc_HasItems(other, ItMw_2h_Special_05) >= 1)
	|| (Npc_HasItems(other, ItMw_1h_Ignite_05) >= 1)
	|| (Npc_HasItems(other, ItMw_2h_Ignite_05) >= 1)
	{
		return true;
	};	
};
func void DIA_Dragon_Undead_Hello_Info()
{
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_20_00"); //A więc udało ci się mnie odnaleźć. Bardzo długo czekałem na twoje przybycie.
	AI_Output (other, self, "DIA_Dragon_Undead_Hello_15_01"); //Nie rozśmieszaj mnie. Zaraz mi powiesz, że wszystko przebiega zgodnie z twoim planem.
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_20_02"); //Cóż ty możesz wiedzieć o moich zamiarach?
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_20_03"); //Czyż nie wysłałem Poszukiwaczy, by naprowadzili cię na mój ślad?
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_20_04"); //Czy nie pozostawiłem śladów mojego istnienia, tak wyraźnych, że trudno je było przeoczyć?
	
	if (hero.guild == GIL_DJG)
	&& (DragonEggCounter >= 7)
	{
		AI_Output (self, other, "DIA_Dragon_Undead_Hello_20_05"); //Czy nie dostałeś się tutaj dzięki zbroi wykonanej ze smoczych jaj?
	}
	else if (hero.guild == GIL_PAL)
	{
		AI_Output (self, other, "DIA_Dragon_Undead_Hello_20_06"); //Czy nawróceni paladyni nie byli wystarczającym powodem, byś poszukał sprawcy całego tego zamieszania?
	}
	else if (hero.guild == GIL_KDF)
	{
		AI_Output (self, other, "DIA_Dragon_Undead_Hello_20_07"); //Czy spotkanie z opętanymi nieszczęśnikami nie było wystarczającym powodem, byś poszukał sprawcy całego tego zamieszania?
	};
	
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_20_08"); //Choćbyś nie wiem jak próbował, nie możesz temu zaprzeczyć.
	AI_Output (self, other, "DIA_Addon_UndeadDragon_Add_20_01"); //Przeznaczenie tylko jednej sztuki nie zostało z góry określone!
	AI_Output (self, other, "DIA_Addon_UndeadDragon_Add_20_02"); //Zabiłeś jednego z moich sług. To on miał posługiwać się Szponem...
	AI_Output (self, other, "DIA_Addon_UndeadDragon_Add_20_03"); //Sądzę, że ty go teraz masz. I za to zginiesz!
	
	Info_AddChoice (DIA_Dragon_Undead_Hello, "Dość tego.", DIA_Dragon_Undead_Hello_attack);
	Info_AddChoice (DIA_Dragon_Undead_Hello, "Kto wysłał cię na tę wojnę przeciw rodzajowi ludzkiemu?", DIA_Dragon_Undead_Hello_Auftraggeber);
	Info_AddChoice (DIA_Dragon_Undead_Hello, "Dlaczego tu przybyłeś?", DIA_Dragon_Undead_Hello_warum);
	Info_AddChoice (DIA_Dragon_Undead_Hello, "Kim jesteś?", DIA_Dragon_Undead_Hello_wer);
	
	B_LogEntry (TOPIC_HallenVonIrdorath, "Przeciwnikiem jest smok-ożywieniec. Muszę go zabić, zanim będę mógł opuścić tę przeklętą wyspę."); 
};
///******************************************************************************************
func void DIA_Dragon_Undead_Hello_wer()
{
	AI_Output (other, self, "DIA_Dragon_Undead_Hello_wer_15_00"); //Kim jesteś?
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_wer_20_01"); //Nadal musisz o to pytać? Zastanów się, głupcze. Przecież wiesz, kim jestem.
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_wer_20_02"); //Nie mam imienia. Tak jak ty nie masz imienia.
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_wer_20_03"); //Mój stwórca obdarzył mnie boską mocą, tak jak twój bóg obdarzył mocą ciebie.
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_wer_20_04"); //Moim przeznaczeniem jest zniszczyć świat.
	
	if (hero.guild == GIL_MIL || hero.guild == GIL_PAL)
	{
		AI_Output (self, other, "DIA_Dragon_Undead_Hello_wer_20_05"); //Tak, jak twoje przeznaczenie wyznacza moralny kod paladynów.
	}
	else if (hero.guild == GIL_SLD || hero.guild == GIL_DJG)
	{
		AI_Output (self, other, "DIA_Dragon_Undead_Hello_wer_20_06"); //Tak, jak ty sam niesiesz śmierć, łowco smoków.
	}
	else if (hero.guild == GIL_KDF)
	{
		AI_Output (self, other, "DIA_Dragon_Undead_Hello_wer_20_07"); //Tak, jak twoim celem jest głoszenie wiary Innosa, Magu Ognia.
	};
	
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_wer_20_08"); //Czy nie czujesz więzi, która nas łączy? Tak! Już wiesz, kim jestem.
	AI_Output (other, self, "DIA_Dragon_Undead_Hello_wer_15_09"); //Nie... To niemożliwe! Xardas zawsze mówił...
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_wer_20_10"); //Xardas jest słaby. Nie stanowi dla mnie żadnego zagrożenia. Tylko ty jesteś godzien stawić mi czoła.
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_wer_20_11"); //Tak zostało zapisane. Pora, byś pogodził się ze swoim przeznaczeniem.
};
func void DIA_Dragon_Undead_Hello_warum()
{
	AI_Output (other, self, "DIA_Dragon_Undead_Hello_warum_15_00"); //Dlaczego tu przybyłeś?
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_warum_20_01"); //Powierzono mi mą moc, bym dzięki niej skąpał ten świat w morzu krwi.
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_warum_20_02"); //Nie spocznę, póki ostatnia forteca praworządności nie obróci się w pył.
};
func void DIA_Dragon_Undead_Hello_Auftraggeber()
{
	AI_Output (other, self, "DIA_Dragon_Undead_Hello_Auftraggeber_15_00"); //Kto wysłał cię na tę wojnę przeciw rodzajowi ludzkiemu?
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_Auftraggeber_20_01"); //Moim władcą jest Pan Ciemności. Znasz go. Słyszysz jego zew.
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_Auftraggeber_20_03"); //Moje armie powstaną wkrótce z jego imieniem na ustach, a świat spowije wieczny mrok.
};
func void DIA_Dragon_Undead_Hello_attack()
{
	AI_Output (other, self, "DIA_Dragon_Undead_Hello_attack_15_00"); //Dość tego. Wyślę cię z powrotem do piekła, z którego wypełzłeś, gadzie.
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_attack_20_01"); //Nie jesteś jeszcze gotów do walki ze mną. Jeszcze chwila, a mój cel zostanie osiągnięty.
	
	if (C_ScHasEquippedBeliarsWeapon())
	|| (C_ScHasReadiedBeliarsWeapon())
	|| (Npc_HasItems(hero, ItRu_EnergyBall))
	{
		AI_Output (self, other, "DIA_Addon_UndeadDragon_Add_20_04"); //Naprawdę sądzisz, że możesz mi zaszkodzić tym szponem?
	};
	
	AI_Output (self, other, "DIA_Dragon_Undead_Hello_attack_20_02"); //Twoje szczątki pozwolą mi wyzwolić wiatr śmierci, który wkrótce omiecie cały świat.
	AI_StopProcessInfos(self);
	DragonTalk_Exit_Free = false;
	self.flags = 0;
};
///******************************************************************************************
func void B_AssignDragonTalk (var C_Npc slf)
{
	if (slf.guild == GIL_DRAGON)
	{
		if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(SwampDragon))	{	B_AssignDragonTalk_Swamp(slf);	};
		if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(RockDragon))	{	B_AssignDragonTalk_Rock(slf);	};
		if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(FireDragon))	{	B_AssignDragonTalk_Fire(slf);	};
		if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(IceDragon))		{	B_AssignDragonTalk_Ice(slf);	};
	};
};
