//Missionitems 2. Kapitel

//********************************************
//	Xardas´ Stein des Wissens   liegt im alten Demonenbeschwörerturm auf dem Tisch in seinem alten Studierzimmer!
//********************************************

INSTANCE ItMi_StoneOfKnowlegde_MIS (C_Item)
{
	name 				=	"Kamieñ Wiedzy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_StoneOfKnowlegde_MIS.3DS";
	material 			=	MAT_STONE;

	description			= 	name;

};

//**********************************************************************************
//	Schreiben von Silvestro
//----------------------------------------------------------------------------------

INSTANCE ItWr_Silvestro_MIS		(C_Item)
{
	name 				=	"Wiadomoœæ";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItwr_Silvestro;
	scemeName			=	"MAP";
	description			= 	"Wiadomoœæ od Silvestra";
};
func void UseItwr_Silvestro ()
{   
	var int nDocID;
		
	nDocID = 	Doc_Create		()			  ;							// DocManager 
				Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
				Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
				Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
				Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
				Doc_PrintLine	( nDocID,  0, "Od królewskiego paladyna Silvestra");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0, "Kolejny dzieñ dr¹¿enia przed nami. Dziœ zamierzamy przebiæ siê przez œcianê skaln¹.");
				Doc_PrintLines	( nDocID,  0, "Mam z³e przeczucia, wiêc zabezpieczê wydobyt¹ dotychczas rudê.");
				Doc_PrintLines	( nDocID,  0, "Tylko Diego zna okolicê. Muszê mu wiêc zaufaæ. To on zabierze skrzynie - ale nie puszczê go samego.");	
				Doc_PrintLines	( nDocID,  0, "Muszê chroniæ rudê za wszelk¹ cenê, wyœlê wiêc z nim dwóch rycerzy.");	
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "Niech ¿yje Król");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "Silvestro");
				Doc_Show		( nDocID );
				
};

//**********************************************************************************
//	Ruf des Dominique
//----------------------------------------------------------------------------------

INSTANCE ItWr_Manowar		(C_Item)
{
	name 				=	"Tekst";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseManowar;
	scemeName			=	"MAP";
	description			=   "S³owa pieœni.";
};
func void UseManowar ()
{   

		var int nDocID;
		
			nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Lament Dominique");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "D¹¿ymy do Jego ³aski.");
					Doc_PrintLines	( nDocID,  0, "Innos chroni mnie i moich braci.");					
					Doc_PrintLines	( nDocID,  0, "Nie pozwolê siê zatrzymaæ mym wrogom,"					);
					Doc_PrintLines	( nDocID,  0, "Albowiem w mym sercu p³onie Jego ogieñ."					);
					Doc_PrintLines	( nDocID,  0, "Moje ostrze s³u¿y tylko Jemu."					);
					Doc_PrintLines	( nDocID,  0, "Niechaj zabrzmi Jego œwiête imiê."					);
					Doc_PrintLines	( nDocID,  0, "Ka¿dy, kto mi siê sprzeciwi"					);
					Doc_PrintLines	( nDocID,  0, "zginie na miejscu,");
					Doc_PrintLines	( nDocID,  0, "bom jest wojownikiem Innosa."					);
					
					Doc_Show		( nDocID );
		
};

//**********************************************************************************
//	BRIEF der Wassermagier
//----------------------------------------------------------------------------------

INSTANCE ItWr_KDWLetter		(C_Item)
{
	name 				=	"Wiadomoœæ";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseKDWLetter;
	scemeName			=	"MAP";
	description			=  "Wiadomoœæ";
};
func void UseKDWLetter ()
{   

		var int nDocID;
		
			nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Opuœciliœmy obóz i zamierzamy udaæ siê do samego centrum destrukcji. Mo¿e tam znajdziemy odpowiedzi, których szukaliœmy przez tyle lat. Jeden Adanos wie, dok¹d zawiedzie nas ta œcie¿ka."					);
					Doc_PrintLines	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "");					
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Adanos niech bêdzie z nami"					);
					Doc_PrintLine	( nDocID,  0, "Saturas");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_Show		( nDocID );
		
};
//**********************************************************************************
//	BRIEF von Gilbert
//----------------------------------------------------------------------------------

INSTANCE ItWr_GilbertLetter		(C_Item)
{
	name 				=	"Notatka";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseGilbertLetter;
	scemeName			=	"MAP";
	description			=  "Wiadomoœæ";
};
func void UseGilbertLetter ()
{   

		var int nDocID;
		
			nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Mam ju¿ doœæ. Ukrywam siê tutaj strasznie d³ugo, a Bariera podobno upad³a."					);
					Doc_PrintLines	( nDocID,  0, "Teraz raczej nikt nie bêdzie mnie szuka³. Mam doœæ tej jaskini i ca³ej tej cholernej doliny. Idê do domu.");
					Doc_PrintLines	( nDocID,  0, "");					
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Gilbert");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_Show		( nDocID );
		
};
