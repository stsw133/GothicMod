///******************************************************************************************
prototype ItemPR_MissionDoc (C_Item)
{
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MULTI|ITEM_MISSION;
};
///******************************************************************************************
///	Maps
///******************************************************************************************
instance ItWR_Addon_TreasureMap (ItemPR_MissionDoc)
{
	name 			=	"Mapa";
	visual 			=	"ItWr_Map_01.3DS";
	on_state[0]		=	Use_TreasureMap;
	scemeName		=	"MAP";
	
	description		=	"Mapa do skarbu";
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
///******************************************************************************************
instance ItWr_Map_Caves_MIS (ItemPR_MissionDoc)
{
	name 			=	"Mapa";
	visual 			=	"ItWr_Map_01.3DS";
	on_state[0]		=	Use_Map_NewWorld_Caves_MIS;
	scemeName		=	"MAP";
	description		=	"Jaskinie Khorinis";
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
instance ItWr_Map_NewWorld_Dexter (ItemPR_MissionDoc)
{
	name 			=	"Mapa";
	visual 			=	"ItWr_Map_01.3DS";
	on_state[0]		=	Use_Map_NewWorld_Dexter;
	scemeName		=	"MAP";
	
	description		=	"Mapa terenów Khorinis";
	TEXT[0]			=	"Skip zaznaczy³ miejsce,";
	TEXT[1]			=	"gdzie mogê znaleŸæ szefa bandytów,";
	TEXT[2]			=	"Dextera.";
};
func void Use_Map_NewWorld_Dexter()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_NewWorld_Dexter);
	};
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage 		(Document, 0, "Map_NewWorld_Dexter.tga", true);
				Doc_SetLevel		(Document, "NewWorld\NewWorld.zen");
				Doc_SetLevelCoords	(Document, -28000, 50500, 95500, -42500);
				Doc_Show			(Document);
};
///******************************************************************************************
instance ItWr_Map_NewWorld_Ornaments_Addon (ItemPR_MissionDoc)
{
	name 			=	"Mapa Nefariusa";
	visual 			=	"ItWr_Map_01.3DS";
	on_state[0]		=	Use_Map_NewWorld_Ornaments;
	scemeName		=	"MAP";
	
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
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage 		(Document, 0, "Map_NewWorld_Ornaments.tga", true);
				Doc_SetLevel		(Document, "NewWorld\NewWorld.zen");
				Doc_SetLevelCoords	(Document, -28000, 50500, 95500, -42500);
				Doc_Show			(Document);
};
///******************************************************************************************
instance ItWr_Map_OldWorld_Oremines_MIS (ItemPR_MissionDoc)
{
	name 			=	"Mapa";
	visual 			=	"ItWr_Map_01.3DS";
	on_state[0]		=	Use_Map_OldWorld_Oremines;
	scemeName		=	"MAP";
	description		=	"Mapa kopalni Garonda";
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
var int Use_Map_NewWorld_Orcelite_MIS_OneTime;

instance ItWr_Map_Orcelite_MIS (ItemPR_MissionDoc)
{
	name 			=	"Mapa";
	visual 			=	"ItWr_Map_01.3DS";
	on_state[0]		=	Use_Map_NewWorld_Orcelite_MIS;
	scemeName		=	"MAP";
	description		=	"Orkowa mapa wojenna";
};
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
	
	if (!Use_Map_NewWorld_Orcelite_MIS_OneTime)
	&& (MIS_KillOrkOberst != 0)
	{
		B_LogEntry (TOPIC_OrcElite, "Przy orkowym pu³kowniku znalaz³em dziwn¹ mapê. Wygl¹da jak plan dzia³añ wojennych tych stworzeñ.");
		Use_Map_NewWorld_Orcelite_MIS_OneTime = true;
	};
};
///******************************************************************************************
instance ItWr_Map_ShatteredGolem_MIS (ItemPR_MissionDoc)
{
	name 			=	"Bardzo stara mapa";
	visual 			=	"ItWr_Map_01.3DS";
	on_state[0]		=	Use_Map_ShatteredGolem_Mis;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_Map_ShatteredGolem_Mis()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_ShatteredGolem_MIS);
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
instance ItWr_Map_Shrine_MIS (ItemPR_MissionDoc)
{
	name 			=	"Mapa";
	visual 			=	"ItWr_Map_01.3DS";
	on_state[0]		=	Use_Map_NewWorld_Shrine_MIS;
	scemeName		=	"MAP";
	description		=	"Mapa œwiêtych kapliczek";
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
instance ItWr_Seamap_Irdorath (ItemPR_MissionDoc)
{
	name 			=	"Mapa morska";
	visual 			=	"ItWr_Map_01.3DS";
	on_state[0]		=	Use_Seamap_Irdorath;
	scemeName		=	"MAP";
	description		=	"Mapa morska wyspy Irdorath";
};
func void Use_Seamap_Irdorath()
{
	var int nDocID;
	nDocID = 	Doc_CreateMap	();
				Doc_SetPages	(nDocID, 1);
				Doc_SetPage 	(nDocID, 0, "Map_NewWorld_Seamap.tga", true);
				Doc_Show		(nDocID);
	
	if (!MIS_ShipIsFree)
	&& (Kapitel < 12)
	{
		B_Say (self, self, "$IRDORATHTHEREYOUARE");
	};
	
	if (!MIS_SCKnowsWayToIrdorath)
	{
		Log_CreateTopic (TOPIC_SHIP, LOG_MISSION);
	    Log_SetTopicStatus (TOPIC_SHIP, LOG_RUNNING);
	    B_LogEntry (TOPIC_SHIP, "Wygl¹da na to, ¿e muszê siê dostaæ na wyspê nieprzyjaciela. Bêdê potrzebowa³ statku, za³ogi i kapitana.");
		B_GivePlayerXP(2000);
	};
	
	MIS_SCKnowsWayToIrdorath = true;
};

///******************************************************************************************
///	Documents
///******************************************************************************************
instance ItWr_ForgedShipLetter_MIS (ItemPR_Mission)
{
	name 			=	"Akt okrêtowy";
	visual 			=	"ItWr_Scroll_02.3DS";
	description		=	name;
	TEXT[2]			=	"Upowa¿nienie";
	TEXT[3]			=   "do korzystania z okrêtu paladynów.";
};
instance ItWr_ManaRezept (ItemPR_Mission)
{
	name 			=	"Receptura";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Mana_01;
	description		= 	"Receptura Neorasa";
};
instance ItWr_Martin_MilizEmpfehlung_Addon (ItemPR_Mission)
{
	name 			=	"List polecaj¹cy";
	visual 			=	"ItWr_Scroll_01.3DS";
	description		=  	"List polecaj¹cy dla Lorda Andre";
	TEXT[2]			= 	"Powinien mi umo¿liwiæ";
	TEXT[3]			= 	"wst¹pienie w szeregi stra¿y.";
};
instance ItWr_PaladinLetter_MIS (ItemPR_Mission)
{
	name 			=	"List";
	visual 			=	"ItWr_Scroll_02.3DS";
	description		=	"List Garonda do Hagena";
};
instance ItWr_Passierschein	(ItemPR_Mission)
{
	name 			=	"Przepustka";
	visual 			=	"ItWr_Scroll_01.3DS";
	description		=	name;
	TEXT[3]			=	"Dziêki tym dokumentom nie";
	TEXT[4]			=   "zatrzymaj¹ mnie stra¿nicy miejscy.";
};
instance ItWr_PermissionToWearInnosEye_MIS (ItemPR_Mission)
{
	name 			=	"List polecaj¹cy";
	visual 			=	"ItWr_Scroll_01.3DS";
	description		=	"List polecaj¹cy dla Pyrokara";
};
instance ItWr_Vatras2Saturas_FindRaven (ItemPR_Mission)
{
	name 			=	"Przesy³ka";
	visual 			=	"ItWr_Scroll_02.3DS";
	description		=   "Wiadomoœæ Vatrasa dla Saturasa";
};
instance ItWr_VatrasMessage	(ItemPR_Mission)
{
	name 			=	"Zapieczêtowana wiadomoœæ";
	visual 			=	"ItWr_Scroll_02.3DS";
	description		=	name;
	TEXT[2]			=   "Wiadomoœæ od Vatrasa";
	TEXT[3]			=   "do Magów Ognia.";
};
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
var int Use_ItWr_Addon_BanditTrader_OneTime;
var int BanditTrader_Lieferung_Gelesen;

instance ItWr_Addon_BanditTrader (ItemPR_MissionDoc)
{
	name 			=	"Dostawa";
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   Use_ItWr_Addon_BanditTrader;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[2]			= 	"Zabra³em ten list bandytom";
	TEXT[3]			= 	"za farm¹ Sekoba.";
};
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
	&& (!Use_ItWr_Addon_BanditTrader_OneTime)
	{
		B_LogEntry (TOPIC_Addon_BanditTrader, "Znalaz³em dokument potwierdzaj¹cy, ¿e Fernando jest handlarzem broni¹, którego szukam.");
		Use_ItWr_Addon_BanditTrader_OneTime = true;
	};
};
///******************************************************************************************
instance ITWR_Addon_FrancisAbrechnung_Mis (ItemPR_MissionDoc)
{
	name 			=	"Wynagrodzenie";
	visual 			=	"ItWr_Book_02_05.3ds";
	on_state[0]		=	Use_FrancisAbrechnung_Mis;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_FrancisAbrechnung_Mis()
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
				
				B_Say (self, self, "$ADDON_THISLITTLEBASTARD");
};
///******************************************************************************************
instance ITWR_Addon_GregsLogbuch_Mis (ItemPR_MissionDoc)
{
	name 			=	"Dziennik";
	visual 			=	"ItWr_Book_01.3ds";
	on_state[0]		=	Use_GregsLogbuch;
	scemeName		=	"MAP";
	description		= 	"Dziennik Grega";
};
func void Use_GregsLogbuch()
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
instance ITWr_Addon_Joint_01 (ItemPR_MissionDoc)
{
	name 			=	"Receptura";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_Joint_Rezept_01;
	scemeName		=	"MAP";
	
	description 	=	"Zielony nowicjusz";
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
				
				Doc_PrintLine	(nDocID,  0, "Zielony nowicjusz");
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
instance ItWr_Addon_Hinweis_01 (ItemPR_MissionDoc)
{
	name 			=	"Wa¿na wiadomoœæ";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_Hinweis_01;
	scemeName		=	"MAP";
	
	description 	=	name;
	TEXT[0]			=	"Wisia³a w chacie na bagnie";
};
func void Use_Hinweis_01()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Hej ludzie,");
				Doc_PrintLines	(nDocID,  0, "Rzeczy z tych skrzyñ s¹ tylko na nag³e wypadki.");
				Doc_PrintLines	(nDocID,  0, "I s¹ dla nas WSZYSTKICH. Wiêc siêgajcie tam tylko wtedy, kiedy naprawdê musicie.");
				Doc_PrintLines	(nDocID,  0, "I nie bierzcie wiêcej, ni¿ potrzebujecie.");
				Doc_PrintLines	(nDocID,  0, "Uda siê, jeœli wszyscy bêdziemy siê tego trzymaæ.");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Fletcher");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Addon_Hinweis_02 (ItemPR_MissionDoc)
{
	name 			=	"Wa¿na wiadomoœæ";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_Hinweis_02;
	scemeName		=	"MAP";
	
	description 	=	name;
	TEXT[0]			=	"Z gospody w obozie bandytów";
};
func void Use_Hinweis_02()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Hej ludzie,");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Lou znikn¹³ na bagnie. Pewnikiem ze¿ar³y go wê¿e.");
				Doc_PrintLines	(nDocID,  0, "Co gorsza, wraz z nim znikn¹³ klucz do drzwi.");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ten, kto go znajdzie, bêdzie móg³ zatrzymaæ rzeczy Lou.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Snaf");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Addon_Lou_Rezept (ItemPR_MissionDoc)
{
	name 			=	"Przepis na M³ot Lou";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_LouRezept;
	scemeName		=	"MAP";
	
	description 	=	name;
	TEXT[0]			=	"Jak przygotowaæ M³ot Lou.";
};
func void Use_LouRezept()
{
	Knows_LousHammer = true;
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "Przepis na M³ot Lou");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Sk³adniki mocnej nalewki:");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Bierzesz butelkê, a tak¿e dwie rzepy i spor¹ garœæ bagiennego ziela.");
				Doc_PrintLines	(nDocID,  0, "Dodajesz do tego k³y b³otnego wê¿a.");
				Doc_PrintLines	(nDocID,  0, "Mieszasz w butelce i gotujesz z dzia³k¹ rumu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Na zdrowie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wed³ug starego œlepca lepiej nie wdychaæ wyziewów!");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Addon_Lou_Rezept2 (ItemPR_MissionDoc)
{
	name 			=	"Przepis na podwójny M³ot Lou";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_LouRezept2;
	scemeName		=	"MAP";
	
	description 	=	name;
	TEXT[0]			=	"Jak przygotowaæ podwójny M³ot Lou.";
};
func void Use_LouRezept2()
{
	Knows_SchlafHammer = true;
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "Podwójny M³ot Lou");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "WeŸ stary, dobry M³ot Lou i przedestyluj go jeszcze raz.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ten wywar mo¿e przyrz¹dziæ jedynie ktoœ doœwiadczony w destylacji.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Profan mo¿e od tego nie tylko oœlepn¹æ, ale te¿ ca³kiem wyzion¹æ ducha.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Addon_Piratentod (ItemPR_MissionDoc)
{
	name 			=	"Przepis na Szybkiego œledzia";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_RezeptPiratentod;
	scemeName		=	"MAP";
	
	description 	=	name;
	TEXT[0]			=	"Przepis na przygotowanie Szybkiego œledzia.";
};
func void Use_RezeptPiratentod()
{
	Knows_SchnellerHering = true;
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "Szybki œledŸ (mój przepis)");
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Ma³y klinek dla porz¹dnych ch³opaków");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jak zwykle, potrzebna bêdzie butelka. Wlej do niej jedn¹ porcjê rumu i dodaj œwie¿¹ rybê.");
				Doc_PrintLines	(nDocID,  0, "Kiedy tylko p³yn zrobi siê ¿ó³ty, wyjmij rybê i dopraw garœci¹ soli");
				Doc_PrintLines	(nDocID,  0, "œwie¿o zebranego zêbatego ziela.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Uwa¿aj! Ta nalewka naprawdê stawia na nogi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Addon_Pirates_01 (ItemPR_MissionDoc)
{
	name 			=	"Brudny papier";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_Pirates_01;
	scemeName		=	"MAP";
	
	description 	=	name;
	TEXT[0]			=	"Ten papier by³ w kieszeni Angusa.";
};
func void Use_Pirates_01()
{
	Read_JuansText = true;
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "Ihr Piraten,");
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Za³atwcie dla nas ostatni ³adunek.");
				Doc_PrintLine	(nDocID,  0, "PrzywieŸcie go do jaskini. Tam siê spotkamy.");
				Doc_PrintLines	(nDocID,  0, "Zap³acê wam w z³ocie. Podwójn¹ cenê.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tak w³aœnie zrobimy.");
				Doc_PrintLine	(nDocID,  0, "Tom");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItMi_Addon_Stone_01 (ItemPR_MissionDoc)
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
func void Use_Addon_Stone_01()
{
	if (Npc_GetTalentSkill(hero, NPC_TALENT_LANGUAGE))
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
instance ItMi_Addon_Stone_05 (ItemPR_MissionDoc)
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
func void Use_Addon_Stone_05()
{
	if (Npc_GetTalentSkill(hero, NPC_TALENT_LANGUAGE))
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
instance ItMi_Addon_Stone_03 (ItemPR_MissionDoc)
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
func void Use_Addon_Stone_03()
{
	if (Npc_GetTalentSkill(hero, NPC_TALENT_LANGUAGE))
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
instance ItMi_Addon_Stone_04 (ItemPR_MissionDoc)
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
func void Use_Addon_Stone_04()
{
	if (Npc_GetTalentSkill(hero, NPC_TALENT_LANGUAGE))
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
instance ItMi_Addon_Stone_02 (ItemPR_MissionDoc)
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
func void Use_Addon_Stone_02()
{
	if (Npc_GetTalentSkill(hero, NPC_TALENT_LANGUAGE))
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
instance ItWr_Addon_SUMMONANCIENTGHOST (ItemPR_MissionDoc)
{
	name 			=	"Przywo³anie Quarhodrona";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_SummonAncientGhost;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[1]			=	"Za pomoc¹ tego zwoju mo¿esz przywo³aæ Quarhodrona.";
};
func void Use_SummonAncientGhost()
{
	if (!SC_SummonedAncientGhost)
	{
		B_Say (self, self, "$ADDON_SUMMONANCIENTGHOST");
		
		if (Npc_GetDistToWP(self, "ADW_ANCIENTGHOST") < 1000)
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
instance ItWr_Addon_William_01 (ItemPR_MissionDoc)
{
	name 			=	"Liœcik";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_William_01;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[0]			=	"Ten list mia³ przy sobie rybak William.";
};
func void Use_William_01()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Williamie,");
				Doc_PrintLines	(nDocID,  0, "Kiedy ksiê¿yc jest w pe³ni, stra¿nicy s¹ rozkojarzeni.");
				Doc_PrintLines	(nDocID,  0, "Przekradnij siê – ale b¹dŸ ostro¿ny!");
				Doc_PrintLines	(nDocID,  0, "Jeœli bêdziesz iœæ drewnian¹ tam¹, uda ci siê wydostaæ z bagna.");
				Doc_PrintLines	(nDocID,  0, "Obóz piratów jest po drugiej stronie doliny, daleko na zachodzie.");
				Doc_PrintLines	(nDocID,  0, "Kiedy tam dotrzesz, z ³atwoœci¹ uciekniesz ³odzi¹.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Ktoœ, kto dobrze Ci ¿yczy");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_BabosLetter_MIS (ItemPR_MissionDoc)
{
	name 			=	"List";
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
				Doc_PrintLines	(nDocID,  0, "Pewnie zastanawiasz siê, jak napisa³yœmy ten list. Otó¿ zabra³yœmy wszystkie nasze oszczêdnoœci do Mistrza Marlasa i poprosi³yœmy, aby go dla nas napisa³. ¿yczymy ci wszystkiego najlepszego i przesy³amy ten obrazek jako prezent po¿egnalny - niechaj przypomina ci o nas podczas nocy, które spêdzisz w klasztorze.");
				Doc_PrintLines	(nDocID,  0, "Mamy nadziejê, ¿e lubisz takie obrazki.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Fehta i Bonka");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_BabosPinUp_MIS (ItemPR_MissionDoc)
{
	name 			=	"Portret";
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
var int BabosDocsOpen;

instance ItWr_BabosDocs_MIS	(ItemPR_MissionDoc)
{
	name 			=	"Zwitek papierów";
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
instance ItWr_BanditLetter_MIS (ItemPR_MissionDoc)
{
	name 			=	"Wiadomoœæ";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_BanditLetter;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_BanditLetter()
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
instance ItWr_Bloody_MIS (ItemPR_MissionDoc)
{
	name 			=	"Notatka";
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   Use_BloodMIS;
	scemeName		=	"MAPSEALED";
	description		= 	"Trucizna krwiopijców";
};
func void Use_BloodMIS()
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
	
	if (!Knows_Bloodfly)
	{
		Knows_Bloodfly = true;
		Log_CreateTopic (Topic_Bonus, LOG_NOTE);
		B_LogEntry (Topic_Bonus, "Teraz wiem, jak uzyskaæ substancjê lecznicz¹ z ¿¹de³ krwiopijców.");
		B_GivePlayerXP(100);
	};
};
///******************************************************************************************
instance ItWr_Canthars_KomproBrief_MIS (ItemPR_MissionDoc)
{
	name 			=	"List";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_Canthars_KomproBrief;
	scemeName		=	"MAP";
	description		= 	"List Canthara do Sary";
};
func void Use_Canthars_KomproBrief()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage		(nDocID,  0, "letters.TGA", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, " Ostatnie ostrze¿enie");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, " Wielokrotnie ju¿ ostrzega³em ciê");
				Doc_PrintLine	(nDocID,  0, " w niezwykle przyjazny sposób,");
				Doc_PrintLine	(nDocID,  0, " ¿e broñ zamówiona u ciebie tydzieñ");
				Doc_PrintLine	(nDocID,  0, " temu jest mi wyj¹tkowo pilnie");
				Doc_PrintLine	(nDocID,  0, " potrzebna.");
				Doc_PrintLine	(nDocID,  0, " Jeœli szybko siê nie odezwiesz w tej");
				Doc_PrintLine	(nDocID,  0, " sprawie, to zmusisz mnie do zmiany");
				Doc_PrintLine	(nDocID,  0, " sposobu, w jaki ciê traktujê. Mam");
				Doc_PrintLine	(nDocID,  0, " nadziejê, ¿e siê dobrze rozumiemy!!!!");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "     Onar");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
				Doc_Show		(nDocID);
};
///******************************************************************************************
var int Cornelius_IsLiar;

instance ItWr_CorneliusTagebuch_Mis (ItemPR_MissionDoc) 
{
	name 			=	"Dziennik";
	visual 			=	"ItWr_Book_01.3ds";
	on_state[0]		=	Use_CorneliusTagebuch;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[0]			=	"Dziennik Corneliusa.";
};
func void Use_CorneliusTagebuch()
{
	Cornelius_IsLiar = true;
	B_LogEntry (TOPIC_RESCUEBENNET, "Dziennik jest dowodem którego potrzebujê, aby uniewinniæ Benneta.");	
	
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
instance ItWr_DementorObsessionBook_MIS (ItemPR_MissionDoc)
{
	name 			=	"Almanach Opêtanych";
	visual 			=	"ItWr_Book_02_05.3ds";
	on_state[0]		=	Use_DementorObsessionBook;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_DementorObsessionBook()
{
	Wld_PlayEffect ("spellFX_Fear", hero, hero, 0, 0, 0, false);
	Snd_Play("MFX_FEAR_CAST");
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
instance ItWr_Diary_BlackNovice_MIS (ItemPR_MissionDoc)
{
	name 			=	"Dziennik";
	visual 			=	"ItWr_Book_02_04.3ds";
	on_state[0]		=	Use_Diary_BlackNovice;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_Diary_BlackNovice()
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
instance ItWr_DiegosLetter_MIS (ItemPR_Mission)
{
	name 			=	"List";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_DiegosLetter_Mis;
	scemeName		=	"MAP";
	description		=	"List Diega do Gerbrandta";
};
func void Use_DiegosLetter_Mis()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "Gerbrandt, ");
				Doc_PrintLines	(nDocID,  0, "pope³ni³eœ b³¹d, nie zabijaj¹c mnie...");
				Doc_PrintLines	(nDocID,  0, "Wróci³em do miasta i nied³ugo siê spotkamy, a wtedy posiekam ciê na plasterki. Znasz mnie wystarczaj¹co d³ugo, by wiedzieæ, ¿e nie ¿artujê.");
				Doc_PrintLines	(nDocID,  0, "Nie przypuszcza³eœ pewnie, ¿e mogê jeszcze wróciæ zza Bariery. To b³¹d...");
				Doc_PrintLines	(nDocID,  0, "Wróci³em, by odzyskaæ, co moje.");
				Doc_PrintLines	(nDocID,  0, "Jeœli ¿ycie ci mi³e, uciekaj czym prêdzej z miasta. A ja przejmê twój interes. W ten sposób bêdziemy kwita.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Diego");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_GilbertLetter (ItemPR_MissionDoc)
{
	name 			=	"Notatka";
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   Use_GilbertLetter;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_GilbertLetter()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Mam ju¿ doœæ. Ukrywam siê tutaj strasznie d³ugo, a Bariera podobno upad³a.");
				Doc_PrintLines	(nDocID,  0, "Teraz raczej nikt nie bêdzie mnie szuka³. Mam doœæ tej jaskini i ca³ej tej cholernej doliny. Idê do domu.");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Gilbert");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
var int ItWr_HallsofIrdorathIsOpen;
var int MIS_Xardas_SCCanOpenIrdorathBook;

instance ItWr_HallsofIrdorath_Mis (ItemPR_MissionDoc) 
{	
	name 			=	"Dwór Irdorath";
	visual 			=	"ItWr_Book_02_05.3ds";
	on_state[0]		=	Use_HallsofIrdorath;
	scemeName		=	"MAPSEALED";
	description		=	name;
};
func void Use_HallsofIrdorath()
{  
	if (MIS_Xardas_SCCanOpenIrdorathBook)
	{
		B_Say (self, self, "$SCOPENSIRDORATHBOOK");
		
  		Wld_PlayEffect ("spellFX_LIGHTSTAR_WHITE", self, self, 0, 0, 0, false);
		Snd_Play("SFX_HealObsession");
		
		CreateInvItem (self, ItWr_HallsofIrdorath_Open_Mis);
		CreateInvItem (self, ItKe_MonastarySecretLibrary_Mis);
		CreateInvItem (self, ItWr_UseLampIdiot_Mis);
		
		Print("W ok³adce tej ksiêgi schowano klucz!");
		B_GivePlayerXP(1000);
		ItWr_HallsofIrdorathIsOpen = true;
		
		B_LogEntry (TOPIC_BuchHallenVonIrdorath, "Uda³o mi siê otworzyæ ksiêgê Xardasa. Znalaz³em w niej tajemnicz¹ wiadomoœæ i dziwny klucz. Kto wie, co jeszcze kryje siê w klasztornych podziemiach."); 
	}
	else
	{
		CreateInvItem (self, ItWr_HallsofIrdorath_Mis);
		
		Print(PRINT_IrdorathBookDoesntOpen);
		Wld_PlayEffect ("spellFX_Fear", self, self, 0, 0, 0, false);
		Snd_Play("MFX_FEAR_CAST");
	};
};
///******************************************************************************************
var int ItWr_SCReadsHallsofIrdorath;

instance ItWr_HallsofIrdorath_Open_Mis (ItemPR_MissionDoc)
{
	name 			=	"Dwór Irdorath";
	visual 			=	"ItWr_Book_02_05.3ds";
	on_state[0]		=	Use_HallsofIrdorath_Open;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_HallsofIrdorath_Open()
{
	if (!ItWr_SCReadsHallsofIrdorath)
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
instance ItWr_HalvorMessage	(ItemPR_MissionDoc)
{
	name 			=	"Œmierdz¹ca notatka";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_HalvorMessage;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[2]			=   "W rybie by³a schowana ta notatka.";
};
func void Use_HalvorMessage()
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
instance ItWr_KDWLetter (ItemPR_MissionDoc)
{
	name 			=	"Wiadomoœæ";
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   Use_KDWLetter;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_KDWLetter()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opuœciliœmy obóz i zamierzamy udaæ siê do samego centrum destrukcji. Mo¿e tam znajdziemy odpowiedzi, których szukaliœmy przez tyle lat. Jeden Adanos wie, dok¹d zawiedzie nas ta œcie¿ka.");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Adanos niech bêdzie z nami");
				Doc_PrintLine	(nDocID,  0, "Saturas");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Kraeuterliste (ItemPR_MissionDoc)
{
	name 			=	"Lista";
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
instance ItWr_Krypta_Garon (ItemPR_MissionDoc)
{
	name 			=	"Stary list";
	visual 			=	"ItWr_Scroll_02.3ds";
	on_state[0]		=	Use_Krypta_Garon;
	scemeName		=	"MAP";
	
	description		= 	name;
	TEXT[3]			=	"Pisany niepewn¹ rêk¹.";
};
func void Use_Krypta_Garon()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zawiod³em. P³onne me nadzieje na zatrzymanie Inubisa na œcie¿ce dobra.");
				Doc_PrintLines	(nDocID,  0, "Na pocz¹tku s¹dzi³em, ¿e nie ¿yjê, ale w starych koœciach Ivana drzemie jeszcze si³a.");
				Doc_PrintLines	(nDocID,  0, "Inubis jednak powsta³ z martwych i szuka zemsty za wygnanie przez prastary zakon paladynów.");
				Doc_PrintLines	(nDocID,  0, "Towarzyszy mu wielu wyznawców... Jak wojownik pokroju Inubisa móg³ staæ siê tak z³y?");
				Doc_PrintLines	(nDocID,  0, "Znalaz³em w tej krypcie jego grób, nie wiem jednak, czy zdo³am przekazaæ komuœ wieœci o moim odkryciu, piszê wiêc te s³owa w nadziei na to, ¿e zostan¹ odnalezione.");
				Doc_PrintLines	(nDocID,  0, "Strze¿cie siê. Potê¿ny nieprzyjaciel siêga po dusze sprawiedliwych. Inubis nie bêdzie ostatni...");
				Doc_PrintLine	(nDocID,  0, " ");
				Doc_PrintLine	(nDocID,  0, "Niechaj Innos chroni wasze dusze");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "                                 Ivan");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_LastDoorToUndeadDrgDI_MIS	(ItemPR_MissionDoc)
{
	name 			=	"Zwój czarnego maga";
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
	
	B_LogEntry (TOPIC_HallenVonIrdorath, "S³owa KHADOSH EMEM KADAR mo¿na by³o odczytaæ ze zwoju czarnego maga. Brzmi jak zaklêcie, ale do czego siê odnosi i czym jest Oko Mocy? "); 
};
///******************************************************************************************
instance ItWr_LetterForGorn_MIS (ItemPR_MissionDoc)
{
	name 			=	"List";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_LetterForGorn;
	scemeName		=	"MAP";
	description		=	"List Miltena do Gorna";
};
func void Use_LetterForGorn()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				
				Doc_PrintLine	(nDocID,  0, " ");
				Doc_PrintLine	(nDocID,  0, " ");
				Doc_PrintLine	(nDocID,  0, " ");
				Doc_PrintLine	(nDocID,  0, " ");
				Doc_PrintLine	(nDocID,  0, "Gorn!");
				Doc_PrintLine	(nDocID,  0, " ");
				Doc_PrintLines	(nDocID,  0, "Garond zgodzi³ siê wypuœciæ ciê na wolnoœæ - za 1000 sztuk z³ota.");
				Doc_PrintLines	(nDocID,  0, "Jeœli masz wiêc jakieœ z³oto, lepiej powiedz, gdzie je ukry³eœ.");
				Doc_PrintLine	(nDocID,  0, " ");
				Doc_PrintLine	(nDocID,  0, " ");
				Doc_PrintLine	(nDocID,  0, "Milten ");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_LuciasLoveLetter_Addon (ItemPR_MissionDoc)
{
	name 			=	"List";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_LuciasLoveLetter_Addon;
	scemeName		=	"MAP";
	description		=	"List po¿egnalny Lucii";
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
instance ItWr_Manowar (ItemPR_MissionDoc)
{
	name 			=	"Tekst";
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   Use_Manowar;
	scemeName		=	"MAP";
	description		=	"S³owa pieœni";
};
func void Use_Manowar()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Lament Dominique");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "D¹¿ymy do Jego ³aski.");
				Doc_PrintLines	(nDocID,  0, "Innos chroni mnie i moich braci.");
				Doc_PrintLines	(nDocID,  0, "Nie pozwolê siê zatrzymaæ mym wrogom,");
				Doc_PrintLines	(nDocID,  0, "Albowiem w mym sercu p³onie Jego ogieñ.");
				Doc_PrintLines	(nDocID,  0, "Moje ostrze s³u¿y tylko Jemu.");
				Doc_PrintLines	(nDocID,  0, "Niechaj zabrzmi Jego œwiête imiê.");
				Doc_PrintLines	(nDocID,  0, "Ka¿dy, kto mi siê sprzeciwi");
				Doc_PrintLines	(nDocID,  0, "zginie na miejscu,");
				Doc_PrintLines	(nDocID,  0, "bom jest wojownikiem Innosa.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
var int ItWr_MinenAnteil_Mis_OneTime;
var int SC_KnowsProspektorSalandril;

instance ItWr_MinenAnteil_Mis (ItemPR_MissionDoc)
{
	name 			=	"Udzia³ w kopalni rudy Khorinis";
	value 			=	100;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_MinenAnteil_Mis;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[5]			=	NAME_Value;
	COUNT[5]		=	value;
};
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
	
	if (!ItWr_MinenAnteil_Mis_OneTime)
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
instance ItWr_MorgahardTip (ItemPR_MissionDoc)
{
	name 			=	"List";
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
instance ItWr_Passage_MIS (ItemPR_MissionDoc)
{
	name 			=	"Propozycja Lee dla paladynów";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_Passage;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[3]			=	"Dziêki tej wiadomoœci byæ mo¿e uda";
	TEXT[4]			=   "mi siê porozmawiaæ z Lordem Hagenem.";
};
func void Use_Passage()
{   
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Szanowny Lordzie Hagenie,");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "obydwaj zdajemy sobie sprawê z sytuacji, wiêc przejdê od razu do rzeczy:");
				Doc_PrintLines	(nDocID,  0, "uniewinnij mnie i moich ludzi wobec Jego Wysokoœci i samego Innosa.");
				Doc_PrintLines	(nDocID,  0, "W zamian zobowi¹zujemy siê pomóc Ci w obronie miasta i okolicznych ziem.");
				Doc_PrintLines	(nDocID,  0, "Osobiœcie dopilnujê te¿, by moi ludzie trzymali siê z dala od tutejszych farm - naturalnie oprócz zagród Onara, gdzie nadal bêdziemy stacjonowali.");
				Doc_PrintLines	(nDocID,  0, "Wiem, ¿e statek, którym zamierzacie wróciæ na kontynent, mo¿e zabraæ kilka dodatkowych osób. Gdy bêdziecie ruszaæ w drogê, chcê pop³yn¹æ z wami.");
				Doc_PrintLines	(nDocID,  0, "Zaklinam ciê: rozwa¿ dobrze moje s³owa i podejmij rozs¹dn¹ decyzjê.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Podpisano   Genera³ Lee");
				Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
				Doc_Show		(nDocID);
}; 
///******************************************************************************************
instance ItWr_Pfandbrief_MIS (ItemPR_MissionDoc)
{
	name 			=	"Weksel";
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   Use_Pfandbrief;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_Pfandbrief()
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
instance ItWr_Poster_MIS (ItemPR_MissionDoc)
{
	name 			=	"List goñczy";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_Poster;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[3]			=	"Moja podobizna!";
};
func void Use_Poster()
{
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID, 1);
				Doc_SetPage		(nDocID, 0, "Gesucht.TGA", false);
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_PyrokarsObsessionList (ItemPR_MissionDoc)
{
	name 			=	"Magiczny list Pyrokara";
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
var int Use_RavensKidnapperMission_Addon_OneTime;

instance ItWr_RavensKidnapperMission_Addon (ItemPR_MissionDoc)
{
	name 			=	"Rozkazy";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_RavensKidnapperMission_Addon;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[2]			= 	"Zabra³em ten list";
	TEXT[3]			= 	"bandycie Dexterowi.";
};
func void Use_RavensKidnapperMission_Addon()
{
 	if (!Use_RavensKidnapperMission_Addon_OneTime)
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
var int SCKnowsRichterKomproBrief;

instance ItWr_RichterKomproBrief_MIS (ItemPR_MissionDoc)
{
	name 			=	"Zlecenie sêdziego";
	visual 			=	"ItWr_Scroll_02.3DS";
	on_state[0]		=   Use_RichterKomproBrief;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_RichterKomproBrief()
{
	SCKnowsRichterKomproBrief = true;
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
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
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_SaturasFirstMessage_Addon_Sealed (ItemPR_MissionDoc)
{
	name 			=	"Zapieczêtowana wiadomoœæ";
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
	if (!SC_KnowsRanger)
	{
		Log_CreateTopic (TOPIC_Addon_RingOfWater, LOG_MISSION);
		Log_SetTopicStatus (TOPIC_Addon_RingOfWater, LOG_RUNNING);
		Log_AddEntry (TOPIC_Addon_RingOfWater, "Istnieje stowarzyszenie zw¹ce siê Wodnym Krêgiem. Wygl¹da na to, ¿e rz¹dz¹ nim Magowie Wody.");
	};
	if (!SC_IsRanger)
	{
		Log_CreateTopic (TOPIC_Addon_RingOfWater, LOG_MISSION);
		Log_SetTopicStatus (TOPIC_Addon_RingOfWater, LOG_RUNNING);
		Log_AddEntry (TOPIC_Addon_RingOfWater, "Cavalorn nale¿y do Wodnego Krêgu."); 
	};
	
	CreateInvItem (self, ItWr_SaturasFirstMessage_Addon);
	SC_KnowsRanger = true;
};
///******************************************************************************************
instance ItWr_SaturasFirstMessage_Addon (ItemPR_MissionDoc)
{
	name 			=	"Otwarta wiadomoœæ";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_SaturasFirstMessage;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[2]			=	"List Saturasa do Vatrasa";
};
///******************************************************************************************
instance ItWr_Schuldenbuch (ItemPR_MissionDoc)
{
	name 			=	"Ksiêga D³ugów";
	visual 			=	"ItWr_Book_02_05.3ds";
	on_state[0]		=	Use_SchuldBuch;
	scemeName		=	"MAP";
	description		= 	"Ksiêga D³ugów Lehmara";
};
func void Use_SchuldBuch()
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
instance ItWr_Silvestro_MIS (ItemPR_MissionDoc)
{
	name 			=	"Wiadomoœæ";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_Itwr_Silvestro;
	scemeName		=	"MAP";
	description		=	"Wiadomoœæ od Silvestra";
};
func void Use_Itwr_Silvestro()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID,  0, "Od królewskiego paladyna Silvestra");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kolejny dzieñ dr¹¿enia przed nami. Dziœ zamierzamy przebiæ siê przez œcianê skaln¹.");
				Doc_PrintLines	(nDocID,  0, "Mam z³e przeczucia, wiêc zabezpieczê wydobyt¹ dotychczas rudê.");
				Doc_PrintLines	(nDocID,  0, "Tylko Diego zna okolicê. Muszê mu wiêc zaufaæ. To on zabierze skrzynie - ale nie puszczê go samego.");
				Doc_PrintLines	(nDocID,  0, "Muszê chroniæ rudê za wszelk¹ cenê, wyœlê wiêc z nim dwóch rycerzy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Niech ¿yje Król");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Silvestro");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_StonePlateCommon_Addon (ItemPR_MissionDoc)
{
	name 			=	"Stara kamienna tablica";
	visual 			=	"ItMi_StonePlate_Read_06.3ds"; 
	on_state[0]		=	Use_StonePlateCommon;
	scemeName		=	"MAP";
	
	description		=	name;
	inv_rotx		=	INVCAM_X_STONEPLATE_STANDARD;
};
func void Use_StonePlateCommon()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		var int nDocID;
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1);
					Doc_SetPage 	(nDocID,  0, "Maya_Stoneplate_03.TGA", false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID, -1, 70, 50, 90, 50, 1);
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Kasta wojowników wywo³a³a gniew naszego boga.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "RADEMES, nastêpca QUARHODRONA, zosta³ wypêdzony. Ale jego z³owroga moc dotar³a do nas nawet z jego miejsca wygnania.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Byliœmy wobec niej bezsilni.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Na JARKENDAR spad³ gniew ADANOSA!");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_Show		(nDocID);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
	};
};
///******************************************************************************************
instance ItWr_UseLampIdiot_Mis (ItemPR_MissionDoc)
{
	name 			=	"Podniszczony list";
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=   Use_ItWr_UseLampIdiot_Mis;
	scemeName		=	"MAP";
	
	description		=	name;
	TEXT[0]			=	"z ksiêgi 'Dwór Irdorath'";
};
func void Use_ItWr_UseLampIdiot_Mis()
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
instance ItWr_VinosKellergeister_Mis (ItemPR_MissionDoc)
{
	name 			=	"Duch wina";
	visual 			=	"ItWr_Book_02_05.3DS";
	on_state[0]		=   Use_VinosKellergeister_Mis;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_VinosKellergeister_Mis()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "BOOK_RED_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "BOOK_RED_R.tga", false);
				
 				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
 				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Potêga winnego grona");
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "...W swoim czasie spróbowa³em niejednego, ale ten owoc, który dosta³em w zesz³ym tygodniu z zagranicy... przekroczy³ wszystkie oczekiwania...");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "...sok z tego winnego grona ma bukiet bogatszy ni¿ z jakiegokolwiek innego...");
				Doc_PrintLines	(nDocID,  0, "");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont 	(nDocID,  1, FONT_BookHeadline);
				Doc_SetFont 	(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "...nie jest Ÿle, ale ca³y czas martwiê siê, ¿e ktoœ mo¿e mnie z³apaæ w mojej tajnej pracowni. Nie mam pojêcia, co zrobiliby stra¿nicy, gdyby siê o tym wszystkim dowiedzieli. Byæ mo¿e wyrzuciliby mnie poza Barierê...");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "...Nabrali podejrzeñ. Muszê wszystko zostawiæ, dopóki sprawa troszkê nie przycichnie i nie nabiorê pewnoœci, ¿e nikt mnie ju¿ nie podejrzewa...");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_XardasBookForPyrokar_Mis (ItemPR_MissionDoc)
{
	name 			=	"Dwór Irdorath";
	visual 			=	"ItWr_Book_02_05.3ds";
	on_state[0]		=	Use_XardasBookForPyrokar;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_XardasBookForPyrokar()
{
	Print(PRINT_IrdorathBookDoesntOpen);
	Wld_PlayEffect ("spellFX_Fear", self, self, 0, 0, 0, false);
	Snd_Play("MFX_FEAR_CAST");
};
///******************************************************************************************
instance ItWr_XardasLetterToOpenBook_MIS (ItemPR_MissionDoc)
{
	name 			=	"List Xardasa";
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
	
	if (!MIS_Xardas_SCCanOpenIrdorathBook)
	{
		B_LogEntry (TOPIC_BuchHallenVonIrdorath, "W swoim liœcie Xardas poinformowa³ mnie, jakie s³owa otwieraj¹ ksiêgê DWÓR IRDORATH.");
	};
	MIS_Xardas_SCCanOpenIrdorathBook = true;
};
///******************************************************************************************
instance ItWr_XardasSeamapBook_Mis (ItemPR_MissionDoc) 
{
	name 			=	"Zakurzona ksiêga";
	visual 			=	"ItWr_Book_02_01.3ds";
	on_state[0]		=	Use_XardasSeamapBook_Mis;
	scemeName		=	"MAP";
	description		=	name;
};
func void Use_XardasSeamapBook_Mis()
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
instance ItWr_ZugBruecke_MIS (ItemPR_MissionDoc)
{
	name 			=	"Stary list";
	visual 			=	"ItWr_Scroll_01.3ds";
	on_state[0]		=	Use_ZugBruecke;
	scemeName		=	"MAP";
	description		= 	name;
};
func void Use_ZugBruecke()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "   Ostatnie ostrze¿enie!");
				Doc_SetMargins	(nDocID, -1, 50, 50, 70, 50, 1);
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nic mnie nie obchodzi, czy uda siê wam przeleŸæ przez most z drugiej strony. Dla mnie mo¿ecie piec siê w piekle.");
				Doc_PrintLines	(nDocID,  0, "Tak d³ugo, jak jestem w swoich w³oœciach, most bêdzie podniesiony, a ka¿dego mêdrka, który bêdzie próbowa³ ustrzeliæ z ³uku prze³¹cznik, ¿eby siê tu dostaæ, osobiœcie wypatroszê i powieszê na najbli¿szym drzewie!");
				Doc_PrintLines	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "                      Archol");
				Doc_Show		(nDocID);
};
