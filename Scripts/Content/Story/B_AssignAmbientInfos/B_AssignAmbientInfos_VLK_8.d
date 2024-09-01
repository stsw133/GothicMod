///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_VLK_8_EXIT(C_Info)
{
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// JOIN
///******************************************************************************************
instance DIA_VLK_8_JOIN (C_Info)
{
	nr									=	4;
	condition							=	DIA_VLK_8_JOIN_Condition;
	information							=	DIA_VLK_8_JOIN_Info;
	permanent							=	true;
	description							=	"Chcia³bym zostaæ obywatelem tego miasta!";
};
func int DIA_VLK_8_JOIN_Condition()
{
	if (hero.guild == GIL_NONE)
	&& (Player_IsApprentice == APP_NONE)
	{
		return true;
	};
};
func void DIA_VLK_8_JOIN_Info()
{
	AI_Output (other, self, "DIA_VLK_8_JOIN_15_00"); //Chcia³bym zostaæ obywatelem tego miasta!
	AI_Output (self, other, "DIA_VLK_8_JOIN_08_01"); //Po co mi to mówisz? IdŸ do któregoœ z rzemieœlników w dolnej czêœci miasta. Jeœli dopisze ci szczêœcie, któryœ przyjmie ciê na czeladnika.
	AI_Output (self, other, "DIA_VLK_8_JOIN_08_02"); //W innym wypadku bêdziesz musia³ pójœæ do gubernatora i zostaæ zarejestrowany jako prawny obywatel.
	AI_Output (self, other, "DIA_VLK_8_JOIN_08_03"); //W chwili obecnej mo¿esz jednak o tym zapomnieæ. Dopóki w mieœcie stacjonuj¹ paladyni, dopóty gubernator nie ma w³adzy w mieœcie.
	AI_Output (self, other, "DIA_VLK_8_JOIN_08_04"); //Przywódca paladynów, Lord Hagen, z pewnoœci¹ nie ma czasu na takie drobnostki.
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_VLK_8_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	aTrue;
	information							=	DIA_VLK_8_PEOPLE_Info;
	permanent							=	true;
	description							=	"Którzy z obywateli miasta s¹ najwa¿niejsi?";
};
func void DIA_VLK_8_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_VLK_8_PEOPLE_15_00"); //Którzy z obywateli miasta s¹ najwa¿niejsi?
	AI_Output (self, other, "DIA_VLK_8_PEOPLE_08_01"); //Oprócz paladynów... Najwa¿niejsi s¹ rzemieœlnicy z dolnej czêœci miasta. Ich zdanie bardzo siê tu liczy.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_VLK_8_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	aTrue;
	information							=	DIA_VLK_8_LOCATION_Info;
	permanent							=	true;
	description							=	"Czy s¹ tutaj jakieœ interesuj¹ce rzeczy?";
};
func void DIA_VLK_8_LOCATION_Info()
{
	AI_Output (other, self, "DIA_VLK_8_LOCATION_15_00"); //Jakie ciekawe miejsca warto tu zobaczyæ?
	AI_Output (self, other, "DIA_VLK_8_LOCATION_08_01"); //Niedawno do portu wp³yn¹³ statek paladynów. Jest wielki. Koniecznie musisz go zobaczyæ.
	AI_Output (self, other, "DIA_VLK_8_LOCATION_08_02"); //W¹tpiê jednak, by chcieli ciê wpuœciæ na pok³ad. Paladyni broni¹ wstêpu na statek jak klejnotów koronnych.
	AI_Output (self, other, "DIA_VLK_8_LOCATION_08_03"); //Nic dziwnego. To jedyna p³ywaj¹ca jednostka zakotwiczona w okolicy.
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_VLK_8_STANDARD (C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_VLK_8_STANDARD_Info;
	permanent							=	true;
	description							=	"Co nowego?";
};
func void DIA_VLK_8_STANDARD_Info()
{
	AI_Output (other, self, "DIA_VLK_8_STANDARD_15_00"); //Co s³ychaæ?
	
	if (Kapitel == 1)
	{
		AI_Output (self, other, "DIA_Addon_VLK_8_STANDARD_08_00"); //Ostatnimi czasy wszyscy s¹ bardzo nerwowi.
		AI_Output (self, other, "DIA_Addon_VLK_8_STANDARD_08_01"); //Jakby ma³o by³o tego, ¿e przybyli tu paladyni - teraz jeszcze znikaj¹ ludzie!
		AI_Output (self, other, "DIA_Addon_VLK_8_STANDARD_08_02"); //Najwy¿sza pora, ¿eby stra¿ coœ z tym zrobi³a.
		
		if (!SC_HearedAboutMissingPeople)
		{
			Log_CreateTopic (TOPIC_Addon_WhoStolePeople, LOG_MISSION);
			Log_SetTopicStatus (TOPIC_Addon_WhoStolePeople, LOG_RUNNING);
			B_LogEntry (TOPIC_Addon_WhoStolePeople, LogText_Addon_SCKnowsMisspeapl);
		};
		SC_HearedAboutMissingPeople = true;
	};
	
	if (Kapitel == 8)
	{
		AI_Output (self, other, "DIA_VLK_8_STANDARD_08_01"); //Wszyscy czekaj¹ na og³oszenie powodu wizyty paladynów. Domyœlam siê, ¿e s¹ tu z powodu orków. Bestie pewnie wkrótce zaatakuj¹!
		AI_Output (self, other, "DIA_VLK_8_STANDARD_08_02"); //Mo¿e i paladynów prowadzi ³aska Innosa, lecz kiedy zjawi¹ siê orkowe hordy, wszyscy bêdziemy straceni.
	};
	if (Kapitel == 9)
	{
		AI_Output (self, other, "DIA_VLK_8_STANDARD_08_03"); //Ludzie powiadaj¹, ¿e jedynym powodem wizyty paladynów jest chêæ zabrania rudy... na potrzeby wojny na kontynencie.
		AI_Output (self, other, "DIA_VLK_8_STANDARD_08_04"); //Czy wiesz, co to oznacza? Król ma w g³êbokim powa¿aniu to, ¿e orkowie wszystkich nas pozabijaj¹.
		AI_Output (self, other, "DIA_VLK_8_STANDARD_08_05"); //Zrobiê wszystko, by byæ na tym statku, kiedy paladyni zaczn¹ podnosiæ kotwicê.
	};
	if (Kapitel == 10)
	{
		AI_Output (self, other, "DIA_VLK_8_STANDARD_08_06"); //Ponoæ orkowie lec¹ tutaj na grzbietach smoków, wielkich jak po³owa miasta. Nie mamy ¿adnych szans na obronê!
	};
	if (Kapitel >= 11)
	{
		AI_Output (self, other, "DIA_VLK_8_STANDARD_08_07"); //Ludzie mówi¹, ¿e smoki zosta³y pokonane. Czy to prawda?
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_VLK_8 (var C_Npc slf)
{
	DIA_VLK_8_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_VLK_8_JOIN.npc					=	Hlp_GetinstanceID(slf);
	DIA_VLK_8_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_VLK_8_LOCATION.npc				=	Hlp_GetinstanceID(slf);
	DIA_VLK_8_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
