// *****************************************************************
// //Joly: Auge Innos nicht dabei? Kein Problem. Xardas hilft auch dir Idiot!!!!!!!!!!!!
// Vorsicht: Nur für D.A.U.s
// *****************************************************************

INSTANCE ItSe_XardasNotfallBeutel_MIS	(C_Item)
{
	name 				=	"Bardzo dziwna skórzana torba";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Pocket.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_METAL;
	on_state[0]			=   Use_XardasNotfallBeutel;
	
	description			= 	name;
	
	TEXT[0]				= 	"";
	TEXT[1]				= 	"Wydaje siê zawieraæ";
	TEXT[2]				= 	"coœ twardego i jakiœ";
	TEXT[3]				= 	"dokument.";
	TEXT[4]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID Use_XardasNotfallBeutel ()
{
	CreateInvItems (hero, ItWr_XardasErmahnungFuerIdioten_MIS ,1);
	CreateInvItems (hero, ItAm_InnosEye ,1);

	var string concatText;
		
	concatText = ConcatStrings( "2" , PRINT_ItemsErhalten);		
	Print (concatText);
}; 

//**********************************************************************************
//	ItWr_XardasErmahnungFuerIdioten_MIS
//**********************************************************************************

INSTANCE ItWr_XardasErmahnungFuerIdioten_MIS	(C_Item)
{
	name 				=	"List ostrzegawczy Xardasa";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_XardasErmahnungFuerIdioten;
	scemeName			=	"MAP";
	description			= 	name;
};
func void Use_XardasErmahnungFuerIdioten ()
{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Mój m³ody przyjacielu - wielce mnie rozczarowa³a twoja postawa. Jak mog³eœ odp³yn¹æ bez Oka Innosa?"					);
					Doc_PrintLines	( nDocID,  0, "Liczyæ mogê jedynie na to, ¿e nawet twe niedbalstwo ma granice. W przeciwnym wypadku nie wygnasz Z³a ze œwiata i bêdê musia³ osobiœcie ocaliæ ciê od twej g³upoty."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "                      Xardas"					);
					
					Doc_Show		( nDocID );
};

//**********************************************************************************
//	Brief in der Krypta
//----------------------------------------------------------------------------------

INSTANCE ItWr_Krypta_Garon		(C_Item)
{
	name 				=	"Stary list";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Krypta_Garon;
	scemeName			=	"MAP";
	description			= 	name;

	TEXT[3]				= 	"Pisany niepewn¹ rêk¹.";
};
func void Use_Krypta_Garon ()
{   
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels

					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Zawiod³em. P³onne me nadzieje na zatrzymanie Inubisa na œcie¿ce dobra."					);
					Doc_PrintLines	( nDocID,  0, "Na pocz¹tku s¹dzi³em, ¿e nie ¿yjê, ale w starych koœciach Ivana drzemie jeszcze si³a."					);
					Doc_PrintLines	( nDocID,  0, "Inubis jednak powsta³ z martwych i szuka zemsty za wygnanie przez prastary zakon paladynów."					);
					Doc_PrintLines	( nDocID,  0, "Towarzyszy mu wielu wyznawców... Jak wojownik pokroju Inubisa móg³ staæ siê tak z³y?"					);
					Doc_PrintLines	( nDocID,  0, "Znalaz³em w tej krypcie jego grób, nie wiem jednak, czy zdo³am przekazaæ komuœ wieœci o moim odkryciu, piszê wiêc te s³owa w nadziei na to, ¿e zostan¹ odnalezione."					);
					Doc_PrintLines	( nDocID,  0, "Strze¿cie siê. Potê¿ny nieprzyjaciel siêga po dusze sprawiedliwych. Inubis nie bêdzie ostatni..."					);
					Doc_PrintLine	( nDocID,  0, " "					);
					Doc_PrintLine	( nDocID,  0, "Niechaj Innos chroni wasze dusze"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "                                 Ivan");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetMargins	( nDocID, -1, 200, 50, 50, 50, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus
				
					Doc_Show		( nDocID );

}; 

//**********************************************************************************
//	ItWr_Rezept_MegaDrink_MIS
//**********************************************************************************

INSTANCE ItWr_Rezept_MegaDrink_MIS	(C_Item)
{
	name 				=	"Receptura";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_RezeptFuerMegaTrank;
	scemeName			=	"MAP";
	description			= 	name;
};
func void Use_RezeptFuerMegaTrank ()
{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Zdo³a³em wskrzesiæ pradawn¹ sztukê, bojê siê jednak, ¿e nie spodoba siê to Feodaronowi."					);
					Doc_PrintLines	( nDocID,  0, "Muszê zmieszaæ ca³e jego potomstwo i stworzyæ z niego miksturê w moim laboratorium. Gdyby jeszcze tylko nie siedzia³ bez przerwy na tych jajach... Nadal jednak czujê wobec niego szacunek."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Embarla Firgasto:"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "10 smoczych jaj, jedna starta na proszek czarna per³a i szczypta siarki."					);
					Doc_PrintLines	( nDocID,  0, "Miksturê nale¿y doprowadziæ do wrzenia i mieszaæ bez przerwy podczas destylacji."					);
					Doc_PrintLines	( nDocID,  0, "Substancji koñcowej nale¿y u¿ywaæ z umiarem, gdy¿ wywo³uje silne efekty uboczne i mo¿e rozchwiaæ ca³y system kontroli nad magi¹."					);
					
					Doc_Show		( nDocID );
		
		PLAYER_TALENT_ALCHEMY[POTION_MegaDrink] = TRUE;
};

//**********************************************************************************
//	ItWr_ZugBruecke_MIS
//**********************************************************************************

INSTANCE ItWr_ZugBruecke_MIS	(C_Item)
{
	name 				=	"Stary list";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_ZugBruecke;
	scemeName			=	"MAP";
	description			= 	name;
};
func void Use_ZugBruecke ()
{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "   Ostatnie ostrze¿enie!"					);
					Doc_SetMargins	( nDocID, -1, 50, 50, 70, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Nic mnie nie obchodzi, czy uda siê wam przeleŸæ przez most z drugiej strony. Dla mnie mo¿ecie piec siê w piekle."					);
					Doc_PrintLines	( nDocID,  0, "Tak d³ugo, jak jestem w swoich w³oœciach, most bêdzie podniesiony, a ka¿dego mêdrka, który bêdzie próbowa³ ustrzeliæ z ³uku prze³¹cznik, ¿eby siê tu dostaæ, osobiœcie wypatroszê i powieszê na najbli¿szym drzewie!"	);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "                      Archol"					);
					
					Doc_Show		( nDocID );
};
