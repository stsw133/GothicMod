///******************************************************************************************
instance ItWr_Kraeuterliste (ItemPR_Mission)
{
	name 			=	"Lista";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_Kraeuterliste;
	scemeName		=	"MAP";
	description		= 	"Lista zió³ Constantina";
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
				Doc_PrintLine	(nDocID,  0, "Zio³a alchemiczne:");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Roœlina lecznicza");
				Doc_PrintLine	(nDocID,  0, "Ziele lecznicze");
				Doc_PrintLine	(nDocID,  0, "Korzeñ leczniczy");
				Doc_PrintLine	(nDocID,  0, "Ognista pokrzywa");
				Doc_PrintLine	(nDocID,  0, "Ogniste ziele");
				Doc_PrintLine	(nDocID,  0, "Ognisty korzeñ");
				Doc_PrintLine	(nDocID,  0, "Goblinie jagody");
				Doc_PrintLine	(nDocID,  0, "Smoczy korzeñ");
				Doc_PrintLine	(nDocID,  0, "Zêbate ziele");
				Doc_PrintLine	(nDocID,  0, "Rdest polny");
				Doc_PrintLine	(nDocID,  0, "Szczaw królewski");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Niech roœliny zbiera dla ciebie kandydat na ucznia - przekonasz siê, czy siê do czegoœ nadaje. ");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Z powa¿aniem, Zuris.");
				Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_HalvorMessage	(ItemPR_Mission)
{
	name 			=	"Œmierdz¹ca notatka";
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   UseHalvorMessage;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[2]			=   "W rybie by³a schowana ta notatka.";
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
				Doc_PrintLine	(nDocID,  0, "    Nie wychylajcie siê! ");
				Doc_PrintLine	(nDocID,  0, "    Stra¿ zaczyna coœ podejrzewaæ.");
				Doc_PrintLine	(nDocID,  0, "    Nic nie róbcie, dopóki znów siê nie odezwê!");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "     Halvor");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_BanditLetter_MIS (ItemPR_Mission)
{
	name 			=	"Wiadomoœæ";
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
				Doc_PrintLine	(nDocID,  0, "Zatrzymujcie wszystkich, którzy");
				Doc_PrintLine	(nDocID,  0, "przyjd¹ od strony gór.");
				Doc_PrintLine	(nDocID,  0, "Jeœli ktoœ przekroczy prze³êcz,");
				Doc_PrintLine	(nDocID,  0, "bêdzie to prawdopodobnie pewien");
				Doc_PrintLine	(nDocID,  0, "starzec. Nie dajcie siê");
				Doc_PrintLine	(nDocID,  0, "zwieœæ - to niebezpieczny mag.");
				Doc_PrintLine	(nDocID,  0, "Miejcie na niego oko.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Mo¿e siê z nim skontaktowaæ cz³owiek,");
				Doc_PrintLine	(nDocID,  0, "którego szukamy.");
				Doc_PrintLine	(nDocID,  0, "Wraz z tym listem otrzymujecie");
				Doc_PrintLine	(nDocID,  0, "30 sztuk z³ota.");
				Doc_PrintLine	(nDocID,  0, "Kolejne 30 otrzyma osoba,");
				Doc_PrintLine	(nDocID,  0, "która go zabije.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "G³owê przynieœcie do starej kopalni.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, ".....D.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
				Doc_Show		(nDocID);
}; 
///******************************************************************************************
instance ItWr_Poster_MIS (ItemPR_Mission)
{
	name 			=	"List goñczy";
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
	name 			=	"Ksiêga D³ugów";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Book_02_05.3ds";
	scemeName		=	"MAP";
	on_state[0]		=	UseSchuldBuch;
	description		= 	"Ksiêga D³ugów Lehmara";
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
				Doc_PrintLines	(nDocID,  0, "Umowy i d³ugi");
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ja, Mistrz Thorben, stolarz z Khorinis, jestem winien sz.p. Lehmarowi 200 monet.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "             Thorben");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ja, Coragon, w³aœciciel gospody w Khorinis, jestem winien sz.p. Lehmarowi 150 monet.");
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
				Doc_PrintLines	(nDocID,  1, "Ja, Hanna, w³aœcicielka gospody w Khorinis, jestem winna sz.p. Lehmarowi 250 monet.");
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
	
	description		= 	"Trucizna krwiopijców";
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
				Doc_PrintLines	(nDocID,  0, "¯¹d³o krwiopijcy zawiera œmierteln¹ truciznê, na któr¹ trzeba bardzo uwa¿aæ.");
				Doc_PrintLines	(nDocID,  0, "Dlatego podczas usuwania ¿¹d³a nale¿y przestrzegaæ nastêpuj¹cej zasady:");
				Doc_PrintLines	(nDocID,  0, "¯¹d³o rozcinamy od koñca a¿ do samej podstawy.");
				Doc_PrintLines	(nDocID,  0, "Usuwamy skórê, a nastêpnie nacinamy tkankê otaczaj¹c¹ gruczo³.");
				Doc_PrintLines	(nDocID,  0, "Zawiera ona substancjê o w³aœciwoœciach leczniczych.");
				Doc_PrintLines	(nDocID,  0, "Jednak ludzki organizm po jakimœ czasie uodparnia siê na jej dzia³anie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Damarok");
				Doc_Show		(nDocID);
	
	if (Knows_Bloodfly == false)
	{
		Knows_Bloodfly = true;
		Log_CreateTopic (Topic_Bonus, LOG_NOTE);
		B_LogEntry (Topic_Bonus, "Teraz wiem, jak uzyskaæ substancjê lecznicz¹ z ¿¹de³ krwiopijców.");
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
				Doc_PrintLine	(nDocID,  0, "D³ug mo¿e zostaæ sp³acony poprzez");
				Doc_PrintLine	(nDocID,  0, "przejêcie zastawionego przedmiotu, którego");
				Doc_PrintLine	(nDocID,  0, "wartoœæ równa jest wartoœci d³ugu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Zastawiono: ozdobny z³oty kielich");
				Doc_PrintLines	(nDocID,  0, "z kolekcji Krwawych Kielichów");
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
	TEXT[3]			=	"Dziêki tym dokumentom nie";
	TEXT[4]			=   "zatrzymaj¹ mnie stra¿nicy miejscy.";
};
instance ItWr_VatrasMessage	(ItemPR_Mission)
{
	name 			=	"Zapieczêtowana wiadomoœæ";
	visual 			=	"ItWr_Scroll_02.3DS";
	description		=	name;
	TEXT[2]			=   "Wiadomoœæ od Vatrasa";
	TEXT[3]			=   "do Magów Ognia.";
};
instance ItWr_Passage_MIS (ItemPR_Mission)
{
	name 			=	"Propozycja Lee dla paladynów";
	visual 			=	"ItWr_Scroll_01.3DS";
	description		=	name;
	TEXT[3]			=	"Dziêki tej wiadomoœci byæ mo¿e uda";
	TEXT[4]			=   "mi siê porozmawiaæ z Lordem Hagenem.";
};
instance ItWr_ForgedShipLetter_MIS (ItemPR_Mission)
{
	name 			=	"Akt okrêtowy";
	visual 			=	"ItWr_Scroll_02.3DS";
	description		=	name;
	TEXT[2]			=	"Upowa¿nienie";
	TEXT[3]			=   "do korzystania z okrêtu paladynów.";
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
	name 			=	"List polecaj¹cy";
	visual 			=	"ItWr_Scroll_01.3DS";
	description		=	"List polecaj¹cy dla Pyrokara";
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
	name 			=	"Dwór Irdorath";
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
				Doc_PrintLines	(nDocID,  0, "Jeœli Larius nadal bêdzie postêpowa³ w ten sposób, nic tu po mnie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ostatniej nocy spotka³o mnie coœ dziwnego. Jeden z tych mê¿czyzn w czarnych kapturach z³o¿y³ mi wizytê. Podobno s¹ oni s³ugami z³a, jednak mój goœæ mia³ w sobie coœ, co budzi³o zaufanie. Niemal czu³em bij¹c¹ od niego moc, choæ kiedy przemówi³, jego g³os by³ spokojny.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zaoferowa³ mi 20.000 sztuk z³ota, jeœli doprowadzê do skazania jednego z najemników. Powiedzia³, ¿e nied³ugo zrozumiem, co mia³ na myœli.");
				Doc_PrintLines	(nDocID,  1, "Oczywiœcie zgodzi³em siê od razu, ci najemnicy i tak nie zas³uguj¹ na nic lepszego. Gdyby nie oni, moje ¿ycie by³oby du¿o ³atwiejsze. A z³oto zapewni mi dobrobyt a¿ do koñca mych dni.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Sta³o siê - aresztowali jednego z najemników. Zamierzam dotrzymaæ danego s³owa.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ITWR_DementorObsessionBook_MIS (ItemPR_Mission)
{
	name 			=	"Almanach Opêtanych";
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
				Doc_PrintLine	(nDocID,  0, "Opêtani");
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
				Doc_PrintLines	(nDocID,  0, "pewnie zastanawiasz siê, jak napisa³yœmy ten list. Otó¿ zabra³yœmy wszystkie nasze oszczêdnoœci do Mistrza Marlasa i poprosi³yœmy, aby go dla nas napisa³. ¿yczymy ci wszystkiego najlepszego i przesy³amy ten obrazek jako prezent po¿egnalny - niechaj przypomina ci o nas podczas nocy, które spêdzisz w klasztorze.");
				Doc_PrintLines	(nDocID,  0, "Mamy nadziejê, ¿e lubisz takie obrazki.");
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
	name 			=	"Zwitek papierów";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   Use_BabosDocs;
	scemeName		=	"MAPSEALED";
	
	description		=	name;
	TEXT[2]			=   "Kilka dokumentów";
	TEXT[3]			=   "zwiniêtych w rulon.";
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
	name 			=	"Udzia³ w kopalni rudy Khorinis";
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
				Doc_PrintLine	(nDocID,  0, "Udzia³ w kopalni rudy");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Na mocy królewskiego Aktu W³asnoœci, wystawionego na czêœæ ziem królewskich, posiadacz tego dokumentu mo¿e eksploatowaæ surowce tych ziem,");
				Doc_PrintLines	(nDocID,  0, "na obszarze nie wiêkszym jednak ni¿ jeden ar królewski.");
				Doc_PrintLines	(nDocID,  0, "Na mocy Prawa o Miarach ar królewski równa siê powierzchni¹ fragmentowi terenu o szerokoœci 16 kroków i d³ugoœci 3.");
				Doc_PrintLines	(nDocID,  0, "Posiadacz tego dokumentu zostaje nadto zwolniony z obowi¹zków nak³adanych przez prawa swobody dostêpu,");
				Doc_PrintLines	(nDocID,  0, "jeœli jednak nie zdo³a uiœciæ op³aty za u¿ytkowane ziemie, to powróc¹ one na w³asnoœæ Korony.");
				Doc_PrintLine	(nDocID,  0, "     Podpisano");
				Doc_PrintLine	(nDocID,  0, "     Rz¹dca królewski,");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "          Salandril");
				Doc_Show		(nDocID);
	
	SC_KnowsProspektorSalandril = true;
	
	if (ItWr_MinenAnteil_Mis_OneTime == false)
	{
		B_LogEntry (TOPIC_MinenAnteile, "Goœæ, który sprzeda³ te udzia³y kupcom, ma na imiê Salandril. Pewnie naj³atwiej go bêdzie znaleŸæ w górnym Khorinis - chyba ¿e ju¿ zwia³ przed d³ugim ramieniem sprawiedliwoœci.");
		
		if (Npc_IsDead(Salandril))
		{
			B_LogEntry (TOPIC_MinenAnteile, "Salandril nie ¿yje. Trzeba o tym powiedzieæ Serpentesowi.");
		};
		ItWr_MinenAnteil_Mis_OneTime = true;
	};
};
///******************************************************************************************
instance ItWr_RichterKomproBrief_MIS (ItemPR_Mission)
{
	name 			=	"Zlecenie sêdziego";
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
				Doc_PrintLines	(nDocID,  0, "Morgahard - ty robaku! Lepiej rób, co ci ka¿ê, albo inaczej sobie pogadamy. Byæ mo¿e nawet bêdê musia³ was aresztowaæ.");
				Doc_PrintLines	(nDocID,  0, "Sprawê trzeba za³atwiæ jutro w nocy, Larius coœ podejrzewa.");
				Doc_PrintLines	(nDocID,  0, "Jeœli teraz nie wyci¹gniemy od niego forsy, to mo¿e nie byæ kolejnej okazji. Zadbam o to, abyœcie go spotkali wieczorem na targowisku.");
				Doc_PrintLines	(nDocID,  0, "Tylko nie róbcie ha³asu. Chyba nie chcecie, ¿eby wsiedli na was stra¿nicy?");
				Doc_PrintLines	(nDocID,  0, "A gdyby mia³ go spotkaæ jakiœ nieszczêœliwy wypadek, to ja p³aka³ nie bêdê.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "          G³ówny sêdzia i");
				Doc_PrintLine	(nDocID,  0, "          królewski sekretarz");
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
				Doc_PrintLines	(nDocID,  0, "Zrobi³em to. Mam nadziejê, ¿e spotkamy siê jeszcze, gdy ca³e zamieszanie przycichnie.");
				Doc_PrintLines	(nDocID,  0, "Nie martwcie siê. Jeœli wszystko zawiedzie, poproszê Onara o za³atwienie sprawy.");
				Doc_PrintLines	(nDocID,  0, "Wszystko bêdzie w porz¹dku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "     M.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Map_Shrine_MIS (ItemPR_Mission)
{
	name 			=	"Mapa œwiêtych kapliczek";
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
		B_LogEntry (TOPIC_OrcElite, "Przy orkowym pu³kowniku znalaz³em dziwn¹ mapê. Wygl¹da jak plan dzia³añ wojennych tych stworzeñ.");
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
				Doc_PrintLines	(nDocID,  0, "Podejrzewa³em, ¿e Ÿród³em z³a w Górniczej Dolinie by³ jeden ze smoków.");
				Doc_PrintLines	(nDocID,  0, "Myli³em siê.");
				Doc_PrintLines	(nDocID,  0, "Jeœli wszystko przebieg³o zgodnie z moim");
				Doc_PrintLines	(nDocID,  0, "planem, szukasz teraz zapewne Dworu Irdorath. ");
				Doc_PrintLines	(nDocID,  0, "Ksi¹¿ka, któr¹ da³eœ Pyrokarowi, zawiera wszystkie potrzebne Ci wskazówki.");
				Doc_PrintLines	(nDocID,  0, "Powinienem by³ siê domyœliæ, dlaczego Poszukiwacze tak bardzo");
				Doc_PrintLines	(nDocID,  0, "chcieli j¹ zdobyæ.");
				Doc_PrintLines	(nDocID,  0, "Musisz j¹ odzyskaæ!");
				Doc_PrintLines	(nDocID,  0, "Otworzysz j¹ s³owami 'XARAK BENDARDO'. Tylko nie mów o tym nikomu!");
				Doc_PrintLines	(nDocID,  0, "Muszê zaj¹æ siê teraz wa¿niejszymi sprawami.");
				Doc_PrintLines	(nDocID,  0, "Odt¹d jesteœ zdany jedynie na siebie. Tylko Ty mo¿esz pokonaæ Ÿród³o z³a.");
				Doc_PrintLines	(nDocID,  0, "Jeszcze siê spotkamy!");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "                             Xardas.");
				Doc_Show		(nDocID);
	
	if (MIS_Xardas_SCCanOpenIrdorathBook == false)
	{
		B_LogEntry (TOPIC_BuchHallenVonIrdorath, "W swoim liœcie Xardas poinformowa³ mnie, jakie s³owa otwieraj¹ ksiêgê DWÓR IRDORATH.");
	};
	MIS_Xardas_SCCanOpenIrdorathBook = true;
};
///******************************************************************************************
instance ItWr_HallsofIrdorath_Mis (ItemPR_Mission) 
{	
	name 			=	"Dwór Irdorath";
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
		
		Print("W ok³adce tej ksiêgi schowano klucz!");
		B_GivePlayerXP(XP_BONUS_10);
		ItWr_HallsofIrdorathIsOpen = true;
		
		B_LogEntry (TOPIC_BuchHallenVonIrdorath, "Uda³o mi siê otworzyæ ksiêgê Xardasa. Znalaz³em w niej tajemnicz¹ wiadomoœæ i dziwny klucz. Kto wie, co jeszcze kryje siê w klasztornych podziemiach."); 
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
	name 			=	"Dwór Irdorath";
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
		B_LogEntry (TOPIC_BuchHallenVonIrdorath, "Przeczyta³em ksiêgê Xardasa. Jest w niej wzmianka o tajnej bibliotece, która zapewne znajduje siê w podziemiach klasztoru."); 
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
				Doc_PrintLines	(nDocID,  0, "...tak oto ukry³em wejœcie do biblioteki za zamaskowanymi drzwiami, by uchroniæ moje zapiski ze œwi¹tyñ Beliara.");
				Doc_PrintLines	(nDocID,  0, "Gdyby dowiedzieli siê o nich moi bracia, mogliby je pochopnie zniszczyæ.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont 	(nDocID,  1, FONT_BookHeadline);
				Doc_PrintLine	(nDocID,  1, "");										
				Doc_SetFont 	(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Teraz zaœ wiedz¹ tylko, ¿e œwi¹tynie te niegdyœ istnia³y.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Na wszelki wypadek zostawi³em kilka s³ug na stra¿y biblioteki.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ten klucz otwiera ostatnie drzwi.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_XardasSeamapBook_Mis (ItemPR_Mission) 
{
	name 			=	"Zakurzona ksiêga";
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
				Doc_PrintLines	(nDocID,  0, "...Jestem pewien, ¿e ta budowla to Dwór Irdorath. Znajduje siê on na niewielkiej wyspie, ca³kiem blisko przystani w Khorinis. Nie ma w¹tpliwoœci, ¿e Beliara interesuje ruda z kopalñ...");
				Doc_PrintLines	(nDocID,  0, "");
				
				if (hero.guild == GIL_PAL)
				{
					Doc_PrintLines	(nDocID,  0, "...Im s¹ potê¿niejsi, tym bardziej przydatni bêd¹ dla niego jako o¿ywieñczy s³udzy. Pokonanie tych upad³ych paladynów to nie³atwe zadanie. Jeden z nich wpad³ w moje rêce. Mam tylko nadziejê, ¿e pozostali nie dowiedz¹ siê o nim...");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_SetFont 	(nDocID,  1, FONT_BookHeadline);
					Doc_SetFont 	(nDocID,  1, FONT_Book);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "...Upad³y paladyn nie reaguje na ¿adne bodŸce. Jego zbrojê i inne przedmioty schowa³em w tylnej komorze. Drzwi mo¿na otworzyæ tylko od wewn¹trz, wiêc stworzy³em na tê okazjê specjaln¹ runê teleportacji. Instrukcje s¹ w almanachu, by móg³ je znaleŸæ Wybraniec...");
				};
				if (hero.guild == GIL_KDF)
				{
					Doc_PrintLines	(nDocID,  0, "...Znaki s¹ jasne! Gdy przybêdzie Wybrany, przyda siê mu ka¿da pomoc. Beliar i tak jest ju¿ zbyt silny. Zgromadzi³em tu na wszelki wypadek kilka przydatnych artefaktów. Podejrzewam, ¿e Wybraniec bêdzie jednym z nas,");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_SetFont 	(nDocID,  1, FONT_BookHeadline);
					Doc_SetFont 	(nDocID,  1, FONT_Book);
					Doc_PrintLines	(nDocID,  1, "dlatego spisa³em dla niego instrukcje w almanachu.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "...Nie mam ju¿ z³udzeñ. Jesteœmy bezbronni wobec wyroków losu. Gdy Beliar odpowiednio uroœnie w si³ê, spróbuje przej¹æ w³adzê nad ca³ym œwiatem. Muszê znaleŸæ Wybrañca!");
				};
				if (hero.guild == GIL_DJG)
				{
					Doc_PrintLines	(nDocID,  0, "...Wybuchnie wojna, która zadecyduje o losach œwiata. Chyba jestem jedynym, który potrafi odczytaæ znaki. Pozostali po prostu je ignoruj¹. Wybraniec nadejdzie, a jego przyjœcie bêdzie oznaczaæ pocz¹tek wojny. Odwieczna rywalizacja mo¿e zostaæ rozstrzygniêta.");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_SetFont 	(nDocID,  1, FONT_BookHeadline);
					Doc_SetFont 	(nDocID,  1, FONT_Book);
					Doc_PrintLines	(nDocID,  1, "Nie bêdê sta³ bezczynnie, pozwalaj¹c innym decydowaæ o losach œwiata.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "...Ze staro¿ytnych pism dowiedzia³em siê, jak stworzyæ legendarn¹ broñ pradawnych Smoczych Mistrzów. Nie wiem jednak, gdzie szukaæ potrzebnych sk³adników. Na wszelki wypadek zapisa³em wszystko w almanachu. Kto wie, mo¿e przyjdzie nam walczyæ tak¿e ze smokami."); 
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
	TEXT[0]			=	"z ksiêgi 'Dwór Irdorath'";
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
				Doc_PrintLine	(nDocID,  0, "     Lampa rzuca œwiat³o");
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
	    B_LogEntry (TOPIC_SHIP, "Wygl¹da na to, ¿e muszê siê dostaæ na wyspê nieprzyjaciela. Bêdê potrzebowa³ statku, za³ogi i kapitana.");
		B_GivePlayerXP(XP_BONUS(2000));
	};
	
	MIS_SCKnowsWayToIrdorath = true;
};
///******************************************************************************************
instance ItWr_LastDoorToUndeadDrgDI_MIS	(ItemPR_Mission)
{
	name 			=	"Zwój czarnego maga";
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
				Doc_PrintLine	(nDocID,  0, "Niech Oko Mocy oœwietli tw¹ œcie¿kê.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
				Doc_Show		(nDocID);
	
	B_LogEntry (TOPIC_HallenVonIrdorath, "In der Schriftrolle des Schwarzmagiers waren die Worte KHADOSH EMEM KADAR zu lesen. Das hört sich an wie eine Beschwörungsformel, aber worauf läßt sich das anwenden und was ist das Auge der Macht?"); 
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
				Doc_PrintLines	(nDocID,  0, "Ju¿ od 36 dni czekam na wezwanie. Zaczynam w¹tpiæ, czy siê doczekam - mimo ¿e zrobi³em wszystko, o co mnie proszono. Lata³em dla nich i przynosi³em ró¿ne rzeczy jak jakiœ lokaj.");
				Doc_PrintLines	(nDocID,  0, "Klucznik nakaza³ mi zamkniêcie krat, ale jeszcze siê do tego nie zabra³em. Jak tak dalej pójdzie, to ka¿dy bêdzie sobie móg³ po prostu wejœæ przez bramê...");
				Doc_PrintLines	(nDocID,  0, "Szkoda, ¿e nie pamiêtam w³aœciwych kombinacji.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont 	(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bardzo dawno ju¿ nie zakrada³em siê do wielkiej komnaty i nie mogê siê doczekaæ spotkania z Mistrzem. Ciekaw jestem, czy pozwol¹ mi na nie, gdy ju¿ do nich do³¹czê.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wczoraj podj¹³em próbê, ale dotar³em tylko do komnaty z dwoma dŸwigniami - nawet nie zdo³a³em wypróbowaæ kombinacji prze³¹czników w zachodnim skrzydle! Ta œwinia pozamyka³a komnaty. Jutro spróbujê wydostaæ od niego klucz...");
				Doc_Show		(nDocID);
	
	B_LogEntry (TOPIC_HallenVonIrdorath, "Dziennik ucznia czarnego maga wspomina o komnatach z dŸwigniami, kluczniku, kombinacji prze³¹czników... Trzeba to zapamiêtaæ, nigdy nie wiadomo, kiedy mo¿e siê przydaæ."); 
};
///******************************************************************************************
instance ITWr_Addon_Joint_01 (ItemPR_Mission)
{
	name 			=	"Zielony nowicjusz";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_Joint_Rezept_01;
	scemeName		=	"MAP";
	
	TEXT[0]			= 	"Le¿a³ w skrzyni Fortuna";
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
				Doc_PrintLine	(nDocID,  0, "Der grüne Novize");
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "(...) Te ³odygi mo¿na ca³kiem nieŸle zwijaæ, ale nie ma porównania z tym, co mieliœmy w obozie na bagnie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jeœli wezmê wyci¹g z dwóch ³odyg bagiennego ziela i zmieszam go z polnym rdestem, mo¿na to bêdzie porównaæ do zielonego nowicjusza.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zielony nowicjusz ³agodzi wszystkie bóle i oczyszcza umys³.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Addon_SUMMONANCIENTGHOST (ItemPR_Mission)
{
	name 			=	"Przywo³anie Quarhodrona";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   UseSummonAncientGhost;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[1]			=	"Za pomoc¹ tego zwoju mo¿esz przywo³aæ Quarhodrona.";
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
	name 			=	"Zapieczêtowana wiadomoœæ";
	mainflag 		=	ITEM_KAT_DOCS;
	
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   Use_SaturasFirstMessage;
	scemeName		=	"MAPSEALED";
	
	description		=	name;
	TEXT[2]			=   "Ta wiadomoœæ zosta³a dok³adnie zapieczêtowana.";
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
				Doc_PrintLines	(nDocID,  0, "Dotarliœmy do portalu. Mia³eœ racjê.");
				Doc_PrintLines	(nDocID,  0, "S¹ znaki wskazuj¹ce na to, ¿e naprawdê czcili Adanosa. SprawdŸ, proszê, moje notatki i potwierdŸ nasze ustalenia.");
				Doc_PrintLines	(nDocID,  0, "Od kilku dni nie widzieliœmy tych dziwnych kamiennych istot.");
				Doc_PrintLines	(nDocID,  0, "Ziemia wci¹¿ trzêsie siê z niewiadomych powodów.");
				Doc_PrintLines	(nDocID,  0, "S¹dzê, ¿e nasze badania wkrótce wska¿¹ nam, co mo¿e byæ tego przyczyn¹.");
				Doc_PrintLines	(nDocID,  0, "Znaleziony przez nas ornament ma wiêksze znaczenie, ni¿ wczeœniej s¹dziliœmy. Wydaje nam siê, ¿e jest to jakiœ klucz-artefakt. Niestety, nie jest kompletny. Musimy go dok³adniej zbadaæ.");
				Doc_PrintLines	(nDocID,  0, "Wyœlij jednego z cz³onków Wodnego Krêgu, by nam go dostarczy³. Jeœli to mo¿liwe, nie przysy³aj Cavalorna.");
				Doc_PrintLines	(nDocID,  0, "Poprosi³em go ju¿ o dostarczenie Ci tego listu. Wydaje mi siê, ¿e ju¿ wystarczaj¹co nam pomóg³.");
				Doc_PrintLines	(nDocID,  0, "Mam nadziejê, ¿e postêpujemy w³aœciwie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Saturas");
				Doc_Show		(nDocID);
	
	if (QuestStep_CavalornLetter != LOG_SUCCESS)
	{
		Log_CreateTopic (TOPIC_Addon_KDW, LOG_MISSION);
		Log_SetTopicStatus (TOPIC_Addon_KDW, LOG_RUNNING);
		B_LogEntry (TOPIC_Addon_KDW, "Zabra³em bandycie wiadomoœæ, któr¹ Cavalorn mia³ dostarczyæ Vatrasowi, Magowi Wody. To teraz moje zadanie.");
	};
	if (SC_KnowsRanger == false)
	{
		Log_CreateTopic (TOPIC_Addon_RingOfWater, LOG_MISSION);
		Log_SetTopicStatus (TOPIC_Addon_RingOfWater, LOG_RUNNING);
		Log_AddEntry (TOPIC_Addon_RingOfWater, "Istnieje stowarzyszenie zw¹ce siê Wodnym Krêgiem. Wygl¹da na to, ¿e rz¹dz¹ nim Magowie Wody.");
	};
	if (SC_IsRanger == false)
	{
		Log_CreateTopic (TOPIC_Addon_RingOfWater, LOG_MISSION);
		Log_SetTopicStatus (TOPIC_Addon_RingOfWater, LOG_RUNNING);
		Log_AddEntry (TOPIC_Addon_RingOfWater, "Cavalorn nale¿y do Wodnego Krêgu."); 
	};
	
	CreateInvItem (self, ItWr_SaturasFirstMessage_Addon);
	SC_KnowsRanger = true;
};
///******************************************************************************************
instance ItWr_SaturasFirstMessage_Addon (ItemPR_Mission)
{
	name 			=	"Zapieczêtowana wiadomoœæ";
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
	TEXT[1]			=	"gdzie wed³ug Nefariusa znajduj¹ siê brakuj¹ce ornamenty.";
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
	name 			=	"List polecaj¹cy";
	visual 			=	"ItWr_Scroll_01.3DS";
	
	description		=  	"List polecaj¹cy dla Lorda Andre";
	TEXT[2]			= 	"Powinien mi umo¿liwiæ";
	TEXT[3]			= 	"wst¹pienie w szeregi stra¿y.";
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
	TEXT[2]			= 	"Zabra³em ten list";
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
		B_LogEntry (TOPIC_Addon_WhoStolePeople, "Teraz mam to na piœmie. Kruk, dawny magnat, stoi za porwaniami mieszkañców Khorinis. Jego kryjówka znajduje siê gdzieœ za górami, w pó³nocno-wschodniej czêœci Khorinis. Vatras powinien zobaczyæ ten dokument.");
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
				Doc_PrintLines	(nDocID,  0, "Kiedy jeszcze by³em magnatem, mo¿na by³o bardziej na tobie polegaæ.");
				Doc_PrintLines	(nDocID,  0, "Jeœli nie zdo³asz porwaæ wiêcej ludzi z miasta i przys³aæ ich do mnie, to bêdziemy mieli niez³y problem z ch³opakami w naszej kryjówce.");
				Doc_PrintLines	(nDocID,  0, "Potrzebujê tu wiêcej niewolników albo ch³opaki zaczn¹ siê buntowaæ. Chyba nie muszê ci mówiæ, co to znaczy, prawda?");
				Doc_PrintLines	(nDocID,  0, "Jestem bardzo bliski dostania siê do œwi¹tyni. Nie mogê sobie pozwoliæ na ¿adne, absolutnie ¿adne k³opoty.");
				Doc_PrintLines	(nDocID,  0, "A, jest jeszcze jeden problem:");
				Doc_PrintLines	(nDocID,  0, "Prêdzej czy póŸniej bêdziemy musieli znaleŸæ drogê przez wysokie góry w pó³nocno-wschodnim Khorinis. Piraci nie zapewni¹ nam transportu, kiedy przestaniemy im p³aciæ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "     Kruk");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Vatras_KDFEmpfehlung_Addon (ItemPR_Mission)
{
	name 			=	"List polecaj¹cy";
	visual 			=	"ItWr_Scroll_01.3DS";
	
	description		=  	"List polecaj¹cy od Vatrasa";
	TEXT[2]			= 	"Powinien pomóc mi";
	TEXT[3]			= 	"wejœæ do klasztoru Magów Ognia";
	TEXT[4]			= 	"bez zap³aty.";
};
///******************************************************************************************
instance ItWr_LuciasLoveLetter_Addon (ItemPR_Mission)
{
	name 			=	"List po¿egnalny Lucii";
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
	B_LogEntry (TOPIC_Addon_Lucia, "Lucia napisa³a list po¿egnalny dla Elvricha. Z pewnoœci¹ bêdzie chcia³ go przeczytaæ.");
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
				Doc_PrintLines	(nDocID,  0, "Najdro¿szy Elvrichu,");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "¯adne s³owa nie oddadz¹ tego, jak mi przykro.");
				Doc_PrintLines	(nDocID,  0, "Wiem, ¿e ciê¿ko bêdzie ci to zrozumieæ. Dosz³am jednak do wniosku, ¿e lepiej bêdzie dla nas obojga, jeœli znajdziesz sobie porz¹dniejsz¹ dziewczynê.");
				Doc_PrintLines	(nDocID,  0, "Udajê siê w miejsce, z którego ju¿ nie wrócê. Zapomnij o mnie. Nieprzyzwoita dziewczyna jak ja nie zas³uguje na takiego dobrego ch³opaka. ¯egnaj.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "     Lucia");
				Doc_Show		(nDocID);
};
///******************************************************************************************
prototype EffectItemprototype_Addon (C_Item)
{
	name 			=	"Kamieñ";
	
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
	TEXT[2]			= 	"Zabra³em ten list bandytom";
	TEXT[3]			= 	"za farm¹ Sekoba.";
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
				Doc_PrintLines	(nDocID,  0, "15 krótkich mieczy");
				Doc_PrintLines	(nDocID,  0, "20 pa³aszy");
				Doc_PrintLines	(nDocID,  0, "25 bochenków chleba");
				Doc_PrintLines	(nDocID,  0, "15 butelek wina");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To ju¿ ostatni raz. ");
				Doc_PrintLines	(nDocID,  0, "Zaczyna robiæ siê za gor¹co.");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "     Fernando");
				Doc_Show		(nDocID);
	
	if (MIS_Vatras_FindTheBanditTrader != 0)
	&& (Use_ItWr_Addon_BanditTrader_OneTime == false)
	{
		B_LogEntry (TOPIC_Addon_BanditTrader, "Znalaz³em dokument potwierdzaj¹cy, ¿e Fernando jest handlarzem broni¹, którego szukam.");
		Use_ItWr_Addon_BanditTrader_OneTime = true;
	};
};
///******************************************************************************************
instance ItWr_Vatras2Saturas_FindRaven (ItemPR_Mission)
{
	name 			=	"Przesy³ka";
	visual 			=	"ItWr_Scroll_02.3DS";
	description		=   "Wiadomoœæ Vatrasa dla Saturasa";
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
					Doc_PrintLines	(nDocID,  0, "My, trzej pozostali przywódcy Rady Piêciu, za³o¿yliœmy pu³apki w œwi¹tyni i zapieczêtowaliœmy jej wejœcie. Oby miecz na zawsze ju¿ pozosta³ w mroku.");
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
	name 			=	"¯ó³ta kamienna tablica"; 
	visual 			=	"ItMi_StonePlate_Read_04.3ds";
	on_state[0]		=	Use_Addon_Stone_05;
	scemeName		=	"MAP";
	
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_WEAKGLIMMER";
	
	description		=	name;
	TEXT[2]			= 	"¯ó³ta kamienna tablica";
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
					Doc_PrintLines	(nDocID,  0, "Ja, który sprzeciwi³em siê rozkazom trójki, zbudowa³em pierwsz¹ pu³apkê. I tylko ja znam w³aœciwe wrota.");
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
					Doc_PrintLines	(nDocID,  0, "KHARDIMON przygotowa³ drug¹ pu³apkê. Tylko ten, kto nie zejdzie ze œcie¿ki œwiat³a, dotrze do trzeciej komnaty.");
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
					Doc_PrintLines	(nDocID,  0, "Trzecia pu³apka zosta³a zbudowana przez QUARHODRONA i jedynie on wie, jak otworzyæ bramê.");
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
					Doc_PrintLines	(nDocID,  0, "QUARHODRON by³ te¿ tym, który z pomoc¹ KHARDIMONA zapieczêtowa³ zewnêtrzn¹ bramê œwi¹tyni. ¯aden z nich nie prze¿y³ tego rytua³u.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Jedynie ja pozosta³em, aby byæ œwiadkiem tych wydarzeñ.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Oby RADEMES przez ca³¹ wiecznoœæ gni³ wewn¹trz œwi¹tyni!");
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
				Doc_PrintLine	(nDocID,  0, "Suma ³upów: 14560");
				Doc_PrintLine	(nDocID,  0, "-----------------------");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Za³oga       : 9840");
				Doc_PrintLine	(nDocID,  0, "Oficerowie   : 2500");
				Doc_PrintLine	(nDocID,  0, "Kapitan      : 1200");
				Doc_PrintLine	(nDocID,  0, "-----------------------");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "moja dzia³ka  : 2220");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Fregata 'Miriam'"	);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Suma ³upów: 4890");
				Doc_PrintLine	(nDocID,  0, "-----------------------");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Za³oga       : 2390");
				Doc_PrintLine	(nDocID,  0, "Oficerowie   : 500");
				Doc_PrintLine	(nDocID,  0, "Kapitan      : 500");
				Doc_PrintLine	(nDocID,  0, "----------------------");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "moja dzia³ka  : 1000");
				Doc_PrintLine	(nDocID,  0, "");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont 	(nDocID,  1, FONT_Book);
 				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Statek handlowy 'Nico'");
				Doc_SetFont 	(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Suma ³upów: 9970");
				Doc_PrintLine	(nDocID,  1, "----------------------");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Za³oga       : 5610");
				Doc_PrintLine	(nDocID,  1, "Oficerowie   : 1500");
				Doc_PrintLine	(nDocID,  1, "Kapitan      : 1000");
				Doc_PrintLine	(nDocID,  1, "----------------------");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "moja dzia³ka  : 1860");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Statek kupiecki 'Maria'");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Suma ³upów: 7851");
				Doc_PrintLine	(nDocID,  1, "----------------------");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Za³oga       : 4000");
				Doc_PrintLine	(nDocID,  1, "Oficerowie   : 750");
				Doc_PrintLine	(nDocID,  1, "Kapitan      : 1000");
				Doc_PrintLine	(nDocID,  1, "----------------------");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "moja dzia³ka  : 1701");
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
				Doc_PrintLines	(nDocID,  0, "Mam ju¿ doœæ tej pla¿y! Wokó³ tylko piasek. Nie mogê nawet spaæ, bo mnie wszêdzie swêdzi. Czas, ¿eby Kruk w koñcu sypn¹³ z³otem za wiêŸniów i ¿ebyœmy w koñcu st¹d odp³ynêli. Coœ mi siê zdaje, ¿e muszê powa¿nie pogadaæ z tym bufonem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Co ten pacan sobie wyobra¿a? Kaza³ odprawiæ mnie z kwitkiem swoim œmierdz¹cym najemnikom. Wkrótce siê dowie, z kim ma do czynienia. Na pocz¹tek za³atwiê tego s³u¿alca Bloodwyna.");
				Doc_PrintLines	(nDocID,  0, "Jeœli wkrótce nie zap³aci, bêdê musia³ zrobiæ siê naprawdê niemi³y.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont 	(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Bandyci siê rozzuchwalili. Wci¹¿ nie zap³acili za ostatni transport. Po prostu za ma³o wiemy. Muszê wybadaæ, co planuje Kruk.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wezmê wiêkszoœæ za³ogi na kontynent i zabezpieczymy rudê. Francis zostanie z paroma ludŸmi i ufortyfikuje obóz.");
				Doc_PrintLines	(nDocID,  1, "Aby mieæ pewnoœæ, ¿e ka¿dy ma zajêcie, da³em Bonesowi zbrojê. Przekradnie siê w niej do obozu bandytów i dowie siê, co knuje Kruk.");
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
	TEXT[1]			=	"Na mapie s¹ zaznaczone jakieœ miejsca.";
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
