///******************************************************************************************
/// B_PlayerMap
///******************************************************************************************

var int PlayerMapInstance;

func int B_SetPlayerMap (var int MapInstance)
{
	if (Npc_IsPlayer(self))
	{
		PlayerMapInstance = MapInstance;
	};
	return PlayerMapInstance;
};

///******************************************************************************************
/// Maps
///******************************************************************************************
prototype ItemPR_Map (C_Item)
{
	name					=	"Mapa";
	mainflag				=	ITEM_KAT_DOCS;
	flags					=	ITEM_MULTI;
	
	material				=	MAT_LEATHER;
	scemeName				=	"MAP";
	
	TEXT[5]					=	NAME_Value;
};
///******************************************************************************************
instance ItWr_Map_NewWorld (ItemPR_Map)
{
	value					=	200;
	visual					=	"ItWr_Map_01.3DS";
	on_state[0]				=	Use_ItWr_Map_NewWorld;
	
	description				=	"Mapa teren�w Khorinis";
	COUNT[5]				=	value;
};
func void Use_ItWr_Map_NewWorld()
{
	B_SetPlayerMap(ItWr_Map_NewWorld);
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage			(Document, 0, "Map_NewWorld.tga", true);
				Doc_SetLevel		(Document, "NewWorld\NewWorld.zen");
				Doc_SetLevelCoords	(Document, -28000, 50500, 95500, -42500);
				Doc_Show			(Document);
};
///******************************************************************************************
instance ItWr_Map_NewWorld_City (ItemPR_Map)
{
	value					=	50;
	visual					=	"ItWr_Map_01.3DS";
	on_state[0]				=	Use_ItWr_Map_NewWorld_City;
	
	description				=	"Mapa miasta Khorinis";
	COUNT[5]				=	value;
};
func void Use_ItWr_Map_NewWorld_City()
{
	B_SetPlayerMap(ItWr_Map_NewWorld_City);
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage			(Document, 0, "Map_NewWorld_City.tga", true);
				Doc_SetLevel		(Document, "NewWorld\NewWorld.zen");
				Doc_SetLevelCoords	(Document, -6900, 11800, 21600, -9400);
				Doc_Show			(Document);
};
///******************************************************************************************
instance ItWr_Map_OldWorld (ItemPR_Map)
{
	value					=	200;
	visual					=	"ItWr_Map_01.3DS";
	on_state[0]				=	Use_ItWr_Map_OldWorld;
	
	description				=	"Mapa G�rniczej Doliny";
	COUNT[5]				=	value;
};
func void Use_ItWr_Map_OldWorld()
{
	B_SetPlayerMap(ItWr_Map_OldWorld);
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage			(Document, 0, "Map_OldWorld.tga", true);
				Doc_SetLevel		(Document, "OldWorld\OldWorld.zen");
				Doc_SetLevelCoords	(Document, -78500, 47500, 54000, -53000);
				Doc_Show			(Document);
};
///******************************************************************************************
instance ItWr_Map_AddonWorld (ItemPR_Map)
{
	value					=	200;
	visual					=	"ItWr_Map_01.3DS";
	on_state[0]				=	Use_ItWr_Map_AddonWorld;
	
	description				=	"Zapomniana dolina budowniczych";
	COUNT[5]				=	value;
};
func void Use_ItWr_Map_AddonWorld()
{
	B_SetPlayerMap(ItWr_Map_AddonWorld);
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage			(Document, 0, "Map_AddonWorld.tga", true);
				Doc_SetLevel		(Document, "Addon\AddonWorld.zen");
				Doc_SetLevelCoords	(Document, -47783, 36300, 43949, -32300);
				Doc_Show			(Document);
};

///******************************************************************************************
///	Stoneplates
///******************************************************************************************
instance ItWr_StonePlate (C_Item)
{
	name 					=	"Kamienna tabliczka";
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	
	value 					=	10;
	material				=	MAT_STONE;
	var int random; random = Hlp_Random(5);
	if		(random == 0)	{ visual = "ItMi_StonePlate_PowerUp_01.3ds"; }
	else if	(random == 1)	{ visual = "ItMi_StonePlate_PowerUp_02.3ds"; }
	else if	(random == 2)	{ visual = "ItMi_StonePlate_PowerUp_03.3ds"; }
	else if	(random == 3)	{ visual = "ItMi_StonePlate_PowerUp_04.3ds"; }
	else					{ visual = "ItMi_StonePlate_PowerUp_05.3ds"; };
	
	scemename				=	"MAPSEALED";
	on_state[0]				=	Use_ItWr_StonePlate;
	
	description				=	name;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
	inv_rotx				=	INVCAM_X_STONEPLATE_STANDARD;
};
func void Use_ItWr_StonePlate()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_RaiseAttribute (self, default, 2);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate);
	};
};

///******************************************************************************************
/// Books
///******************************************************************************************
prototype ItemPR_BookLp (C_Item)
{
	name					=	"Ksi��ka";
	mainflag				=	ITEM_KAT_DOCS;
	flags					=	ITEM_MULTI;
	
	value					=	400;
	material				=	MAT_LEATHER;
	scemeName				=	"MAPSEALED";
	
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	INV_ZBIAS				=	INVCAM_ENTF_MISC_STANDARD;
};
prototype ItemPR_BookXp (C_Item)
{
	name					=	"Ksi��ka";
	mainflag				=	ITEM_KAT_DOCS;
	flags					=	ITEM_MULTI;
	
	value					=	20;
	material				=	MAT_LEATHER;
	scemeName				=	"MAPSEALED";
	
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	INV_ZBIAS				=	INVCAM_ENTF_MISC_STANDARD;
};
///******************************************************************************************

var int Bonus_ItWr_Book_Fight1H;
var int Bonus_ItWr_Book_Fight2H;
var int Bonus_ItWr_Book_StarPower;
var int Bonus_ItWr_Book_GodsGift;
var int Bonus_ItWr_Book_SecretsOfMagic;
var int Bonus_ItWr_Book_PowerfulArt;
var int Bonus_ItWr_Book_Elementare;
var int Bonus_ItWr_Book_RealPower;
var int Bonus_ItWr_Book_MagicOre;
var int Bonus_ItWr_Book_Varant1;
var int Bonus_ItWr_Book_Varant2;
var int Bonus_ItWr_Book_MyrthanianPoetry;
var int Bonus_ItWr_Book_GodsWisdom1;
var int Bonus_ItWr_Book_GodsWisdom2;
var int Bonus_ItWr_Book_GodsWisdom3;
var int Bonus_ItWr_Book_Hunting;
var int Bonus_ItWr_Book_Fight;
var int Bonus_ItWr_Book_Astronomy;
var int Bonus_ItWr_Book_Focus;
var int Bonus_ItWr_Book_Golem;
var int Bonus_ItWr_Book[100];

///******************************************************************************************
instance ItWr_Book_Fight1H (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_04.3ds";
	on_state[0]				=	Use_ItWr_Book_Fight1H;
	
	if (Bonus_ItWr_Book_Fight1H)
	{ description			=	"Kunszt obronny po�udniowc�w (przeczytane)"; }
	else
	{ description			=	"Kunszt obronny po�udniowc�w"; };
};
func void Use_ItWr_Book_Fight1H()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_Fight1H)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_Fight1H = true;
	};
	CreateInvItem(self, ItWr_Book_Fight1H);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Red_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Kunszt obronny po�udniowc�w");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po�udniowiec w por�wnaniu z mieszka�cem p�nocy nie polega tak bardzo na sile fizycznej, preferuj�c zwinno��, a gor�cy klimat jego ojczyzny zmusza go do korzystania z l�ejszych i daj�cych wi�ksz� swobod� ruch�w pancerzy. W zwi�zku z tym styl walki ludzi po�udnia jest ca�kowicie inny od tego, do kt�rego jeste�my przyzwyczajeni.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Prawdopodobnie najs�ynniejszym manewrem wywodz�cym si� z po�udnia jest jednor�czny blok po��czony z krokiem wstecz: cofni�cie si� pozwala na zmniejszenie si�y wrogiego ciosu i umo�liwia przyj�cie postawy u�atwiaj�cej wyprowadzenie kontrataku.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Fight2H (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_03.3ds";
	on_state[0]				=	Use_ItWr_Book_Fight2H;
	
	if (Bonus_ItWr_Book_Fight2H)
	{ description			=	"Bloki dwur�czne (przeczytane)"; }
	else
	{ description			=	"Bloki dwur�czne"; };
};
func void Use_ItWr_Book_Fight2H()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_Fight2H)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_Fight2H = true;
	};
	CreateInvItem(self, ItWr_Book_Fight2H);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Red_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Bloki dwur�czne");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Blokowanie cios�w przeciwnika za pomoc� broni dwur�cznej umo�liwia silnym wojownikom gwa�towne powstrzymanie wroga i przerwanie ewentualnej kombinacji jego cios�w.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zatrzymany w ten spos�b przeciwnik traci inicjatyw� i �atwiej go potem skutecznie zaatakowa�.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_StarPower (ItemPR_BookLp) 
{
	visual					=	"ItWr_Book_02_02.3ds";
	on_state[0]				=	Use_ItWr_Book_StarPower;
	
	if (Bonus_ItWr_Book_StarPower)
	{ description			=	"Boska moc gwiazd (przeczytane)"; }
	else
	{ description			=	"Boska moc gwiazd"; };
};
func void Use_ItWr_Book_StarPower()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_StarPower)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_StarPower = true;
	};
	CreateInvItem(self, ItWr_Book_StarPower);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Mage_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Mage_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "...jednak kiedy up�r wo�u po��czy si� z przebieg�o�ci� wojownika, strze�cie si�, albowiem b�dziecie �wiadkami wielkich zmian.");
				Doc_PrintLines	(nDocID,  0, "Up�r wo�u po��czony z wytrwa�o�ci� wojownika mo�e zaburzy� odwieczny porz�dek. Kosmiczna materia oddzielaj�ca wymiary staje si� coraz cie�sza i s�absza. Wkr�tce nie b�dzie w stanie powstrzyma� istot Beliara przed wdarciem si� do naszej rzeczywisto�ci.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W pradawnych czasach, kiedy oba �wiaty by�y po��czone siln� wi�zi�, s�udzy Z�a mogli bez przeszk�d pl�drowa� nasze ziemie, i tylko moc Innosa oraz jego Wybra�ca pozwoli�a nam odeprze� ataki Wroga."	);
				Doc_PrintLines	(nDocID,  1, "Je�li taka sytuacja si� powt�rzy, niechaj Innos ma nas w swej opiece, albowiem od stuleci nie by�o po�r�d nas jego Wybra�ca.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_GodsGift (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_01.3ds";
	on_state[0]				=	Use_ItWr_Book_GodsGift;
	
	if (Bonus_ItWr_Book_GodsGift)
	{ description			=	"Dar od bog�w (przeczytane)"; }
	else
	{ description			=	"Dar od bog�w"; };
};
func void Use_ItWr_Book_GodsGift()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_GodsGift)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_GodsGift = true;
	};
	CreateInvItem(self, ItWr_Book_GodsGift);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Mage_L.tga", false); 
				Doc_SetPage		(nDocID,  1, "Book_Mage_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
 				Doc_PrintLine	(nDocID,  0, "Magia");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Dar od bog�w");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z dawien dawna cz�ek pr�bowa� zg��bi� natur� i genez� sztuk magicznych. Jeno gdzie rozpocz�� takie poszukiwania? Czy magi� mo�na w og�le opisa�? Pr�no szuka� r�wnie niesp�jnego zjawiska we �wiecie: wszak magia jednako leczy i zabija, tworzy i niszczy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Gdzie zatem szuka� tej nieopisanej pot�gi? Magia jest tym, czym jest - najpot�niejszym i najwspanialszym darem, jaki cz�owiek otrzyma� od bog�w. Baczcie jeno, by dar �w rych�o nie sta� si� przekle�stwem, gdy� nieliczni b�d� w stanie zrozumie� magi� i wykorzysta� j� do w�asnych cel�w. Inni sami zostan� wykorzystani.");	
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Barthos z Laran");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_SecretsOfMagic (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_02.3ds";
	on_state[0]				=	Use_ItWr_Book_SecretsOfMagic;
	
	if (Bonus_ItWr_Book_SecretsOfMagic)
	{ description			=	"Tajniki magii (przeczytane)"; }
	else
	{ description			=	"Tajniki magii"; };
};
func void Use_ItWr_Book_SecretsOfMagic()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_SecretsOfMagic)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_SecretsOfMagic = true;
	};
	CreateInvItem(self, ItWr_Book_SecretsOfMagic);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Mage_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Mage_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0,  275, 20, 30, 20, 1);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLine	(nDocID,  0, "Tajniki magii");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Magia nie zamieszkuje w ciele samego magusa. Jest on raczej jako zmy�lny rzemie�lnik, a ona jako narz�dzie jego. Tako� pocz�tkuj�cy magus uczy si� jak on� moc okie�zna� i kierowa� ni� wedle swojej woli.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Jego duch nadaje owej mocy po��dany kszta�t, ogniskuje j� i wreszcie uwalnia. W takich chwilach dusza magusa wznosi si� ponad nasz �wiat i spoziera na Drug� Stron�, gdzie stoi pa�ac pot�gi, kt�r� on kszta�tuje i przekazuje.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Barthos z Laran");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_PowerfulArt (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_03.3ds";
	on_state[0]				=	Use_ItWr_Book_PowerfulArt;
	
	if (Bonus_ItWr_Book_PowerfulArt)
	{ description			=	"Wszechpot�na sztuka (przeczytane)"; }
	else
	{ description			=	"Wszechpot�na sztuka"; };
};
func void Use_ItWr_Book_PowerfulArt()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_PowerfulArt)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_PowerfulArt = true;
	};
	CreateInvItem(self, ItWr_Book_PowerfulArt);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Mage_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Mage_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLine	(nDocID,  0, "Wszechpot�na sztuka");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ksi�ga dla tych, co w sztukach magicznych uczeni s�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Umiej�tno�ci magusa wzrastaj� z czasem. Najpierw jest jako ziarno zbo�a, kt�re trzeba chroni�, by nie zmarnia�o. Lecz wkr�tce ziarno wypuszcza kie�ki, staj�c si� pi�kn� ro�lin�.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Z ka�dym nowym dniem ro�lina staje si� wi�ksza i silniejsza. Tak samo jest z magusem. Na pocz�tku nauki jego si�y s� w�t�e, lecz z czasem okrzepnie, staj�c si� pot�niejszym. Ci�g�e d��enie do absolutnej perfekcji powinno by� nadrz�dnym celem ka�dego adepta magii. Ziarno pot�gi dane im przez bog�w jest bowiem najcenniejszym darem, jakie �miertelnik mo�e otrzyma�.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Elementare (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_04.3ds";
	on_state[0]				=	Use_ItWr_Book_Elementare;
	
	if (Bonus_ItWr_Book_Elementare)
	{ description			=	"Arcanum �ywio��w (przeczytane)"; }
	else
	{ description			=	"Arcanum �ywio��w"; };
};
func void Use_ItWr_Book_Elementare()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_Elementare)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_Elementare = true;
	};
	CreateInvItem(self, ItWr_Book_Elementare);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Mage_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Mage_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLine	(nDocID,  0, "Arcanum �ywio��w");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Miejsce magii w ziemskim porz�dku");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wiele bada� przeprowadzono, g�owi�c si� nad zale�no�ci� magii od wszelakich �ywio��w. W rezultacie przyj�to, i� jest ona - magia - ostatecznym, najpot�niejszym �ywio�em ze wszystkich. Wszak to dzi�ki niej magus mo�e kszta�towa� pozosta�e si�y natury wedle w�asnego upodobania.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ka�dy �ywio�, w swej najczystszej formie, ujawnia powi�zania z magi�. Oczywi�cie, naturalne manifestacje takich powi�za� nale�� do rzadko�ci i s� skrz�tnie poszukiwane. Zdolno�� magusa do kontrolowania pot�gi �ywio��w stanowi ostateczny dow�d, i� magia jest najczystszym i najwspanialszym dobrem obecnym w naszej egzystencji.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_RealPower (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_RealPower;
	
	if (Bonus_ItWr_Book_RealPower)
	{ description			=	"Prawdziwa moc (przeczytane)"; }
	else
	{ description			=	"Prawdziwa moc"; };
};
func void Use_ItWr_Book_RealPower()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_RealPower)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_RealPower = true;
	};
	CreateInvItem(self, ItWr_Book_RealPower);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Mage_L.tga", false); 
				Doc_SetPage		(nDocID,  1, "Book_Mage_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLine	(nDocID,  0, "Prawdziwa moc");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "�wi�ta powinno�� m�drca");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To pot�ga odr�nia magusa od zwyk�ego �miertelnika. W�adny wykorzystywa� bosk� moc, magus wyj�ty jest spod tych wszystkich praw natury, kt�re dotycz� ludzi prostych i kr�l�w jednako. ");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Gdy magus osi�gnie poziom, kt�ry pozwoli mu wykroczy� poza granice ludzkiej egzystencji, wst�puje do �wiata niedost�pnego zwyk�ym �miertelnikom. Mo�e prze�amywa� bariery czasu i przestrzeni, i nawet �mier� - ostateczna bariera - nie jest mu straszna.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_MagicOre (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_02.3ds";
	on_state[0]				=	Use_ItWr_Book_MagicOre;
	
	if (Bonus_ItWr_Book_MagicOre)
	{ description			=	"Magiczna ruda (przeczytane)"; }
	else
	{ description			=	"Magiczna ruda"; };
};
func void Use_ItWr_Book_MagicOre()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_MagicOre)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_MagicOre = true;
	};
	CreateInvItem(self, ItWr_Book_MagicOre);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najlepsz� rud� do wyrobu wszelkiego rodzaju or�a znale�� mo�na w kopalniach w dolinie Khorinis. Wykut� z niej bro� cechuje niebywa�a wytrzyma�o��. Pok�ady rudy wyst�puj� zwykle g��boko pod ziemi�, lecz g�upcem ten, kto nie podejmie trudu wydobycia jej na �wiat�o dzienne. Niewiele jest takich skarb�w na �wiecie...");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Magiczna bro� przebije ka�dy pancerz i pogruchocze ka�d� tarcz�. Zaiste, kr�lewski to or� i kr�lewsk� cen� trzeba zap�aci� za cho�by sztylet wykuty z tego szlachetnego kruszcu. Tako� surow� cen� p�ac� g�rnicy pracuj�cy w kopalniach. Rud� nie�atwo oddzieli� od skalnych pok�ad�w, tak jakby z ca�ych si� walczy�a, by pozosta� w �onie matki Ziemi.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Varant1 (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_04.3ds";
	on_state[0]				=	Use_ItWr_Book_Varant1;
	
	if (Bonus_ItWr_Book_Varant1)
	{ description			=	"Bitwa o Varrant Tom 1 (przeczytane)"; }
	else
	{ description			=	"Bitwa o Varrant Tom 1"; };
};
func void Use_ItWr_Book_Varant1()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_Varant1)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_Varant1 = true;
	};
	CreateInvItem(self, ItWr_Book_Varant1);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Red_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "...ale sprytny Rhobar postanowi� zaatakowa�. Zebra� swoje si�y i kaza� im n�ka� s�absz�, praw� flank� nieprzyjaciela. Nie trac�c chwili, kr�l pchn�� najlepsze swe oddzia�y na wroga, i przebi� si� przeze� niczym miecz przecinaj�cy m�a. Wojska kr�lewskie par�y zatem bez wytchnienia w stron� Varant. Rhobar wiedzia� wszak, �e jedyna szansa ocalenia le�y w rozbiciu armii nieprzyjaciela i niedopuszczeniu do po��czenia si� Gellona i Lukkora.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");					
				Doc_PrintLines	(nDocID,  1, "  Najpierw jednak postanowi� przeci�� ich linie zaopatrzenia...");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "...Gellon poleg� a jego armia posz�a w rozsypk�. Ale Rhobar nie zamierza� da� przeciwnikowi chwili wytchnienia i rzuci� swe si�y na pozosta�e oddzia�y wroga. Tu jednak Lukkor rzuci� si� na kr�lewskich znienacka i zada� straszliwy cios wyczerpanym wojskom Rhobara...");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Varant2 (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_Varant2;
	
	if (Bonus_ItWr_Book_Varant2)
	{ description			=	"Bitwa o Varrant Tom 2 (przeczytane)"; }
	else
	{ description			=	"Bitwa o Varrant Tom 2"; };
};
func void Use_ItWr_Book_Varant2()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_Varant2)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_Varant2 = true;
	};
	CreateInvItem(self, ItWr_Book_Varant2);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Red_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wojna by�a sko�czona. Varant straci�o swe morskie porty, tak potrzebne dla zaopatrywania armii. Kr�l Rhobar nie traci� wi�cej czasu na polu bitwy, lecz zostawi� swych genera��w, by ci rozprawili si� z niedobitkami nieprzyjaciela. Varrantczycy posiadali ju� tylko jedno ognisko oporu, zgromadzone wok� Lukkora, najpot�niejszego genera�a ca�ego narodu, kt�ry umiej�tnie zamieni� pora�k� w zwyci�stwo.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale teraz jego armia znalaz�a si� w potrzasku. Sytuacja zda�a si� by� beznadziejna, cho� jego wojska przewy�sza�y si�y kr�lewskie liczb� i wyposa�eniem. Oto jeden z Myrta�skich bohater�w, m�ny genera� imieniem Lee, zwabi� przeciwnika w pu�apk�. Na podmok�ej, bagnistej ziemi ci�ka kawaleria Lukkora nie mia�a szans w starciu ze zwinnymi �o�nierzami Lee. Zdziesi�tkowane oddzia�y Varantu wkr�tce musia�y uzna� wy�szo�� przeciwnika. Lukkor zosta� pokonany.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_MyrthanianPoetry (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_02.3ds";
	on_state[0]				=	Use_ItWr_Book_MyrthanianPoetry;
	
	if (Bonus_ItWr_Book_MyrthanianPoetry)
	{ description			=	"Poezja myrta�ska (przeczytane)"; }
	else
	{ description			=	"Poezja myrta�ska"; };
};
func void Use_ItWr_Book_MyrthanianPoetry()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_MyrthanianPoetry)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_MyrthanianPoetry = true;
	};
	CreateInvItem(self, ItWr_Book_MyrthanianPoetry);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Red_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "    Pie��");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "		  Skruchy");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Na pocz�tku by�a moc, jak jasny �nieg bia�a,");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzi� niewielka cz�stka dawnej chwa�y pozosta�a.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przypomina o jedno�ci z dawnych lat,");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "jak�e r�nej od chciwo�ci, kt�r� �wiat");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "nasz zdepta� i odrzuci� po wsze czasy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nasz duch nie zdzier�y� ostatecznej pr�by,");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "a po��danie b�dzie �r�d�em naszej zguby.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bo nie masz ju� jedno�ci na tym �wiecie.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_GodsWisdom1 (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_01.3ds";
	on_state[0]				=	Use_ItWr_Book_GodsWisdom1;
	
	if (Bonus_ItWr_Book_GodsWisdom1)
	{ description			=	"M�dro�� bog�w Tom 1 (przeczytane)"; }
	else
	{ description			=	"M�dro�� bog�w Tom 1"; };
};
func void Use_ItWr_Book_GodsWisdom1()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_GodsWisdom1)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_GodsWisdom1 = true;
	};
	CreateInvItem(self, ItWr_Book_GodsWisdom1);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Red_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wys�uchajcie s��w bo�ych, bo pragn� oni, by�cie ich wys�uchali. Przestrzegajcie praw bo�ych, bo chc� oni, by�cie ich przestrzegali. Czcijcie kap�an�w bo�ych, bo oni s� wybra�cami �aski...");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "S�owa Innosa: A gdyby�cie nie mogli ich poj��, nie odrzucajcie s��w kap�an�w, bo g�osz� oni moj� m�dro��. Gdy� ja jestem S�o�cem na niebie, �wiat�em i �yciem na Ziemi. A wszystko, co wrogiem jest S�o�ca, jest i moim wrogiem, i zostanie wygnane do krainy wiecznej ciemno�ci.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "S�owa Adanosa: �yjcie i pracujcie, bo dzie� stworzono po to, by m�� m�g� �y� i pracowa�. Szukajcie wiedzy, by�cie mogli przekaza� j� synom swoim, gdy� taka jest wola moja. Ale strze�cie si�, bo cz�ek g�upi i leniwy zostanie wygnany do krainy wiecznej ciemno�ci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "S�owa Beliara: A ktokolwiek wyst�pi przeciw woli bo�ej, ze mn� b�dzie mia� do czynienia. Na jego cia�o b�l ze�l� okrutny, a jego duch p�jdzie ze mn� do krainy wiecznej ciemno�ci.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_GodsWisdom2 (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_02.3ds";
	on_state[0]				=	Use_ItWr_Book_GodsWisdom2;
	
	if (Bonus_ItWr_Book_GodsWisdom2)
	{ description			=	"M�dro�� bog�w Tom 2 (przeczytane)"; }
	else
	{ description			=	"M�dro�� bog�w Tom 2"; };
};
func void Use_ItWr_Book_GodsWisdom2()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_GodsWisdom2)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_GodsWisdom2 = true;
	};
	CreateInvItem(self, ItWr_Book_GodsWisdom2);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Red_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O zaraniu dziej�w: Na pocz�tku nie by�o dnia ani nocy, i �adne �ywe stworzenie nie przemierza�o �wiata. Wtedy pojawi� si� Innos, a jego blask pada� na Ziemi�. Innos obdarzy� �wiat darem �ycia. Ale �adne stworzenie nie �mia�o spojrze� w twarz Innosa, wi�c dobry b�g stworzy� S�o�ce. Lecz mimo to, jasno�� by�a zbyt wielka, tote� Innos podzieli� si� na dwoje i tak powsta� Beliar. Beliar stworzy� noc. Teraz cz�owiek m�g� wreszcie �y�, lecz nie wiedzia� jak. Dlatego Innos podzieli� si� po raz wt�ry i tak powsta� Adanos. Adanos przyni�s� ludziom pomys�owo�� i m�dro��, kt�rej tak bardzo potrzebowali.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dlatego Innos postanowi� zostawi� ludzko�� pod opiek� Adanosa i uda� si� na spoczynek. Lecz Beliar p�on�� z zazdro�ci, gdy� ludzie bali si� go i nie oddawali mu czci. Tedy postanowi� Beliar stworzy� cz�owieka, kt�ry modli�by si� tylko do niego. Ale cz�owiek �w by� jako wszyscy inni, i ba� si� Beliara i nie oddawa� mu czci. B�g nocy rozz�o�ci� si� i zabi� cz�owieka krzycz�c: Dobrze! B�jcie si� mnie zatem, ale cze�� oddacie mi, cho�by po �mierci. Tymi s�owy ustanowi� Beliar �mier� - kres �ywota ludzkiego."	);
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_GodsWisdom3 (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_03.3ds";
	on_state[0]				=	Use_ItWr_Book_GodsWisdom3;
	
	if (Bonus_ItWr_Book_GodsWisdom3)
	{ description			=	"M�dro�� bog�w Tom 3 (przeczytane)"; }
	else
	{ description			=	"M�dro�� bog�w Tom 3"; };
};
func void Use_ItWr_Book_GodsWisdom3()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_GodsWisdom3)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_GodsWisdom3 = true;
	};
	CreateInvItem(self, ItWr_Book_GodsWisdom3);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Red_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
  				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Innos pozwoli�, by ludzie mogli go us�ysze� i przemawia� do niego. Pozwoli� im r�wnie� czyni� cuda i nazwa� je magi�. Dzi�ki magii, ludzie zacz�li zmienia� �wiat wedle swego upodobania, jedni m�drze, inni g�upio. Widz�c to, Innos zabra� dar magii ludziom g�upim i pozostawi� go w r�kach ludzi �wiat�ych. Obdarzy� ich r�wnie� innymi �askami, czyni�c swoimi kap�anami i nadaj�c im miano mag�w.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ludzie czcili kap�an�w Innosa i oddawali im cze��, ale wielu mag�w odwr�ci�o si� od Innosa i uciek�o si� pod opiek� jego boskiego brata - Adanosa. Kasta mag�w uleg�a rozbiciu. Ci, kt�rzy pod��ali za bogiem m�dro�ci nazwali siebie magami Kr�gu Wody. Wyznawcy Innosa nazywani za� byli Magami Ognia.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Hunting (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_02.3ds";
	on_state[0]				=	Use_ItWr_Book_Hunting;
	
	if (Bonus_ItWr_Book_Hunting)
	{ description			=	"�owy i zwierzyna (przeczytane)"; }
	else
	{ description			=	"�owy i zwierzyna"; };
};
func void Use_ItWr_Book_Hunting()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_Hunting)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_Hunting = true;
	};
	CreateInvItem(self, ItWr_Book_Hunting);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jego zapiski przetrwa�y ca�e wieki i po dzi� dzie� uznawane s� za najznakomitsze kompendium wiedzy o polowaniu. Po d�ugich latach star� na p�nocnym pograniczu, niemal ka�dy obywatel potrafi pos�ugiwa� si� �ukiem. Jednak sztuka polowania daleko wykracza poza podstawowe zasady strzelania z �uku! Zwierzyna jest wszak p�ocha i nieprzewidywalna!");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Polowanie z �ukiem ma swe pocz�tki w czasach staro�ytnych. W ci�gu ca�ych tysi�cleci nie zasz�y w technikach �owieckich wi�ksze zmiany i tak ju� najprawdopodobniej pozostanie. Jakie czynniki wp�ywaj� tak naprawd� na skuteczno�� pos�ugiwania si� �ukiem? To w�a�nie rozpoznanie tych czynnik�w czyni prawdziwego mistrza �ucznictwa.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Fight (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_03.3ds";
	on_state[0]				=	Use_ItWr_Book_Fight;
	
	if (Bonus_ItWr_Book_Fight)
	{ description			=	"Sztuka walki (przeczytane)"; }
	else
	{ description			=	"Sztuka walki"; };
};
func void Use_ItWr_Book_Fight()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_Fight)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_Fight = true;
	};
	CreateInvItem(self, ItWr_Book_Fight);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
 				Doc_PrintLine	(nDocID,  0, "");
 				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Od 2000 lat nauki mistrz�w kszta�tuj� rozw�j sztuki walki.");
 				Doc_PrintLine	(nDocID,  0, "");
 				Doc_PrintLine	(nDocID,  0, "");
  				Doc_PrintLines	(nDocID,  0, "Zr�czno��, opanowanie, szybko��, zdolno�� obserwacji i b�yskawicznego podejmowania decyzji - wszystkie te umiej�tno�ci nale�y bezustannie doskonali�. Jedynie doskona�a koordynacja ruch�w i zachowanie w�a�ciwej postawy pozwol� na prawid�owy rozw�j twych umiej�tno�ci.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
 				Doc_PrintLine	(nDocID,  1, "");
 				Doc_PrintLine	(nDocID,  1, "");
 				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przes�anie duchowych i cielesnych nauk Mistrza przetrwa�o wiele lat.");
 				Doc_PrintLine	(nDocID,  1, "");
 				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jego niepospolity sukces by� natchnieniem dla kolejnych pokole�. �wiat zmienia� si� bez przerwy, ale idealna harmonia si� duchowych i sprawno�ci cia�a pozosta�a niezmienn�.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Astronomy (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_Astronomy;
	
	if (Bonus_ItWr_Book_Astronomy)
	{ description			=	"Astronomia (przeczytane)"; }
	else
	{ description			=	"Astronomia"; };
};
func void Use_ItWr_Book_Astronomy()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_Astronomy)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_Astronomy = true;
	};
	CreateInvItem(self, ItWr_Book_Astronomy);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W centrum wszech�wiata znajduje si� Morgrad, co zawiera cztery �ywio�y - ziemi�, wod�, ogie� i wiatr. Morgrad, co jest wiecznie niespokojnym sercem Beliara. A nad nim rozci�ga si� sfera niebios.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W odwiecznej hierarchii kosmosu cz�owiek stoi po�rodku. Jego dusza pozwala mu do�wiadcza� �ask niebia�skich, ale jego cia�o stworzone jest z substancji Morgradu. Jest wi�c cz�owiek odzwierciedleniem ca�ego �wiata.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Orbity wszystkich planet, czyli drogi, jakie pokonuj� okr��aj�c Morgrad, zmieniaj� si� nieznacznie z up�ywem lat. Pewnym jest zatem, i� ca�y wszech�wiat zmierza powoli do jakiego� celu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Obserwuj�c ruch ksi�yca na nocnym niebie ustalili�my d�ugo�� roku i stworzyli�my pierwszy kalendarz.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Focus (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_Focus;
	
	if (Bonus_ItWr_Book_Focus)
	{ description			=	"Kamienie ogniskuj�ce (przeczytane)"; }
	else
	{ description			=	"Kamienie ogniskuj�ce"; };
};
func void Use_ItWr_Book_Focus()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_Focus)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_Focus = true;
	};
	CreateInvItem(self, ItWr_Book_Focus);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLine	(nDocID,  0, "Ogniskowanie mocy");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Magia skumulowana w kamieniu ulega wielokrotnemu wzmocnieniu zanim wyzwol� j� s�owa zakl�cia. To, czy efekt b�dzie trwa�y czy tylko chwilowy, zale�y wy��cznie od maga.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tym samym, po wyzwoleniu energii, kamie� staje si� jeno pust�, pozbawion� mocy skorup�.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "S�owa, kt�re nale�y wypowiedzie�, aby uwolni� moc kamienia, nie powinny by� zagadk� dla wi�kszo�ci adept�w sztuk magicznych. W dzisiejszych czasach, nawet formu�y pozwalaj�ce tchn�� magi� w nowy artefakt spowszednia�y.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale tylko nieliczni maj� umiej�tno�ci potrzebne do ponownego na�adowania kamienia. Te prastare formu�y s� pilnie strze�onym sekretem arcymistrz�w magii.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zatem, M�drcze - otw�rz sw� dusz� na s�owa staro�ytnej pot�gi.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Golem (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_Golem;
	
	if (Bonus_ItWr_Book_Golem)
	{ description			=	"Arcanum Golum (przeczytane)"; }
	else
	{ description			=	"Arcanum Golum"; };
};
func void Use_ItWr_Book_Golem()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book_Golem)
	{
		B_RaiseAttribute(self, 0, 1); Bonus_ItWr_Book_Golem = true;
	};
	CreateInvItem(self, ItWr_Book_Golem);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Mage_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Mage_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Magia golem�w");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tylko kto�, kto cho� raz stawi� czo�a uciele�nieniu �ywio��w, jakim jest Golem, zrozumie l�k i respekt, jaki istoty te budz� w�r�d najm�niejszych nawet podr�nik�w.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Te kamienne kolosy s� niemal niezniszczalne. �aden miecz, top�r czy �uk nie jest w stanie wyrz�dzi� im powa�niejszej krzywdy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jedyne doniesienia o zwyci�skiej walce stoczonej z Golemem pochodz� z zapisk�w bezimiennego najemnika. Opisa� on jak pot�nymi ciosami wojennego m�ota uda�o mu si� rozbi� pot�nego nieprzyjaciela w drobny py�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
/// Exp books
///******************************************************************************************
instance ItWr_Book_000 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_000;
	
	if (Bonus_ItWr_Book[0])
	{ description			=	"Alchemia (przeczytane)"; }
	else
	{ description			=	"Alchemia"; };
};
func void Use_ItWr_Book_000()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[0])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[0] = true;
	};
	CreateInvItem(self, ItWr_Book_000);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID,  -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Alchemia jest sztuk� przemiany materii, gdzie tajemnicze mikstury potrafi� przemieni� proste sk�adniki w eliksiry o niezwyk�ej mocy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kluczowym etapem jest precyzyjne odmierzanie i mieszanie sk�adnik�w, a tak�e kontrolowanie temperatury i czasu gotowania.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e cierpliwo�� i dok�adno�� s� nieodzowne, aby osi�gn�� zamierzony efekt.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka�da pomy�ka mo�e prowadzi� do nieprzewidzianych rezultat�w, dlatego staranno�� jest najwa�niejsza.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_001 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_001;
	
	if (Bonus_ItWr_Book[1])
	{ description			=	"Kowalstwo (przeczytane)"; }
	else
	{ description			=	"Kowalstwo"; };
};
func void Use_ItWr_Book_001()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[1])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[1] = true;
	};
	CreateInvItem(self, ItWr_Book_001);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID,  -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka�dy kowal musi zna� sekrety hartowania stali.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Aby uzyska� idealnie ostr� kling�, najpierw podgrzej �elazo do czerwono�ci, a nast�pnie zanurz je gwa�townie w lodowatej wodzie.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e odpowiednie uderzenia m�otem musz� by� r�wnomierne, a ich si�a dostosowana do rodzaju metalu, z kt�rym pracujesz.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_002 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_002;
	
	if (Bonus_ItWr_Book[2])
	{ description			=	"My�listwo (przeczytane)"; }
	else
	{ description			=	"My�listwo"; };
};
func void Use_ItWr_Book_002()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[2])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[2] = true;
	};
	CreateInvItem(self, ItWr_Book_002);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID,  -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "My�liwy musi zna� zwyczaje zwierzyny, kt�r� �ciga.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najlepsze wyniki osi�gniesz, �ledz�c �lady wczesnym rankiem, gdy rosa na trawie wci�� jest �wie�a.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, aby zawsze porusza� si� z wiatrem, aby twoje zapachy nie zdradzi�y twojej obecno�ci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Cierpliwo�� i umiej�tno�� pozostawania niezauwa�onym s� kluczowe.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_003 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_003;
	
	if (Bonus_ItWr_Book[3])
	{ description			=	"�ucznictwo (przeczytane)"; }
	else
	{ description			=	"�ucznictwo"; };
};
func void Use_ItWr_Book_003()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[3])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[3] = true;
	};
	CreateInvItem(self, ItWr_Book_003);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID,  -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sztuka �ucznictwa wymaga nie tylko si�y, ale i precyzji.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sta� stabilnie, celuj spokojnie, i pozw�l strzale pod��a� naturalnym torem lotu.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "�wicz celno��, strzelaj�c do ruchomych cel�w, aby przygotowa� si� na niespodziewane sytuacje w boju.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e ka�dy �ucznik musi by� jednym z �ukiem, czu� jego napi�cie i wiedzie�, kiedy pu�ci� ci�ciw�.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_004 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_004;
	
	if (Bonus_ItWr_Book[4])
	{ description			=	"Kusznictwo (przeczytane)"; }
	else
	{ description			=	"Kusznictwo"; };
};
func void Use_ItWr_Book_004()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[4])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[4] = true;
	};
	CreateInvItem(self, ItWr_Book_004);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID,  -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kusza jest narz�dziem precyzji i si�y.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nauka szybkiego prze�adowania mo�e uratowa� ci �ycie na polu bitwy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, aby zawsze mie� w zapasie dodatkowe be�ty i sprawdza� stan mechanizmu napinaj�cego.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka�dy strza� musi by� oddany z pe�nym przekonaniem, �e trafi w cel.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_005 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_005;
	
	if (Bonus_ItWr_Book[5])
	{ description			=	"Prowadzenie �ledztw (przeczytane)"; }
	else
	{ description			=	"Prowadzenie �ledztw"; };
};
func void Use_ItWr_Book_005()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[5])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[5] = true;
	};
	CreateInvItem(self, ItWr_Book_005);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID,  -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Detektyw musi umie� dostrzega� to, co niewidoczne dla innych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka�dy drobiazg mo�e by� kluczem do rozwi�zania zagadki.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zadawaj pytania, kt�re ods�oni� motywy, zbieraj dowody i analizuj je z chirurgiczn� precyzj�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Najwa�niejsze to po��czy� wszystkie elementy uk�adanki w jedn� sp�jn� ca�o��.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_006 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_006;
	
	if (Bonus_ItWr_Book[6])
	{ description			=	"Otwieranie zamk�w (przeczytane)"; }
	else
	{ description			=	"Otwieranie zamk�w"; };
};
func void Use_ItWr_Book_006()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[6])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[6] = true;
	};
	CreateInvItem(self, ItWr_Book_006);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID,  -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sztuka otwierania zamk�w wymaga zr�czno�ci i delikatnego dotyku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U�ywaj�c odpowiednich narz�dzi, ws�uchuj si� w mechanizm zamka, wyczuwaj jego op�r i delikatnie manipuluj wytrychem.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Cierpliwo�� i precyzja s� kluczowe, aby zamek ust�pi� bez uszkodze�.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_007 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_007;
	
	if (Bonus_ItWr_Book[7])
	{ description			=	"Kradzie� kieszonkowa (przeczytane)"; }
	else
	{ description			=	"Kradzie� kieszonkowa"; };
};
func void Use_ItWr_Book_007()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[7])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[7] = true;
	};
	CreateInvItem(self, ItWr_Book_007);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID,  -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kieszonkowiec musi by� niewidzialny i szybki jak cie�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Obserwuj swoj� ofiar�, wybieraj moment, gdy jest najbardziej rozproszona.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Szybkim, pewnym ruchem wyci�gnij cel z jej kieszeni lub torby, dbaj�c o to, aby twoje ruchy by�y naturalne i niezauwa�alne.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_008 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_008;
	
	if (Bonus_ItWr_Book[8])
	{ description			=	"Obr�bka drewna (przeczytane)"; }
	else
	{ description			=	"Obr�bka drewna"; };
};
func void Use_ItWr_Book_008()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[8])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[8] = true;
	};
	CreateInvItem(self, ItWr_Book_008);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID,  -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Drewno jest materia�em, kt�ry wymaga szacunku i umiej�tno�ci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka�dy kawa�ek ma swoj� dusz�, kt�r� trzeba odkry�.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ostrzenie narz�dzi, precyzyjne ci�cie i staranne szlifowanie to klucz do uzyskania idealnego kszta�tu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, aby zawsze pracowa� zgodnie z kierunkiem s�oj�w drewna.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_009 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_009;
	
	if (Bonus_ItWr_Book[9])
	{ description			=	"Gotowanie (przeczytane)"; }
	else
	{ description			=	"Gotowanie"; };
};
func void Use_ItWr_Book_009()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[9])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[9] = true;
	};
	CreateInvItem(self, ItWr_Book_009);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gotowanie to wi�cej ni� tylko przygotowywanie jedzenia � to sztuka, kt�ra ��czy smaki i aromaty w jedn�, harmonijn� ca�o��.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wybieraj �wie�e sk�adniki, szanuj tradycje, ale nie b�j si� eksperymentowa�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e najwa�niejszym sk�adnikiem ka�dej potrawy jest mi�o�� do gotowania.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_010 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_010;
	
	if (Bonus_ItWr_Book[10])
	{ description			=	"�eglarstwo (przeczytane)"; }
	else
	{ description			=	"�eglarstwo"; };
};
func void Use_ItWr_Book_010()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[10])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[10] = true;
	};
	CreateInvItem(self, ItWr_Book_010);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "�eglarstwo to sztuka, kt�ra ��czy w sobie wiedz� o wiatrach, pr�dach i niebie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka�dy dobry �eglarz musi umie� czyta� mapy i pos�ugiwa� si� sekstantem, aby nawigowa� po bezkresnych wodach.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e morze jest nieprzewidywalne, a przygotowanie na ka�d� ewentualno�� jest kluczem do bezpiecznej podr�y.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Trzymaj kurs i nie tra� wiary nawet w najtrudniejszych warunkach.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_011 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_011;
	
	if (Bonus_ItWr_Book[11])
	{ description			=	"Przepisywanie magicznych zwoj�w (przeczytane)"; }
	else
	{ description			=	"Przepisywanie magicznych zwoj�w"; };
};
func void Use_ItWr_Book_011()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[11])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[11] = true;
	};
	CreateInvItem(self, ItWr_Book_011);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przepisywanie magicznych zwoj�w wymaga nie tylko bieg�o�ci w pi�mie, ale i g��bokiego zrozumienia magii.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka�dy symbol musi by� narysowany z niezwyk�� precyzj�, a ka�de s�owo zapisane z najwi�ksz� staranno�ci�.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U�ywaj tylko najlepszych materia��w � pergaminu o najwy�szej jako�ci i atramentu sporz�dzonego wed�ug staro�ytnych receptur.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e najmniejszy b��d mo�e zmieni� efekt zakl�cia.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_012 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_012;
	
	if (Bonus_ItWr_Book[12])
	{ description			=	"Skradanie si� (przeczytane)"; }
	else
	{ description			=	"Skradanie si�"; };
};
func void Use_ItWr_Book_012()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[12])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[12] = true;
	};
	CreateInvItem(self, ItWr_Book_012);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Skradanie si� to sztuka bycia niewidzialnym.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Naucz si� porusza� cicho, unikaj�c suchych li�ci i ga��zi, kt�re mog� zdradzi� twoj� obecno��.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Oddychaj p�ytko i kontroluj ka�dy ruch. Pami�taj, �e cie� jest twoim sprzymierze�cem, a cierpliwo�� twoim najwi�kszym atutem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kluczowe jest poznanie terenu i obserwacja rutynowych zachowa� twoich cel�w.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_013 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_013;
	
	if (Bonus_ItWr_Book[13])
	{ description			=	"Akrobatyka (przeczytane)"; }
	else
	{ description			=	"Akrobatyka"; };
};
func void Use_ItWr_Book_013()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[13])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[13] = true;
	};
	CreateInvItem(self, ItWr_Book_013);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Akrobatyka wymaga nie tylko si�y, ale i gracji. Ka�dy skok, ka�de obroty musz� by� precyzyjne i p�ynne.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Rozgrzewka jest niezb�dna, aby unikn�� kontuzji.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "�wicz r�wnowag� na w�skich powierzchniach i pracuj nad elastyczno�ci� cia�a.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e perfekcja w akrobatyce to wynik d�ugich godzin ci�kiej pracy i determinacji.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_014 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_014;
	
	if (Bonus_ItWr_Book[14])
	{ description			=	"Po�ykanie ognia (przeczytane)"; }
	else
	{ description			=	"Po�ykanie ognia"; };
};
func void Use_ItWr_Book_014()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[14])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[14] = true;
	};
	CreateInvItem(self, ItWr_Book_014);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po�ykanie ognia to sztuka, kt�ra wymaga ogromnej odwagi i precyzyjnej techniki.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U�ywaj tylko specjalnie przygotowanych pochodni i zawsze miej przy sobie �rodek gasz�cy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, aby wdech i wydech by�y kontrolowane, a p�omie� nigdy nie dotkn�� wn�trza gard�a.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "�wicz cierpliwie i zawsze zachowuj najwy�sze �rodki ostro�no�ci.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_015 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_015;
	
	if (Bonus_ItWr_Book[15])
	{ description			=	"Poezja (przeczytane)"; }
	else
	{ description			=	"Poezja"; };
};
func void Use_ItWr_Book_015()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[15])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[15] = true;
	};
	CreateInvItem(self, ItWr_Book_015);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Poezja to j�zyk serca, kt�ry potrafi wyrazi� najg��bsze emocje.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "S�owa musz� p�yn�� naturalnie, a rytm i rym powinny wsp�gra�, tworz�c harmonijn� ca�o��.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Inspiracji szukaj w otaczaj�cym ci� �wiecie, w przyrodzie i w ludzkich uczuciach.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e ka�da strofa to obraz malowany s�owami, kt�ry powinien porusza� dusz� czytelnika.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_016 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_016;
	
	if (Bonus_ItWr_Book[16])
	{ description			=	"Dowodzenie oddzia�em (przeczytane)"; }
	else
	{ description			=	"Dowodzenie oddzia�em"; };
};
func void Use_ItWr_Book_016()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[16])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[16] = true;
	};
	CreateInvItem(self, ItWr_Book_016);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dowodzenie oddzia�em wymaga umiej�tno�ci strategicznych i zdolno�ci przyw�dczych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka�dy rozkaz musi by� jasny i zdecydowany, a ka�da decyzja dobrze przemy�lana.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, aby zawsze dba� o morale swoich ludzi i zna� ich mocne oraz s�abe strony.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przyw�dztwo to nie tylko w�adza, ale i odpowiedzialno�� za �ycie podkomendnych.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_017 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_017;
	
	if (Bonus_ItWr_Book[17])
	{ description			=	"G�rnictwo (przeczytane)"; }
	else
	{ description			=	"G�rnictwo"; };
};
func void Use_ItWr_Book_017()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[17])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[17] = true;
	};
	CreateInvItem(self, ItWr_Book_017);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "G�rnictwo to ci�ka praca, kt�ra wymaga si�y fizycznej i wytrwa�o�ci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zanim przyst�pisz do wydobycia, dok�adnie zanalizuj struktur� ska�y i oce� ryzyko zawalenia.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, aby zawsze pracowa� w dobrze wentylowanych tunelach i u�ywa� odpowiednich narz�dzi.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka�de uderzenie kilofa powinno by� przemy�lane, a bezpiecze�stwo twoje i twoich wsp�pracownik�w zawsze na pierwszym miejscu.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_018 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_018;
	
	if (Bonus_ItWr_Book[18])
	{ description			=	"�owienie ryb (przeczytane)"; }
	else
	{ description			=	"�owienie ryb"; };
};
func void Use_ItWr_Book_018()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[18])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[18] = true;
	};
	CreateInvItem(self, ItWr_Book_018);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "�owienie ryb to sztuka cierpliwo�ci i spostrzegawczo�ci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wybierz odpowiedni� przyn�t� i naucz si� rozpoznawa� najlepsze miejsca na po�owy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e czasem trzeba godzinami czeka� na odpowiedni moment, ale nagroda jest tego warta.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Obserwuj zachowanie wody i ucz si� jej tajemnic, aby zwi�kszy� swoje szanse na udane po�owy.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_019 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_019;
	
	if (Bonus_ItWr_Book[19])
	{ description			=	"Zielarstwo (przeczytane)"; }
	else
	{ description			=	"Zielarstwo"; };
};
func void Use_ItWr_Book_019()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[19])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[19] = true;
	};
	CreateInvItem(self, ItWr_Book_019);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zielarstwo to umiej�tno�� rozpoznawania i wykorzystywania ro�lin w celach leczniczych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka�da ro�lina ma swoje unikalne w�a�ciwo�ci, kt�re mog� przynie�� ulg� w chorobach lub wzmocni� organizm.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Naucz si� zbiera� zio�a w odpowiednich porach roku i suszy� je w kontrolowanych warunkach.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e dok�adna wiedza na temat ro�lin jest kluczem do skutecznych mikstur.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_020 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_020;
	
	if (Bonus_ItWr_Book[20])
	{ description			=	"Rze�nictwo (przeczytane)"; }
	else
	{ description			=	"Rze�nictwo"; };
};
func void Use_ItWr_Book_020()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[20])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[20] = true;
	};
	CreateInvItem(self, ItWr_Book_020);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Rze�nictwo wymaga precyzji i znajomo�ci anatomii zwierz�t.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka�de ci�cie musi by� dok�adne, aby uzyska� jak najwi�cej warto�ciowego mi�sa.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj o higienie pracy i odpowiednim przechowywaniu produkt�w.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dobrze zaostrzony n� jest twoim najwa�niejszym narz�dziem, a umiej�tno�� w�a�ciwego dzielenia tuszy kluczem do sukcesu w tym rzemio�le.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_021 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_021;
	
	if (Bonus_ItWr_Book[21])
	{ description			=	"Ostrzenie broni (przeczytane)"; }
	else
	{ description			=	"Ostrzenie broni"; };
};
func void Use_ItWr_Book_021()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[21])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[21] = true;
	};
	CreateInvItem(self, ItWr_Book_021);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ostrzenie broni to proces, kt�ry wymaga precyzji i cierpliwo�ci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U�ywaj kamienia szlifierskiego o odpowiedniej ziarnisto�ci, zaczynaj�c od grubszego, a ko�cz�c na drobniejszym, aby uzyska� g�adk� i ostr� kraw�d�.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Utrzymuj sta�y k�t podczas ostrzenia, a co jaki� czas ch�od� ostrze w wodzie, aby unikn�� przegrzania metalu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e dobrze naostrzona bro� jest bardziej skuteczna i bezpieczniejsza w u�yciu.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_022 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_022;
	
	if (Bonus_ItWr_Book[22])
	{ description			=	"Stosowanie specjalnych strza� (przeczytane)"; }
	else
	{ description			=	"Stosowanie specjalnych strza�"; };
};
func void Use_ItWr_Book_022()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[22])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[22] = true;
	};
	CreateInvItem(self, ItWr_Book_022);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Podpalaj�ce strza�y wymagaj� specjalnej techniki przygotowania.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nas�cz groty w mieszaninie smo�y i oleju, a nast�pnie zabezpiecz je, aby nie styg�y przed u�yciem.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zatrute strza�y natomiast wymagaj� precyzyjnego pokrycia grot�w odpowiednim toksyn�, starannie przygotowan� z zi� i innych sk�adnik�w.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, aby przechowywa� te strza�y osobno i zachowa� ostro�no�� przy ich u�ywaniu, aby nie zatru� samego siebie.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_023 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_023;
	
	if (Bonus_ItWr_Book[23])
	{ description			=	"Przetapianie metali szlachetnych (przeczytane)"; }
	else
	{ description			=	"Przetapianie metali szlachetnych"; };
};
func void Use_ItWr_Book_023()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[23])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[23] = true;
	};
	CreateInvItem(self, ItWr_Book_023);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przetapianie metali szlachetnych, takich jak z�oto i srebro, wymaga wysokiej temperatury i odpowiednich narz�dzi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U�ywaj tygla, aby r�wnomiernie rozgrza� metal do stanu p�ynnego.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dodaj topniki, aby usun�� zanieczyszczenia i poprawi� jako�� stopu.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przelewaj p�ynny metal do formy i pozw�l mu ostygn��.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, aby zawsze pracowa� w dobrze wentylowanym pomieszczeniu i nosi� odpowiednie zabezpieczenia.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_024 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_024;
	
	if (Bonus_ItWr_Book[24])
	{ description			=	"Utwardzanie pancerzy (przeczytane)"; }
	else
	{ description			=	"Utwardzanie pancerzy"; };
};
func void Use_ItWr_Book_024()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[24])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[24] = true;
	};
	CreateInvItem(self, ItWr_Book_024);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Utwardzanie pancerzy to proces, kt�ry zwi�ksza ich wytrzyma�o�� i odporno�� na uszkodzenia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najpierw podgrzej pancerz w ku�ni do odpowiedniej temperatury, a nast�pnie szybko sch�od� w oleju lub wodzie, w zale�no�ci od rodzaju metalu.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Proces ten, znany jako hartowanie, sprawia, �e pancerz staje si� twardszy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, aby p�niej odpuszcza� pancerz, aby zapobiec jego krucho�ci i zapewni� elastyczno��.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_025 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_025;
	
	if (Bonus_ItWr_Book[25])
	{ description			=	"Walka dwoma mieczami (przeczytane)"; }
	else
	{ description			=	"Walka dwoma mieczami"; };
};
func void Use_ItWr_Book_025()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[25])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[25] = true;
	};
	CreateInvItem(self, ItWr_Book_025);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Walka dwoma mieczami wymaga doskona�ej koordynacji i zr�czno�ci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U�ywaj jednego miecza do parowania cios�w przeciwnika, a drugiego do zadawania szybkich, precyzyjnych atak�w.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "�wicz p�ynno�� ruch�w i ucz si� balansowa� mi�dzy obron� a atakiem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e walka dwoma mieczami to sztuka, kt�ra wymaga zar�wno si�y, jak i strategii.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_026 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_026;
	
	if (Bonus_ItWr_Book[26])
	{ description			=	"Pos�ugiwanie si� tarczami (przeczytane)"; }
	else
	{ description			=	"Pos�ugiwanie si� tarczami"; };
};
func void Use_ItWr_Book_026()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[26])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[26] = true;
	};
	CreateInvItem(self, ItWr_Book_026);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pos�ugiwanie si� tarcz� to umiej�tno��, kt�ra mo�e uratowa� �ycie na polu bitwy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Trzymaj tarcz� blisko cia�a i u�ywaj jej nie tylko do blokowania cios�w, ale tak�e do zas�aniania si� przed strza�ami.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "�wicz r�ne techniki blokowania i kontratak�w, aby skutecznie wykorzysta� tarcz� zar�wno w obronie, jak i w ofensywie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e dobra tarcza to przed�u�enie twojego ramienia i cz�� twojej strategii bojowej.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_027 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_027;
	
	if (Bonus_ItWr_Book[27])
	{ description			=	"Bro� miotana (przeczytane)"; }
	else
	{ description			=	"Bro� miotana"; };
};
func void Use_ItWr_Book_027()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[27])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[27] = true;
	};
	CreateInvItem(self, ItWr_Book_027);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Bro� miotana, taka jak oszczepy, no�e czy toporki, wymaga precyzyjnego celowania i odpowiedniej techniki rzutu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "�wicz rzut z r�nych odleg�o�ci i k�t�w, aby opanowa� trajektori� lotu.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, aby dostosowa� si�� rzutu do wagi broni i celu, kt�ry chcesz trafi�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka�dy rzut powinien by� pewny i kontrolowany, aby maksymalnie zwi�kszy� skuteczno�� na polu walki.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_028 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_028;
	
	if (Bonus_ItWr_Book[28])
	{ description			=	"Archeologia (przeczytane)"; }
	else
	{ description			=	"Archeologia"; };
};
func void Use_ItWr_Book_028()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[28])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[28] = true;
	};
	CreateInvItem(self, ItWr_Book_028);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Archeologia to nauka odkrywania przesz�o�ci poprzez badanie artefakt�w i ruin.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka�de znalezisko mo�e rzuci� nowe �wiat�o na histori� i kultur� dawnych cywilizacji.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wykopaliska wymagaj� delikatno�ci i precyzji, aby nie uszkodzi� cennych znalezisk.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dokumentuj ka�dy etap prac i analizuj znalezione przedmioty, aby zrekonstruowa� histori� z przesz�o�ci.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_029 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_029;
	
	if (Bonus_ItWr_Book[29])
	{ description			=	"Bro� d�uga (przeczytane)"; }
	else
	{ description			=	"Bro� d�uga"; };
};
func void Use_ItWr_Book_029()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[29])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[29] = true;
	};
	CreateInvItem(self, ItWr_Book_029);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Walka broni� d�ug�, tak� jak halabardy czy piki, wymaga si�y i umiej�tno�ci kontroli dystansu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Te bronie s� idealne do utrzymywania przeciwnik�w na odleg�o�� i prze�amywania linii wroga.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "�wicz precyzyjne pchni�cia oraz ci�cia, a tak�e manewry maj�ce na celu zablokowanie atak�w i odepchni�cie przeciwnik�w.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e d�ugo�� broni jest zar�wno atutem, jak i wyzwaniem � musisz umie� sprawnie manewrowa� w ciasnych przestrzeniach.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_030 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_030;
	
	if (Bonus_ItWr_Book[30])
	{ description			=	"Magiczne kostury (przeczytane)"; }
	else
	{ description			=	"Magiczne kostury"; };
};
func void Use_ItWr_Book_030()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[30])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[30] = true;
	};
	CreateInvItem(self, ItWr_Book_030);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pos�ugiwanie si� magicznymi kosturami wymaga synchronizacji umiej�tno�ci magicznych i fizycznej koordynacji.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kostury cz�sto wzmacniaj� zakl�cia i mog� s�u�y� jako kana�y dla energii magicznej.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Naucz si� odpowiednio kanalizowa� moc przez kostur, dbaj�c o precyzyjne ruchy i inkantacje.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e kostur to nie tylko narz�dzie ofensywne, ale r�wnie� defensywne, umo�liwiaj�ce tworzenie barier i os�on.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_031 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_031;
	
	if (Bonus_ItWr_Book[31])
	{ description			=	"�cinanie drzew (przeczytane)"; }
	else
	{ description			=	"�cinanie drzew"; };
};
func void Use_ItWr_Book_031()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[31])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[31] = true;
	};
	CreateInvItem(self, ItWr_Book_031);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Praca drwala to ci�ki, ale satysfakcjonuj�cy zaw�d. Aby �ci�� drzewo, wybierz zdrowy okaz i dok�adnie przeanalizuj jego po�o�enie, aby zaplanowa� kierunek upadku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U�ywaj ostrej siekiery lub pi�y i wykonuj precyzyjne, mocne ci�cia.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj o bezpiecze�stwie � no� odpowiednie ochraniacze i zawsze pracuj z dala od innych ludzi.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "�ci�te drzewa przetwarzaj na deski, belki czy opa�, dbaj�c o minimalizacj� marnotrawstwa.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_032 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_032;
	
	if (Bonus_ItWr_Book[32])
	{ description			=	"Tworzenie broni dystansowych (przeczytane)"; }
	else
	{ description			=	"Tworzenie broni dystansowych"; };
};
func void Use_ItWr_Book_032()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[32])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[32] = true;
	};
	CreateInvItem(self, ItWr_Book_032);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Struganie �uk�w to proces wymagaj�cy precyzji i wyczucia drewna. Wybierz elastyczne, ale mocne drewno, takie jak cis czy jesion.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kszta�tuj �uk, starannie wyg�adzaj�c jego powierzchni� i zapewniaj�c r�wnomierne napi�cie ci�ciwy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Tworzenie kusz to bardziej skomplikowany proces, wymagaj�cy precyzyjnych mechanizm�w napinaj�cych i wytrzyma�ych materia��w.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e jako�� twojego rzemios�a wp�ywa na skuteczno�� broni.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_033 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_033;
	
	if (Bonus_ItWr_Book[33])
	{ description			=	"Obuchy czy bro� ci�ta (przeczytane)"; }
	else
	{ description			=	"Obuchy czy bro� ci�ta"; };
};
func void Use_ItWr_Book_033()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[33])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[33] = true;
	};
	CreateInvItem(self, ItWr_Book_033);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Bro� obuchowa, taka jak m�oty i maczugi, jest skuteczna przeciwko opancerzonym przeciwnikom, gdy� mo�e mia�d�y� zbroje i ko�ci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U�ywaj jej w sytuacjach, gdzie musisz prze�ama� obron� wroga lub zada� obra�enia poprzez si�� uderzenia.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bro� ci�ta, taka jak miecze i sztylety, jest bardziej efektywna przeciwko lekko opancerzonym przeciwnikom, umo�liwiaj�c precyzyjne ci�cia i szybkie ataki.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wyb�r broni powinien zale�e� od rodzaju przeciwnika i sytuacji na polu bitwy.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_034 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_034;
	
	if (Bonus_ItWr_Book[34])
	{ description			=	"Architektura (przeczytane)"; }
	else
	{ description			=	"Architektura"; };
};
func void Use_ItWr_Book_034()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[34])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[34] = true;
	};
	CreateInvItem(self, ItWr_Book_034);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Architektura to sztuka projektowania i wznoszenia budynk�w, kt�re s� zar�wno funkcjonalne, jak i estetyczne.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Planowanie budowy zaczyna si� od analizy terenu i zrozumienia potrzeb u�ytkownik�w.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Tw�rz plany, kt�re uwzgl�dniaj� solidne fundamenty, odpowiednie materia�y i trwa�e konstrukcje.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj o estetyce � harmonijnie zaprojektowane budynki podnosz� warto�� i komfort �ycia mieszka�c�w.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_035 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_035;
	
	if (Bonus_ItWr_Book[35])
	{ description			=	"Siedliska bandyt�w (przeczytane)"; }
	else
	{ description			=	"Siedliska bandyt�w"; };
};
func void Use_ItWr_Book_035()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[35])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[35] = true;
	};
	CreateInvItem(self, ItWr_Book_035);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Terytoria, gdzie �atwiej napotka� bandyt�w, to cz�sto odleg�e i s�abo zaludnione obszary, gdzie w�adza centralna ma ograniczon� kontrol�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "G�ste lasy, g�ry i nieprzebyte doliny s� idealnymi miejscami dla ukrywaj�cych si� grup.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "B�d� czujny w takich rejonach i unikaj podr�owania samotnie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zbieraj informacje od miejscowej ludno�ci, aby zna� aktualne zagro�enia i unika� niebezpiecznych szlak�w.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_036 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_036;
	
	if (Bonus_ItWr_Book[36])
	{ description			=	"Kulty�ci (przeczytane)"; }
	else
	{ description			=	"Kulty�ci"; };
};
func void Use_ItWr_Book_036()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[36])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[36] = true;
	};
	CreateInvItem(self, ItWr_Book_036);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kulty�ci cz�sto dzia�aj� z motywacji religijnych, politycznych lub osobistych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ich cele mog� obejmowa� zdobycie w�adzy, przywr�cenie dawnych tradycji czy spe�nienie proroctw.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Badaj symbole i rytua�y, aby zrozumie� ich motywy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e kultystyczne sekty mog� by� bardzo niebezpieczne, a ich liderzy zazwyczaj maj� siln� charyzm� i potrafi� manipulowa� swoimi wyznawcami.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_037 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_037;
	
	if (Bonus_ItWr_Book[37])
	{ description			=	"Wykorzystanie siarki (przeczytane)"; }
	else
	{ description			=	"Wykorzystanie siarki"; };
};
func void Use_ItWr_Book_037()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[37])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[37] = true;
	};
	CreateInvItem(self, ItWr_Book_037);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Siarka jest kluczowym sk�adnikiem w wielu alchemicznych procesach.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Mo�e by� u�ywana do tworzenia eliksir�w, kt�re maj� w�a�ciwo�ci oczyszczaj�ce i lecznicze, a tak�e do produkcji wybuchowych substancji, takich jak proch strzelniczy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, aby zawsze dok�adnie mierzy� ilo�ci u�ywanych sk�adnik�w i przeprowadza� eksperymenty w kontrolowanych warunkach, aby unikn�� niebezpiecznych wybuch�w.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_038 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_038;
	
	if (Bonus_ItWr_Book[38])
	{ description			=	"Wykorzystanie �ywicy (przeczytane)"; }
	else
	{ description			=	"Wykorzystanie �ywicy"; };
};
func void Use_ItWr_Book_038()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[38])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[38] = true;
	};
	CreateInvItem(self, ItWr_Book_038);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "�ywica jest cennym surowcem o wielu zastosowaniach.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Mo�e by� u�ywana jako klej do ��czenia r�nych materia��w, a tak�e do uszczelniania naczy� i �odzi.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W alchemii, �ywica bywa sk�adnikiem eliksir�w i mikstur, ze wzgl�du na swoje w�a�ciwo�ci lecznicze i konserwuj�ce.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zbieraj �ywic� z drzew ostro�nie, aby nie uszkodzi� ro�liny i zapewni� jej ci�g�� produkcj�.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_039 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_039;
	
	if (Bonus_ItWr_Book[39])
	{ description			=	"Kartografia (przeczytane)"; }
	else
	{ description			=	"Kartografia"; };
};
func void Use_ItWr_Book_039()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[39])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[39] = true;
	};
	CreateInvItem(self, ItWr_Book_039);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kartografia to sztuka tworzenia map, kt�ra wymaga precyzyjnego pomiaru i obserwacji.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dobry kartograf musi zna� techniki orientacji w terenie i pos�ugiwa� si� instrumentami takimi jak kompas i sekstant.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Tworzenie map obejmuje zar�wno rysowanie teren�w, jak i zaznaczanie wa�nych punkt�w geograficznych i informacji topograficznych.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e dok�adna mapa jest nieocenionym narz�dziem dla podr�nik�w i wojskowych.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_040 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_040;
	
	if (Bonus_ItWr_Book[40])
	{ description			=	"Gwardia kr�lewska (przeczytane)"; }
	else
	{ description			=	"Gwardia kr�lewska"; };
};
func void Use_ItWr_Book_040()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[40])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[40] = true;
	};
	CreateInvItem(self, ItWr_Book_040);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gwardia kr�lewska to elitarna jednostka wojskowa, kt�rej g��wnym zadaniem jest ochrona monarchy i rodziny kr�lewskiej.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Cz�onkowie gwardii s� starannie wybierani spo�r�d najlepszych wojownik�w, a ich szkolenie obejmuje zar�wno walk� wr�cz, jak i pos�ugiwanie si� r�norodn� broni�.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e gwardzista musi by� nie tylko doskona�ym wojownikiem, ale r�wnie� lojalnym s�ug�, gotowym po�wi�ci� �ycie dla swojego w�adcy.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_041 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_041;
	
	if (Bonus_ItWr_Book[41])
	{ description			=	"Gildia Mag�w (przeczytane)"; }
	else
	{ description			=	"Gildia Mag�w"; };
};
func void Use_ItWr_Book_041()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[41])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[41] = true;
	};
	CreateInvItem(self, ItWr_Book_041);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gildia Mag�w to miejsce, gdzie adepci magii mog� rozwija� swoje umiej�tno�ci pod okiem do�wiadczonych mistrz�w.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gildia oferuje dost�p do staro�ytnych ksi�g, pot�nych artefakt�w i tajemnych zakl��.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka�dy mag, przyst�puj�c do gildii, zobowi�zuje si� przestrzega� jej zasad i dzieli� swoj� wiedz� z innymi cz�onkami.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e w gildii wa�na jest nie tylko moc, ale i m�dro�� oraz etyka u�ycia magii.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_042 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_042;
	
	if (Bonus_ItWr_Book[42])
	{ description			=	"�owcy smok�w (przeczytane)"; }
	else
	{ description			=	"�owcy smok�w"; };
};
func void Use_ItWr_Book_042()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[42])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[42] = true;
	};
	CreateInvItem(self, ItWr_Book_042);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "�owcy smok�w to grupa �mia�k�w, kt�rzy podejmuj� si� polowania na te pot�ne bestie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wiedza o smokach, ich zwyczajach i s�abych punktach jest kluczowa.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "�owcy musz� by� uzbrojeni w specjalne bronie i zbroje, odporne na smoczy ogie�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e smoki s� niezwykle inteligentne i niebezpieczne, a polowanie na nie wymaga nie tylko odwagi, ale i sprytu oraz do�wiadczenia.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_043 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_043;
	
	if (Bonus_ItWr_Book[43])
	{ description			=	"Paladyni (przeczytane)"; }
	else
	{ description			=	"Paladyni"; };
};
func void Use_ItWr_Book_043()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[43])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[43] = true;
	};
	CreateInvItem(self, ItWr_Book_043);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Paladyni to �wi�ci wojownicy, kt�rzy przysi�gli broni� sprawiedliwo�ci i walczy� z si�ami z�a.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ich si�a pochodzi nie tylko z umiej�tno�ci bojowych, ale tak�e z g��bokiej wiary, kt�ra umo�liwia im korzystanie z boskich mocy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Paladyni s� cz�sto na pierwszej linii frontu w walce z demonami i innymi potworami.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e bycie paladynem to nie tylko przywilej, ale i ogromna odpowiedzialno��.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_044 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_044;
	
	if (Bonus_ItWr_Book[44])
	{ description			=	"Lud asasyn�w (przeczytane)"; }
	else
	{ description			=	"Lud asasyn�w"; };
};
func void Use_ItWr_Book_044()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[44])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[44] = true;
	};
	CreateInvItem(self, ItWr_Book_044);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zakon Asasyn�w to tajemnicza organizacja, kt�ra specjalizuje si� w skrytob�jstwach.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Asasyni s� mistrzami kamufla�u, skradania si� i walki w cieniu.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka�dy adept przechodzi intensywne szkolenie, ucz�c si� technik zabijania, ale tak�e filozofii zakonu, kt�ra cz�sto obejmuje walk� o wolno�� i sprawiedliwo��.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e asasyn dzia�a szybko, precyzyjnie i bez �ladu.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_045 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_045;
	
	if (Bonus_ItWr_Book[45])
	{ description			=	"Trofea zwierz�ce (przeczytane)"; }
	else
	{ description			=	"Trofea zwierz�ce"; };
};
func void Use_ItWr_Book_045()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[45])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[45] = true;
	};
	CreateInvItem(self, ItWr_Book_045);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pozyskiwanie trofe�w zwierz�cych wymaga umiej�tno�ci i precyzji, aby zachowa� jako�� i warto�� trofeum.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sk�ry powinny by� odpowiednio oprawione i wyprawione, aby unikn�� ich zepsucia.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Szpony i k�y nale�y starannie oczy�ci� i zabezpieczy� przed uszkodzeniem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e ka�da cz�� zwierz�cia mo�e mie� swoje zastosowanie, a troska o detale zwi�ksza warto�� zdobytych trofe�w.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_046 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_046;
	
	if (Bonus_ItWr_Book[46])
	{ description			=	"Produkcja alkoholu (przeczytane)"; }
	else
	{ description			=	"Produkcja alkoholu"; };
};
func void Use_ItWr_Book_046()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[46])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[46] = true;
	};
	CreateInvItem(self, ItWr_Book_046);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przyrz�dzanie bimbru i rumu to proces, kt�ry wymaga wiedzy o fermentacji i destylacji.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Fermentuj surowce, takie jak melasa, cukier czy zbo�e, aby uzyska� alkohol.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nast�pnie destyluj go, aby zwi�kszy� jego moc i oczy�ci� z zanieczyszcze�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, aby pracowa� w kontrolowanych warunkach aby uzyska� bezpieczny i wysokiej jako�ci produkt.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_047 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_047;
	
	if (Bonus_ItWr_Book[47])
	{ description			=	"Produkcja ser�w i wypiek�w (przeczytane)"; }
	else
	{ description			=	"Produkcja ser�w i wypiek�w"; };
};
func void Use_ItWr_Book_047()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[47])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[47] = true;
	};
	CreateInvItem(self, ItWr_Book_047);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tworzenie ser�w to skomplikowany proces, kt�ry zaczyna si� od zakwaszenia mleka i oddzielenia serwatki.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nast�pnie formuj i dojrzewaj ser w odpowiednich warunkach, kontroluj�c temperatur� i wilgotno��.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wypiek chleba zaczyna si� od przygotowania ciasta z m�ki, wody, dro�d�y i soli.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po wyro�ni�ciu ciasto formuj i piecz w odpowiedniej temperaturze.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_048 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_048;
	
	if (Bonus_ItWr_Book[48])
	{ description			=	"Waga broni (przeczytane)"; }
	else
	{ description			=	"Waga broni"; };
};
func void Use_ItWr_Book_048()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[48])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[48] = true;
	};
	CreateInvItem(self, ItWr_Book_048);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Bro� lekka, taka jak sztylety, jest idealna do szybkich i precyzyjnych atak�w.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Umo�liwia skradanie si� i b�yskawiczne ataki na blisk� odleg�o��.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bro� ci�ka, jak topory dwur�czne, zadaje pot�ne, mia�d��ce ciosy, zdolne prze�ama� zbroje i zadawa� �miertelne obra�enia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e bro� lekka wymaga zr�czno�ci i szybko�ci, podczas gdy bro� ci�ka wymaga si�y i wytrzyma�o�ci.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_049 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_049;
	
	if (Bonus_ItWr_Book[49])
	{ description			=	"Kamienie szlachetne (przeczytane)"; }
	else
	{ description			=	"Kamienie szlachetne"; };
};
func void Use_ItWr_Book_049()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[49])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[49] = true;
	};
	CreateInvItem(self, ItWr_Book_049);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Szmaragdy s� cenione za swoj� g��bok�, zielon� barw�, kt�ra symbolizuje odrodzenie i p�odno��.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "S� one cz�sto u�ywane w bi�uterii i amuletach ochronnych.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Rubiny, o intensywnym czerwonym kolorze, s� symbolem mi�o�ci i pasji.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Cz�sto uwa�a si� je za kamienie przynosz�ce szcz�cie i ochron�.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_050 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_050;
	
	if (Bonus_ItWr_Book[50])
	{ description			=	"Zastosowanie rt�ci (przeczytane)"; }
	else
	{ description			=	"Zastosowanie rt�ci"; };
};
func void Use_ItWr_Book_050()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[50])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[50] = true;
	};
	CreateInvItem(self, ItWr_Book_050);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Rt��, znana r�wnie� jako '�ywe srebro', jest cz�sto u�ywana w alchemii do tworzenia amalgamat�w i katalizowania reakcji chemicznych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Rt�� mo�e r�wnie� by� stosowana w procesach oczyszczania i transmutacji metali.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e rt�� jest toksyczna, wi�c zawsze pracuj z ni� w odpowiednio wentylowanych pomieszczeniach i u�ywaj zabezpiecze�, aby unikn�� zatrucia.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_051 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_051;
	
	if (Bonus_ItWr_Book[51])
	{ description			=	"Tworzenie tytoniu (przeczytane)"; }
	else
	{ description			=	"Tworzenie tytoniu"; };
};
func void Use_ItWr_Book_051()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[51])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[51] = true;
	};
	CreateInvItem(self, ItWr_Book_051);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tworzenie tytoniu zaczyna si� od starannej uprawy i zbioru li�ci tytoniu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Li�cie s� nast�pnie suszone i fermentowane, aby uzyska� odpowiedni� jako�� i aromat.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po fermentacji li�cie s� ci�te i mieszane, aby stworzy� r�ne mieszanki.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e ka�dy etap produkcji wp�ywa na ostateczny smak i jako�� tytoniu.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_052 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_052;
	
	if (Bonus_ItWr_Book[52])
	{ description			=	"Wyr�b atramentu (przeczytane)"; }
	else
	{ description			=	"Wyr�b atramentu"; };
};
func void Use_ItWr_Book_052()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[52])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[52] = true;
	};
	CreateInvItem(self, ItWr_Book_052);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wyr�b atramentu wymaga mieszania odpowiednich sk�adnik�w, takich jak sadza, guma arabska i woda.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dodaj barwniki, aby uzyska� r�ne kolory i eksperymentuj z proporcjami, aby stworzy� atrament o odpowiedniej g�sto�ci i trwa�o�ci.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, aby przechowywa� atrament w szczelnych pojemnikach, aby zapobiec jego wysychaniu.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_053 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_053;
	
	if (Bonus_ItWr_Book[53])
	{ description			=	"Traktowanie ran (przeczytane)"; }
	else
	{ description			=	"Traktowanie ran"; };
};
func void Use_ItWr_Book_053()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[53])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[53] = true;
	};
	CreateInvItem(self, ItWr_Book_053);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Traktowanie ran zaczyna si� od dok�adnego oczyszczenia miejsca urazu, aby zapobiec infekcji.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U�ywaj czystej wody lub alkoholu, aby zdezynfekowa� ran�.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nast�pnie, przyk�adaj steryln� gaz� i owi� banda�em, dbaj�c o to, aby nie by� zbyt ciasny, co mog�oby utrudni� kr��enie krwi.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, aby regularnie zmienia� opatrunki i monitorowa� stan rany. Je�li zauwa�ysz oznaki infekcji, natychmiast skonsultuj si� z medykiem.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_054 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_054;
	
	if (Bonus_ItWr_Book[54])
	{ description			=	"Oswajanie zwierz�t (przeczytane)"; }
	else
	{ description			=	"Oswajanie zwierz�t"; };
};
func void Use_ItWr_Book_054()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[54])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[54] = true;
	};
	CreateInvItem(self, ItWr_Book_054);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Oswajanie zwierz�t to proces, kt�ry wymaga cierpliwo�ci i zrozumienia ich natury.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zacznij od nawi�zania zaufania poprzez regularne karmienie i �agodne m�wienie. Unikaj gwa�townych ruch�w i pozw�l zwierz�ciu przyzwyczai� si� do twojej obecno�ci.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Stosuj pozytywne wzmocnienia, takie jak smako�yki, aby nagradza� po��dane zachowania.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e ka�de zwierz� jest inne i mo�e wymaga� indywidualnego podej�cia.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_055 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_055;
	
	if (Bonus_ItWr_Book[55])
	{ description			=	"Technika sprintu (przeczytane)"; }
	else
	{ description			=	"Technika sprintu"; };
};
func void Use_ItWr_Book_055()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[55])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[55] = true;
	};
	CreateInvItem(self, ItWr_Book_055);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sprint to technika biegania na kr�tkich dystansach z maksymaln� pr�dko�ci�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Skup si� na silnym starcie, z pochylonym tu�owiem i dynamicznym wyj�ciem z blok�w.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Utrzymuj rytmiczny oddech i koordynuj ruchy r�k z nogami, aby zachowa� r�wnowag�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pracuj nad rozwijaniem si�y mi�ni n�g oraz technik�, aby zmaksymalizowa� swoj� pr�dko�� i wydolno��.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_056 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_056;
	
	if (Bonus_ItWr_Book[56])
	{ description			=	"Przygotowywanie s�odyczy (przeczytane)"; }
	else
	{ description			=	"Przygotowywanie s�odyczy"; };
};
func void Use_ItWr_Book_056()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[56])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[56] = true;
	};
	CreateInvItem(self, ItWr_Book_056);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przygotowanie miodu zaczyna si� od zbioru plastr�w z uli i ich delikatnego odwirowywania, aby oddzieli� mi�d od wosku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Mi�d przechowuj w szczelnych s�oikach, aby zachowa� �wie�o��.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przygotowanie d�emu wymaga gotowania owoc�w z cukrem, a� do uzyskania odpowiedniej konsystencji.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dodaj sok z cytryny, aby podkre�li� smak i przed�u�y� trwa�o��. Przechowuj d�em w sterylizowanych s�oikach.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_057 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_057;
	
	if (Bonus_ItWr_Book[57])
	{ description			=	"Skuteczne handlowanie (przeczytane)"; }
	else
	{ description			=	"Skuteczne handlowanie"; };
};
func void Use_ItWr_Book_057()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[57])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[57] = true;
	};
	CreateInvItem(self, ItWr_Book_057);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Skuteczne handlowanie wymaga znajomo�ci rynku i umiej�tno�ci negocjacyjnych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zawsze staraj si� zrozumie� potrzeby i pragnienia klient�w, aby lepiej dostosowa� swoj� ofert�. Negocjuj cen�, pami�taj�c, �e warto�� produktu zale�y od popytu i poda�y.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dbaj o dobr� reputacj�, oferuj�c wysokiej jako�ci produkty i uczciwe ceny.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e lojalni klienci to klucz do d�ugoterminowego sukcesu.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_058 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_058;
	
	if (Bonus_ItWr_Book[58])
	{ description			=	"Wypasanie zwierz�t (przeczytane)"; }
	else
	{ description			=	"Wypasanie zwierz�t"; };
};
func void Use_ItWr_Book_058()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[58])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[58] = true;
	};
	CreateInvItem(self, ItWr_Book_058);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wypasanie owiec i k�z wymaga regularnej opieki i monitorowania stada.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zapewniaj im dost�p do �wie�ej wody i odpowiedniej paszy, bogatej w sk�adniki od�ywcze.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Regularnie kontroluj stan zdrowia zwierz�t, sprawdzaj�c sier��, racice i z�by.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przemieszczaj stado, aby unikn�� nadmiernego wypasu jednego obszaru i zapewni� r�wnomierny wzrost ro�linno�ci.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_059 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_059;
	
	if (Bonus_ItWr_Book[59])
	{ description			=	"Zastraszenie i przekupstwo (przeczytane)"; }
	else
	{ description			=	"Zastraszenie i przekupstwo"; };
};
func void Use_ItWr_Book_059()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[59])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[59] = true;
	};
	CreateInvItem(self, ItWr_Book_059);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zastraszenie lub przekupienie mog� by� skuteczne w sytuacjach, gdzie inne metody zawiod�y.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zastraszenie dzia�a najlepiej na osoby o s�abej woli lub w sytuacjach nag�ych, gdzie nie ma czasu na negocjacje.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przekupienie jest bardziej subtelne i mo�e by� stosowane tam, gdzie oferowana korzy�� przewy�sza ryzyko.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e obie metody nios� ryzyko i mog� prowadzi� do nieprzewidzianych konsekwencji, je�li zostan� �le zastosowane.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_060 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_060;
	
	if (Bonus_ItWr_Book[60])
	{ description			=	"Krawiectwo (przeczytane)"; }
	else
	{ description			=	"Krawiectwo"; };
};
func void Use_ItWr_Book_060()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[60])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[60] = true;
	};
	CreateInvItem(self, ItWr_Book_060);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Krawiectwo to sztuka tworzenia odzie�y, kt�ra wymaga precyzji i umiej�tno�ci. ");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zacznij od wyboru odpowiednich tkanin i narz�dzi, takich jak ig�y, nici i no�yczki.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dok�adnie mierz i kroj materia�, aby zapewni� idealne dopasowanie. Szyj starannie, dbaj�c o wyko�czenia i detale, kt�re nadaj� odzie�y estetyczny wygl�d i trwa�o��.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e dobrze wykonana odzie� to po��czenie funkcjonalno�ci i stylu.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_061 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_061;
	
	if (Bonus_ItWr_Book[61])
	{ description			=	"Gra w szachy (przeczytane)"; }
	else
	{ description			=	"Gra w szachy"; };
};
func void Use_ItWr_Book_061()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[61])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[61] = true;
	};
	CreateInvItem(self, ItWr_Book_061);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gra w szachy to strategiczna rozgrywka, kt�ra wymaga przewidywania ruch�w przeciwnika i planowania w�asnych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka�da figura ma swoje unikalne ruchy i rol� na planszy. Skup si� na kontrolowaniu centrum i rozwijaniu swoich figur, aby zyska� przewag�.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Unikaj pochopnych ruch�w i zawsze analizuj potencjalne konsekwencje.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e szachy to nie tylko gra umiej�tno�ci, ale tak�e cierpliwo�ci i koncentracji.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_062 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_062;
	
	if (Bonus_ItWr_Book[62])
	{ description			=	"Biedota i szlachta (przeczytane)"; }
	else
	{ description			=	"Biedota i szlachta"; };
};
func void Use_ItWr_Book_062()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[62])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[62] = true;
	};
	CreateInvItem(self, ItWr_Book_062);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Biedota i szlachta �yj� w dw�ch odmiennych �wiatach.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Biedota walczy o przetrwanie, cz�sto pracuj�c ci�ko za niewielk� zap�at�, podczas gdy szlachta cieszy si� bogactwem i luksusem, uzyskuj�c maj�tki i wp�ywy poprzez dziedziczenie i polityczne uk�ady.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Relacje mi�dzy tymi grupami s� napi�te, gdy� nier�wno�ci spo�eczne i ekonomiczne prowadz� do konflikt�w i niezadowolenia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e ka�de spo�ecze�stwo ma swoj� struktur�, kt�ra wp�ywa na �ycie jednostek.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_063 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_063;
	
	if (Bonus_ItWr_Book[63])
	{ description			=	"Grzybiarstwo (przeczytane)"; }
	else
	{ description			=	"Grzybiarstwo"; };
};
func void Use_ItWr_Book_063()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[63])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[63] = true;
	};
	CreateInvItem(self, ItWr_Book_063);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Grzybiarstwo to pasjonuj�ce zaj�cie, kt�re wymaga wiedzy i ostro�no�ci. Kluczowe jest rozr�nienie grzyb�w jadalnych od truj�cych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dobre grzyby maj� zazwyczaj charakterystyczne cechy: jednolite ubarwienie, przyjemny zapach i brak gorzkiego smaku.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Unikaj grzyb�w o jaskrawych kolorach, nieprzyjemnym zapachu lub tych, kt�re maj� pier�cie� na trzonie i bia�e blaszki - wiele z nich to truj�ce muchomory.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e znajomo�� szczeg��w, takich jak kszta�t kapelusza i trzonu, oraz �rodowiska, w kt�rym ro�nie grzyb, jest kluczowa dla bezpiecznego grzybobrania.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_064 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_064;
	
	if (Bonus_ItWr_Book[64])
	{ description			=	"Surowce naturalne (przeczytane)"; }
	else
	{ description			=	"Surowce naturalne"; };
};
func void Use_ItWr_Book_064()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[64])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[64] = true;
	};
	CreateInvItem(self, ItWr_Book_064);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wapno jest u�ywane w budownictwie do tworzenia zaprawy murarskiej i tynk�w, dzi�ki swoim w�a�ciwo�ciom wi���cym.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jest r�wnie� stosowane w rolnictwie do poprawy jako�ci gleby.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W�giel, z kolei, jest podstawowym surowcem energetycznym, u�ywanym do ogrzewania i wytapiania metali.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jego w�a�ciwo�ci redukuj�ce s� kluczowe w procesach metalurgicznych.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_065 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_065;
	
	if (Bonus_ItWr_Book[65])
	{ description			=	"Siarka i saletra (przeczytane)"; }
	else
	{ description			=	"Siarka i saletra"; };
};
func void Use_ItWr_Book_065()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[65])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[65] = true;
	};
	CreateInvItem(self, ItWr_Book_065);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Saletra jest g��wnym sk�adnikiem prochu strzelniczego i jest u�ywana w pirotechnice oraz do nawo�enia gleby, poniewa� dostarcza azotu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Siarka jest stosowana w alchemii do tworzenia r�nych mikstur i eliksir�w oraz w produkcji materia��w wybuchowych.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kombinacja saletry i siarki tworzy podstaw� wielu reakcji chemicznych, kt�re maj� szerokie zastosowanie w przemy�le i magii.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_066 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_066;
	
	if (Bonus_ItWr_Book[66])
	{ description			=	"Czerwona magiczna ruda (przeczytane)"; }
	else
	{ description			=	"Czerwona magiczna ruda"; };
};
func void Use_ItWr_Book_066()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[66])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[66] = true;
	};
	CreateInvItem(self, ItWr_Book_066);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Czerwona magiczna ruda to rzadki surowiec, kt�ry posiada w�a�ciwo�ci pirokinetyczne.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "r� wykonany z tej rudy mo�e by� na�adowany zakl�ciami ognia, co sprawia, �e ka�de uderzenie jest nie tylko fizycznie destrukcyjne, ale i podpalaj�ce.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Obr�bka tej rudy wymaga zaawansowanych umiej�tno�ci kowalskich i magicznych, aby w pe�ni wykorzysta� jej potencja�.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_067 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_067;
	
	if (Bonus_ItWr_Book[67])
	{ description			=	"Magia iluzji (przeczytane)"; }
	else
	{ description			=	"Magia iluzji"; };
};
func void Use_ItWr_Book_067()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[67])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[67] = true;
	};
	CreateInvItem(self, ItWr_Book_067);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Magia iluzji to subtelna i wymagaj�ca dziedzina, kt�ra polega na manipulowaniu postrzeganiem rzeczywisto�ci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Iluzjoni�ci potrafi� tworzy� obrazy, kt�re wprowadzaj� w b��d zmys�y przeciwnika, ukrywaj� prawdziwe obiekty lub osoby, a nawet tworz� iluzoryczne d�wi�ki.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Opanowanie tej sztuki wymaga du�ej wyobra�ni i precyzyjnej kontroli magicznych energii.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_068 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_068;
	
	if (Bonus_ItWr_Book[68])
	{ description			=	"Dyplomacja (przeczytane)"; }
	else
	{ description			=	"Dyplomacja"; };
};
func void Use_ItWr_Book_068()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[68])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[68] = true;
	};
	CreateInvItem(self, ItWr_Book_068);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dyplomacja to umiej�tno�� negocjacji i budowania relacji mi�dzy r�nymi stronami.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dobry dyplomata potrafi s�ucha�, zrozumie� r�ne perspektywy i znale�� kompromis, kt�ry zadowoli wszystkie strony.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kluczowe jest zachowanie spokoju, grzeczno�� i umiej�tno�� przekonywania.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e dyplomacja to nie tylko sztuka s��w, ale tak�e gest�w i niewerbalnych sygna��w.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_069 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_069;
	
	if (Bonus_ItWr_Book[69])
	{ description			=	"Etykieta dworska (przeczytane)"; }
	else
	{ description			=	"Etykieta dworska"; };
};
func void Use_ItWr_Book_069()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[69])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[69] = true;
	};
	CreateInvItem(self, ItWr_Book_069);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Etykieta dworska to zbi�r zasad i norm zachowania obowi�zuj�cych na dworze kr�lewskim.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opanuj sztuk� uk�on�w, tytu�owania i odpowiedniego ubioru.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Znajomo�� protoko�u i umiej�tno�� zachowania si� w towarzystwie szlachty i monarchii s� kluczowe dla zdobycia szacunku i unikni�cia faux pas.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e etykieta to nie tylko zewn�trzne zachowanie, ale tak�e wewn�trzna postawa szacunku i uprzejmo�ci.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_070 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_070;
	
	if (Bonus_ItWr_Book[70])
	{ description			=	"Opowiadanie historii (przeczytane)"; }
	else
	{ description			=	"Opowiadanie historii"; };
};
func void Use_ItWr_Book_070()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[70])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[70] = true;
	};
	CreateInvItem(self, ItWr_Book_070);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opowiadanie historii to umiej�tno�� przyci�gania uwagi s�uchaczy i przekazywania im emocji oraz m�dro�ci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opowie�ci mog� by� epickie, dramatyczne lub humorystyczne, ale zawsze powinny mie� wyra�ny pocz�tek, rozwini�cie i zako�czenie.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U�ywaj barwnego j�zyka, opisywaj szczeg�y i wci�gaj s�uchaczy w �wiat swojej opowie�ci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e dobra historia to taka, kt�ra pozostaje w pami�ci na d�ugo po jej wys�uchaniu.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_071 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_071;
	
	if (Bonus_ItWr_Book[71])
	{ description			=	"Hodowla pszcz� (przeczytane)"; }
	else
	{ description			=	"Hodowla pszcz�"; };
};
func void Use_ItWr_Book_071()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[71])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[71] = true;
	};
	CreateInvItem(self, ItWr_Book_071);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Hodowla pszcz� to sztuka wymagaj�ca cierpliwo�ci i wiedzy o tych po�ytecznych owadach.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zak�adaj ule w miejscach os�oni�tych od wiatru, ale dobrze nas�onecznionych. Dbaj o zdrowie pszcz�, regularnie kontroluj�c ule i zapewniaj�c im odpowiednie warunki do rozwoju.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zbieraj mi�d i wosk z zachowaniem ostro�no�ci, aby nie narazi� pszcz� na stres.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e pszczo�y odgrywaj� kluczow� rol� w zapylaniu ro�lin, a ich ochrona jest istotna dla ekosystemu.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_072 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_072;
	
	if (Bonus_ItWr_Book[72])
	{ description			=	"Jubilerstwo (przeczytane)"; }
	else
	{ description			=	"Jubilerstwo"; };
};
func void Use_ItWr_Book_072()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[72])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[72] = true;
	};
	CreateInvItem(self, ItWr_Book_072);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jubilerstwo to sztuka tworzenia bi�uterii z metali szlachetnych i kamieni. Wymaga precyzyjnych narz�dzi i umiej�tno�ci obr�bki materia��w.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Naucz si� technik kucia, lutowania i osadzania kamieni.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Projektuj unikalne wzory, kt�re b�d� odzwierciedla� pi�kno i elegancj�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e ka�da sztuka bi�uterii powinna by� nie tylko estetyczna, ale i trwa�a.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_073 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_073;
	
	if (Bonus_ItWr_Book[73])
	{ description			=	"Ceramika (przeczytane)"; }
	else
	{ description			=	"Ceramika"; };
};
func void Use_ItWr_Book_073()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[73])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[73] = true;
	};
	CreateInvItem(self, ItWr_Book_073);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tworzenie ceramiki to staro�ytne rzemios�o, kt�re ��czy w sobie praktyczno�� i sztuk�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Proces zaczyna si� od wyboru odpowiedniej gliny, kt�ra b�dzie dobrze formowa� si� na kole garncarskim lub pod r�kami rzemie�lnika.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kiedy surowa forma jest gotowa, nale�y j� pozostawi� do wyschni�cia, a nast�pnie wypali� w piecu, aby zyska�a trwa�o��. Wypalona ceramika mo�e by� szkliwiona i ponownie wypalona, co nadaje jej barw� i po�ysk. ");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e ka�de naczynie, miska czy rze�ba to unikalne dzie�o, kt�re odzwierciedla indywidualny styl i umiej�tno�ci tw�rcy.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_074 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_074;
	
	if (Bonus_ItWr_Book[74])
	{ description			=	"Tworzenie pergamin�w (przeczytane)"; }
	else
	{ description			=	"Tworzenie pergamin�w"; };
};
func void Use_ItWr_Book_074()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[74])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[74] = true;
	};
	CreateInvItem(self, ItWr_Book_074);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tworzenie pergamin�w to proces wymagaj�cy precyzji i cierpliwo�ci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zaczyna si� od obr�bki sk�r zwierz�t, najcz�ciej owczych, ciel�cych lub ko�l�cych. Sk�ry moczy si� w wapiennej wodzie, aby usun�� w�osy i t�uszcz, a nast�pnie naci�ga na ramy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po wyschni�ciu, powierzchni� sk�ry wyg�adza si� pumeksem, tworz�c idealnie g�adk� powierzchni� do pisania.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pergaminy s� nast�pnie przycinane do odpowiednich rozmiar�w i gotowe do zapisu magicznych run czy staro�ytnych tekst�w.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_075 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_075;
	
	if (Bonus_ItWr_Book[75])
	{ description			=	"Struganie strza� (przeczytane)"; }
	else
	{ description			=	"Struganie strza�"; };
};
func void Use_ItWr_Book_075()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[75])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[75] = true;
	};
	CreateInvItem(self, ItWr_Book_075);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tworzenie przedmiot�w z drewna to sztuka, kt�ra wymaga znajomo�ci r�nych technik i narz�dzi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zacznij od wyboru odpowiedniego drewna, takiego jak brzoza czy cis.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Do strugania strza� potrzebujesz prostych, ale precyzyjnych narz�dzi, takich jak no�e strugarskie i szlifowniki.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka�da strza�a musi by� idealnie prosta, z dobrze wywa�onym grotem i pi�rami na ko�cu, aby zapewni� celno�� i zasi�g.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_076 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_076;
	
	if (Bonus_ItWr_Book[76])
	{ description			=	"Rolnictwo (przeczytane)"; }
	else
	{ description			=	"Rolnictwo"; };
};
func void Use_ItWr_Book_076()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[76])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[76] = true;
	};
	CreateInvItem(self, ItWr_Book_076);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sadzenie warzyw i zbo�a to podstawa rolnictwa, kt�ra wymaga planowania i odpowiednich technik.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Marchew wymaga lu�nej, dobrze drenuj�cej gleby, aby korzenie mog�y swobodnie rosn��. Ziemniaki sadzi si� na g��boko�ci oko�o 10 cm, w odst�pach co 30 cm.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pszenica natomiast wymaga przygotowania pola, siewu nasion na odpowiedniej g��boko�ci i regularnego nawadniania.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e odpowiednia piel�gnacja, takie jak odchwaszczanie i nawo�enie, znacz�co wp�ywa na jako�� i ilo�� plon�w.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_077 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_077;
	
	if (Bonus_ItWr_Book[77])
	{ description			=	"Wsp�praca w walce (przeczytane)"; }
	else
	{ description			=	"Wsp�praca w walce"; };
};
func void Use_ItWr_Book_077()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[77])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[77] = true;
	};
	CreateInvItem(self, ItWr_Book_077);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wsp�praca z sojusznikami podczas walki wymaga koordynacji i zrozumienia swoich r�l.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "omunikacja jest kluczowa � ustalcie sygna�y i strategie przed walk�. Zawsze b�d� �wiadomy pozycji swoich sojusznik�w, aby unika� przypadkowych atak�w.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wykorzystuj swoje umiej�tno�ci do wspierania innych, na przyk�ad magowie mog� os�ania� wojownik�w, a �ucznicy powinni likwidowa� odleg�e zagro�enia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e zgrana dru�yna jest znacznie silniejsza ni� suma jej poszczeg�lnych cz�onk�w.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_078 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_078;
	
	if (Bonus_ItWr_Book[78])
	{ description			=	"Sztuka uwodzenia (przeczytane)"; }
	else
	{ description			=	"Sztuka uwodzenia"; };
};
func void Use_ItWr_Book_078()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[78])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[78] = true;
	};
	CreateInvItem(self, ItWr_Book_078);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sztuka uwodzenia to umiej�tno�� zdobywania serc i uwagi innych os�b.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kluczowe s� tu charyzma, pewno�� siebie i umiej�tno�� rozmowy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "B�d� uwa�ny i empatyczny, s�uchaj swojego rozm�wcy i reaguj na jego potrzeby.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wykorzystuj subtelne gesty, spojrzenia i komplementy, aby zbudowa� napi�cie i zainteresowanie.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_079 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_079;
	
	if (Bonus_ItWr_Book[79])
	{ description			=	"Astronomia (przeczytane)"; }
	else
	{ description			=	"Astronomia"; };
};
func void Use_ItWr_Book_079()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[79])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[79] = true;
	};
	CreateInvItem(self, ItWr_Book_079);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Astronomia to nauka o gwiazdach, planetach i innych cia�ach niebieskich.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Poznanie ruch�w planet, faz ksi�yca i konstelacji gwiazd pozwala na lepsze zrozumienie kosmosu.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U�ywaj teleskop�w i map nieba, aby obserwowa� ruchy niebieskie i zjawiska astronomiczne.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e astronomia nie tylko pozwala na naukowe odkrycia, ale tak�e inspiruje i zachwyca swoj� niezmierzono�ci�.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_080 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_080;
	
	if (Bonus_ItWr_Book[80])
	{ description			=	"Rze�biarstwo (przeczytane)"; }
	else
	{ description			=	"Rze�biarstwo"; };
};
func void Use_ItWr_Book_080()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[80])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[80] = true;
	};
	CreateInvItem(self, ItWr_Book_080);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Rze�biarstwo to sztuka tworzenia tr�jwymiarowych form z r�nych materia��w, takich jak kamie�, drewno czy glina.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opanuj techniki ci�cia, kszta�towania i wyg�adzania materia��w.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zacznij od prostych projekt�w, a nast�pnie przechod� do bardziej skomplikowanych form.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e ka�da rze�ba powinna odzwierciedla� twoj� wizj� i emocje, nadaj�c martwym materia�om �ycie.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_081 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_081;
	
	if (Bonus_ItWr_Book[81])
	{ description			=	"Kaligrafia (przeczytane)"; }
	else
	{ description			=	"Kaligrafia"; };
};
func void Use_ItWr_Book_081()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[81])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[81] = true;
	};
	CreateInvItem(self, ItWr_Book_081);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kaligrafia to pi�kne pisanie, kt�re ��czy w sobie artystyczny wyraz i precyzj� techniczn�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U�ywaj odpowiednich narz�dzi, takich jak pi�ra, tusze i specjalne papiery.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Opanuj r�ne style pisma, od gotyckiego po italik�, i �wicz regularnie, aby doskonali� swoje umiej�tno�ci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e kaligrafia to nie tylko estetyka, ale tak�e spos�b wyra�ania my�li i uczu�.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_082 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_082;
	
	if (Bonus_ItWr_Book[82])
	{ description			=	"Tkactwo (przeczytane)"; }
	else
	{ description			=	"Tkactwo"; };
};
func void Use_ItWr_Book_082()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[82])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[82] = true;
	};
	CreateInvItem(self, ItWr_Book_082);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tkactwo to staro�ytna sztuka tworzenia tkanin poprzez przeplatanie nici.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opanuj r�ne techniki tkackie, takie jak tkanie na krosnach, haftowanie i plecenie.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wybieraj r�ne materia�y, takie jak we�na, jedwab czy bawe�na, aby tworzy� unikalne wzory i tekstury.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e tkactwo wymaga precyzji i cierpliwo�ci, ale efekty mog� by� zar�wno artystyczne, jak i praktyczne.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_083 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_083;
	
	if (Bonus_ItWr_Book[83])
	{ description			=	"Maskowanie (przeczytane)"; }
	else
	{ description			=	"Maskowanie"; };
};
func void Use_ItWr_Book_083()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[83])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[83] = true;
	};
	CreateInvItem(self, ItWr_Book_083);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Maskowanie to umiej�tno�� ukrywania swojej obecno�ci i zlewania si� z otoczeniem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wykorzystuj naturalne elementy krajobrazu, takie jak krzewy, drzewa i kamienie, aby zakry� swoj� sylwetk�.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Noszenie odpowiedniego kamufla�u, dostosowanego do danego terenu, r�wnie� jest kluczowe.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e umiej�tne poruszanie si� i minimalizowanie ha�asu s� r�wnie wa�ne jak samo maskowanie.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_084 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_084;
	
	if (Bonus_ItWr_Book[84])
	{ description			=	"Leczenie magi� (przeczytane)"; }
	else
	{ description			=	"Leczenie magi�"; };
};
func void Use_ItWr_Book_084()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[84])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[84] = true;
	};
	CreateInvItem(self, ItWr_Book_084);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Leczenie magi� to sztuka, kt�ra wymaga znajomo�ci odpowiednich zakl�� i eliksir�w.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Skupienie i wewn�trzny spok�j s� kluczowe do skutecznego przekierowania magicznej energii na rany i choroby.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Poznaj podstawowe inkantacje i symbole lecznicze, kt�re pomog� w regeneracji tkanek, oczyszczaniu z trucizn i przywracaniu si� witalnych.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e odpowiednie przygotowanie i medytacja mog� znacznie zwi�kszy� efektywno�� leczenia.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_085 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_085;
	
	if (Bonus_ItWr_Book[85])
	{ description			=	"Negocjacje (przeczytane)"; }
	else
	{ description			=	"Negocjacje"; };
};
func void Use_ItWr_Book_085()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[85])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[85] = true;
	};
	CreateInvItem(self, ItWr_Book_085);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Negocjacje to umiej�tno�� osi�gania porozumienia pomi�dzy stronami o r�nych interesach.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kluczowe jest tu s�uchanie i zrozumienie potrzeb oraz motywacji drugiej strony.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U�ywaj logicznych argument�w i proponuj kompromisy, kt�re mog� by� korzystne dla obu stron.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e cierpliwo��, opanowanie i umiej�tno�� czytania mowy cia�a s� nieocenione w skutecznych negocjacjach.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_086 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_086;
	
	if (Bonus_ItWr_Book[86])
	{ description			=	"Magiczne amulety (przeczytane)"; }
	else
	{ description			=	"Magiczne amulety"; };
};
func void Use_ItWr_Book_086()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[86])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[86] = true;
	};
	CreateInvItem(self, ItWr_Book_086);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tworzenie magicznych amulet�w to proces, kt�ry ��czy w sobie rzemios�o i magi�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wybierz odpowiednie materia�y, takie jak metale szlachetne, kamienie i runy, kt�re maj� specyficzne w�a�ciwo�ci magiczne.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Odpowiednie zakl�cia i ceremonie nadadz� amuletom po��dane moce ochronne, lecznicze lub wzmacniaj�ce.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e amulet nabiera mocy r�wnie� dzi�ki wierze i intencji jego w�a�ciciela.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_087 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_087;
	
	if (Bonus_ItWr_Book[87])
	{ description			=	"Rozbrajanie pu�apek (przeczytane)"; }
	else
	{ description			=	"Rozbrajanie pu�apek"; };
};
func void Use_ItWr_Book_087()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[87])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[87] = true;
	};
	CreateInvItem(self, ItWr_Book_087);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Rozbrajanie pu�apek to umiej�tno��, kt�ra wymaga precyzji, cierpliwo�ci i wiedzy o mechanizmach u�ywanych do ich konstruowania.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najpierw dok�adnie zbadaj pu�apk�, aby zrozumie�, jak dzia�a.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U�ywaj odpowiednich narz�dzi, takich jak szczypce, no�e i haczyki, aby bezpiecznie dezaktywowa� mechanizmy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e najwa�niejsze jest zachowanie spokoju i ostro�no�ci, aby unikn�� przypadkowego uruchomienia pu�apki.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_088 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_088;
	
	if (Bonus_ItWr_Book[88])
	{ description			=	"Tworzenie mozaik (przeczytane)"; }
	else
	{ description			=	"Tworzenie mozaik"; };
};
func void Use_ItWr_Book_088()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[88])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[88] = true;
	};
	CreateInvItem(self, ItWr_Book_088);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tworzenie mozaik to artystyczna technika polegaj�ca na uk�adaniu ma�ych kawa�k�w materia�u, takich jak kamienie, szk�o czy ceramika, w celu stworzenia wi�kszego obrazu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wybieraj kolory i kszta�ty, kt�re razem utworz� harmonijn� ca�o��.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U�ywaj odpowiednich narz�dzi do ci�cia i uk�adania element�w, a tak�e mocnych klej�w i zapraw.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e ka�da mozaika opowiada histori� i mo�e by� wyrazem twojej kreatywno�ci.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_089 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_089;
	
	if (Bonus_ItWr_Book[89])
	{ description			=	"Zaklinanie broni (przeczytane)"; }
	else
	{ description			=	"Zaklinanie broni"; };
};
func void Use_ItWr_Book_089()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[89])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[89] = true;
	};
	CreateInvItem(self, ItWr_Book_089);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zaklinanie broni to proces, kt�ry ��czy w sobie magi� i kowalstwo, nadaj�c or�owi nadnaturalne w�a�ciwo�ci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wykorzystuj specjalne inkantacje, runy i magiczne substancje, aby wzmocni� ostrze, nada� mu zdolno�ci elementarne lub ochronne.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka�de zakl�cie musi by� precyzyjnie wykonane i dostosowane do rodzaju broni oraz intencji u�ytkownika.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e zakl�ta bro� jest pot�nym narz�dziem, kt�re wymaga odpowiedzialnego u�ycia.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_090 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_090;
	
	if (Bonus_ItWr_Book[90])
	{ description			=	"Kolonizacja (przeczytane)"; }
	else
	{ description			=	"Kolonizacja"; };
};
func void Use_ItWr_Book_090()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[90])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[90] = true;
	};
	CreateInvItem(self, ItWr_Book_090);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kolonizacja niezamieszka�ych teren�w wymaga dok�adnego planowania i przygotowania.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wybierz odpowiednie miejsce, uwzgl�dniaj�c dost�p do wody, �yznych gleb i surowc�w naturalnych.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zorganizuj grup� kolonizator�w, zapewniaj�c im niezb�dne narz�dzia, nasiona i zapasy �ywno�ci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e budowanie nowych osiedli to proces stopniowy, kt�ry wymaga wytrwa�o�ci, wsp�pracy i zdolno�ci do adaptacji w nieznanych warunkach.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_091 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_091;
	
	if (Bonus_ItWr_Book[91])
	{ description			=	"Magazynowanie i transport (przeczytane)"; }
	else
	{ description			=	"Magazynowanie i transport"; };
};
func void Use_ItWr_Book_091()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[91])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[91] = true;
	};
	CreateInvItem(self, ItWr_Book_091);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zarz�dzanie magazynem i transportem to kluczowe aspekty logistyki, kt�re zapewniaj� ci�g�o�� operacji i dostaw.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Upewnij si�, �e magazyn jest dobrze zorganizowany, a wszystkie towary s� odpowiednio oznaczone i przechowywane.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Planowanie transportu wymaga koordynacji i uwzgl�dnienia czynnik�w takich jak trasy, czas dostawy i bezpiecze�stwo �adunk�w.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e efektywne zarz�dzanie zasobami i terminowe dostawy to fundamenty udanej logistyki.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_092 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_092;
	
	if (Bonus_ItWr_Book[92])
	{ description			=	"Meteorologia (przeczytane)"; }
	else
	{ description			=	"Meteorologia"; };
};
func void Use_ItWr_Book_092()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[92])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[92] = true;
	};
	CreateInvItem(self, ItWr_Book_092);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Meteorologia to nauka o atmosferze i jej zjawiskach, kt�ra pomaga przewidywa� warunki pogodowe.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opanuj techniki obserwacji chmur, wiatru i temperatury, aby zrozumie� zmieniaj�ce si� wzorce pogodowe.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wykorzystuj narz�dzia takie jak barometry, higrometry i anemometry do dok�adnych pomiar�w.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e prognozowanie pogody to nie tylko analiza danych, ale tak�e umiej�tno�� interpretacji i przewidywania zjawisk atmosferycznych na podstawie zdobytej wiedzy i do�wiadczenia.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_093 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_093;
	
	if (Bonus_ItWr_Book[93])
	{ description			=	"Tworzenie witra�y (przeczytane)"; }
	else
	{ description			=	"Tworzenie witra�y"; };
};
func void Use_ItWr_Book_093()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[93])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[93] = true;
	};
	CreateInvItem(self, ItWr_Book_093);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tworzenie witra�y to artystyczna technika ��czenia kawa�k�w kolorowego szk�a za pomoc� o�owianych ram.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opanuj umiej�tno�� ci�cia szk�a na precyzyjne kszta�ty i sk�adania ich w harmonijne wzory.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U�ywaj r�nych kolor�w i tekstur szk�a, aby uzyska� efektowne efekty �wietlne.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e witra�e s� nie tylko dekoracyjne, ale tak�e mog� opowiada� historie i wprowadza� magiczn� atmosfer� do wn�trz.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_094 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_094;
	
	if (Bonus_ItWr_Book[94])
	{ description			=	"Przewodzenie karawanom (przeczytane)"; }
	else
	{ description			=	"Przewodzenie karawanom"; };
};
func void Use_ItWr_Book_094()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[94])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[94] = true;
	};
	CreateInvItem(self, ItWr_Book_094);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przewodzenie karawanom to odpowiedzialne zadanie, kt�re wymaga umiej�tno�ci organizacyjnych i znajomo�ci terenu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Planuj trasy, uwzgl�dniaj�c dost�pno�� wody, schronienia i bezpiecznych miejsc na post�j.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dbaj o morale i bezpiecze�stwo cz�onk�w karawany, monitoruj�c ich stan zdrowia i reaguj�c na zagro�enia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e skuteczne przewodzenie karawanom wymaga cierpliwo�ci, do�wiadczenia i umiej�tno�ci radzenia sobie w trudnych sytuacjach.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_095 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_095;
	
	if (Bonus_ItWr_Book[95])
	{ description			=	"Machiny obl�nicze (przeczytane)"; }
	else
	{ description			=	"Machiny obl�nicze"; };
};
func void Use_ItWr_Book_095()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[95])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[95] = true;
	};
	CreateInvItem(self, ItWr_Book_095);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Machiny obl�nicze, takie jak tarany i katapulty, odgrywaj� kluczow� rol� w zdobywaniu ufortyfikowanych twierdz.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tarany s� u�ywane do wy�amywania bram i mur�w, podczas gdy katapulty wyrzucaj� ci�kie pociski na du�e odleg�o�ci, niszcz�c struktury obronne i siej�c zam�t w szeregach przeciwnika.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Precyzyjna obs�uga tych machin wymaga zespo�owej pracy i synchronizacji.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Upewnij si�, �e wszystkie cz�ci s� w dobrym stanie i odpowiednio nasmarowane, a operatorzy dobrze wyszkoleni, aby maksymalnie wykorzysta� potencja� machin obl�niczych.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_096 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_096;
	
	if (Bonus_ItWr_Book[96])
	{ description			=	"Prowadzenie karczmy (przeczytane)"; }
	else
	{ description			=	"Prowadzenie karczmy"; };
};
func void Use_ItWr_Book_096()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[96])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[96] = true;
	};
	CreateInvItem(self, ItWr_Book_096);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Prowadzenie karczmy to sztuka, kt�ra wymaga zaradno�ci, go�cinno�ci i dobrego zarz�dzania. Dbaj o atmosfer�, utrzymuj�c czysto�� i wygod� lokalu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zapewnij r�norodne menu z lokalnymi specja�ami oraz dobrze zaopatrzony bar z najlepszymi trunkami.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e zadowoleni go�cie to najlepsi reklamodawcy, wi�c zawsze traktuj ich z szacunkiem i uprzejmo�ci�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dobrze przemy�lana logistyka dostaw oraz zarz�dzanie personelem to klucz do sukcesu ka�dej karczmy.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_097 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_097;
	
	if (Bonus_ItWr_Book[97])
	{ description			=	"�ycie klasztorne (przeczytane)"; }
	else
	{ description			=	"�ycie klasztorne"; };
};
func void Use_ItWr_Book_097()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[97])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[97] = true;
	};
	CreateInvItem(self, ItWr_Book_097);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "�ycie klasztorne to oddanie si� duchowym praktykom, medytacji i pracy na rzecz wsp�lnoty.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dni s� wype�nione modlitwami, studiowaniem �wi�tych tekst�w oraz prac� fizyczn�, tak� jak uprawa roli czy rzemios�o.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Klasztor jest miejscem ciszy i kontemplacji, gdzie ka�dy cz�onek spo�eczno�ci d��y do osi�gni�cia wewn�trznego spokoju i harmonii.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wsp�praca i wzajemne wsparcie s� fundamentami �ycia klasztornego, a dyscyplina i pokora pomagaj� w duchowym rozwoju.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_098 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_098;
	
	if (Bonus_ItWr_Book[98])
	{ description			=	"Kryptografia (przeczytane)"; }
	else
	{ description			=	"Kryptografia"; };
};
func void Use_ItWr_Book_098()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[98])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[98] = true;
	};
	CreateInvItem(self, ItWr_Book_098);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kryptografia to nauka o szyfrowaniu i deszyfrowaniu informacji, kt�ra od wiek�w by�a kluczowa dla bezpiecznej komunikacji.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opanowanie technik kodowania, takich jak podstawienie i transpozycja, pozwala na tworzenie bezpiecznych wiadomo�ci.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Znajomo�� matematyki i algorytm�w jest niezb�dna do zrozumienia bardziej zaawansowanych system�w szyfruj�cych.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e skuteczna kryptografia wymaga nie tylko znajomo�ci technik, ale tak�e kreatywno�ci w tworzeniu nowych metod ochrony informacji.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_099 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_099;
	
	if (Bonus_ItWr_Book[99])
	{ description			=	"Praca zwiadowcy (przeczytane)"; }
	else
	{ description			=	"Praca zwiadowcy"; };
};
func void Use_ItWr_Book_099()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_Book[99])
	{
		B_GivePlayerExp(100); Bonus_ItWr_Book[99] = true;
	};
	CreateInvItem(self, ItWr_Book_099);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Praca zwiadowcy to nieustanne przemieszczanie si�, obserwacja i zbieranie informacji na temat ruch�w wroga oraz terenu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zwiadowca musi by� bieg�y w sztuce kamufla�u i skradania si�, aby unikn�� wykrycia.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wa�na jest tak�e umiej�tno�� szybkiego podejmowania decyzji i przekazywania zdobytych informacji.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pami�taj, �e zwiadowca dzia�a cz�sto na terytorium wroga, wi�c umiej�tno�� przetrwania w trudnych warunkach i radzenie sobie w niebezpiecznych sytuacjach s� kluczowe.");
				Doc_Show		(nDocID);
};
