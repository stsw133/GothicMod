//********************************************
//	Das Auge Innos	(Das reparierte Auge, mit dem man mit den Drachen Spricht)
//********************************************

const int AM_EyeProtEdge	= 10;
const int AM_EyeProtPoint	= 10;
const int AM_EyeProtMage	= 20;
const int AM_EyeProtFire	= 30;

//**********************************************************************************
//	ItWr_Astronomy_Mis
//**********************************************************************************

INSTANCE ItWr_Astronomy_Mis (C_ITEM) 
{	
	name 					=	"Boska moc gwiazd";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	400;

	visual 					=	"ItWr_Book_02_02.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	Use_Astronomy;
};

var int Astronomy_once;

FUNC VOID Use_Astronomy()
{   
		if (Astronomy_once == FALSE)
		{
			B_RaiseAttribute (self, ATR_MANA_MAX, 2);
			Print ("Przepe�nia ci� wra�enie obcowania z istot� bosk�.");
			Astronomy_once = TRUE;
		};
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga
					
					//1.Seite
					Doc_SetFont 	( nDocID,  -1, FONT_Book	   			); 	// -1 -> all pages 
 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels					
					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "...jednak kiedy up�r wo�u po��czy si� z przebieg�o�ci� wojownika, strze�cie si�, albowiem b�dziecie �wiadkami wielkich zmian.");
					Doc_PrintLines	( nDocID,  0, "Up�r wo�u po��czony z wytrwa�o�ci� wojownika mo�e zaburzy� odwieczny porz�dek. Kosmiczna materia oddzielaj�ca wymiary staje si� coraz cie�sza i s�absza. Wkr�tce nie b�dzie w stanie powstrzyma� istot Beliara przed wdarciem si� do naszej rzeczywisto�ci.");
					//2.Seite
					Doc_SetMargins	( nDocID,  -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "W pradawnych czasach, kiedy oba �wiaty by�y po��czone siln� wi�zi�, s�udzy Z�a mogli bez przeszk�d pl�drowa� nasze ziemie, i tylko moc Innosa oraz jego Wybra�ca pozwoli�a nam odeprze� ataki Wroga."	);
					Doc_PrintLines	( nDocID,  1, "Je�li taka sytuacja si� powt�rzy, niechaj Innos ma nas w swej opiece, albowiem od stuleci nie by�o po�r�d nas jego Wybra�ca."					);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "");
					Doc_Show		( nDocID );
};

//**********************************************************************************
//	ItWr_VinosKellergeister_Mis
//**********************************************************************************

INSTANCE ItWr_VinosKellergeister_Mis (C_ITEM)
{
	name 					=	"Duch wina";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	Use_VinosKellergeister_Mis;
};

	FUNC VOID Use_VinosKellergeister_Mis()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "BOOK_RED_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "BOOK_RED_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Pot�ga winnego grona"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "...W swoim czasie spr�bowa�em niejednego, ale ten owoc, kt�ry dosta�em w zesz�ym tygodniu z zagranicy... przekroczy� wszystkie oczekiwania..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  0, "...sok z tego winnego grona ma bukiet bogatszy ni� z jakiegokolwiek innego..."					);
					Doc_PrintLines	( nDocID,  0, "");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "...nie jest �le, ale ca�y czas martwi� si�, �e kto� mo�e mnie z�apa� w mojej tajnej pracowni. Nie mam poj�cia, co zrobiliby stra�nicy, gdyby si� o tym wszystkim dowiedzieli. By� mo�e wyrzuciliby mnie poza Barier�..."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  1, "...Nabrali podejrze�. Musz� wszystko zostawi�, dop�ki sprawa troszk� nie przycichnie i nie nabior� pewno�ci, �e nikt mnie ju� nie podejrzewa...");
					Doc_Show		( nDocID );
};

