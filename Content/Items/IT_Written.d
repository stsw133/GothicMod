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
	
	description		=	"Mapa terenów Khorinis";
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
	
	description		=	"Mapa Górniczej Doliny";
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
	name 					=	"Ksi¹¿ka";
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
	
	description		=	"Kunszt obronny po³udniowców";
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
				Doc_PrintLines	(nDocID,  0, "Kunszt obronny po³udniowców");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po³udniowiec w porównaniu z mieszkañcem pó³nocy nie polega tak bardzo na sile fizycznej, preferuj¹c zwinnoœæ, a gor¹cy klimat jego ojczyzny zmusza go do korzystania z l¿ejszych i daj¹cych wiêksz¹ swobodê ruchów pancerzy. W zwi¹zku z tym styl walki ludzi po³udnia jest ca³kowicie inny od tego, do którego jesteœmy przyzwyczajeni. ");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Prawdopodobnie najs³ynniejszym manewrem wywodz¹cym siê z po³udnia jest jednorêczny blok po³¹czony z krokiem wstecz: cofniêcie siê pozwala na zmniejszenie si³y wrogiego ciosu i umo¿liwia przyjêcie postawy u³atwiaj¹cej wyprowadzenie kontrataku.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Fight2H (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_03.3ds";
	on_state[0]		=	Use_Book_Fight2H;
	
	description		=	"Bloki dwurêczne";
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
				Doc_PrintLines	(nDocID,  0, "Bloki dwurêczne");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Blokowanie ciosów przeciwnika za pomoc¹ broni dwurêcznej umo¿liwia silnym wojownikom gwa³towne powstrzymanie wroga i przerwanie ewentualnej kombinacji jego ciosów. ");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zatrzymany w ten sposób przeciwnik traci inicjatywê i ³atwiej go potem skutecznie zaatakowaæ.");
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
				Doc_PrintLines	(nDocID,  0, "...jednak kiedy upór wo³u po³¹czy siê z przebieg³oœci¹ wojownika, strze¿cie siê, albowiem bêdziecie œwiadkami wielkich zmian.");
				Doc_PrintLines	(nDocID,  0, "Upór wo³u po³¹czony z wytrwa³oœci¹ wojownika mo¿e zaburzyæ odwieczny porz¹dek. Kosmiczna materia oddzielaj¹ca wymiary staje siê coraz cieñsza i s³absza. Wkrótce nie bêdzie w stanie powstrzymaæ istot Beliara przed wdarciem siê do naszej rzeczywistoœci.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W pradawnych czasach, kiedy oba œwiaty by³y po³¹czone siln¹ wiêzi¹, s³udzy Z³a mogli bez przeszkód pl¹drowaæ nasze ziemie, i tylko moc Innosa oraz jego Wybrañca pozwoli³a nam odeprzeæ ataki Wroga."	);
				Doc_PrintLines	(nDocID,  1, "Jeœli taka sytuacja siê powtórzy, niechaj Innos ma nas w swej opiece, albowiem od stuleci nie by³o poœród nas jego Wybrañca."					);
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
	
	description		=	"Dar od bogów";
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
				Doc_PrintLine	(nDocID,  0, "Dar od bogów");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z dawien dawna cz³ek próbowa³ zg³êbiæ naturê i genezê sztuk magicznych. Jeno gdzie rozpocz¹æ takie poszukiwania? Czy magiê mo¿na w ogóle opisaæ? Pró¿no szukaæ równie niespójnego zjawiska we œwiecie: wszak magia jednako leczy i zabija, tworzy i niszczy.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Gdzie zatem szukaæ tej nieopisanej potêgi? Magia jest tym, czym jest - najpotê¿niejszym i najwspanialszym darem, jaki cz³owiek otrzyma³ od bogów. Baczcie jeno, by dar ów rych³o nie sta³ siê przekleñstwem, gdy¿ nieliczni bêd¹ w stanie zrozumieæ magiê i wykorzystaæ j¹ do w³asnych celów. Inni sami zostan¹ wykorzystani.");	
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
				Doc_PrintLines	(nDocID,  0, "Magia nie zamieszkuje w ciele samego magusa. Jest on raczej jako zmyœlny rzemieœlnik, a ona jako narzêdzie jego. Tako¿ pocz¹tkuj¹cy magus uczy siê jak on¹ moc okie³znaæ i kierowaæ ni¹ wedle swojej woli.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jego duch nadaje owej mocy po¿¹dany kszta³t, ogniskuje j¹ i wreszcie uwalnia. W takich chwilach dusza magusa wznosi siê ponad nasz œwiat i spoziera na Drug¹ Stronê, gdzie stoi pa³ac potêgi, któr¹ on kszta³tuje i przekazuje.");
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
	
	description		=	"Wszechpotê¿na sztuka";
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
				Doc_PrintLine	(nDocID,  0, "Wszechpotê¿na sztuka");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ksiêga dla tych, co w sztukach magicznych uczeni s¹.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Umiejêtnoœci magusa wzrastaj¹ z czasem. Najpierw jest jako ziarno zbo¿a, które trzeba chroniæ, by nie zmarnia³o. Lecz wkrótce ziarno wypuszcza kie³ki, staj¹c siê piêkn¹ roœlin¹.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Z ka¿dym nowym dniem roœlina staje siê wiêksza i silniejsza. Tak samo jest z magusem. Na pocz¹tku nauki jego si³y s¹ w¹t³e, lecz z czasem okrzepnie, staj¹c siê potê¿niejszym. Ci¹g³e d¹¿enie do absolutnej perfekcji powinno byæ nadrzêdnym celem ka¿dego adepta magii. Ziarno potêgi dane im przez bogów jest bowiem najcenniejszym darem, jakie œmiertelnik mo¿e otrzymaæ.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Elementare (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_04.3ds";
	on_state[0]		=	Use_Book_Elementare;
	
	description		=	"Arcanum ¿ywio³ów";
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
				Doc_PrintLine	(nDocID,  0, "Arcanum ¿ywio³ów");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Miejsce magii w ziemskim porz¹dku");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wiele badañ przeprowadzono, g³owi¹c siê nad zale¿noœci¹ magii od wszelakich ¿ywio³ów. W rezultacie przyjêto, i¿ jest ona - magia - ostatecznym, najpotê¿niejszym ¿ywio³em ze wszystkich. Wszak to dziêki niej magus mo¿e kszta³towaæ pozosta³e si³y natury wedle w³asnego upodobania.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka¿dy ¿ywio³, w swej najczystszej formie, ujawnia powi¹zania z magi¹. Oczywiœcie, naturalne manifestacje takich powi¹zañ nale¿¹ do rzadkoœci i s¹ skrzêtnie poszukiwane. Zdolnoœæ magusa do kontrolowania potêgi ¿ywio³ów stanowi ostateczny dowód, i¿ magia jest najczystszym i najwspanialszym dobrem obecnym w naszej egzystencji.");
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
				Doc_PrintLines	(nDocID,  0, "Œwiêta powinnoœæ mêdrca");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To potêga odró¿nia magusa od zwyk³ego œmiertelnika. W³adny wykorzystywaæ bosk¹ moc, magus wyjêty jest spod tych wszystkich praw natury, które dotycz¹ ludzi prostych i królów jednako. ");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");	
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Gdy magus osi¹gnie poziom, który pozwoli mu wykroczyæ poza granice ludzkiej egzystencji, wstêpuje do œwiata niedostêpnego zwyk³ym œmiertelnikom. Mo¿e prze³amywaæ bariery czasu i przestrzeni, i nawet œmieræ - ostateczna bariera - nie jest mu straszna.");
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
				Doc_PrintLines	(nDocID,  0, "Najlepsz¹ rudê do wyrobu wszelkiego rodzaju orê¿a znaleŸæ mo¿na w kopalniach w dolinie Khorinis. Wykut¹ z niej broñ cechuje niebywa³a wytrzyma³oœæ. Pok³ady rudy wystêpuj¹ zwykle g³êboko pod ziemi¹, lecz g³upcem ten, kto nie podejmie trudu wydobycia jej na œwiat³o dzienne. Niewiele jest takich skarbów na œwiecie...");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Magiczna broñ przebije ka¿dy pancerz i pogruchocze ka¿d¹ tarczê. Zaiste, królewski to orê¿ i królewsk¹ cenê trzeba zap³aciæ za choæby sztylet wykuty z tego szlachetnego kruszcu. Tako¿ surow¹ cenê p³ac¹ górnicy pracuj¹cy w kopalniach. Rudê nie³atwo oddzieliæ od skalnych pok³adów, tak jakby z ca³ych si³ walczy³a, by pozostaæ w ³onie matki Ziemi.");
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
				Doc_PrintLines	(nDocID,  0, "...ale sprytny Rhobar postanowi³ zaatakowaæ. Zebra³ swoje si³y i kaza³ im nêkaæ s³absz¹, praw¹ flankê nieprzyjaciela. Nie trac¹c chwili, król pchn¹³ najlepsze swe oddzia³y na wroga, i przebi³ siê przezeñ niczym miecz przecinaj¹cy mê¿a. Wojska królewskie par³y zatem bez wytchnienia w stronê Varant. Rhobar wiedzia³ wszak, ¿e jedyna szansa ocalenia le¿y w rozbiciu armii nieprzyjaciela i niedopuszczeniu do po³¹czenia si³ Gellona i Lukkora.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");					
				Doc_PrintLines	(nDocID,  1, "  Najpierw jednak postanowi³ przeci¹æ ich linie zaopatrzenia...");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "...Gellon poleg³ a jego armia posz³a w rozsypkê. Ale Rhobar nie zamierza³ daæ przeciwnikowi chwili wytchnienia i rzuci³ swe si³y na pozosta³e oddzia³y wroga. Tu jednak Lukkor rzuci³ siê na królewskich znienacka i zada³ straszliwy cios wyczerpanym wojskom Rhobara...");
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
				Doc_PrintLines	(nDocID,  0, "Wojna by³a skoñczona. Varant straci³o swe morskie porty, tak potrzebne dla zaopatrywania armii. Król Rhobar nie traci³ wiêcej czasu na polu bitwy, lecz zostawi³ swych genera³ów, by ci rozprawili siê z niedobitkami nieprzyjaciela. Varrantczycy posiadali ju¿ tylko jedno ognisko oporu, zgromadzone wokó³ Lukkora, najpotê¿niejszego genera³a ca³ego narodu, który umiejêtnie zamieni³ pora¿kê w zwyciêstwo.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale teraz jego armia znalaz³a siê w potrzasku. Sytuacja zda³a siê byæ beznadziejna, choæ jego wojska przewy¿sza³y si³y królewskie liczb¹ i wyposa¿eniem. Oto jeden z Myrtañskich bohaterów, mê¿ny genera³ imieniem Lee, zwabi³ przeciwnika w pu³apkê. Na podmok³ej, bagnistej ziemi ciê¿ka kawaleria Lukkora nie mia³a szans w starciu ze zwinnymi ¿o³nierzami Lee. Zdziesi¹tkowane oddzia³y Varantu wkrótce musia³y uznaæ wy¿szoœæ przeciwnika. Lukkor zosta³ pokonany.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_MyrthanianPoetry (ItemPR_Book)
{
	value			=	100;
	visual 			=	"ItWr_Book_02_02.3ds";
	on_state[0]		=	Use_Book_MyrthanianPoetry;
	
	description		=	"Poezja myrtañska";
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
				Doc_PrintLine	(nDocID,  0, "    Pieœñ");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "		  Skruchy");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Na pocz¹tku by³a moc, jak jasny œnieg bia³a,");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dziœ niewielka cz¹stka dawnej chwa³y pozosta³a.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przypomina o jednoœci z dawnych lat,");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "jak¿e ró¿nej od chciwoœci, któr¹ œwiat");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "nasz zdepta³ i odrzuci³ po wsze czasy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nasz duch nie zdzier¿y³ ostatecznej próby,");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "a po¿¹danie bêdzie Ÿród³em naszej zguby.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bo nie masz ju¿ jednoœci na tym œwiecie.");
				Doc_PrintLines	(nDocID,  1, "");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_GodsWisdom1 (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_01.3ds";
	on_state[0]		=	Use_Book_GodsWisdom1;
	
	description		=	"M¹droœæ bogów";
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
				Doc_PrintLines	(nDocID,  0, "Wys³uchajcie s³ów bo¿ych, bo pragn¹ oni, byœcie ich wys³uchali. Przestrzegajcie praw bo¿ych, bo chc¹ oni, byœcie ich przestrzegali. Czcijcie kap³anów bo¿ych, bo oni s¹ wybrañcami ³aski...");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "S³owa Innosa: A gdybyœcie nie mogli ich poj¹æ, nie odrzucajcie s³ów kap³anów, bo g³osz¹ oni moj¹ m¹droœæ. Gdy¿ ja jestem S³oñcem na niebie, œwiat³em i ¿yciem na Ziemi. A wszystko, co wrogiem jest S³oñca, jest i moim wrogiem, i zostanie wygnane do krainy wiecznej ciemnoœci.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "S³owa Adanosa: ¯yjcie i pracujcie, bo dzieñ stworzono po to, by m¹¿ móg³ ¿yæ i pracowaæ. Szukajcie wiedzy, byœcie mogli przekazaæ j¹ synom swoim, gdy¿ taka jest wola moja. Ale strze¿cie siê, bo cz³ek g³upi i leniwy zostanie wygnany do krainy wiecznej ciemnoœci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "S³owa Beliara: A ktokolwiek wyst¹pi przeciw woli bo¿ej, ze mn¹ bêdzie mia³ do czynienia. Na jego cia³o ból zeœlê okrutny, a jego duch pójdzie ze mn¹ do krainy wiecznej ciemnoœci.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_GodsWisdom2 (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_02.3ds";
	on_state[0]		=	Use_Book_GodsWisdom2;
	
	description		=	"M¹droœæ bogów";
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
				Doc_PrintLines	(nDocID,  0, "O zaraniu dziejów: Na pocz¹tku nie by³o dnia ani nocy, i ¿adne ¿ywe stworzenie nie przemierza³o œwiata. Wtedy pojawi³ siê Innos, a jego blask pada³ na Ziemiê. Innos obdarzy³ œwiat darem ¿ycia. Ale ¿adne stworzenie nie œmia³o spojrzeæ w twarz Innosa, wiêc dobry bóg stworzy³ S³oñce. Lecz mimo to, jasnoœæ by³a zbyt wielka, tote¿ Innos podzieli³ siê na dwoje i tak powsta³ Beliar. Beliar stworzy³ noc. Teraz cz³owiek móg³ wreszcie ¿yæ, lecz nie wiedzia³ jak. Dlatego Innos podzieli³ siê po raz wtóry i tak powsta³ Adanos. Adanos przyniós³ ludziom pomys³owoœæ i m¹droœæ, której tak bardzo potrzebowali.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");					
				Doc_PrintLines	(nDocID,  1, "Dlatego Innos postanowi³ zostawiæ ludzkoœæ pod opiek¹ Adanosa i uda³ siê na spoczynek. Lecz Beliar p³on¹³ z zazdroœci, gdy¿ ludzie bali siê go i nie oddawali mu czci. Tedy postanowi³ Beliar stworzyæ cz³owieka, który modli³by siê tylko do niego. Ale cz³owiek ów by³ jako wszyscy inni, i ba³ siê Beliara i nie oddawa³ mu czci. Bóg nocy rozz³oœci³ siê i zabi³ cz³owieka krzycz¹c: Dobrze! Bójcie siê mnie zatem, ale czeœæ oddacie mi, choæby po œmierci. Tymi s³owy ustanowi³ Beliar œmieræ - kres ¿ywota ludzkiego."	);
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_GodsWisdom3 (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_03.3ds";
	on_state[0]		=	Use_Book_GodsWisdom3;
	
	description		=	"M¹droœæ bogów";
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
				Doc_PrintLines	(nDocID,  0, "Innos pozwoli³, by ludzie mogli go us³yszeæ i przemawiaæ do niego. Pozwoli³ im równie¿ czyniæ cuda i nazwa³ je magi¹. Dziêki magii, ludzie zaczêli zmieniaæ œwiat wedle swego upodobania, jedni m¹drze, inni g³upio. Widz¹c to, Innos zabra³ dar magii ludziom g³upim i pozostawi³ go w rêkach ludzi œwiat³ych. Obdarzy³ ich równie¿ innymi ³askami, czyni¹c swoimi kap³anami i nadaj¹c im miano magów.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
 				Doc_PrintLine	(nDocID,  1, "");					
				Doc_PrintLines	(nDocID,  1, "Ludzie czcili kap³anów Innosa i oddawali im czeœæ, ale wielu magów odwróci³o siê od Innosa i uciek³o siê pod opiekê jego boskiego brata - Adanosa. Kasta magów uleg³a rozbiciu. Ci, którzy pod¹¿ali za bogiem m¹droœci nazwali siebie magami Krêgu Wody. Wyznawcy Innosa nazywani zaœ byli Magami Ognia.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Hunting (ItemPR_Book)
{
	value 			=	100;
	visual			=	"ItWr_Book_02_02.3ds";
	on_state[0]		=	Use_Book_Hunting;
	
	description		=	"£owy i zwierzyna";
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
				Doc_PrintLines	(nDocID,  0, "Jego zapiski przetrwa³y ca³e wieki i po dziœ dzieñ uznawane s¹ za najznakomitsze kompendium wiedzy o polowaniu. Po d³ugich latach staræ na pó³nocnym pograniczu, niemal ka¿dy obywatel potrafi pos³ugiwaæ siê ³ukiem. Jednak sztuka polowania daleko wykracza poza podstawowe zasady strzelania z ³uku! Zwierzyna jest wszak p³ocha i nieprzewidywalna!");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Polowanie z ³ukiem ma swe pocz¹tki w czasach staro¿ytnych. W ci¹gu ca³ych tysi¹cleci nie zasz³y w technikach ³owieckich wiêksze zmiany i tak ju¿ najprawdopodobniej pozostanie. Jakie czynniki wp³ywaj¹ tak naprawdê na skutecznoœæ pos³ugiwania siê ³ukiem? To w³aœnie rozpoznanie tych czynników czyni prawdziwego mistrza ³ucznictwa.");
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
				Doc_PrintLines	(nDocID,  0, "Od 2000 lat nauki mistrzów kszta³tuj¹ rozwój sztuki walki.");
  				Doc_PrintLine	(nDocID,  0, "");
  				Doc_PrintLine	(nDocID,  0, "");
   				Doc_PrintLines	(nDocID,  0, "Zrêcznoœæ, opanowanie, szybkoœæ, zdolnoœæ obserwacji i b³yskawicznego podejmowania decyzji - wszystkie te umiejêtnoœci nale¿y bezustannie doskonaliæ. Jedynie doskona³a koordynacja ruchów i zachowanie w³aœciwej postawy pozwol¹ na prawid³owy rozwój twych umiejêtnoœci.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
  				Doc_PrintLine	(nDocID,  1, "");
  				Doc_PrintLine	(nDocID,  1, "");
  				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przes³anie duchowych i cielesnych nauk Mistrza przetrwa³o wiele lat.");
  				Doc_PrintLine	(nDocID,  1, "");
  				Doc_PrintLine	(nDocID,  1, "");
 				Doc_PrintLines	(nDocID,  1, "Jego niepospolity sukces by³ natchnieniem dla kolejnych pokoleñ. Œwiat zmienia³ siê bez przerwy, ale idealna harmonia si³ duchowych i sprawnoœci cia³a pozosta³a niezmienn¹.");
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
				Doc_PrintLines	(nDocID,  0, "W centrum wszechœwiata znajduje siê Morgrad, co zawiera cztery ¿ywio³y - ziemiê, wodê, ogieñ i wiatr. Morgrad, co jest wiecznie niespokojnym sercem Beliara. A nad nim rozci¹ga siê sfera niebios.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W odwiecznej hierarchii kosmosu cz³owiek stoi poœrodku. Jego dusza pozwala mu doœwiadczaæ ³ask niebiañskich, ale jego cia³o stworzone jest z substancji Morgradu. Jest wiêc cz³owiek odzwierciedleniem ca³ego œwiata.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Orbity wszystkich planet, czyli drogi, jakie pokonuj¹ okr¹¿aj¹c Morgrad, zmieniaj¹ siê nieznacznie z up³ywem lat. Pewnym jest zatem, i¿ ca³y wszechœwiat zmierza powoli do jakiegoœ celu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Obserwuj¹c ruch ksiê¿yca na nocnym niebie ustaliliœmy d³ugoœæ roku i stworzyliœmy pierwszy kalendarz.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Focus (ItemPR_Book)
{
	value 			=	100;
	visual 			=	"ItWr_Book_02_05.3ds";
	on_state[0]		=	Use_Book_Focus;
	
	description		=	"Kamienie ogniskuj¹ce";
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
				Doc_PrintLines	(nDocID,  0, "Magia skumulowana w kamieniu ulega wielokrotnemu wzmocnieniu zanim wyzwol¹ j¹ s³owa zaklêcia. To, czy efekt bêdzie trwa³y czy tylko chwilowy, zale¿y wy³¹cznie od maga.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tym samym, po wyzwoleniu energii, kamieñ staje siê jeno pust¹, pozbawion¹ mocy skorup¹.");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "S³owa, które nale¿y wypowiedzieæ, aby uwolniæ moc kamienia, nie powinny byæ zagadk¹ dla wiêkszoœci adeptów sztuk magicznych. W dzisiejszych czasach, nawet formu³y pozwalaj¹ce tchn¹æ magiê w nowy artefakt spowszednia³y.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale tylko nieliczni maj¹ umiejêtnoœci potrzebne do ponownego na³adowania kamienia. Te prastare formu³y s¹ pilnie strze¿onym sekretem arcymistrzów magii.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zatem, Mêdrcze - otwórz sw¹ duszê na s³owa staro¿ytnej potêgi.");
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
				Doc_PrintLines	(nDocID,  0, "Magia golemów");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tylko ktoœ, kto choæ raz stawi³ czo³a ucieleœnieniu ¿ywio³ów, jakim jest Golem, zrozumie lêk i respekt, jaki istoty te budz¹ wœród najmê¿niejszych nawet podró¿ników.");
				Doc_PrintLine	(nDocID,  0, "");

				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Te kamienne kolosy s¹ niemal niezniszczalne. ¯aden miecz, topór czy ³uk nie jest w stanie wyrz¹dziæ im powa¿niejszej krzywdy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jedyne doniesienia o zwyciêskiej walce stoczonej z Golemem pochodz¹ z zapisków bezimiennego najemnika. Opisa³ on jak potê¿nymi ciosami wojennego m³ota uda³o mu siê rozbiæ potê¿nego nieprzyjaciela w drobny py³.");
				Doc_Show		(nDocID);
};
