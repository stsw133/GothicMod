///******************************************************************************************
///	Maps
///******************************************************************************************
prototype ItemPR_Map (C_Item)
{
	name 					=	"Mapa";
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MULTI;
	
	material 				=	MAT_LEATHER;
	scemeName				=	"MAP";
	
	TEXT[5]					=	NAME_Value;
};
///******************************************************************************************
instance ItWr_Map_NewWorld (ItemPR_Map)
{
	value 			=	100;
	visual 			=	"ItWr_Map_01.3DS";
	on_state[0]		=	Use_Map_NewWorld;
	
	description		=	"Mapa teren�w Khorinis";
	COUNT[5]		=	value;
};
func void Use_Map_NewWorld()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_NewWorld);
	};
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage 		(Document, 0, "Map_NewWorld.tga", true);
				Doc_SetLevel		(Document, "NewWorld\NewWorld.zen");
				Doc_SetLevelCoords	(Document, -28000, 50500, 95500, -42500);
				Doc_Show			(Document);
};
///******************************************************************************************
instance ItWr_Map_NewWorld_City (ItemPR_Map)
{
	value 			=	50;
	visual 			=	"ItWr_Map_01.3DS";
	on_state[0]		=	Use_Map_NewWorld_City;
	
	description		=	"Mapa miasta Khorinis";
	COUNT[5]		=	value;
};
func void Use_Map_NewWorld_City()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_NewWorld_City);
	};
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage 		(Document, 0, "Map_NewWorld_City.tga", true);
				Doc_SetLevel		(Document, "NewWorld\NewWorld.zen");
				Doc_SetLevelCoords	(Document, -6900, 11800, 21600, -9400);
				Doc_Show			(Document);
};
///******************************************************************************************
instance ItWr_Map_OldWorld (ItemPR_Map)
{
	value 			=	200;
	visual 			=	"ItWr_Map_01.3DS";
	on_state[0]		=	Use_Map_OldWorld;
	
	description		=	"Mapa G�rniczej Doliny";
	COUNT[5]		=	value;
};
func void Use_Map_OldWorld()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_OldWorld);
	};
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage 		(Document, 0, "Map_OldWorld.tga", true);
				Doc_SetLevel		(Document, "OldWorld\OldWorld.zen");
				Doc_SetLevelCoords	(Document, -78500, 47500, 54000, -53000);
				Doc_Show			(Document);
};
///******************************************************************************************
instance ItWr_Map_AddonWorld (ItemPR_Map)
{
	value 			=	200;
	visual 			=	"ItWr_Map_01.3DS";
	on_state[0]		=	Use_Map_AddonWorld;
	
	description		=	"Zapomniana dolina budowniczych";
	COUNT[5]		=	value;
};
func void Use_Map_AddonWorld()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_AddonWorld);
	};
	
	var int Document;
	Document =	Doc_CreateMap		();
				Doc_SetPages		(Document, 1);
				Doc_SetPage 		(Document, 0, "Map_AddonWorld.tga", true);
 				Doc_SetLevel        (Document, "Addon\AddonWorld.zen");
   				Doc_SetLevelCoords  (Document, -47783, 36300, 43949, -32300);
				Doc_Show			(Document);
};
///******************************************************************************************
///	Books
///******************************************************************************************
prototype ItemPR_Book (C_Item)
{
	name 					=	"Ksi��ka";
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MULTI;
	
	material 				=	MAT_LEATHER;
	scemeName				=	"MAP";
	
	TEXT[5]					=	NAME_Value;
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

///******************************************************************************************
instance ItWr_Book_Fight1H (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_04.3ds";
	on_state[0]		=	Use_Book_Fight1H;
	
	description		=	"Kunszt obronny po�udniowc�w";
	COUNT[5]		=	value;
};
func void Use_Book_Fight1H()
{
	if (Bonus_ItWr_Book_Fight1H == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_Fight1H = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Red_R.tga", false);
				Doc_SetFont 	(nDocID,  0, FONT_Book);

 				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
 				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kunszt obronny po�udniowc�w");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po�udniowiec w por�wnaniu z mieszka�cem p�nocy nie polega tak bardzo na sile fizycznej, preferuj�c zwinno��, a gor�cy klimat jego ojczyzny zmusza go do korzystania z l�ejszych i daj�cych wi�ksz� swobod� ruch�w pancerzy. W zwi�zku z tym styl walki ludzi po�udnia jest ca�kowicie inny od tego, do kt�rego jeste�my przyzwyczajeni. ");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Prawdopodobnie najs�ynniejszym manewrem wywodz�cym si� z po�udnia jest jednor�czny blok po��czony z krokiem wstecz: cofni�cie si� pozwala na zmniejszenie si�y wrogiego ciosu i umo�liwia przyj�cie postawy u�atwiaj�cej wyprowadzenie kontrataku.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Fight2H (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_03.3ds";
	on_state[0]		=	Use_Book_Fight2H;
	
	description		=	"Bloki dwur�czne";
	COUNT[5]		=	value;
};
func void Use_Book_Fight2H()
{
	if (Bonus_ItWr_Book_Fight2H == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_Fight2H = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Red_R.tga", false);
				Doc_SetFont 	(nDocID,  0, FONT_Book);

 				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
 				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Bloki dwur�czne");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Blokowanie cios�w przeciwnika za pomoc� broni dwur�cznej umo�liwia silnym wojownikom gwa�towne powstrzymanie wroga i przerwanie ewentualnej kombinacji jego cios�w. ");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zatrzymany w ten spos�b przeciwnik traci inicjatyw� i �atwiej go potem skutecznie zaatakowa�.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_StarPower (ItemPR_Book) 
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_02.3ds";
	on_state[0]		=	Use_Book_StarPower;
	
	description		=	"Boska moc gwiazd";
	COUNT[5]		= 	value;
};
func void Use_Book_StarPower()
{
	if (Bonus_ItWr_Book_StarPower == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_StarPower = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);

 				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "...jednak kiedy up�r wo�u po��czy si� z przebieg�o�ci� wojownika, strze�cie si�, albowiem b�dziecie �wiadkami wielkich zmian.");
				Doc_PrintLines	(nDocID,  0, "Up�r wo�u po��czony z wytrwa�o�ci� wojownika mo�e zaburzy� odwieczny porz�dek. Kosmiczna materia oddzielaj�ca wymiary staje si� coraz cie�sza i s�absza. Wkr�tce nie b�dzie w stanie powstrzyma� istot Beliara przed wdarciem si� do naszej rzeczywisto�ci.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W pradawnych czasach, kiedy oba �wiaty by�y po��czone siln� wi�zi�, s�udzy Z�a mogli bez przeszk�d pl�drowa� nasze ziemie, i tylko moc Innosa oraz jego Wybra�ca pozwoli�a nam odeprze� ataki Wroga."	);
				Doc_PrintLines	(nDocID,  1, "Je�li taka sytuacja si� powt�rzy, niechaj Innos ma nas w swej opiece, albowiem od stuleci nie by�o po�r�d nas jego Wybra�ca."					);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_GodsGift (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_01.3ds";
	on_state[0]		=	Use_Book_GodsGift;
	
	description		=	"Dar od bog�w";
	COUNT[5]		=	value;
};
func void Use_Book_GodsGift()
{
	if (Bonus_ItWr_Book_GodsGift == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_GodsGift = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false); 
				Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga", false);
  				Doc_SetFont 	(nDocID, -1, FONT_Book);

				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
  				Doc_PrintLine	(nDocID,  0, "Magia");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Dar od bog�w");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z dawien dawna cz�ek pr�bowa� zg��bi� natur� i genez� sztuk magicznych. Jeno gdzie rozpocz�� takie poszukiwania? Czy magi� mo�na w og�le opisa�? Pr�no szuka� r�wnie niesp�jnego zjawiska we �wiecie: wszak magia jednako leczy i zabija, tworzy i niszczy.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Gdzie zatem szuka� tej nieopisanej pot�gi? Magia jest tym, czym jest - najpot�niejszym i najwspanialszym darem, jaki cz�owiek otrzyma� od bog�w. Baczcie jeno, by dar �w rych�o nie sta� si� przekle�stwem, gdy� nieliczni b�d� w stanie zrozumie� magi� i wykorzysta� j� do w�asnych cel�w. Inni sami zostan� wykorzystani.");	
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Barthos z Laran");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_SecretsOfMagic (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_02.3ds";
	on_state[0]		=	Use_Book_SecretsOfMagic;
	
	description		=	"Tajniki magii";
	COUNT[5]		=	value;
};
func void Use_Book_SecretsOfMagic()
{
	if (Bonus_ItWr_Book_SecretsOfMagic == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_SecretsOfMagic = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga", false);
  				Doc_SetFont 	(nDocID, -1, FONT_Book);

				Doc_SetMargins	(nDocID,  0,  275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Tajniki magii");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Magia nie zamieszkuje w ciele samego magusa. Jest on raczej jako zmy�lny rzemie�lnik, a ona jako narz�dzie jego. Tako� pocz�tkuj�cy magus uczy si� jak on� moc okie�zna� i kierowa� ni� wedle swojej woli.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jego duch nadaje owej mocy po��dany kszta�t, ogniskuje j� i wreszcie uwalnia. W takich chwilach dusza magusa wznosi si� ponad nasz �wiat i spoziera na Drug� Stron�, gdzie stoi pa�ac pot�gi, kt�r� on kszta�tuje i przekazuje.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Barthos z Laran");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_PowerfulArt (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_03.3ds";
	on_state[0]		=	Use_Book_PowerfulArt;
	
	description		=	"Wszechpot�na sztuka";
	COUNT[5]		=	value;
};
func void Use_Book_PowerfulArt()
{
	if (Bonus_ItWr_Book_PowerfulArt == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_PowerfulArt = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga", false);
  				Doc_SetFont 	(nDocID, -1, FONT_Book);

				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Wszechpot�na sztuka");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ksi�ga dla tych, co w sztukach magicznych uczeni s�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Umiej�tno�ci magusa wzrastaj� z czasem. Najpierw jest jako ziarno zbo�a, kt�re trzeba chroni�, by nie zmarnia�o. Lecz wkr�tce ziarno wypuszcza kie�ki, staj�c si� pi�kn� ro�lin�.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Z ka�dym nowym dniem ro�lina staje si� wi�ksza i silniejsza. Tak samo jest z magusem. Na pocz�tku nauki jego si�y s� w�t�e, lecz z czasem okrzepnie, staj�c si� pot�niejszym. Ci�g�e d��enie do absolutnej perfekcji powinno by� nadrz�dnym celem ka�dego adepta magii. Ziarno pot�gi dane im przez bog�w jest bowiem najcenniejszym darem, jakie �miertelnik mo�e otrzyma�.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Elementare (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_04.3ds";
	on_state[0]		=	Use_Book_Elementare;
	
	description		=	"Arcanum �ywio��w";
	COUNT[5]		=	value;
};
func void Use_Book_Elementare()
{
	if (Bonus_ItWr_Book_Elementare == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_Elementare = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga", false);
  				Doc_SetFont 	(nDocID, -1, FONT_Book);

				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Arcanum �ywio��w");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Miejsce magii w ziemskim porz�dku");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wiele bada� przeprowadzono, g�owi�c si� nad zale�no�ci� magii od wszelakich �ywio��w. W rezultacie przyj�to, i� jest ona - magia - ostatecznym, najpot�niejszym �ywio�em ze wszystkich. Wszak to dzi�ki niej magus mo�e kszta�towa� pozosta�e si�y natury wedle w�asnego upodobania.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka�dy �ywio�, w swej najczystszej formie, ujawnia powi�zania z magi�. Oczywi�cie, naturalne manifestacje takich powi�za� nale�� do rzadko�ci i s� skrz�tnie poszukiwane. Zdolno�� magusa do kontrolowania pot�gi �ywio��w stanowi ostateczny dow�d, i� magia jest najczystszym i najwspanialszym dobrem obecnym w naszej egzystencji.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_RealPower (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_05.3ds";
	on_state[0]		=	Use_Book_RealPower;
	
	description		=	"Prawdziwa moc";
	COUNT[5]		=	value;
};
func void Use_Book_RealPower()
{
	if (Bonus_ItWr_Book_RealPower == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_RealPower = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false); 
				Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga", false);
  				Doc_SetFont 	(nDocID, -1, FONT_Book);

				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Prawdziwa moc");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "�wi�ta powinno�� m�drca");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To pot�ga odr�nia magusa od zwyk�ego �miertelnika. W�adny wykorzystywa� bosk� moc, magus wyj�ty jest spod tych wszystkich praw natury, kt�re dotycz� ludzi prostych i kr�l�w jednako. ");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");	
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Gdy magus osi�gnie poziom, kt�ry pozwoli mu wykroczy� poza granice ludzkiej egzystencji, wst�puje do �wiata niedost�pnego zwyk�ym �miertelnikom. Mo�e prze�amywa� bariery czasu i przestrzeni, i nawet �mier� - ostateczna bariera - nie jest mu straszna.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_MagicOre (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_02.3ds";
	on_state[0]		=	Use_Book_MagicOre;
	
	description		=	"Magiczna ruda";
	COUNT[5]		=	value;
};
func void Use_Book_MagicOre()
{
	if (Bonus_ItWr_Book_MagicOre == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_MagicOre = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Brown_R.tga", false);
  				Doc_SetFont 	(nDocID, -1, FONT_Book);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najlepsz� rud� do wyrobu wszelkiego rodzaju or�a znale�� mo�na w kopalniach w dolinie Khorinis. Wykut� z niej bro� cechuje niebywa�a wytrzyma�o��. Pok�ady rudy wyst�puj� zwykle g��boko pod ziemi�, lecz g�upcem ten, kto nie podejmie trudu wydobycia jej na �wiat�o dzienne. Niewiele jest takich skarb�w na �wiecie...");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Magiczna bro� przebije ka�dy pancerz i pogruchocze ka�d� tarcz�. Zaiste, kr�lewski to or� i kr�lewsk� cen� trzeba zap�aci� za cho�by sztylet wykuty z tego szlachetnego kruszcu. Tako� surow� cen� p�ac� g�rnicy pracuj�cy w kopalniach. Rud� nie�atwo oddzieli� od skalnych pok�ad�w, tak jakby z ca�ych si� walczy�a, by pozosta� w �onie matki Ziemi.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Varant1 (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_04.3ds";
	on_state[0]		=	Use_Book_Varant1;
	
	description		=	"Bitwa o Varrant";
	TEXT[0]			=	"Tom 1";
	COUNT[5]		=	value;
};
func void Use_Book_Varant1()
{
	if (Bonus_ItWr_Book_Varant1 == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_Varant1 = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Red_R.tga", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);

				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "...ale sprytny Rhobar postanowi� zaatakowa�. Zebra� swoje si�y i kaza� im n�ka� s�absz�, praw� flank� nieprzyjaciela. Nie trac�c chwili, kr�l pchn�� najlepsze swe oddzia�y na wroga, i przebi� si� przeze� niczym miecz przecinaj�cy m�a. Wojska kr�lewskie par�y zatem bez wytchnienia w stron� Varant. Rhobar wiedzia� wszak, �e jedyna szansa ocalenia le�y w rozbiciu armii nieprzyjaciela i niedopuszczeniu do po��czenia si� Gellona i Lukkora.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");					
				Doc_PrintLines	(nDocID,  1, "  Najpierw jednak postanowi� przeci�� ich linie zaopatrzenia...");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "...Gellon poleg� a jego armia posz�a w rozsypk�. Ale Rhobar nie zamierza� da� przeciwnikowi chwili wytchnienia i rzuci� swe si�y na pozosta�e oddzia�y wroga. Tu jednak Lukkor rzuci� si� na kr�lewskich znienacka i zada� straszliwy cios wyczerpanym wojskom Rhobara...");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Varant2 (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_05.3ds";
	on_state[0]		=	Use_Book_Varant2;
	
	description		=	"Bitwa o Varrant";
	TEXT[0]			=	"Tom 2";
	COUNT[5]		=	value;
};
func void Use_Book_Varant2()
{
	if (Bonus_ItWr_Book_Varant2 == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_Varant2 = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Red_R.tga", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);

				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wojna by�a sko�czona. Varant straci�o swe morskie porty, tak potrzebne dla zaopatrywania armii. Kr�l Rhobar nie traci� wi�cej czasu na polu bitwy, lecz zostawi� swych genera��w, by ci rozprawili si� z niedobitkami nieprzyjaciela. Varrantczycy posiadali ju� tylko jedno ognisko oporu, zgromadzone wok� Lukkora, najpot�niejszego genera�a ca�ego narodu, kt�ry umiej�tnie zamieni� pora�k� w zwyci�stwo.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale teraz jego armia znalaz�a si� w potrzasku. Sytuacja zda�a si� by� beznadziejna, cho� jego wojska przewy�sza�y si�y kr�lewskie liczb� i wyposa�eniem. Oto jeden z Myrta�skich bohater�w, m�ny genera� imieniem Lee, zwabi� przeciwnika w pu�apk�. Na podmok�ej, bagnistej ziemi ci�ka kawaleria Lukkora nie mia�a szans w starciu ze zwinnymi �o�nierzami Lee. Zdziesi�tkowane oddzia�y Varantu wkr�tce musia�y uzna� wy�szo�� przeciwnika. Lukkor zosta� pokonany.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_MyrthanianPoetry (ItemPR_Book)
{
	value			=	100;
	visual 			=	"ItWr_Book_02_02.3ds";
	on_state[0]		=	Use_Book_MyrthanianPoetry;
	
	description		=	"Poezja myrta�ska";
	COUNT[5]		=	value;
};
func void Use_Book_MyrthanianPoetry()
{
	if (Bonus_ItWr_Book_MyrthanianPoetry == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_MyrthanianPoetry = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Red_R.tga", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);

				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "    Pie��");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "		  Skruchy");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
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
				Doc_PrintLines	(nDocID,  1, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_GodsWisdom1 (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_01.3ds";
	on_state[0]		=	Use_Book_GodsWisdom1;
	
	description		=	"M�dro�� bog�w";
	TEXT[0]			=	"Tom 1";
	COUNT[5]		=	value;
};
func void Use_Book_GodsWisdom1()
{
	if (Bonus_ItWr_Book_GodsWisdom1 == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_GodsWisdom1 = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Red_R.tga", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);

 				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");										
				Doc_PrintLines	(nDocID,  0, "Wys�uchajcie s��w bo�ych, bo pragn� oni, by�cie ich wys�uchali. Przestrzegajcie praw bo�ych, bo chc� oni, by�cie ich przestrzegali. Czcijcie kap�an�w bo�ych, bo oni s� wybra�cami �aski...");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "S�owa Innosa: A gdyby�cie nie mogli ich poj��, nie odrzucajcie s��w kap�an�w, bo g�osz� oni moj� m�dro��. Gdy� ja jestem S�o�cem na niebie, �wiat�em i �yciem na Ziemi. A wszystko, co wrogiem jest S�o�ca, jest i moim wrogiem, i zostanie wygnane do krainy wiecznej ciemno�ci.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "S�owa Adanosa: �yjcie i pracujcie, bo dzie� stworzono po to, by m�� m�g� �y� i pracowa�. Szukajcie wiedzy, by�cie mogli przekaza� j� synom swoim, gdy� taka jest wola moja. Ale strze�cie si�, bo cz�ek g�upi i leniwy zostanie wygnany do krainy wiecznej ciemno�ci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "S�owa Beliara: A ktokolwiek wyst�pi przeciw woli bo�ej, ze mn� b�dzie mia� do czynienia. Na jego cia�o b�l ze�l� okrutny, a jego duch p�jdzie ze mn� do krainy wiecznej ciemno�ci.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_GodsWisdom2 (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_02.3ds";
	on_state[0]		=	Use_Book_GodsWisdom2;
	
	description		=	"M�dro�� bog�w";
	TEXT[0]			=	"Tom 2";
	COUNT[5]		=	value;
};
func void Use_Book_GodsWisdom2()
{
	if (Bonus_ItWr_Book_GodsWisdom2 == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_GodsWisdom2 = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Red_R.tga", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);

				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, ""); 					
				Doc_PrintLines	(nDocID,  0, "O zaraniu dziej�w: Na pocz�tku nie by�o dnia ani nocy, i �adne �ywe stworzenie nie przemierza�o �wiata. Wtedy pojawi� si� Innos, a jego blask pada� na Ziemi�. Innos obdarzy� �wiat darem �ycia. Ale �adne stworzenie nie �mia�o spojrze� w twarz Innosa, wi�c dobry b�g stworzy� S�o�ce. Lecz mimo to, jasno�� by�a zbyt wielka, tote� Innos podzieli� si� na dwoje i tak powsta� Beliar. Beliar stworzy� noc. Teraz cz�owiek m�g� wreszcie �y�, lecz nie wiedzia� jak. Dlatego Innos podzieli� si� po raz wt�ry i tak powsta� Adanos. Adanos przyni�s� ludziom pomys�owo�� i m�dro��, kt�rej tak bardzo potrzebowali.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");					
				Doc_PrintLines	(nDocID,  1, "Dlatego Innos postanowi� zostawi� ludzko�� pod opiek� Adanosa i uda� si� na spoczynek. Lecz Beliar p�on�� z zazdro�ci, gdy� ludzie bali si� go i nie oddawali mu czci. Tedy postanowi� Beliar stworzy� cz�owieka, kt�ry modli�by si� tylko do niego. Ale cz�owiek �w by� jako wszyscy inni, i ba� si� Beliara i nie oddawa� mu czci. B�g nocy rozz�o�ci� si� i zabi� cz�owieka krzycz�c: Dobrze! B�jcie si� mnie zatem, ale cze�� oddacie mi, cho�by po �mierci. Tymi s�owy ustanowi� Beliar �mier� - kres �ywota ludzkiego."	);
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_GodsWisdom3 (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_03.3ds";
	on_state[0]		=	Use_Book_GodsWisdom3;
	
	description		=	"M�dro�� bog�w";
	TEXT[0]			=	"Tom 3";
	COUNT[5]		=	value;
};
func void Use_Book_GodsWisdom3()
{
	if (Bonus_ItWr_Book_GodsWisdom3 == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_GodsWisdom3 = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Red_R.tga", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);

				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
   				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Innos pozwoli�, by ludzie mogli go us�ysze� i przemawia� do niego. Pozwoli� im r�wnie� czyni� cuda i nazwa� je magi�. Dzi�ki magii, ludzie zacz�li zmienia� �wiat wedle swego upodobania, jedni m�drze, inni g�upio. Widz�c to, Innos zabra� dar magii ludziom g�upim i pozostawi� go w r�kach ludzi �wiat�ych. Obdarzy� ich r�wnie� innymi �askami, czyni�c swoimi kap�anami i nadaj�c im miano mag�w.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
 				Doc_PrintLine	(nDocID,  1, "");					
				Doc_PrintLines	(nDocID,  1, "Ludzie czcili kap�an�w Innosa i oddawali im cze��, ale wielu mag�w odwr�ci�o si� od Innosa i uciek�o si� pod opiek� jego boskiego brata - Adanosa. Kasta mag�w uleg�a rozbiciu. Ci, kt�rzy pod��ali za bogiem m�dro�ci nazwali siebie magami Kr�gu Wody. Wyznawcy Innosa nazywani za� byli Magami Ognia.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Hunting (ItemPR_Book)
{
	value 			=	100;
	visual			=	"ItWr_Book_02_02.3ds";
	on_state[0]		=	Use_Book_Hunting;
	
	description		=	"�owy i zwierzyna";
	COUNT[5]		=	value;
};
func void Use_Book_Hunting()
{
	if (Bonus_ItWr_Book_Hunting == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_Hunting = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);

				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jego zapiski przetrwa�y ca�e wieki i po dzi� dzie� uznawane s� za najznakomitsze kompendium wiedzy o polowaniu. Po d�ugich latach star� na p�nocnym pograniczu, niemal ka�dy obywatel potrafi pos�ugiwa� si� �ukiem. Jednak sztuka polowania daleko wykracza poza podstawowe zasady strzelania z �uku! Zwierzyna jest wszak p�ocha i nieprzewidywalna!");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Polowanie z �ukiem ma swe pocz�tki w czasach staro�ytnych. W ci�gu ca�ych tysi�cleci nie zasz�y w technikach �owieckich wi�ksze zmiany i tak ju� najprawdopodobniej pozostanie. Jakie czynniki wp�ywaj� tak naprawd� na skuteczno�� pos�ugiwania si� �ukiem? To w�a�nie rozpoznanie tych czynnik�w czyni prawdziwego mistrza �ucznictwa.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Fight (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_03.3ds";
	on_state[0]		=	Use_Book_Fight;
	
	description		=	"Sztuka walki";
	COUNT[5]		=	value;
};
func void Use_Book_Fight()
{
	if (Bonus_ItWr_Book_Fight == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_Fight = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);

				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
  				Doc_PrintLine	(nDocID,  0, "");
  				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Od 2000 lat nauki mistrz�w kszta�tuj� rozw�j sztuki walki.");
  				Doc_PrintLine	(nDocID,  0, "");
  				Doc_PrintLine	(nDocID,  0, "");
   				Doc_PrintLines	(nDocID,  0, "Zr�czno��, opanowanie, szybko��, zdolno�� obserwacji i b�yskawicznego podejmowania decyzji - wszystkie te umiej�tno�ci nale�y bezustannie doskonali�. Jedynie doskona�a koordynacja ruch�w i zachowanie w�a�ciwej postawy pozwol� na prawid�owy rozw�j twych umiej�tno�ci.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
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
instance ItWr_Book_Astronomy (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_05.3ds";
	on_state[0]		=	Use_Book_Astronomy;
	
	description		=	"Astronomia";
	COUNT[5]		=	value;
};
func void Use_Book_Astronomy()
{
	if (Bonus_ItWr_Book_Astronomy == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_Astronomy = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);

 				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
 				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W centrum wszech�wiata znajduje si� Morgrad, co zawiera cztery �ywio�y - ziemi�, wod�, ogie� i wiatr. Morgrad, co jest wiecznie niespokojnym sercem Beliara. A nad nim rozci�ga si� sfera niebios.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W odwiecznej hierarchii kosmosu cz�owiek stoi po�rodku. Jego dusza pozwala mu do�wiadcza� �ask niebia�skich, ale jego cia�o stworzone jest z substancji Morgradu. Jest wi�c cz�owiek odzwierciedleniem ca�ego �wiata.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Orbity wszystkich planet, czyli drogi, jakie pokonuj� okr��aj�c Morgrad, zmieniaj� si� nieznacznie z up�ywem lat. Pewnym jest zatem, i� ca�y wszech�wiat zmierza powoli do jakiego� celu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Obserwuj�c ruch ksi�yca na nocnym niebie ustalili�my d�ugo�� roku i stworzyli�my pierwszy kalendarz.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Focus (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_05.3ds";
	on_state[0]		=	Use_Book_Focus;
	
	description		=	"Kamienie ogniskuj�ce";
	COUNT[5]		=	value;
};
func void Use_Book_Focus()
{
	if (Bonus_ItWr_Book_Focus == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_Focus = true;
	};
	
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Brown_R.tga", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);

				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Ogniskowanie mocy");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Magia skumulowana w kamieniu ulega wielokrotnemu wzmocnieniu zanim wyzwol� j� s�owa zakl�cia. To, czy efekt b�dzie trwa�y czy tylko chwilowy, zale�y wy��cznie od maga.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tym samym, po wyzwoleniu energii, kamie� staje si� jeno pust�, pozbawion� mocy skorup�.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "S�owa, kt�re nale�y wypowiedzie�, aby uwolni� moc kamienia, nie powinny by� zagadk� dla wi�kszo�ci adept�w sztuk magicznych. W dzisiejszych czasach, nawet formu�y pozwalaj�ce tchn�� magi� w nowy artefakt spowszednia�y.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale tylko nieliczni maj� umiej�tno�ci potrzebne do ponownego na�adowania kamienia. Te prastare formu�y s� pilnie strze�onym sekretem arcymistrz�w magii.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zatem, M�drcze - otw�rz sw� dusz� na s�owa staro�ytnej pot�gi.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Golem (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_05.3ds";
	on_state[0]		=	Use_Book_Golem;
	
	description		=	"Arcanum Golum";
	COUNT[5]		=	value;
};
func void Use_Book_Golem()
{
	if (Bonus_ItWr_Book_Golem == false)
	{
		self.lp += 1;
		Bonus_ItWr_Book_Golem = true;
	};
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
				Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga", false);
				Doc_SetFont 	(nDocID, -1, FONT_Book);

				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Magia golem�w");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tylko kto�, kto cho� raz stawi� czo�a uciele�nieniu �ywio��w, jakim jest Golem, zrozumie l�k i respekt, jaki istoty te budz� w�r�d najm�niejszych nawet podr�nik�w.");
				Doc_PrintLine	(nDocID,  0, "");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Te kamienne kolosy s� niemal niezniszczalne. �aden miecz, top�r czy �uk nie jest w stanie wyrz�dzi� im powa�niejszej krzywdy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jedyne doniesienia o zwyci�skiej walce stoczonej z Golemem pochodz� z zapisk�w bezimiennego najemnika. Opisa� on jak pot�nymi ciosami wojennego m�ota uda�o mu si� rozbi� pot�nego nieprzyjaciela w drobny py�.");
				Doc_Show		(nDocID);
};
