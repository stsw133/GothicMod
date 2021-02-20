///******************************************************************************************
instance ItWr_Kraeuterliste (ItemPR_Mission)
{
	name 			=	"Lista";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_Kraeuterliste;
	scemeName		=	"MAP";
	description		= 	"Lista zi� Constantina";
};
func void Use_Kraeuterliste()
{   
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Zio�a alchemiczne:");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Ro�lina lecznicza");
				Doc_PrintLine	(nDocID,  0, "Ziele lecznicze");
				Doc_PrintLine	(nDocID,  0, "Korze� leczniczy");
				Doc_PrintLine	(nDocID,  0, "Ognista pokrzywa");
				Doc_PrintLine	(nDocID,  0, "Ogniste ziele");
				Doc_PrintLine	(nDocID,  0, "Ognisty korze�");
				Doc_PrintLine	(nDocID,  0, "Goblinie jagody");
				Doc_PrintLine	(nDocID,  0, "Smoczy korze�");
				Doc_PrintLine	(nDocID,  0, "Z�bate ziele");
				Doc_PrintLine	(nDocID,  0, "Rdest polny");
				Doc_PrintLine	(nDocID,  0, "Szczaw kr�lewski");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Niech ro�liny zbiera dla ciebie kandydat na ucznia - przekonasz si�, czy si� do czego� nadaje. ");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Z powa�aniem, Zuris.");
				Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_HalvorMessage	(ItemPR_Mission)
{
	name 			=	"�mierdz�ca notatka";
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   UseHalvorMessage;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[2]			=   "W rybie by�a schowana ta notatka.";
};
func void UseHalvorMessage()
{   
	Knows_Halvor = true;
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage		(nDocID,  0, "letters.TGA", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "    Nie wychylajcie si�! ");
				Doc_PrintLine	(nDocID,  0, "    Stra� zaczyna co� podejrzewa�.");
				Doc_PrintLine	(nDocID,  0, "    Nic nie r�bcie, dop�ki zn�w si� nie odezw�!");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "     Halvor");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_BanditLetter_MIS (ItemPR_Mission)
{
	name 			=	"Wiadomo��";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   UseBanditLetter;
	scemeName		=	"MAP";
	
	description		=	name;
};
func void UseBanditLetter()
{   
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage		(nDocID,  0, "letters.TGA", false);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Zatrzymujcie wszystkich, kt�rzy");
				Doc_PrintLine	(nDocID,  0, "przyjd� od strony g�r.");
				Doc_PrintLine	(nDocID,  0, "Je�li kto� przekroczy prze��cz,");
				Doc_PrintLine	(nDocID,  0, "b�dzie to prawdopodobnie pewien");
				Doc_PrintLine	(nDocID,  0, "starzec. Nie dajcie si�");
				Doc_PrintLine	(nDocID,  0, "zwie�� - to niebezpieczny mag.");
				Doc_PrintLine	(nDocID,  0, "Miejcie na niego oko.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Mo�e si� z nim skontaktowa� cz�owiek,");
				Doc_PrintLine	(nDocID,  0, "kt�rego szukamy.");
				Doc_PrintLine	(nDocID,  0, "Wraz z tym listem otrzymujecie");
				Doc_PrintLine	(nDocID,  0, "30 sztuk z�ota.");
				Doc_PrintLine	(nDocID,  0, "Kolejne 30 otrzyma osoba,");
				Doc_PrintLine	(nDocID,  0, "kt�ra go zabije.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "G�ow� przynie�cie do starej kopalni.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, ".....D.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
				Doc_Show		(nDocID);
}; 
///******************************************************************************************
instance ItWr_Poster_MIS (ItemPR_Mission)
{
	name 			=	"List go�czy";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   UsePoster;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[3]			=	"Moja podobizna!";
};
FUNC VOID UsePoster()
{
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID, 1);
				Doc_SetPage		(nDocID, 0, "Gesucht.TGA", false);
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Schuldenbuch (ItemPR_Mission)
{	
	name 			=	"Ksi�ga D�ug�w";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Book_02_05.3ds";
	scemeName		=	"MAP";
	on_state[0]		=	UseSchuldBuch;
	description		= 	"Ksi�ga D�ug�w Lehmara";
};
FUNC VOID UseSchuldBuch()
{   
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Brown_R.tga", false);
				
 				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
 				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Umowy i d�ugi");
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ja, Mistrz Thorben, stolarz z Khorinis, jestem winien sz.p. Lehmarowi 200 monet.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "             Thorben");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ja, Coragon, w�a�ciciel gospody w Khorinis, jestem winien sz.p. Lehmarowi 150 monet.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "             Coragon");
				Doc_PrintLine	(nDocID,  0, "");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				//Doc_SetFont 	(nDocID,  1, FONT_BookHeadline);
				//Doc_PrintLine	(nDocID,  1, "");
				//Doc_PrintLines(nDocID,  1, "StandardBuch Seite 2");
				Doc_SetFont 	(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ja, Hanna, w�a�cicielka gospody w Khorinis, jestem winna sz.p. Lehmarowi 250 monet.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "               Hanna");
				Doc_PrintLines	(nDocID,  1, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Bloody_MIS (ItemPR_Mission)
{
	name 			=	"Notatka";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   UseBloodMIS;
	scemeName		=	"MAPSEALED";
	
	description		= 	"Trucizna krwiopijc�w";
};
func void UseBloodMIS()
{
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "��d�o krwiopijcy zawiera �mierteln� trucizn�, na kt�r� trzeba bardzo uwa�a�.");
				Doc_PrintLines	(nDocID,  0, "Dlatego podczas usuwania ��d�a nale�y przestrzega� nast�puj�cej zasady:");
				Doc_PrintLines	(nDocID,  0, "��d�o rozcinamy od ko�ca a� do samej podstawy.");
				Doc_PrintLines	(nDocID,  0, "Usuwamy sk�r�, a nast�pnie nacinamy tkank� otaczaj�c� gruczo�.");
				Doc_PrintLines	(nDocID,  0, "Zawiera ona substancj� o w�a�ciwo�ciach leczniczych.");
				Doc_PrintLines	(nDocID,  0, "Jednak ludzki organizm po jakim� czasie uodparnia si� na jej dzia�anie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Damarok");
				Doc_Show		(nDocID);
	
	if (Knows_Bloodfly == false)
	{
		Knows_Bloodfly = true;
		Log_CreateTopic (Topic_Bonus, LOG_NOTE);
		B_LogEntry (Topic_Bonus, "Teraz wiem, jak uzyska� substancj� lecznicz� z ��de� krwiopijc�w.");
		B_GivePlayerXP(XP_BONUS_1);
	};
};
///******************************************************************************************
instance ItWr_Pfandbrief_MIS (ItemPR_Mission)
{
	name 			=	"Weksel";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   UsePfandbrief;
	scemeName		=	"MAP";
	description		=	name;
};
func void UsePfandbrief()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "D�ug mo�e zosta� sp�acony poprzez");
				Doc_PrintLine	(nDocID,  0, "przej�cie zastawionego przedmiotu, kt�rego");
				Doc_PrintLine	(nDocID,  0, "warto�� r�wna jest warto�ci d�ugu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Zastawiono: ozdobny z�oty kielich");
				Doc_PrintLines	(nDocID,  0, "z kolekcji Krwawych Kielich�w");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "podpisano");
				Doc_PrintLine	(nDocID,  0, "Lutero, kupiec");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Lehmar, lichwiarz");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Map_OldWorld_Oremines_MIS (ItemPR_Mission)
{
	name 			=	"Mapa kopalni Garonda";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Map_01.3DS";
	scemeName		=	"MAP";
	on_state[0]		=	Use_Map_OldWorld_Oremines;
	description		=	name;
};
func void Use_Map_OldWorld_Oremines()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_OldWorld_Oremines_MIS);
	};
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage 		(Document, 0, "Map_OldWorld_Oremines.tga", true);
				Doc_SetLevel		(Document, "OldWorld\OldWorld.zen");
				Doc_SetLevelCoords	(Document, -78500, 47500, 54000, -53000);
				Doc_Show			(Document);
};
///******************************************************************************************
instance ItWr_ManaRezept (ItemPR_Mission)
{
	name 			=	"Receptura";
	visual 			=	"ItWr_Scroll_01.3DS";
	description		= 	"Receptura Neorasa";
};
instance ItWr_Passierschein	(ItemPR_Mission)
{
	name 			=	"Przepustka";
	visual 			=	"ItWr_Scroll_01.3DS";
	description		=	name;
	TEXT[3]			=	"Dzi�ki tym dokumentom nie";
	TEXT[4]			=   "zatrzymaj� mnie stra�nicy miejscy.";
};
instance ItWr_VatrasMessage	(ItemPR_Mission)
{
	name 			=	"Zapiecz�towana wiadomo��";
	visual 			=	"ItWr_Scroll_02.3DS";
	description		=	name;
	TEXT[2]			=   "Wiadomo�� od Vatrasa";
	TEXT[3]			=   "do Mag�w Ognia.";
};
instance ItWr_Passage_MIS (ItemPR_Mission)
{
	name 			=	"Propozycja Lee dla paladyn�w";
	visual 			=	"ItWr_Scroll_01.3DS";
	description		=	name;
	TEXT[3]			=	"Dzi�ki tej wiadomo�ci by� mo�e uda";
	TEXT[4]			=   "mi si� porozmawia� z Lordem Hagenem.";
};
instance ItWr_ForgedShipLetter_MIS (ItemPR_Mission)
{
	name 			=	"Akt okr�towy";
	visual 			=	"ItWr_Scroll_02.3DS";
	description		=	name;
	TEXT[2]			=	"Upowa�nienie";
	TEXT[3]			=   "do korzystania z okr�tu paladyn�w.";
};
instance ItWr_Canthars_KomproBrief_MIS (ItemPR_Mission)
{
	name 			=	"List";
	visual 			=	"ItWr_Scroll_01.3DS";
	description		= 	"List Canthara do Sary";
};
instance ItWr_PaladinLetter_MIS (ItemPR_Mission)
{
	name 			=	"List";
	visual 			=	"ItWr_Scroll_02.3DS";
	description		=	"List Garonda do Hagena";
};
instance ItWr_LetterForGorn_MIS (ItemPR_Mission)
{
	name 			=	"List";
	visual 			=	"ItWr_Scroll_01.3DS";
	description		=	"List Miltena do Gorna";
};
instance ItWr_PermissionToWearInnosEye_MIS (ItemPR_Mission)
{
	name 			=	"List polecaj�cy";
	visual 			=	"ItWr_Scroll_01.3DS";
	description		=	"List polecaj�cy dla Pyrokara";
};
instance ItWr_DiegosLetter_MIS (ItemPR_Mission)
{
	name 			=	"List";
	visual 			=	"ItWr_Scroll_01.3DS";
	description		=	"List Diega do Gerbrandta";
};
///******************************************************************************************
instance ItWr_XardasBookForPyrokar_Mis (ItemPR_Mission)
{
	name 			=	"Dw�r Irdorath";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Book_02_05.3ds";
	scemeName		=	"MAP";
	on_state[0]		=	Use_XardasBookForPyrokar;
	description		=	name;
};
FUNC VOID Use_XardasBookForPyrokar()
{  
	Print(PRINT_IrdorathBookDoesntOpen);
	Wld_PlayEffect ("spellFX_Fear", self, self, 0, 0, 0, false);
	Snd_Play("MFX_FEAR_CAST");
};
///******************************************************************************************
instance ItWr_CorneliusTagebuch_Mis (ItemPR_Mission) 
{
	name 			=	"Dziennik";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Book_01.3ds";
	scemeName		=	"MAP";
	on_state[0]		=	UseCorneliusTagebuch;
	
	description		=	name;
	TEXT[0]			=	"Dziennik Corneliusa.";
};
FUNC VOID UseCorneliusTagebuch()
{
	Cornelius_IsLiar = true;
	B_LogEntry (TOPIC_RESCUEBENNET, "Das Tagebuch ist der Beweis, den ich brauche um Bennet zu entlasten.");	
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				
 				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Je�li Larius nadal b�dzie post�powa� w ten spos�b, nic tu po mnie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ostatniej nocy spotka�o mnie co� dziwnego. Jeden z tych m�czyzn w czarnych kapturach z�o�y� mi wizyt�. Podobno s� oni s�ugami z�a, jednak m�j go�� mia� w sobie co�, co budzi�o zaufanie. Niemal czu�em bij�c� od niego moc, cho� kiedy przem�wi�, jego g�os by� spokojny.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zaoferowa� mi 20.000 sztuk z�ota, je�li doprowadz� do skazania jednego z najemnik�w. Powiedzia�, �e nied�ugo zrozumiem, co mia� na my�li.");
				Doc_PrintLines	(nDocID,  1, "Oczywi�cie zgodzi�em si� od razu, ci najemnicy i tak nie zas�uguj� na nic lepszego. Gdyby nie oni, moje �ycie by�oby du�o �atwiejsze. A z�oto zapewni mi dobrobyt a� do ko�ca mych dni.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Sta�o si� - aresztowali jednego z najemnik�w. Zamierzam dotrzyma� danego s�owa.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ITWR_DementorObsessionBook_MIS (ItemPR_Mission)
{
	name 			=	"Almanach Op�tanych";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Book_02_05.3ds";
	scemeName		=	"MAP";
	on_state[0]		=	Use_DementorObsessionBook;
	description		=	name;
};
FUNC VOID Use_DementorObsessionBook()
{
	Wld_PlayEffect ("spellFX_Fear", hero, hero, 0, 0, 0, false);
	Snd_Play ("MFX_FEAR_CAST");
	SC_ObsessionCounter = 100;
	B_SCIsObsessed(hero);
	
	if (hero.guild == GIL_KDF)
	{
		var int nDocID;
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "BOOK_MAGE_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "BOOK_MAGE_R.tga", false);
					
		 			Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	 				Doc_PrintLine	(nDocID,  0, "");
					Doc_SetFont 	(nDocID,  0, FONT_Book);
					Doc_PrintLines	(nDocID,  0, "edef Kon dirandorix");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "in Sparady bell ");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "el utoy");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, " Kho ray xaondron");
					Doc_PrintLines	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "em piratoram endro");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_SetFont 	(nDocID,  1, FONT_BookHeadline);
					Doc_SetFont 	(nDocID,  1, FONT_Book);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					
					if (Kapitel >= 9)
					{
						Doc_PrintLine	(nDocID, 1, "          VINO");
						Doc_PrintLine	(nDocID, 1, "FERNANDO");
						Doc_PrintLine	(nDocID, 1, "");
						Doc_PrintLine	(nDocID, 1, "     MALAK");
						Doc_PrintLine	(nDocID, 1, "");
						Doc_PrintLine	(nDocID, 1, "BROMOR");
					};
					if (Kapitel >= 10)
					{
						Doc_PrintLine	(nDocID, 1, "          ENGROM");
						Doc_PrintLine	(nDocID, 1, "");
						Doc_PrintLine	(nDocID, 1, "");
						Doc_PrintLine	(nDocID, 1, "     RANDOLPH");
						Doc_PrintLine	(nDocID, 1, "");
					};
					if (Kapitel >= 11)
					{
						Doc_PrintLine	(nDocID, 1, "");
						Doc_PrintLine	(nDocID, 1, "");
						Doc_PrintLine	(nDocID, 1, "          SEKOB");
						Doc_PrintLine	(nDocID, 1, "");
						Doc_PrintLine	(nDocID, 1, "");
						Doc_PrintLine	(nDocID, 1, "");
						Doc_PrintLine	(nDocID, 1, "     BRUTUS");
						Doc_PrintLine	(nDocID, 1, "");
					};
					Doc_Show		(nDocID);
	};
};
///******************************************************************************************
instance ItWr_PyrokarsObsessionList (ItemPR_Mission)
{
	name 			=	"Magiczny list Pyrokara";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   Use_PyrokarsObsessionList;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_PyrokarsObsessionList()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "Op�tani");
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				
				if (Kapitel >= 9)
				{
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "FERNANDO");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "VINO");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "MALAK");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "BROMOR");
				};
				if (Kapitel >= 10)
				{
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "ENGROM");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "RANDOLPH");
				};
				if (Kapitel >= 11)
				{
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "SEKOB");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "BRUTUS");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
				};
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_BabosLetter_MIS (ItemPR_Mission)
{
	name 			=	"List do Babo";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_BabosLetter;
	scemeName		=	"MAP";
	description		=	"List do Babo";
};
func void Use_BabosLetter()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "Drogi Babo,");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "pewnie zastanawiasz si�, jak napisa�y�my ten list. Ot� zabra�y�my wszystkie nasze oszcz�dno�ci do Mistrza Marlasa i poprosi�y�my, aby go dla nas napisa�. �yczymy ci wszystkiego najlepszego i przesy�amy ten obrazek jako prezent po�egnalny - niechaj przypomina ci o nas podczas nocy, kt�re sp�dzisz w klasztorze.");
				Doc_PrintLines	(nDocID,  0, "Mamy nadziej�, �e lubisz takie obrazki.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Fehta i Bonka");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_BabosPinUp_MIS (ItemPR_Mission)
{
	name 			=	"Portret kobiety";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_BabosPinUp;
	scemeName		=	"MAP";
	description		=	"Portret nagiej kobiety";
};
func void Use_BabosPinUp()
{
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID, 1);
				Doc_SetPage		(nDocID, 0, "Map_Pinup.TGA", false);
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_BabosDocs_MIS	(ItemPR_Mission)
{
	name 			=	"Zwitek papier�w";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   Use_BabosDocs;
	scemeName		=	"MAPSEALED";
	
	description		=	name;
	TEXT[2]			=   "Kilka dokument�w";
	TEXT[3]			=   "zwini�tych w rulon.";
};
func void Use_BabosDocs()
{
	BaboSDocsOpen = true;
	CreateInvItem (self, ItWr_BabosLetter_MIS);
	CreateInvItem (self, ItWr_BabosPinUp_MIS);
};
///******************************************************************************************
instance ItWr_ShatteredGolem_MIS (ItemPR_Mission)
{
	name 			=	"Bardzo stara mapa";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Map_01.3DS";
	scemeName		=	"MAP";
	on_state[0]		=	Use_ShatteredGolem_Mis;
	description		=	name;
};
func void Use_ShatteredGolem_Mis()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_ShatteredGolem_MIS);
	};
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage 		(Document, 0, "Map_NewWorld_ShatteredGolem.tga", true);
				Doc_SetLevel		(Document, "NewWorld\NewWorld.zen");
				Doc_SetLevelCoords	(Document, -28000, 50500, 95500, -42500);
				Doc_Show			(Document);
};
///******************************************************************************************
instance ItWr_MinenAnteil_Mis (ItemPR_Mission)
{
	name 			=	"Udzia� w kopalni rudy Khorinis";
	mainflag 		=	ITEM_KAT_DOCS;
	
	value 			=	100;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_MinenAnteil_Mis;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[5]			=	NAME_Value;
	COUNT[5]		=	value;
};

var int ItWr_MinenAnteil_Mis_OneTime;

func void Use_MinenAnteil_Mis()
{   
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage		(nDocID,  0, "letters.TGA", false);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "Udzia� w kopalni rudy");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Na mocy kr�lewskiego Aktu W�asno�ci, wystawionego na cz�� ziem kr�lewskich, posiadacz tego dokumentu mo�e eksploatowa� surowce tych ziem,");
				Doc_PrintLines	(nDocID,  0, "na obszarze nie wi�kszym jednak ni� jeden ar kr�lewski.");
				Doc_PrintLines	(nDocID,  0, "Na mocy Prawa o Miarach ar kr�lewski r�wna si� powierzchni� fragmentowi terenu o szeroko�ci 16 krok�w i d�ugo�ci 3.");
				Doc_PrintLines	(nDocID,  0, "Posiadacz tego dokumentu zostaje nadto zwolniony z obowi�zk�w nak�adanych przez prawa swobody dost�pu,");
				Doc_PrintLines	(nDocID,  0, "je�li jednak nie zdo�a ui�ci� op�aty za u�ytkowane ziemie, to powr�c� one na w�asno�� Korony.");
				Doc_PrintLine	(nDocID,  0, "     Podpisano");
				Doc_PrintLine	(nDocID,  0, "     Rz�dca kr�lewski,");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "          Salandril");
				Doc_Show		(nDocID);
	
	SC_KnowsProspektorSalandril = true;
	
	if (ItWr_MinenAnteil_Mis_OneTime == false)
	{
		B_LogEntry (TOPIC_MinenAnteile, "Go��, kt�ry sprzeda� te udzia�y kupcom, ma na imi� Salandril. Pewnie naj�atwiej go b�dzie znale�� w g�rnym Khorinis - chyba �e ju� zwia� przed d�ugim ramieniem sprawiedliwo�ci.");
		
		if (Npc_IsDead(Salandril))
		{
			B_LogEntry (TOPIC_MinenAnteile, "Salandril nie �yje. Trzeba o tym powiedzie� Serpentesowi.");
		};
		ItWr_MinenAnteil_Mis_OneTime = true;
	};
};
///******************************************************************************************
instance ItWr_RichterKomproBrief_MIS (ItemPR_Mission)
{
	name 			=	"Zlecenie s�dziego";
	mainflag 		=	ITEM_KAT_DOCS;

	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   Use_RichterKomproBrief;
	scemeName		=	"MAP";
	description		=	name;
};

var int SCKnowsRichterKomproBrief;

func void Use_RichterKomproBrief()
{   
	SCKnowsRichterKomproBrief = true;

	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Morgahard - ty robaku! Lepiej r�b, co ci ka��, albo inaczej sobie pogadamy. By� mo�e nawet b�d� musia� was aresztowa�.");
				Doc_PrintLines	(nDocID,  0, "Spraw� trzeba za�atwi� jutro w nocy, Larius co� podejrzewa.");
				Doc_PrintLines	(nDocID,  0, "Je�li teraz nie wyci�gniemy od niego forsy, to mo�e nie by� kolejnej okazji. Zadbam o to, aby�cie go spotkali wieczorem na targowisku.");
				Doc_PrintLines	(nDocID,  0, "Tylko nie r�bcie ha�asu. Chyba nie chcecie, �eby wsiedli na was stra�nicy?");
				Doc_PrintLines	(nDocID,  0, "A gdyby mia� go spotka� jaki� nieszcz�liwy wypadek, to ja p�aka� nie b�d�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "          G��wny s�dzia i");
				Doc_PrintLine	(nDocID,  0, "          kr�lewski sekretarz");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_Show		(nDocID );
};
///******************************************************************************************
instance ItWr_MorgahardTip (ItemPR_Mission)
{
	name 			=	"List";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_MorgahardTip;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_MorgahardTip()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage		(nDocID,  0, "letters.TGA", false);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zrobi�em to. Mam nadziej�, �e spotkamy si� jeszcze, gdy ca�e zamieszanie przycichnie.");
				Doc_PrintLines	(nDocID,  0, "Nie martwcie si�. Je�li wszystko zawiedzie, poprosz� Onara o za�atwienie sprawy.");
				Doc_PrintLines	(nDocID,  0, "Wszystko b�dzie w porz�dku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "     M.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Map_Shrine_MIS (ItemPR_Mission)
{
	name 			=	"Mapa �wi�tych kapliczek";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Map_01.3DS";
	scemeName		=	"MAP";
	on_state[0]		=	Use_Map_NewWorld_Shrine_MIS;
	description		=	name;
};
func void Use_Map_NewWorld_Shrine_MIS()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_Shrine_MIS);
	};
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage 		(Document, 0, "Map_NewWorld_Shrine.tga", true);
				Doc_SetLevel		(Document, "NewWorld\NewWorld.zen");
				Doc_SetLevelCoords	(Document, -28000, 50500, 95500, -42500);
				Doc_Show			(Document);
};
///******************************************************************************************
instance ItWr_Map_Orcelite_MIS (ItemPR_Mission)
{
	name 			=	"Orkowa mapa wojenna";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Map_01.3DS";
	scemeName		=	"MAP";
	on_state[0]		=	Use_Map_NewWorld_Orcelite_MIS;
	description		=	name;
};

var int Use_Map_NewWorld_Orcelite_MIS_OneTime;

func void Use_Map_NewWorld_Orcelite_MIS()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_Orcelite_MIS);
	};
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage 		(Document, 0, "Map_NewWorld_Orcelite.tga", true);
				Doc_SetLevel		(Document, "NewWorld\NewWorld.zen");
				Doc_SetLevelCoords	(Document, -28000, 50500, 95500, -42500);
				Doc_Show			(Document);
	
	if (Use_Map_NewWorld_Orcelite_MIS_OneTime == false)
	&& (MIS_KillOrkOberst != 0)
	{
		B_LogEntry (TOPIC_OrcElite, "Przy orkowym pu�kowniku znalaz�em dziwn� map�. Wygl�da jak plan dzia�a� wojennych tych stworze�.");
		Use_Map_NewWorld_Orcelite_MIS_OneTime = true;
	};
};
///******************************************************************************************
instance ItWr_Map_Caves_MIS (ItemPR_Mission)
{
	name 			=	"Jaskinie Khorinis";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Map_01.3DS";
	scemeName		=	"MAP";
	on_state[0]		=	Use_Map_NewWorld_Caves_MIS;
	description		=	name;
};
func void Use_Map_NewWorld_Caves_MIS()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_Caves_MIS);
	};
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage 		(Document, 0, "Map_NewWorld_Caves.tga", true);
				Doc_SetLevel		(Document, "NewWorld\NewWorld.zen");
				Doc_SetLevelCoords	(Document, -28000, 50500, 95500, -42500);
				Doc_Show			(Document);
};
///******************************************************************************************
instance ItWr_XardasLetterToOpenBook_MIS (ItemPR_Mission)
{
	name 			=	"List Xardasa";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_XardasLetterToOpenBook;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_XardasLetterToOpenBook()
{  
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Podejrzewa�em, �e �r�d�em z�a w G�rniczej Dolinie by� jeden ze smok�w.");
				Doc_PrintLines	(nDocID,  0, "Myli�em si�.");
				Doc_PrintLines	(nDocID,  0, "Je�li wszystko przebieg�o zgodnie z moim");
				Doc_PrintLines	(nDocID,  0, "planem, szukasz teraz zapewne Dworu Irdorath. ");
				Doc_PrintLines	(nDocID,  0, "Ksi��ka, kt�r� da�e� Pyrokarowi, zawiera wszystkie potrzebne Ci wskaz�wki.");
				Doc_PrintLines	(nDocID,  0, "Powinienem by� si� domy�li�, dlaczego Poszukiwacze tak bardzo");
				Doc_PrintLines	(nDocID,  0, "chcieli j� zdoby�.");
				Doc_PrintLines	(nDocID,  0, "Musisz j� odzyska�!");
				Doc_PrintLines	(nDocID,  0, "Otworzysz j� s�owami 'XARAK BENDARDO'. Tylko nie m�w o tym nikomu!");
				Doc_PrintLines	(nDocID,  0, "Musz� zaj�� si� teraz wa�niejszymi sprawami.");
				Doc_PrintLines	(nDocID,  0, "Odt�d jeste� zdany jedynie na siebie. Tylko Ty mo�esz pokona� �r�d�o z�a.");
				Doc_PrintLines	(nDocID,  0, "Jeszcze si� spotkamy!");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "                             Xardas.");
				Doc_Show		(nDocID);
	
	if (MIS_Xardas_SCCanOpenIrdorathBook == false)
	{
		B_LogEntry (TOPIC_BuchHallenVonIrdorath, "W swoim li�cie Xardas poinformowa� mnie, jakie s�owa otwieraj� ksi�g� DW�R IRDORATH.");
	};
	MIS_Xardas_SCCanOpenIrdorathBook = true;
};
///******************************************************************************************
instance ItWr_HallsofIrdorath_Mis (ItemPR_Mission) 
{	
	name 			=	"Dw�r Irdorath";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Book_02_05.3ds";
	scemeName		=	"MAPSEALED";
	on_state[0]		=	Use_HallsofIrdorath;
	description		=	name;
};
FUNC VOID Use_HallsofIrdorath()
{  
	if (MIS_Xardas_SCCanOpenIrdorathBook == true)
	{
		B_Say (self, self, "$SCOPENSIRDORATHBOOK");
		
  		Wld_PlayEffect ("spellFX_LIGHTSTAR_WHITE", hero, hero, 0, 0, 0, false);
		Snd_Play("SFX_HealObsession");
		
		CreateInvItem (hero, ItWr_HallsofIrdorath_Open_Mis);
		CreateInvItem (hero, ItKe_MonastarySecretLibrary_Mis);
		CreateInvItem (hero, ItWr_UseLampIdiot_Mis);
		
		Print("W ok�adce tej ksi�gi schowano klucz!");
		B_GivePlayerXP(XP_BONUS_10);
		ItWr_HallsofIrdorathIsOpen = true;
		
		B_LogEntry (TOPIC_BuchHallenVonIrdorath, "Uda�o mi si� otworzy� ksi�g� Xardasa. Znalaz�em w niej tajemnicz� wiadomo�� i dziwny klucz. Kto wie, co jeszcze kryje si� w klasztornych podziemiach."); 
	}
	else
	{
		CreateInvItem (hero, ItWr_HallsofIrdorath_Mis);
		
		Print(PRINT_IrdorathBookDoesntOpen);
		Wld_PlayEffect ("spellFX_Fear", self, self, 0, 0, 0, false);
		Snd_Play("MFX_FEAR_CAST");
	};
};
///******************************************************************************************
instance ItWr_HallsofIrdorath_Open_Mis (ItemPR_Mission)
{
	name 			=	"Dw�r Irdorath";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Book_02_05.3ds";
	scemeName		=	"MAP";
	on_state[0]		=	Use_HallsofIrdorath_Open;
	description		=	name;
};
FUNC VOID Use_HallsofIrdorath_Open()
{
	if (ItWr_SCReadsHallsofIrdorath == false)
	{
		B_LogEntry (TOPIC_BuchHallenVonIrdorath, "Przeczyta�em ksi�g� Xardasa. Jest w niej wzmianka o tajnej bibliotece, kt�ra zapewne znajduje si� w podziemiach klasztoru."); 
	};
	
	ItWr_SCReadsHallsofIrdorath = true;
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "BOOK_MAGE_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "BOOK_MAGE_R.tga", false);
				
 				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
 				Doc_PrintLine	(nDocID,  0, "");
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "...tak oto ukry�em wej�cie do biblioteki za zamaskowanymi drzwiami, by uchroni� moje zapiski ze �wi�ty� Beliara.");
				Doc_PrintLines	(nDocID,  0, "Gdyby dowiedzieli si� o nich moi bracia, mogliby je pochopnie zniszczy�.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont 	(nDocID,  1, FONT_BookHeadline);
				Doc_PrintLine	(nDocID,  1, "");										
				Doc_SetFont 	(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Teraz za� wiedz� tylko, �e �wi�tynie te niegdy� istnia�y.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Na wszelki wypadek zostawi�em kilka s�ug na stra�y biblioteki.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ten klucz otwiera ostatnie drzwi.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_XardasSeamapBook_Mis (ItemPR_Mission) 
{
	name 			=	"Zakurzona ksi�ga";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Book_02_01.3ds";
	scemeName		=	"MAP";
	on_state[0]		=	Use_XardasSeamapBook_Mis;
	description		=	name;
};
FUNC VOID Use_XardasSeamapBook_Mis()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "BOOK_BROWN_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "BOOK_BROWN_R.tga", false);
				
 				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
 				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "...Jestem pewien, �e ta budowla to Dw�r Irdorath. Znajduje si� on na niewielkiej wyspie, ca�kiem blisko przystani w Khorinis. Nie ma w�tpliwo�ci, �e Beliara interesuje ruda z kopal�...");
				Doc_PrintLines	(nDocID,  0, "");
				
				if (hero.guild == GIL_PAL)
				{
					Doc_PrintLines	(nDocID,  0, "...Im s� pot�niejsi, tym bardziej przydatni b�d� dla niego jako o�ywie�czy s�udzy. Pokonanie tych upad�ych paladyn�w to nie�atwe zadanie. Jeden z nich wpad� w moje r�ce. Mam tylko nadziej�, �e pozostali nie dowiedz� si� o nim...");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_SetFont 	(nDocID,  1, FONT_BookHeadline);
					Doc_SetFont 	(nDocID,  1, FONT_Book);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "...Upad�y paladyn nie reaguje na �adne bod�ce. Jego zbroj� i inne przedmioty schowa�em w tylnej komorze. Drzwi mo�na otworzy� tylko od wewn�trz, wi�c stworzy�em na t� okazj� specjaln� run� teleportacji. Instrukcje s� w almanachu, by m�g� je znale�� Wybraniec...");
				};
				if (hero.guild == GIL_KDF)
				{
					Doc_PrintLines	(nDocID,  0, "...Znaki s� jasne! Gdy przyb�dzie Wybrany, przyda si� mu ka�da pomoc. Beliar i tak jest ju� zbyt silny. Zgromadzi�em tu na wszelki wypadek kilka przydatnych artefakt�w. Podejrzewam, �e Wybraniec b�dzie jednym z nas,");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_SetFont 	(nDocID,  1, FONT_BookHeadline);
					Doc_SetFont 	(nDocID,  1, FONT_Book);
					Doc_PrintLines	(nDocID,  1, "dlatego spisa�em dla niego instrukcje w almanachu.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "...Nie mam ju� z�udze�. Jeste�my bezbronni wobec wyrok�w losu. Gdy Beliar odpowiednio uro�nie w si��, spr�buje przej�� w�adz� nad ca�ym �wiatem. Musz� znale�� Wybra�ca!");
				};
				if (hero.guild == GIL_DJG)
				{
					Doc_PrintLines	(nDocID,  0, "...Wybuchnie wojna, kt�ra zadecyduje o losach �wiata. Chyba jestem jedynym, kt�ry potrafi odczyta� znaki. Pozostali po prostu je ignoruj�. Wybraniec nadejdzie, a jego przyj�cie b�dzie oznacza� pocz�tek wojny. Odwieczna rywalizacja mo�e zosta� rozstrzygni�ta.");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_SetFont 	(nDocID,  1, FONT_BookHeadline);
					Doc_SetFont 	(nDocID,  1, FONT_Book);
					Doc_PrintLines	(nDocID,  1, "Nie b�d� sta� bezczynnie, pozwalaj�c innym decydowa� o losach �wiata.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "...Ze staro�ytnych pism dowiedzia�em si�, jak stworzy� legendarn� bro� pradawnych Smoczych Mistrz�w. Nie wiem jednak, gdzie szuka� potrzebnych sk�adnik�w. Na wszelki wypadek zapisa�em wszystko w almanachu. Kto wie, mo�e przyjdzie nam walczy� tak�e ze smokami."); 
				};
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_UseLampIdiot_Mis (ItemPR_Mission)
{
	name 			=	"Podniszczony list";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   UseItWr_UseLampIdiot_Mis;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[0]			=	"z ksi�gi 'Dw�r Irdorath'";
};
func void UseItWr_UseLampIdiot_Mis()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage		(nDocID,  0, "letters.TGA", false);
				Doc_SetFont		(nDocID, -1, FONT_BookHeadline);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "     Lampa rzuca �wiat�o");
				Doc_PrintLine	(nDocID,  0, "     na podziemne korytarze");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Seamap_Irdorath (ItemPR_Mission)
{
	name 			=	"Mapa morska wyspy Irdorath";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Map_01.3DS";
	scemeName		=	"MAP";
	on_state[0]		=	Use_Seamap_Irdorath;
	description		=	name;
};
FUNC VOID Use_Seamap_Irdorath()
{
	var int nDocID;
	nDocID = 	Doc_CreateMap	();
				Doc_SetPages	(nDocID, 1);
				Doc_SetPage 	(nDocID, 0, "Map_NewWorld_Seamap.tga", true);
				Doc_Show		(nDocID);
	
	if (MIS_ShipIsFree == false)
	&& (Kapitel < 12)
	{
		B_Say (self, self, "$IRDORATHTHEREYOUARE");
	};
	
	if (MIS_SCKnowsWayToIrdorath == false)
	{
		Log_CreateTopic (TOPIC_SHIP, LOG_MISSION);
	    Log_SetTopicStatus (TOPIC_SHIP, LOG_RUNNING);
	    B_LogEntry (TOPIC_SHIP, "Wygl�da na to, �e musz� si� dosta� na wysp� nieprzyjaciela. B�d� potrzebowa� statku, za�ogi i kapitana.");
		B_GivePlayerXP(XP_BONUS(2000));
	};
	
	MIS_SCKnowsWayToIrdorath = true;
};
///******************************************************************************************
instance ItWr_LastDoorToUndeadDrgDI_MIS	(ItemPR_Mission)
{
	name 			=	"Zw�j czarnego maga";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   Use_ItWr_LastDoorToUndeadDrgDI_MIS;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_ItWr_LastDoorToUndeadDrgDI_MIS()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "KHADOSH");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "EMEM KADAR");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Niech Oko Mocy o�wietli tw� �cie�k�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
				Doc_Show		(nDocID);
	
	B_LogEntry (TOPIC_HallenVonIrdorath, "In der Schriftrolle des Schwarzmagiers waren die Worte KHADOSH EMEM KADAR zu lesen. Das h�rt sich an wie eine Beschw�rungsformel, aber worauf l��t sich das anwenden und was ist das Auge der Macht?"); 
};
///******************************************************************************************
instance ItWr_Diary_BlackNovice_MIS (ItemPR_Mission)
{
	name 			=	"Dziennik";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Book_02_04.3ds";
	scemeName		=	"MAP";
	on_state[0]		=	Use_Diary_BlackNovice;
	description		=	name;
};
FUNC VOID Use_Diary_BlackNovice()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "BOOK_RED_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "BOOK_RED_R.tga", false);
				
 				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ju� od 36 dni czekam na wezwanie. Zaczynam w�tpi�, czy si� doczekam - mimo �e zrobi�em wszystko, o co mnie proszono. Lata�em dla nich i przynosi�em r�ne rzeczy jak jaki� lokaj.");
				Doc_PrintLines	(nDocID,  0, "Klucznik nakaza� mi zamkni�cie krat, ale jeszcze si� do tego nie zabra�em. Jak tak dalej p�jdzie, to ka�dy b�dzie sobie m�g� po prostu wej�� przez bram�...");
				Doc_PrintLines	(nDocID,  0, "Szkoda, �e nie pami�tam w�a�ciwych kombinacji.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont 	(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bardzo dawno ju� nie zakrada�em si� do wielkiej komnaty i nie mog� si� doczeka� spotkania z Mistrzem. Ciekaw jestem, czy pozwol� mi na nie, gdy ju� do nich do��cz�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wczoraj podj��em pr�b�, ale dotar�em tylko do komnaty z dwoma d�wigniami - nawet nie zdo�a�em wypr�bowa� kombinacji prze��cznik�w w zachodnim skrzydle! Ta �winia pozamyka�a komnaty. Jutro spr�buj� wydosta� od niego klucz...");
				Doc_Show		(nDocID);
	
	B_LogEntry (TOPIC_HallenVonIrdorath, "Dziennik ucznia czarnego maga wspomina o komnatach z d�wigniami, kluczniku, kombinacji prze��cznik�w... Trzeba to zapami�ta�, nigdy nie wiadomo, kiedy mo�e si� przyda�."); 
};
///******************************************************************************************
instance ITWr_Addon_Joint_01 (ItemPR_Mission)
{
	name 			=	"Zielony nowicjusz";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_Joint_Rezept_01;
	scemeName		=	"MAP";
	
	TEXT[0]			= 	"Le�a� w skrzyni Fortuna";
};
func void Use_Joint_Rezept_01()
{
	Green_Extrem = true;
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "Der gr�ne Novize");
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "(...) Te �odygi mo�na ca�kiem nie�le zwija�, ale nie ma por�wnania z tym, co mieli�my w obozie na bagnie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Je�li wezm� wyci�g z dw�ch �odyg bagiennego ziela i zmieszam go z polnym rdestem, mo�na to b�dzie por�wna� do zielonego nowicjusza.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zielony nowicjusz �agodzi wszystkie b�le i oczyszcza umys�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Addon_SUMMONANCIENTGHOST (ItemPR_Mission)
{
	name 			=	"Przywo�anie Quarhodrona";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   UseSummonAncientGhost;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[1]			=	"Za pomoc� tego zwoju mo�esz przywo�a� Quarhodrona.";
};
func void UseSummonAncientGhost()
{
	if (SC_SummonedAncientGhost == false)
	{
		B_Say (self, self, "$ADDON_SUMMONANCIENTGHOST");
		
		if (Npc_GetDistToWP(self,"ADW_ANCIENTGHOST") < 1000)
		{
			Wld_InsertNpc (NONE_ADDON_111_Quarhodron, "ADW_ANCIENTGHOST");
	 		Wld_PlayEffect ("spellFX_Maya_Ghost", NONE_ADDON_111_Quarhodron, NONE_ADDON_111_Quarhodron, 0, 0, 0, false);
	 		Wld_PlayEffect ("SPELLFX_LIGHTSTAR_WHITE", NONE_ADDON_111_Quarhodron, NONE_ADDON_111_Quarhodron, 0, 0, 0, false);
	 		Snd_Play("MFX_GhostVoice");
	 		Snd_Play("MFX_Firestorm_Cast");
	 		Snd_Play("MFX_Lightning_Origin");
	 		SC_SummonedAncientGhost = true;
			Npc_RemoveInvItem (self, ItWr_Addon_SUMMONANCIENTGHOST);
	    }
		else
		{
			B_Say (self, self, "$ADDON_ANCIENTGHOST_NOTNEAR");
		};
	};
};
///******************************************************************************************
instance ItWr_SaturasFirstMessage_Addon_Sealed (ItemPR_Mission)
{
	name 			=	"Zapiecz�towana wiadomo��";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   Use_SaturasFirstMessage;
	scemeName		=	"MAPSEALED";
	
	description		=	name;
	TEXT[2]			=   "Ta wiadomo�� zosta�a dok�adnie zapiecz�towana.";
};
func void Use_SaturasFirstMessage()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "Szanowny Vatrasie,");
				Doc_PrintLines	(nDocID,  0, "Dotarli�my do portalu. Mia�e� racj�.");
				Doc_PrintLines	(nDocID,  0, "S� znaki wskazuj�ce na to, �e naprawd� czcili Adanosa. Sprawd�, prosz�, moje notatki i potwierd� nasze ustalenia.");
				Doc_PrintLines	(nDocID,  0, "Od kilku dni nie widzieli�my tych dziwnych kamiennych istot.");
				Doc_PrintLines	(nDocID,  0, "Ziemia wci�� trz�sie si� z niewiadomych powod�w.");
				Doc_PrintLines	(nDocID,  0, "S�dz�, �e nasze badania wkr�tce wska�� nam, co mo�e by� tego przyczyn�.");
				Doc_PrintLines	(nDocID,  0, "Znaleziony przez nas ornament ma wi�ksze znaczenie, ni� wcze�niej s�dzili�my. Wydaje nam si�, �e jest to jaki� klucz-artefakt. Niestety, nie jest kompletny. Musimy go dok�adniej zbada�.");
				Doc_PrintLines	(nDocID,  0, "Wy�lij jednego z cz�onk�w Wodnego Kr�gu, by nam go dostarczy�. Je�li to mo�liwe, nie przysy�aj Cavalorna.");
				Doc_PrintLines	(nDocID,  0, "Poprosi�em go ju� o dostarczenie Ci tego listu. Wydaje mi si�, �e ju� wystarczaj�co nam pom�g�.");
				Doc_PrintLines	(nDocID,  0, "Mam nadziej�, �e post�pujemy w�a�ciwie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Saturas");
				Doc_Show		(nDocID);
	
	if (QuestStep_CavalornLetter != LOG_SUCCESS)
	{
		Log_CreateTopic (TOPIC_Addon_KDW, LOG_MISSION);
		Log_SetTopicStatus (TOPIC_Addon_KDW, LOG_RUNNING);
		B_LogEntry (TOPIC_Addon_KDW, "Zabra�em bandycie wiadomo��, kt�r� Cavalorn mia� dostarczy� Vatrasowi, Magowi Wody. To teraz moje zadanie.");
	};
	if (SC_KnowsRanger == false)
	{
		Log_CreateTopic (TOPIC_Addon_RingOfWater, LOG_MISSION);
		Log_SetTopicStatus (TOPIC_Addon_RingOfWater, LOG_RUNNING);
		Log_AddEntry (TOPIC_Addon_RingOfWater, "Istnieje stowarzyszenie zw�ce si� Wodnym Kr�giem. Wygl�da na to, �e rz�dz� nim Magowie Wody.");
	};
	if (SC_IsRanger == false)
	{
		Log_CreateTopic (TOPIC_Addon_RingOfWater, LOG_MISSION);
		Log_SetTopicStatus (TOPIC_Addon_RingOfWater, LOG_RUNNING);
		Log_AddEntry (TOPIC_Addon_RingOfWater, "Cavalorn nale�y do Wodnego Kr�gu."); 
	};
	
	CreateInvItem (self, ItWr_SaturasFirstMessage_Addon);
	SC_KnowsRanger = true;
};
///******************************************************************************************
instance ItWr_SaturasFirstMessage_Addon (ItemPR_Mission)
{
	name 			=	"Zapiecz�towana wiadomo��";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_SaturasFirstMessage;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[2]			=	"List Saturasa do Vatrasa";
};
///******************************************************************************************
instance ItWr_Map_NewWorld_Ornaments_Addon (ItemPR_Mission)
{
	name 			=	"Mapa Nefariusa";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Map_01.3DS";
	scemeName		=	"MAP";
	on_state[0]		=	Use_Map_NewWorld_Ornaments;
	
	description		=	name;
	TEXT[0]			=	"Na mapie zaznaczono miejsca,";
	TEXT[1]			=	"gdzie wed�ug Nefariusa znajduj� si� brakuj�ce ornamenty.";
};
func void Use_Map_NewWorld_Ornaments()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_NewWorld_Ornaments_Addon);
	};
	
	SC_SAW_ORNAMENT_MAP = true;
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage 		(Document, 0, "Map_NewWorld_Ornaments.tga", true);
				Doc_SetLevel		(Document, "NewWorld\NewWorld.zen");
				Doc_SetLevelCoords	(Document, -28000, 50500, 95500, -42500);
				Doc_Show			(Document);
};
///******************************************************************************************
instance ItWr_Martin_MilizEmpfehlung_Addon (ItemPR_Mission)
{
	name 			=	"List polecaj�cy";
	visual 			=	"ItWr_Scroll_01.3DS";
	
	description		=  	"List polecaj�cy dla Lorda Andre";
	TEXT[2]			= 	"Powinien mi umo�liwi�";
	TEXT[3]			= 	"wst�pienie w szeregi stra�y.";
};
///******************************************************************************************
instance ItWr_RavensKidnapperMission_Addon (ItemPR_Mission)
{
	name 			=	"Rozkazy";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_RavensKidnapperMission_Addon;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[2]			= 	"Zabra�em ten list";
	TEXT[3]			= 	"bandycie Dexterowi.";
};

var int Use_RavensKidnapperMission_Addon_OneTime;

func void Use_RavensKidnapperMission_Addon()
{
 	if (Use_RavensKidnapperMission_Addon_OneTime == false)
 	&& (MIS_Addon_Vatras_WhereAreMissingPeople != 0)
 	{
	 	Log_CreateTopic (TOPIC_Addon_WhoStolePeople, LOG_MISSION);
		Log_SetTopicStatus (TOPIC_Addon_WhoStolePeople, LOG_RUNNING);
		B_LogEntry (TOPIC_Addon_WhoStolePeople, "Teraz mam to na pi�mie. Kruk, dawny magnat, stoi za porwaniami mieszka�c�w Khorinis. Jego kryj�wka znajduje si� gdzie� za g�rami, w p�nocno-wschodniej cz�ci Khorinis. Vatras powinien zobaczy� ten dokument.");
		Use_RavensKidnapperMission_Addon_OneTime = true;
	};
	
 	SCKnowsMissingPeopleAreInAddonWorld = true;
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage		(nDocID,  0, "letters.TGA", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLines	(nDocID,  0, "Dexter, ty draniu!");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kiedy jeszcze by�em magnatem, mo�na by�o bardziej na tobie polega�.");
				Doc_PrintLines	(nDocID,  0, "Je�li nie zdo�asz porwa� wi�cej ludzi z miasta i przys�a� ich do mnie, to b�dziemy mieli niez�y problem z ch�opakami w naszej kryj�wce.");
				Doc_PrintLines	(nDocID,  0, "Potrzebuj� tu wi�cej niewolnik�w albo ch�opaki zaczn� si� buntowa�. Chyba nie musz� ci m�wi�, co to znaczy, prawda?");
				Doc_PrintLines	(nDocID,  0, "Jestem bardzo bliski dostania si� do �wi�tyni. Nie mog� sobie pozwoli� na �adne, absolutnie �adne k�opoty.");
				Doc_PrintLines	(nDocID,  0, "A, jest jeszcze jeden problem:");
				Doc_PrintLines	(nDocID,  0, "Pr�dzej czy p�niej b�dziemy musieli znale�� drog� przez wysokie g�ry w p�nocno-wschodnim Khorinis. Piraci nie zapewni� nam transportu, kiedy przestaniemy im p�aci�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "     Kruk");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Vatras_KDFEmpfehlung_Addon (ItemPR_Mission)
{
	name 			=	"List polecaj�cy";
	visual 			=	"ItWr_Scroll_01.3DS";
	
	description		=  	"List polecaj�cy od Vatrasa";
	TEXT[2]			= 	"Powinien pom�c mi";
	TEXT[3]			= 	"wej�� do klasztoru Mag�w Ognia";
	TEXT[4]			= 	"bez zap�aty.";
};
///******************************************************************************************
instance ItWr_LuciasLoveLetter_Addon (ItemPR_Mission)
{
	name 			=	"List po�egnalny Lucii";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_LuciasLoveLetter_Addon;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_LuciasLoveLetter_Addon()
{
	Log_CreateTopic (TOPIC_Addon_Lucia, LOG_MISSION);
	Log_SetTopicStatus (TOPIC_Addon_Lucia, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_Lucia, "Lucia napisa�a list po�egnalny dla Elvricha. Z pewno�ci� b�dzie chcia� go przeczyta�.");
	MIS_LuciasLetter = LOG_RUNNING;
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najdro�szy Elvrichu,");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "�adne s�owa nie oddadz� tego, jak mi przykro.");
				Doc_PrintLines	(nDocID,  0, "Wiem, �e ci�ko b�dzie ci to zrozumie�. Dosz�am jednak do wniosku, �e lepiej b�dzie dla nas obojga, je�li znajdziesz sobie porz�dniejsz� dziewczyn�.");
				Doc_PrintLines	(nDocID,  0, "Udaj� si� w miejsce, z kt�rego ju� nie wr�c�. Zapomnij o mnie. Nieprzyzwoita dziewczyna jak ja nie zas�uguje na takiego dobrego ch�opaka. �egnaj.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "     Lucia");
				Doc_Show		(nDocID);
};
///******************************************************************************************
prototype EffectItemprototype_Addon (C_Item)
{
	name 			=	"Kamie�";
	
	mainflag 		=	ITEM_KAT_NONE;
	flags 			=	ITEM_MULTI;
	
	value 			=	5;
	
	visual 			=	"ItMi_Stone.3ds";
	material 		=	MAT_STONE;
	
	description		= 	name;
	TEXT[5]			= 	NAME_Value;
	COUNT[5]		= 	value;
	
	INV_ZBIAS		=	INVCAM_ENTF_MISC_STANDARD;
};
instance ItMi_AmbossEffekt_Addon (EffectItemprototype_Addon)
{
};
instance ItMi_OrnamentEffekt_FARM_Addon (EffectItemprototype_Addon)
{
};
instance ItMi_OrnamentEffekt_FOREST_Addon (EffectItemprototype_Addon)
{
};
instance ItMi_OrnamentEffekt_BIGFARM_Addon (EffectItemprototype_Addon)
{
};
///******************************************************************************************
instance ItWr_Addon_BanditTrader (ItemPR_Mission)
{
	name 			=	"Dostawa";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   Use_ItWr_Addon_BanditTrader;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[2]			= 	"Zabra�em ten list bandytom";
	TEXT[3]			= 	"za farm� Sekoba.";
};

var int Use_ItWr_Addon_BanditTrader_OneTime;

func void Use_ItWr_Addon_BanditTrader()
{
 	BanditTrader_Lieferung_Gelesen = true;
	
 	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "15 kr�tkich mieczy");
				Doc_PrintLines	(nDocID,  0, "20 pa�aszy");
				Doc_PrintLines	(nDocID,  0, "25 bochenk�w chleba");
				Doc_PrintLines	(nDocID,  0, "15 butelek wina");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To ju� ostatni raz. ");
				Doc_PrintLines	(nDocID,  0, "Zaczyna robi� si� za gor�co.");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "     Fernando");
				Doc_Show		(nDocID);
	
	if (MIS_Vatras_FindTheBanditTrader != 0)
	&& (Use_ItWr_Addon_BanditTrader_OneTime == false)
	{
		B_LogEntry (TOPIC_Addon_BanditTrader, "Znalaz�em dokument potwierdzaj�cy, �e Fernando jest handlarzem broni�, kt�rego szukam.");
		Use_ItWr_Addon_BanditTrader_OneTime = true;
	};
};
///******************************************************************************************
instance ItWr_Vatras2Saturas_FindRaven (ItemPR_Mission)
{
	name 			=	"Przesy�ka";
	visual 			=	"ItWr_Scroll_02.3DS";
	description		=   "Wiadomo�� Vatrasa dla Saturasa";
};
///******************************************************************************************
instance ItMi_Addon_Stone_01 (ItemPR_Mission)
{
	name 			=	"Czerwona kamienna tablica";
	visual 			=	"ItMi_StonePlate_Read_03.3ds";
	on_state[0]		=	Use_Addon_Stone_01;
	scemeName		=	"MAP";
	
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_WEAKGLIMMER";
	
	description		=	name;
	TEXT[2]			= 	"Czerwona kamienna tablica";
	inv_rotx		=	INVCAM_X_STONEPLATE_STANDARD;
};
FUNC VOID Use_Addon_Stone_01()
{
	if (Npc_GetTalentSkill(hero,NPC_TALENT_LANGUAGE) == true)
	{
		var int nDocID;
		nDocID =	Doc_Create		();
					Doc_SetPages	(nDocID,  1);
					Doc_SetPage 	(nDocID,  0, "Adanos_Stoneplate_02.TGA", false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					Doc_SetMargins	(nDocID, -1, 70, 50, 90, 50, 1);
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "My, trzej pozostali przyw�dcy Rady Pi�ciu, za�o�yli�my pu�apki w �wi�tyni i zapiecz�towali�my jej wej�cie. Oby miecz na zawsze ju� pozosta� w mroku.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_Show		(nDocID);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
	};
};
///******************************************************************************************
instance ItMi_Addon_Stone_05 (ItemPR_Mission)
{
	name 			=	"��ta kamienna tablica"; 
	visual 			=	"ItMi_StonePlate_Read_04.3ds";
	on_state[0]		=	Use_Addon_Stone_05;
	scemeName		=	"MAP";
	
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_WEAKGLIMMER";
	
	description		=	name;
	TEXT[2]			= 	"��ta kamienna tablica";
	inv_rotx		=	INVCAM_X_STONEPLATE_STANDARD;
};
FUNC VOID Use_Addon_Stone_05()
{
	if (Npc_GetTalentSkill(hero,NPC_TALENT_LANGUAGE) == true)
	{
		var int nDocID;
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1);
					Doc_SetPage 	(nDocID,  0, "Adanos_Stoneplate_01.TGA", false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					Doc_SetMargins	(nDocID, -1, 70, 50, 90, 50, 1);
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Ja, kt�ry sprzeciwi�em si� rozkazom tr�jki, zbudowa�em pierwsz� pu�apk�. I tylko ja znam w�a�ciwe wrota.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_Show		(nDocID);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
	};
};
///******************************************************************************************
instance ItMi_Addon_Stone_03 (ItemPR_Mission)
{
	name 			=	"Niebieska kamienna tablica";
	visual 			=	"ItMi_StonePlate_Read_05.3ds";
	on_state[0]		=	Use_Addon_Stone_03;
	scemeName		=	"MAP";
	
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_WEAKGLIMMER";
	
	description		=	name;
	TEXT[2]			= 	"Niebieska kamienna tablica";
	inv_rotx		=	INVCAM_X_STONEPLATE_STANDARD;
};
FUNC VOID Use_Addon_Stone_03()
{
	if (Npc_GetTalentSkill(hero,NPC_TALENT_LANGUAGE) == true)
	{
		var int nDocID;
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1);
					Doc_SetPage 	(nDocID,  0, "Adanos_Stoneplate_03.TGA", false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					Doc_SetMargins	(nDocID, -1, 70, 50, 90, 50, 1);
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "KHARDIMON przygotowa� drug� pu�apk�. Tylko ten, kto nie zejdzie ze �cie�ki �wiat�a, dotrze do trzeciej komnaty.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_Show		(nDocID);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
	};
};
///******************************************************************************************
instance ItMi_Addon_Stone_04 (ItemPR_Mission)
{
	name 			=	"Zielona kamienna tablica";
	visual 			=	"ItMi_StonePlate_Read_01.3ds";
	on_state[0]		=	Use_Addon_Stone_04;
	scemeName		=	"MAP";
	
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_WEAKGLIMMER";
	
	description		=	name;
	TEXT[2]			= 	"Zielona kamienna tablica";
	inv_rotx		=	INVCAM_X_STONEPLATE_STANDARD;
};
FUNC VOID Use_Addon_Stone_04()
{
	if (Npc_GetTalentSkill(hero,NPC_TALENT_LANGUAGE) == true)
	{
		var int nDocID;
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1);
					Doc_SetPage 	(nDocID,  0, "Adanos_Stoneplate_04.TGA", false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					Doc_SetMargins	(nDocID, -1, 70, 50, 90, 50, 1);
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Trzecia pu�apka zosta�a zbudowana przez QUARHODRONA i jedynie on wie, jak otworzy� bram�.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_Show		(nDocID);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
	};
};
///******************************************************************************************
instance ItMi_Addon_Stone_02 (ItemPR_Mission)
{
	name 			=	"Fioletowa kamienna tablica";
	visual 			=	"ItMi_StonePlate_Read_02.3ds";
	on_state[0]		=	Use_Addon_Stone_02;
	scemeName		=	"MAP";
	
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_WEAKGLIMMER";
	
	description		=	name;
	TEXT[2]			= 	"Fioletowa kamienna tablica";
	inv_rotx		=	INVCAM_X_STONEPLATE_STANDARD;
};
FUNC VOID Use_Addon_Stone_02()
{
	if (Npc_GetTalentSkill(hero,NPC_TALENT_LANGUAGE) == true)
	{
		var int nDocID;
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1);
					Doc_SetPage 	(nDocID,  0, "Adanos_Stoneplate_05.TGA", false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					Doc_SetMargins	(nDocID, -1, 70, 50, 90, 50, 1);
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "QUARHODRON by� te� tym, kt�ry z pomoc� KHARDIMONA zapiecz�towa� zewn�trzn� bram� �wi�tyni. �aden z nich nie prze�y� tego rytua�u.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Jedynie ja pozosta�em, aby by� �wiadkiem tych wydarze�.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Oby RADEMES przez ca�� wieczno�� gni� wewn�trz �wi�tyni!");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_Show		(nDocID);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
	};
};
///******************************************************************************************
instance ITWR_Addon_FrancisAbrechnung_Mis (ItemPR_Mission)
{
	name 			=	"Wynagrodzenie";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Book_02_05.3ds";
	scemeName		=	"MAP";
	on_state[0]		=	UseFrancisAbrechnung_Mis;
	description		=	name;
};
FUNC VOID UseFrancisAbrechnung_Mis()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Brown_R.tga", false);
				
 				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont 	(nDocID,  0, FONT_Book);
 				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Statek kupiecki 'Syrena'");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Suma �up�w: 14560");
				Doc_PrintLine	(nDocID,  0, "-----------------------");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Za�oga       : 9840");
				Doc_PrintLine	(nDocID,  0, "Oficerowie   : 2500");
				Doc_PrintLine	(nDocID,  0, "Kapitan      : 1200");
				Doc_PrintLine	(nDocID,  0, "-----------------------");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "moja dzia�ka  : 2220");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Fregata 'Miriam'"	);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Suma �up�w: 4890");
				Doc_PrintLine	(nDocID,  0, "-----------------------");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Za�oga       : 2390");
				Doc_PrintLine	(nDocID,  0, "Oficerowie   : 500");
				Doc_PrintLine	(nDocID,  0, "Kapitan      : 500");
				Doc_PrintLine	(nDocID,  0, "----------------------");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "moja dzia�ka  : 1000");
				Doc_PrintLine	(nDocID,  0, "");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont 	(nDocID,  1, FONT_Book);
 				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Statek handlowy 'Nico'");
				Doc_SetFont 	(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Suma �up�w: 9970");
				Doc_PrintLine	(nDocID,  1, "----------------------");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Za�oga       : 5610");
				Doc_PrintLine	(nDocID,  1, "Oficerowie   : 1500");
				Doc_PrintLine	(nDocID,  1, "Kapitan      : 1000");
				Doc_PrintLine	(nDocID,  1, "----------------------");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "moja dzia�ka  : 1860");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Statek kupiecki 'Maria'");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Suma �up�w: 7851");
				Doc_PrintLine	(nDocID,  1, "----------------------");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Za�oga       : 4000");
				Doc_PrintLine	(nDocID,  1, "Oficerowie   : 750");
				Doc_PrintLine	(nDocID,  1, "Kapitan      : 1000");
				Doc_PrintLine	(nDocID,  1, "----------------------");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "moja dzia�ka  : 1701");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_Show		(nDocID);
				
				Francis_HasProof = true;
				B_Say (self, self, "$ADDON_THISLITTLEBASTARD");
};
///******************************************************************************************
instance ITWR_Addon_GregsLogbuch_Mis (ItemPR_Mission)
{
	name 			=	"Dziennik";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Book_01.3ds";
	scemeName		=	"MAP";
	on_state[0]		=	UseGregsLogbuch;
	
	description		= 	"Dziennik Grega";
};
FUNC VOID UseGregsLogbuch()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Brown_R.tga", false);
				
 				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLines	(nDocID,  0, "Mam ju� do�� tej pla�y! Wok� tylko piasek. Nie mog� nawet spa�, bo mnie wsz�dzie sw�dzi. Czas, �eby Kruk w ko�cu sypn�� z�otem za wi�ni�w i �eby�my w ko�cu st�d odp�yn�li. Co� mi si� zdaje, �e musz� powa�nie pogada� z tym bufonem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Co ten pacan sobie wyobra�a? Kaza� odprawi� mnie z kwitkiem swoim �mierdz�cym najemnikom. Wkr�tce si� dowie, z kim ma do czynienia. Na pocz�tek za�atwi� tego s�u�alca Bloodwyna.");
				Doc_PrintLines	(nDocID,  0, "Je�li wkr�tce nie zap�aci, b�d� musia� zrobi� si� naprawd� niemi�y.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont 	(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Bandyci si� rozzuchwalili. Wci�� nie zap�acili za ostatni transport. Po prostu za ma�o wiemy. Musz� wybada�, co planuje Kruk.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wezm� wi�kszo�� za�ogi na kontynent i zabezpieczymy rud�. Francis zostanie z paroma lud�mi i ufortyfikuje ob�z.");
				Doc_PrintLines	(nDocID,  1, "Aby mie� pewno��, �e ka�dy ma zaj�cie, da�em Bonesowi zbroj�. Przekradnie si� w niej do obozu bandyt�w i dowie si�, co knuje Kruk.");
				Doc_Show		(nDocID);
				
				Greg_GaveArmorToBones = true;
};
///******************************************************************************************
instance ItWR_Addon_TreasureMap (ItemPR_Mission)
{
	name 			=	"Mapa do skarbu";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Map_01.3DS";
	scemeName		=	"MAP";
	on_state[0]		=	Use_TreasureMap;
	
	description		=	name;
	TEXT[1]			=	"Na mapie s� zaznaczone jakie� miejsca.";
};
func void Use_TreasureMap()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Addon_TreasureMap);
	};
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage 		(Document, 0, "Map_AddonWorld_Treasures.tga", true);
				Doc_SetLevel        (Document, "Addon\AddonWorld.zen");
   				Doc_SetLevelCoords  (Document, -47783, 36300, 43949, -32300);
   				Doc_Show			(Document);
};
