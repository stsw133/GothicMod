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
	
	description				=	"Mapa terenów Khorinis";
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
	
	description				=	"Mapa Górniczej Doliny";
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
	name					=	"Ksi¹¿ka";
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
	name					=	"Ksi¹¿ka";
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
	{ description			=	"Kunszt obronny po³udniowców (przeczytane)"; }
	else
	{ description			=	"Kunszt obronny po³udniowców"; };
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
				Doc_PrintLines	(nDocID,  0, "Kunszt obronny po³udniowców");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po³udniowiec w porównaniu z mieszkañcem pó³nocy nie polega tak bardzo na sile fizycznej, preferuj¹c zwinnoœæ, a gor¹cy klimat jego ojczyzny zmusza go do korzystania z l¿ejszych i daj¹cych wiêksz¹ swobodê ruchów pancerzy. W zwi¹zku z tym styl walki ludzi po³udnia jest ca³kowicie inny od tego, do którego jesteœmy przyzwyczajeni.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Prawdopodobnie najs³ynniejszym manewrem wywodz¹cym siê z po³udnia jest jednorêczny blok po³¹czony z krokiem wstecz: cofniêcie siê pozwala na zmniejszenie si³y wrogiego ciosu i umo¿liwia przyjêcie postawy u³atwiaj¹cej wyprowadzenie kontrataku.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Fight2H (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_03.3ds";
	on_state[0]				=	Use_ItWr_Book_Fight2H;
	
	if (Bonus_ItWr_Book_Fight2H)
	{ description			=	"Bloki dwurêczne (przeczytane)"; }
	else
	{ description			=	"Bloki dwurêczne"; };
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
				Doc_PrintLines	(nDocID,  0, "Bloki dwurêczne");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Blokowanie ciosów przeciwnika za pomoc¹ broni dwurêcznej umo¿liwia silnym wojownikom gwa³towne powstrzymanie wroga i przerwanie ewentualnej kombinacji jego ciosów.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zatrzymany w ten sposób przeciwnik traci inicjatywê i ³atwiej go potem skutecznie zaatakowaæ.");
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
				Doc_PrintLines	(nDocID,  0, "...jednak kiedy upór wo³u po³¹czy siê z przebieg³oœci¹ wojownika, strze¿cie siê, albowiem bêdziecie œwiadkami wielkich zmian.");
				Doc_PrintLines	(nDocID,  0, "Upór wo³u po³¹czony z wytrwa³oœci¹ wojownika mo¿e zaburzyæ odwieczny porz¹dek. Kosmiczna materia oddzielaj¹ca wymiary staje siê coraz cieñsza i s³absza. Wkrótce nie bêdzie w stanie powstrzymaæ istot Beliara przed wdarciem siê do naszej rzeczywistoœci.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W pradawnych czasach, kiedy oba œwiaty by³y po³¹czone siln¹ wiêzi¹, s³udzy Z³a mogli bez przeszkód pl¹drowaæ nasze ziemie, i tylko moc Innosa oraz jego Wybrañca pozwoli³a nam odeprzeæ ataki Wroga."	);
				Doc_PrintLines	(nDocID,  1, "Jeœli taka sytuacja siê powtórzy, niechaj Innos ma nas w swej opiece, albowiem od stuleci nie by³o poœród nas jego Wybrañca.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_GodsGift (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_01.3ds";
	on_state[0]				=	Use_ItWr_Book_GodsGift;
	
	if (Bonus_ItWr_Book_GodsGift)
	{ description			=	"Dar od bogów (przeczytane)"; }
	else
	{ description			=	"Dar od bogów"; };
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
				Doc_PrintLine	(nDocID,  0, "Dar od bogów");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z dawien dawna cz³ek próbowa³ zg³êbiæ naturê i genezê sztuk magicznych. Jeno gdzie rozpocz¹æ takie poszukiwania? Czy magiê mo¿na w ogóle opisaæ? Pró¿no szukaæ równie niespójnego zjawiska we œwiecie: wszak magia jednako leczy i zabija, tworzy i niszczy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Gdzie zatem szukaæ tej nieopisanej potêgi? Magia jest tym, czym jest - najpotê¿niejszym i najwspanialszym darem, jaki cz³owiek otrzyma³ od bogów. Baczcie jeno, by dar ów rych³o nie sta³ siê przekleñstwem, gdy¿ nieliczni bêd¹ w stanie zrozumieæ magiê i wykorzystaæ j¹ do w³asnych celów. Inni sami zostan¹ wykorzystani.");	
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
				Doc_PrintLines	(nDocID,  0, "Magia nie zamieszkuje w ciele samego magusa. Jest on raczej jako zmyœlny rzemieœlnik, a ona jako narzêdzie jego. Tako¿ pocz¹tkuj¹cy magus uczy siê jak on¹ moc okie³znaæ i kierowaæ ni¹ wedle swojej woli.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Jego duch nadaje owej mocy po¿¹dany kszta³t, ogniskuje j¹ i wreszcie uwalnia. W takich chwilach dusza magusa wznosi siê ponad nasz œwiat i spoziera na Drug¹ Stronê, gdzie stoi pa³ac potêgi, któr¹ on kszta³tuje i przekazuje.");
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
	{ description			=	"Wszechpotê¿na sztuka (przeczytane)"; }
	else
	{ description			=	"Wszechpotê¿na sztuka"; };
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
				Doc_PrintLine	(nDocID,  0, "Wszechpotê¿na sztuka");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ksiêga dla tych, co w sztukach magicznych uczeni s¹.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Umiejêtnoœci magusa wzrastaj¹ z czasem. Najpierw jest jako ziarno zbo¿a, które trzeba chroniæ, by nie zmarnia³o. Lecz wkrótce ziarno wypuszcza kie³ki, staj¹c siê piêkn¹ roœlin¹.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Z ka¿dym nowym dniem roœlina staje siê wiêksza i silniejsza. Tak samo jest z magusem. Na pocz¹tku nauki jego si³y s¹ w¹t³e, lecz z czasem okrzepnie, staj¹c siê potê¿niejszym. Ci¹g³e d¹¿enie do absolutnej perfekcji powinno byæ nadrzêdnym celem ka¿dego adepta magii. Ziarno potêgi dane im przez bogów jest bowiem najcenniejszym darem, jakie œmiertelnik mo¿e otrzymaæ.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Elementare (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_04.3ds";
	on_state[0]				=	Use_ItWr_Book_Elementare;
	
	if (Bonus_ItWr_Book_Elementare)
	{ description			=	"Arcanum ¿ywio³ów (przeczytane)"; }
	else
	{ description			=	"Arcanum ¿ywio³ów"; };
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
				Doc_PrintLine	(nDocID,  0, "Arcanum ¿ywio³ów");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Miejsce magii w ziemskim porz¹dku");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wiele badañ przeprowadzono, g³owi¹c siê nad zale¿noœci¹ magii od wszelakich ¿ywio³ów. W rezultacie przyjêto, i¿ jest ona - magia - ostatecznym, najpotê¿niejszym ¿ywio³em ze wszystkich. Wszak to dziêki niej magus mo¿e kszta³towaæ pozosta³e si³y natury wedle w³asnego upodobania.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ka¿dy ¿ywio³, w swej najczystszej formie, ujawnia powi¹zania z magi¹. Oczywiœcie, naturalne manifestacje takich powi¹zañ nale¿¹ do rzadkoœci i s¹ skrzêtnie poszukiwane. Zdolnoœæ magusa do kontrolowania potêgi ¿ywio³ów stanowi ostateczny dowód, i¿ magia jest najczystszym i najwspanialszym dobrem obecnym w naszej egzystencji.");
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
				Doc_PrintLines	(nDocID,  0, "Œwiêta powinnoœæ mêdrca");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To potêga odró¿nia magusa od zwyk³ego œmiertelnika. W³adny wykorzystywaæ bosk¹ moc, magus wyjêty jest spod tych wszystkich praw natury, które dotycz¹ ludzi prostych i królów jednako. ");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Gdy magus osi¹gnie poziom, który pozwoli mu wykroczyæ poza granice ludzkiej egzystencji, wstêpuje do œwiata niedostêpnego zwyk³ym œmiertelnikom. Mo¿e prze³amywaæ bariery czasu i przestrzeni, i nawet œmieræ - ostateczna bariera - nie jest mu straszna.");
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
				Doc_PrintLines	(nDocID,  0, "Najlepsz¹ rudê do wyrobu wszelkiego rodzaju orê¿a znaleŸæ mo¿na w kopalniach w dolinie Khorinis. Wykut¹ z niej broñ cechuje niebywa³a wytrzyma³oœæ. Pok³ady rudy wystêpuj¹ zwykle g³êboko pod ziemi¹, lecz g³upcem ten, kto nie podejmie trudu wydobycia jej na œwiat³o dzienne. Niewiele jest takich skarbów na œwiecie...");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Magiczna broñ przebije ka¿dy pancerz i pogruchocze ka¿d¹ tarczê. Zaiste, królewski to orê¿ i królewsk¹ cenê trzeba zap³aciæ za choæby sztylet wykuty z tego szlachetnego kruszcu. Tako¿ surow¹ cenê p³ac¹ górnicy pracuj¹cy w kopalniach. Rudê nie³atwo oddzieliæ od skalnych pok³adów, tak jakby z ca³ych si³ walczy³a, by pozostaæ w ³onie matki Ziemi.");
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
				Doc_PrintLines	(nDocID,  0, "...ale sprytny Rhobar postanowi³ zaatakowaæ. Zebra³ swoje si³y i kaza³ im nêkaæ s³absz¹, praw¹ flankê nieprzyjaciela. Nie trac¹c chwili, król pchn¹³ najlepsze swe oddzia³y na wroga, i przebi³ siê przezeñ niczym miecz przecinaj¹cy mê¿a. Wojska królewskie par³y zatem bez wytchnienia w stronê Varant. Rhobar wiedzia³ wszak, ¿e jedyna szansa ocalenia le¿y w rozbiciu armii nieprzyjaciela i niedopuszczeniu do po³¹czenia si³ Gellona i Lukkora.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");					
				Doc_PrintLines	(nDocID,  1, "  Najpierw jednak postanowi³ przeci¹æ ich linie zaopatrzenia...");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "...Gellon poleg³ a jego armia posz³a w rozsypkê. Ale Rhobar nie zamierza³ daæ przeciwnikowi chwili wytchnienia i rzuci³ swe si³y na pozosta³e oddzia³y wroga. Tu jednak Lukkor rzuci³ siê na królewskich znienacka i zada³ straszliwy cios wyczerpanym wojskom Rhobara...");
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
				Doc_PrintLines	(nDocID,  0, "Wojna by³a skoñczona. Varant straci³o swe morskie porty, tak potrzebne dla zaopatrywania armii. Król Rhobar nie traci³ wiêcej czasu na polu bitwy, lecz zostawi³ swych genera³ów, by ci rozprawili siê z niedobitkami nieprzyjaciela. Varrantczycy posiadali ju¿ tylko jedno ognisko oporu, zgromadzone wokó³ Lukkora, najpotê¿niejszego genera³a ca³ego narodu, który umiejêtnie zamieni³ pora¿kê w zwyciêstwo.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale teraz jego armia znalaz³a siê w potrzasku. Sytuacja zda³a siê byæ beznadziejna, choæ jego wojska przewy¿sza³y si³y królewskie liczb¹ i wyposa¿eniem. Oto jeden z Myrtañskich bohaterów, mê¿ny genera³ imieniem Lee, zwabi³ przeciwnika w pu³apkê. Na podmok³ej, bagnistej ziemi ciê¿ka kawaleria Lukkora nie mia³a szans w starciu ze zwinnymi ¿o³nierzami Lee. Zdziesi¹tkowane oddzia³y Varantu wkrótce musia³y uznaæ wy¿szoœæ przeciwnika. Lukkor zosta³ pokonany.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_MyrthanianPoetry (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_02.3ds";
	on_state[0]				=	Use_ItWr_Book_MyrthanianPoetry;
	
	if (Bonus_ItWr_Book_MyrthanianPoetry)
	{ description			=	"Poezja myrtañska (przeczytane)"; }
	else
	{ description			=	"Poezja myrtañska"; };
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
				Doc_PrintLine	(nDocID,  0, "    Pieœñ");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "		  Skruchy");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
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
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_GodsWisdom1 (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_01.3ds";
	on_state[0]				=	Use_ItWr_Book_GodsWisdom1;
	
	if (Bonus_ItWr_Book_GodsWisdom1)
	{ description			=	"M¹droœæ bogów Tom 1 (przeczytane)"; }
	else
	{ description			=	"M¹droœæ bogów Tom 1"; };
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
				Doc_PrintLines	(nDocID,  0, "Wys³uchajcie s³ów bo¿ych, bo pragn¹ oni, byœcie ich wys³uchali. Przestrzegajcie praw bo¿ych, bo chc¹ oni, byœcie ich przestrzegali. Czcijcie kap³anów bo¿ych, bo oni s¹ wybrañcami ³aski...");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "S³owa Innosa: A gdybyœcie nie mogli ich poj¹æ, nie odrzucajcie s³ów kap³anów, bo g³osz¹ oni moj¹ m¹droœæ. Gdy¿ ja jestem S³oñcem na niebie, œwiat³em i ¿yciem na Ziemi. A wszystko, co wrogiem jest S³oñca, jest i moim wrogiem, i zostanie wygnane do krainy wiecznej ciemnoœci.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "S³owa Adanosa: ¯yjcie i pracujcie, bo dzieñ stworzono po to, by m¹¿ móg³ ¿yæ i pracowaæ. Szukajcie wiedzy, byœcie mogli przekazaæ j¹ synom swoim, gdy¿ taka jest wola moja. Ale strze¿cie siê, bo cz³ek g³upi i leniwy zostanie wygnany do krainy wiecznej ciemnoœci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "S³owa Beliara: A ktokolwiek wyst¹pi przeciw woli bo¿ej, ze mn¹ bêdzie mia³ do czynienia. Na jego cia³o ból zeœlê okrutny, a jego duch pójdzie ze mn¹ do krainy wiecznej ciemnoœci.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_GodsWisdom2 (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_02.3ds";
	on_state[0]				=	Use_ItWr_Book_GodsWisdom2;
	
	if (Bonus_ItWr_Book_GodsWisdom2)
	{ description			=	"M¹droœæ bogów Tom 2 (przeczytane)"; }
	else
	{ description			=	"M¹droœæ bogów Tom 2"; };
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
				Doc_PrintLines	(nDocID,  0, "O zaraniu dziejów: Na pocz¹tku nie by³o dnia ani nocy, i ¿adne ¿ywe stworzenie nie przemierza³o œwiata. Wtedy pojawi³ siê Innos, a jego blask pada³ na Ziemiê. Innos obdarzy³ œwiat darem ¿ycia. Ale ¿adne stworzenie nie œmia³o spojrzeæ w twarz Innosa, wiêc dobry bóg stworzy³ S³oñce. Lecz mimo to, jasnoœæ by³a zbyt wielka, tote¿ Innos podzieli³ siê na dwoje i tak powsta³ Beliar. Beliar stworzy³ noc. Teraz cz³owiek móg³ wreszcie ¿yæ, lecz nie wiedzia³ jak. Dlatego Innos podzieli³ siê po raz wtóry i tak powsta³ Adanos. Adanos przyniós³ ludziom pomys³owoœæ i m¹droœæ, której tak bardzo potrzebowali.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dlatego Innos postanowi³ zostawiæ ludzkoœæ pod opiek¹ Adanosa i uda³ siê na spoczynek. Lecz Beliar p³on¹³ z zazdroœci, gdy¿ ludzie bali siê go i nie oddawali mu czci. Tedy postanowi³ Beliar stworzyæ cz³owieka, który modli³by siê tylko do niego. Ale cz³owiek ów by³ jako wszyscy inni, i ba³ siê Beliara i nie oddawa³ mu czci. Bóg nocy rozz³oœci³ siê i zabi³ cz³owieka krzycz¹c: Dobrze! Bójcie siê mnie zatem, ale czeœæ oddacie mi, choæby po œmierci. Tymi s³owy ustanowi³ Beliar œmieræ - kres ¿ywota ludzkiego."	);
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_GodsWisdom3 (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_03.3ds";
	on_state[0]				=	Use_ItWr_Book_GodsWisdom3;
	
	if (Bonus_ItWr_Book_GodsWisdom3)
	{ description			=	"M¹droœæ bogów Tom 3 (przeczytane)"; }
	else
	{ description			=	"M¹droœæ bogów Tom 3"; };
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
				Doc_PrintLines	(nDocID,  0, "Innos pozwoli³, by ludzie mogli go us³yszeæ i przemawiaæ do niego. Pozwoli³ im równie¿ czyniæ cuda i nazwa³ je magi¹. Dziêki magii, ludzie zaczêli zmieniaæ œwiat wedle swego upodobania, jedni m¹drze, inni g³upio. Widz¹c to, Innos zabra³ dar magii ludziom g³upim i pozostawi³ go w rêkach ludzi œwiat³ych. Obdarzy³ ich równie¿ innymi ³askami, czyni¹c swoimi kap³anami i nadaj¹c im miano magów.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ludzie czcili kap³anów Innosa i oddawali im czeœæ, ale wielu magów odwróci³o siê od Innosa i uciek³o siê pod opiekê jego boskiego brata - Adanosa. Kasta magów uleg³a rozbiciu. Ci, którzy pod¹¿ali za bogiem m¹droœci nazwali siebie magami Krêgu Wody. Wyznawcy Innosa nazywani zaœ byli Magami Ognia.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Hunting (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_02.3ds";
	on_state[0]				=	Use_ItWr_Book_Hunting;
	
	if (Bonus_ItWr_Book_Hunting)
	{ description			=	"£owy i zwierzyna (przeczytane)"; }
	else
	{ description			=	"£owy i zwierzyna"; };
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
				Doc_PrintLines	(nDocID,  0, "Jego zapiski przetrwa³y ca³e wieki i po dziœ dzieñ uznawane s¹ za najznakomitsze kompendium wiedzy o polowaniu. Po d³ugich latach staræ na pó³nocnym pograniczu, niemal ka¿dy obywatel potrafi pos³ugiwaæ siê ³ukiem. Jednak sztuka polowania daleko wykracza poza podstawowe zasady strzelania z ³uku! Zwierzyna jest wszak p³ocha i nieprzewidywalna!");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Polowanie z ³ukiem ma swe pocz¹tki w czasach staro¿ytnych. W ci¹gu ca³ych tysi¹cleci nie zasz³y w technikach ³owieckich wiêksze zmiany i tak ju¿ najprawdopodobniej pozostanie. Jakie czynniki wp³ywaj¹ tak naprawdê na skutecznoœæ pos³ugiwania siê ³ukiem? To w³aœnie rozpoznanie tych czynników czyni prawdziwego mistrza ³ucznictwa.");
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
				Doc_PrintLines	(nDocID,  0, "Od 2000 lat nauki mistrzów kszta³tuj¹ rozwój sztuki walki.");
 				Doc_PrintLine	(nDocID,  0, "");
 				Doc_PrintLine	(nDocID,  0, "");
  				Doc_PrintLines	(nDocID,  0, "Zrêcznoœæ, opanowanie, szybkoœæ, zdolnoœæ obserwacji i b³yskawicznego podejmowania decyzji - wszystkie te umiejêtnoœci nale¿y bezustannie doskonaliæ. Jedynie doskona³a koordynacja ruchów i zachowanie w³aœciwej postawy pozwol¹ na prawid³owy rozwój twych umiejêtnoœci.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
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
				Doc_PrintLines	(nDocID,  0, "W centrum wszechœwiata znajduje siê Morgrad, co zawiera cztery ¿ywio³y - ziemiê, wodê, ogieñ i wiatr. Morgrad, co jest wiecznie niespokojnym sercem Beliara. A nad nim rozci¹ga siê sfera niebios.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W odwiecznej hierarchii kosmosu cz³owiek stoi poœrodku. Jego dusza pozwala mu doœwiadczaæ ³ask niebiañskich, ale jego cia³o stworzone jest z substancji Morgradu. Jest wiêc cz³owiek odzwierciedleniem ca³ego œwiata.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Orbity wszystkich planet, czyli drogi, jakie pokonuj¹ okr¹¿aj¹c Morgrad, zmieniaj¹ siê nieznacznie z up³ywem lat. Pewnym jest zatem, i¿ ca³y wszechœwiat zmierza powoli do jakiegoœ celu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Obserwuj¹c ruch ksiê¿yca na nocnym niebie ustaliliœmy d³ugoœæ roku i stworzyliœmy pierwszy kalendarz.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_Focus (ItemPR_BookLp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_Focus;
	
	if (Bonus_ItWr_Book_Focus)
	{ description			=	"Kamienie ogniskuj¹ce (przeczytane)"; }
	else
	{ description			=	"Kamienie ogniskuj¹ce"; };
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
				Doc_PrintLines	(nDocID,  0, "Magia skumulowana w kamieniu ulega wielokrotnemu wzmocnieniu zanim wyzwol¹ j¹ s³owa zaklêcia. To, czy efekt bêdzie trwa³y czy tylko chwilowy, zale¿y wy³¹cznie od maga.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tym samym, po wyzwoleniu energii, kamieñ staje siê jeno pust¹, pozbawion¹ mocy skorup¹.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "S³owa, które nale¿y wypowiedzieæ, aby uwolniæ moc kamienia, nie powinny byæ zagadk¹ dla wiêkszoœci adeptów sztuk magicznych. W dzisiejszych czasach, nawet formu³y pozwalaj¹ce tchn¹æ magiê w nowy artefakt spowszednia³y.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale tylko nieliczni maj¹ umiejêtnoœci potrzebne do ponownego na³adowania kamienia. Te prastare formu³y s¹ pilnie strze¿onym sekretem arcymistrzów magii.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zatem, Mêdrcze - otwórz sw¹ duszê na s³owa staro¿ytnej potêgi.");
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
				Doc_PrintLines	(nDocID,  0, "Magia golemów");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tylko ktoœ, kto choæ raz stawi³ czo³a ucieleœnieniu ¿ywio³ów, jakim jest Golem, zrozumie lêk i respekt, jaki istoty te budz¹ wœród najmê¿niejszych nawet podró¿ników.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Te kamienne kolosy s¹ niemal niezniszczalne. ¯aden miecz, topór czy ³uk nie jest w stanie wyrz¹dziæ im powa¿niejszej krzywdy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jedyne doniesienia o zwyciêskiej walce stoczonej z Golemem pochodz¹ z zapisków bezimiennego najemnika. Opisa³ on jak potê¿nymi ciosami wojennego m³ota uda³o mu siê rozbiæ potê¿nego nieprzyjaciela w drobny py³.");
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
				Doc_PrintLines	(nDocID,  0, "Alchemia jest sztuk¹ przemiany materii, gdzie tajemnicze mikstury potrafi¹ przemieniæ proste sk³adniki w eliksiry o niezwyk³ej mocy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kluczowym etapem jest precyzyjne odmierzanie i mieszanie sk³adników, a tak¿e kontrolowanie temperatury i czasu gotowania.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e cierpliwoœæ i dok³adnoœæ s¹ nieodzowne, aby osi¹gn¹æ zamierzony efekt.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka¿da pomy³ka mo¿e prowadziæ do nieprzewidzianych rezultatów, dlatego starannoœæ jest najwa¿niejsza.");
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
				Doc_PrintLines	(nDocID,  0, "Ka¿dy kowal musi znaæ sekrety hartowania stali.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Aby uzyskaæ idealnie ostr¹ klingê, najpierw podgrzej ¿elazo do czerwonoœci, a nastêpnie zanurz je gwa³townie w lodowatej wodzie.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e odpowiednie uderzenia m³otem musz¹ byæ równomierne, a ich si³a dostosowana do rodzaju metalu, z którym pracujesz.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_002 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_002;
	
	if (Bonus_ItWr_Book[2])
	{ description			=	"Myœlistwo (przeczytane)"; }
	else
	{ description			=	"Myœlistwo"; };
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
				Doc_PrintLines	(nDocID,  0, "Myœliwy musi znaæ zwyczaje zwierzyny, któr¹ œciga.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najlepsze wyniki osi¹gniesz, œledz¹c œlady wczesnym rankiem, gdy rosa na trawie wci¹¿ jest œwie¿a.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, aby zawsze poruszaæ siê z wiatrem, aby twoje zapachy nie zdradzi³y twojej obecnoœci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Cierpliwoœæ i umiejêtnoœæ pozostawania niezauwa¿onym s¹ kluczowe.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_003 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_003;
	
	if (Bonus_ItWr_Book[3])
	{ description			=	"£ucznictwo (przeczytane)"; }
	else
	{ description			=	"£ucznictwo"; };
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
				Doc_PrintLines	(nDocID,  0, "Sztuka ³ucznictwa wymaga nie tylko si³y, ale i precyzji.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Stañ stabilnie, celuj spokojnie, i pozwól strzale pod¹¿aæ naturalnym torem lotu.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Æwicz celnoœæ, strzelaj¹c do ruchomych celów, aby przygotowaæ siê na niespodziewane sytuacje w boju.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e ka¿dy ³ucznik musi byæ jednym z ³ukiem, czuæ jego napiêcie i wiedzieæ, kiedy puœciæ ciêciwê.");
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
				Doc_PrintLines	(nDocID,  0, "Kusza jest narzêdziem precyzji i si³y.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nauka szybkiego prze³adowania mo¿e uratowaæ ci ¿ycie na polu bitwy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, aby zawsze mieæ w zapasie dodatkowe be³ty i sprawdzaæ stan mechanizmu napinaj¹cego.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka¿dy strza³ musi byæ oddany z pe³nym przekonaniem, ¿e trafi w cel.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_005 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_005;
	
	if (Bonus_ItWr_Book[5])
	{ description			=	"Prowadzenie œledztw (przeczytane)"; }
	else
	{ description			=	"Prowadzenie œledztw"; };
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
				Doc_PrintLines	(nDocID,  0, "Detektyw musi umieæ dostrzegaæ to, co niewidoczne dla innych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka¿dy drobiazg mo¿e byæ kluczem do rozwi¹zania zagadki.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zadawaj pytania, które ods³oni¹ motywy, zbieraj dowody i analizuj je z chirurgiczn¹ precyzj¹.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Najwa¿niejsze to po³¹czyæ wszystkie elementy uk³adanki w jedn¹ spójn¹ ca³oœæ.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_006 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_006;
	
	if (Bonus_ItWr_Book[6])
	{ description			=	"Otwieranie zamków (przeczytane)"; }
	else
	{ description			=	"Otwieranie zamków"; };
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
				Doc_PrintLines	(nDocID,  0, "Sztuka otwierania zamków wymaga zrêcznoœci i delikatnego dotyku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U¿ywaj¹c odpowiednich narzêdzi, ws³uchuj siê w mechanizm zamka, wyczuwaj jego opór i delikatnie manipuluj wytrychem.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Cierpliwoœæ i precyzja s¹ kluczowe, aby zamek ust¹pi³ bez uszkodzeñ.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_007 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_007;
	
	if (Bonus_ItWr_Book[7])
	{ description			=	"Kradzie¿ kieszonkowa (przeczytane)"; }
	else
	{ description			=	"Kradzie¿ kieszonkowa"; };
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
				Doc_PrintLines	(nDocID,  0, "Kieszonkowiec musi byæ niewidzialny i szybki jak cieñ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Obserwuj swoj¹ ofiarê, wybieraj moment, gdy jest najbardziej rozproszona.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Szybkim, pewnym ruchem wyci¹gnij cel z jej kieszeni lub torby, dbaj¹c o to, aby twoje ruchy by³y naturalne i niezauwa¿alne.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_008 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_008;
	
	if (Bonus_ItWr_Book[8])
	{ description			=	"Obróbka drewna (przeczytane)"; }
	else
	{ description			=	"Obróbka drewna"; };
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
				Doc_PrintLines	(nDocID,  0, "Drewno jest materia³em, który wymaga szacunku i umiejêtnoœci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka¿dy kawa³ek ma swoj¹ duszê, któr¹ trzeba odkryæ.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ostrzenie narzêdzi, precyzyjne ciêcie i staranne szlifowanie to klucz do uzyskania idealnego kszta³tu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, aby zawsze pracowaæ zgodnie z kierunkiem s³ojów drewna.");
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
				Doc_PrintLines	(nDocID,  0, "Gotowanie to wiêcej ni¿ tylko przygotowywanie jedzenia – to sztuka, która ³¹czy smaki i aromaty w jedn¹, harmonijn¹ ca³oœæ.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wybieraj œwie¿e sk³adniki, szanuj tradycje, ale nie bój siê eksperymentowaæ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e najwa¿niejszym sk³adnikiem ka¿dej potrawy jest mi³oœæ do gotowania.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_010 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_010;
	
	if (Bonus_ItWr_Book[10])
	{ description			=	"¯eglarstwo (przeczytane)"; }
	else
	{ description			=	"¯eglarstwo"; };
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
				Doc_PrintLines	(nDocID,  0, "¯eglarstwo to sztuka, która ³¹czy w sobie wiedzê o wiatrach, pr¹dach i niebie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka¿dy dobry ¿eglarz musi umieæ czytaæ mapy i pos³ugiwaæ siê sekstantem, aby nawigowaæ po bezkresnych wodach.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e morze jest nieprzewidywalne, a przygotowanie na ka¿d¹ ewentualnoœæ jest kluczem do bezpiecznej podró¿y.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Trzymaj kurs i nie traæ wiary nawet w najtrudniejszych warunkach.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_011 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_011;
	
	if (Bonus_ItWr_Book[11])
	{ description			=	"Przepisywanie magicznych zwojów (przeczytane)"; }
	else
	{ description			=	"Przepisywanie magicznych zwojów"; };
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
				Doc_PrintLines	(nDocID,  0, "Przepisywanie magicznych zwojów wymaga nie tylko bieg³oœci w piœmie, ale i g³êbokiego zrozumienia magii.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka¿dy symbol musi byæ narysowany z niezwyk³¹ precyzj¹, a ka¿de s³owo zapisane z najwiêksz¹ starannoœci¹.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U¿ywaj tylko najlepszych materia³ów – pergaminu o najwy¿szej jakoœci i atramentu sporz¹dzonego wed³ug staro¿ytnych receptur.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e najmniejszy b³¹d mo¿e zmieniæ efekt zaklêcia.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_012 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_012;
	
	if (Bonus_ItWr_Book[12])
	{ description			=	"Skradanie siê (przeczytane)"; }
	else
	{ description			=	"Skradanie siê"; };
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
				Doc_PrintLines	(nDocID,  0, "Skradanie siê to sztuka bycia niewidzialnym.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Naucz siê poruszaæ cicho, unikaj¹c suchych liœci i ga³êzi, które mog¹ zdradziæ twoj¹ obecnoœæ.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Oddychaj p³ytko i kontroluj ka¿dy ruch. Pamiêtaj, ¿e cieñ jest twoim sprzymierzeñcem, a cierpliwoœæ twoim najwiêkszym atutem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kluczowe jest poznanie terenu i obserwacja rutynowych zachowañ twoich celów.");
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
				Doc_PrintLines	(nDocID,  0, "Akrobatyka wymaga nie tylko si³y, ale i gracji. Ka¿dy skok, ka¿de obroty musz¹ byæ precyzyjne i p³ynne.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Rozgrzewka jest niezbêdna, aby unikn¹æ kontuzji.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Æwicz równowagê na w¹skich powierzchniach i pracuj nad elastycznoœci¹ cia³a.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e perfekcja w akrobatyce to wynik d³ugich godzin ciê¿kiej pracy i determinacji.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_014 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_014;
	
	if (Bonus_ItWr_Book[14])
	{ description			=	"Po³ykanie ognia (przeczytane)"; }
	else
	{ description			=	"Po³ykanie ognia"; };
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
				Doc_PrintLines	(nDocID,  0, "Po³ykanie ognia to sztuka, która wymaga ogromnej odwagi i precyzyjnej techniki.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U¿ywaj tylko specjalnie przygotowanych pochodni i zawsze miej przy sobie œrodek gasz¹cy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, aby wdech i wydech by³y kontrolowane, a p³omieñ nigdy nie dotkn¹³ wnêtrza gard³a.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Æwicz cierpliwie i zawsze zachowuj najwy¿sze œrodki ostro¿noœci.");
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
				Doc_PrintLines	(nDocID,  0, "Poezja to jêzyk serca, który potrafi wyraziæ najg³êbsze emocje.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "S³owa musz¹ p³yn¹æ naturalnie, a rytm i rym powinny wspó³graæ, tworz¹c harmonijn¹ ca³oœæ.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Inspiracji szukaj w otaczaj¹cym ciê œwiecie, w przyrodzie i w ludzkich uczuciach.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e ka¿da strofa to obraz malowany s³owami, który powinien poruszaæ duszê czytelnika.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_016 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_016;
	
	if (Bonus_ItWr_Book[16])
	{ description			=	"Dowodzenie oddzia³em (przeczytane)"; }
	else
	{ description			=	"Dowodzenie oddzia³em"; };
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
				Doc_PrintLines	(nDocID,  0, "Dowodzenie oddzia³em wymaga umiejêtnoœci strategicznych i zdolnoœci przywódczych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka¿dy rozkaz musi byæ jasny i zdecydowany, a ka¿da decyzja dobrze przemyœlana.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, aby zawsze dbaæ o morale swoich ludzi i znaæ ich mocne oraz s³abe strony.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przywództwo to nie tylko w³adza, ale i odpowiedzialnoœæ za ¿ycie podkomendnych.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_017 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_017;
	
	if (Bonus_ItWr_Book[17])
	{ description			=	"Górnictwo (przeczytane)"; }
	else
	{ description			=	"Górnictwo"; };
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
				Doc_PrintLines	(nDocID,  0, "Górnictwo to ciê¿ka praca, która wymaga si³y fizycznej i wytrwa³oœci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zanim przyst¹pisz do wydobycia, dok³adnie zanalizuj strukturê ska³y i oceñ ryzyko zawalenia.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, aby zawsze pracowaæ w dobrze wentylowanych tunelach i u¿ywaæ odpowiednich narzêdzi.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka¿de uderzenie kilofa powinno byæ przemyœlane, a bezpieczeñstwo twoje i twoich wspó³pracowników zawsze na pierwszym miejscu.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_018 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_018;
	
	if (Bonus_ItWr_Book[18])
	{ description			=	"£owienie ryb (przeczytane)"; }
	else
	{ description			=	"£owienie ryb"; };
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
				Doc_PrintLines	(nDocID,  0, "£owienie ryb to sztuka cierpliwoœci i spostrzegawczoœci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wybierz odpowiedni¹ przynêtê i naucz siê rozpoznawaæ najlepsze miejsca na po³owy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e czasem trzeba godzinami czekaæ na odpowiedni moment, ale nagroda jest tego warta.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Obserwuj zachowanie wody i ucz siê jej tajemnic, aby zwiêkszyæ swoje szanse na udane po³owy.");
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
				Doc_PrintLines	(nDocID,  0, "Zielarstwo to umiejêtnoœæ rozpoznawania i wykorzystywania roœlin w celach leczniczych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka¿da roœlina ma swoje unikalne w³aœciwoœci, które mog¹ przynieœæ ulgê w chorobach lub wzmocniæ organizm.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Naucz siê zbieraæ zio³a w odpowiednich porach roku i suszyæ je w kontrolowanych warunkach.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e dok³adna wiedza na temat roœlin jest kluczem do skutecznych mikstur.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_020 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_020;
	
	if (Bonus_ItWr_Book[20])
	{ description			=	"RzeŸnictwo (przeczytane)"; }
	else
	{ description			=	"RzeŸnictwo"; };
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
				Doc_PrintLines	(nDocID,  0, "RzeŸnictwo wymaga precyzji i znajomoœci anatomii zwierz¹t.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka¿de ciêcie musi byæ dok³adne, aby uzyskaæ jak najwiêcej wartoœciowego miêsa.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj o higienie pracy i odpowiednim przechowywaniu produktów.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dobrze zaostrzony nó¿ jest twoim najwa¿niejszym narzêdziem, a umiejêtnoœæ w³aœciwego dzielenia tuszy kluczem do sukcesu w tym rzemioœle.");
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
				Doc_PrintLines	(nDocID,  0, "Ostrzenie broni to proces, który wymaga precyzji i cierpliwoœci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U¿ywaj kamienia szlifierskiego o odpowiedniej ziarnistoœci, zaczynaj¹c od grubszego, a koñcz¹c na drobniejszym, aby uzyskaæ g³adk¹ i ostr¹ krawêdŸ.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Utrzymuj sta³y k¹t podczas ostrzenia, a co jakiœ czas ch³odŸ ostrze w wodzie, aby unikn¹æ przegrzania metalu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e dobrze naostrzona broñ jest bardziej skuteczna i bezpieczniejsza w u¿yciu.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_022 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_022;
	
	if (Bonus_ItWr_Book[22])
	{ description			=	"Stosowanie specjalnych strza³ (przeczytane)"; }
	else
	{ description			=	"Stosowanie specjalnych strza³"; };
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
				Doc_PrintLines	(nDocID,  0, "Podpalaj¹ce strza³y wymagaj¹ specjalnej techniki przygotowania.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nas¹cz groty w mieszaninie smo³y i oleju, a nastêpnie zabezpiecz je, aby nie styg³y przed u¿yciem.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zatrute strza³y natomiast wymagaj¹ precyzyjnego pokrycia grotów odpowiednim toksyn¹, starannie przygotowan¹ z zió³ i innych sk³adników.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, aby przechowywaæ te strza³y osobno i zachowaæ ostro¿noœæ przy ich u¿ywaniu, aby nie zatruæ samego siebie.");
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
				Doc_PrintLines	(nDocID,  0, "Przetapianie metali szlachetnych, takich jak z³oto i srebro, wymaga wysokiej temperatury i odpowiednich narzêdzi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U¿ywaj tygla, aby równomiernie rozgrzaæ metal do stanu p³ynnego.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dodaj topniki, aby usun¹æ zanieczyszczenia i poprawiæ jakoœæ stopu.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przelewaj p³ynny metal do formy i pozwól mu ostygn¹æ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, aby zawsze pracowaæ w dobrze wentylowanym pomieszczeniu i nosiæ odpowiednie zabezpieczenia.");
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
				Doc_PrintLines	(nDocID,  0, "Utwardzanie pancerzy to proces, który zwiêksza ich wytrzyma³oœæ i odpornoœæ na uszkodzenia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najpierw podgrzej pancerz w kuŸni do odpowiedniej temperatury, a nastêpnie szybko sch³odŸ w oleju lub wodzie, w zale¿noœci od rodzaju metalu.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Proces ten, znany jako hartowanie, sprawia, ¿e pancerz staje siê twardszy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, aby póŸniej odpuszczaæ pancerz, aby zapobiec jego kruchoœci i zapewniæ elastycznoœæ.");
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
				Doc_PrintLines	(nDocID,  0, "Walka dwoma mieczami wymaga doskona³ej koordynacji i zrêcznoœci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U¿ywaj jednego miecza do parowania ciosów przeciwnika, a drugiego do zadawania szybkich, precyzyjnych ataków.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Æwicz p³ynnoœæ ruchów i ucz siê balansowaæ miêdzy obron¹ a atakiem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e walka dwoma mieczami to sztuka, która wymaga zarówno si³y, jak i strategii.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_026 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_026;
	
	if (Bonus_ItWr_Book[26])
	{ description			=	"Pos³ugiwanie siê tarczami (przeczytane)"; }
	else
	{ description			=	"Pos³ugiwanie siê tarczami"; };
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
				Doc_PrintLines	(nDocID,  0, "Pos³ugiwanie siê tarcz¹ to umiejêtnoœæ, która mo¿e uratowaæ ¿ycie na polu bitwy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Trzymaj tarczê blisko cia³a i u¿ywaj jej nie tylko do blokowania ciosów, ale tak¿e do zas³aniania siê przed strza³ami.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Æwicz ró¿ne techniki blokowania i kontrataków, aby skutecznie wykorzystaæ tarczê zarówno w obronie, jak i w ofensywie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e dobra tarcza to przed³u¿enie twojego ramienia i czêœæ twojej strategii bojowej.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_027 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_027;
	
	if (Bonus_ItWr_Book[27])
	{ description			=	"Broñ miotana (przeczytane)"; }
	else
	{ description			=	"Broñ miotana"; };
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
				Doc_PrintLines	(nDocID,  0, "Broñ miotana, taka jak oszczepy, no¿e czy toporki, wymaga precyzyjnego celowania i odpowiedniej techniki rzutu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Æwicz rzut z ró¿nych odleg³oœci i k¹tów, aby opanowaæ trajektoriê lotu.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, aby dostosowaæ si³ê rzutu do wagi broni i celu, który chcesz trafiæ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka¿dy rzut powinien byæ pewny i kontrolowany, aby maksymalnie zwiêkszyæ skutecznoœæ na polu walki.");
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
				Doc_PrintLines	(nDocID,  0, "Archeologia to nauka odkrywania przesz³oœci poprzez badanie artefaktów i ruin.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka¿de znalezisko mo¿e rzuciæ nowe œwiat³o na historiê i kulturê dawnych cywilizacji.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wykopaliska wymagaj¹ delikatnoœci i precyzji, aby nie uszkodziæ cennych znalezisk.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dokumentuj ka¿dy etap prac i analizuj znalezione przedmioty, aby zrekonstruowaæ historiê z przesz³oœci.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_029 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_029;
	
	if (Bonus_ItWr_Book[29])
	{ description			=	"Broñ d³uga (przeczytane)"; }
	else
	{ description			=	"Broñ d³uga"; };
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
				Doc_PrintLines	(nDocID,  0, "Walka broni¹ d³ug¹, tak¹ jak halabardy czy piki, wymaga si³y i umiejêtnoœci kontroli dystansu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Te bronie s¹ idealne do utrzymywania przeciwników na odleg³oœæ i prze³amywania linii wroga.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Æwicz precyzyjne pchniêcia oraz ciêcia, a tak¿e manewry maj¹ce na celu zablokowanie ataków i odepchniêcie przeciwników.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e d³ugoœæ broni jest zarówno atutem, jak i wyzwaniem – musisz umieæ sprawnie manewrowaæ w ciasnych przestrzeniach.");
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
				Doc_PrintLines	(nDocID,  0, "Pos³ugiwanie siê magicznymi kosturami wymaga synchronizacji umiejêtnoœci magicznych i fizycznej koordynacji.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kostury czêsto wzmacniaj¹ zaklêcia i mog¹ s³u¿yæ jako kana³y dla energii magicznej.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Naucz siê odpowiednio kanalizowaæ moc przez kostur, dbaj¹c o precyzyjne ruchy i inkantacje.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e kostur to nie tylko narzêdzie ofensywne, ale równie¿ defensywne, umo¿liwiaj¹ce tworzenie barier i os³on.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_031 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_031;
	
	if (Bonus_ItWr_Book[31])
	{ description			=	"Œcinanie drzew (przeczytane)"; }
	else
	{ description			=	"Œcinanie drzew"; };
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
				Doc_PrintLines	(nDocID,  0, "Praca drwala to ciê¿ki, ale satysfakcjonuj¹cy zawód. Aby œci¹æ drzewo, wybierz zdrowy okaz i dok³adnie przeanalizuj jego po³o¿enie, aby zaplanowaæ kierunek upadku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U¿ywaj ostrej siekiery lub pi³y i wykonuj precyzyjne, mocne ciêcia.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj o bezpieczeñstwie – noœ odpowiednie ochraniacze i zawsze pracuj z dala od innych ludzi.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Œciête drzewa przetwarzaj na deski, belki czy opa³, dbaj¹c o minimalizacjê marnotrawstwa.");
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
				Doc_PrintLines	(nDocID,  0, "Struganie ³uków to proces wymagaj¹cy precyzji i wyczucia drewna. Wybierz elastyczne, ale mocne drewno, takie jak cis czy jesion.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kszta³tuj ³uk, starannie wyg³adzaj¹c jego powierzchniê i zapewniaj¹c równomierne napiêcie ciêciwy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Tworzenie kusz to bardziej skomplikowany proces, wymagaj¹cy precyzyjnych mechanizmów napinaj¹cych i wytrzyma³ych materia³ów.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e jakoœæ twojego rzemios³a wp³ywa na skutecznoœæ broni.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_033 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_033;
	
	if (Bonus_ItWr_Book[33])
	{ description			=	"Obuchy czy broñ ciêta (przeczytane)"; }
	else
	{ description			=	"Obuchy czy broñ ciêta"; };
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
				Doc_PrintLines	(nDocID,  0, "Broñ obuchowa, taka jak m³oty i maczugi, jest skuteczna przeciwko opancerzonym przeciwnikom, gdy¿ mo¿e mia¿d¿yæ zbroje i koœci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U¿ywaj jej w sytuacjach, gdzie musisz prze³amaæ obronê wroga lub zadaæ obra¿enia poprzez si³ê uderzenia.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Broñ ciêta, taka jak miecze i sztylety, jest bardziej efektywna przeciwko lekko opancerzonym przeciwnikom, umo¿liwiaj¹c precyzyjne ciêcia i szybkie ataki.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wybór broni powinien zale¿eæ od rodzaju przeciwnika i sytuacji na polu bitwy.");
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
				Doc_PrintLines	(nDocID,  0, "Architektura to sztuka projektowania i wznoszenia budynków, które s¹ zarówno funkcjonalne, jak i estetyczne.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Planowanie budowy zaczyna siê od analizy terenu i zrozumienia potrzeb u¿ytkowników.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Twórz plany, które uwzglêdniaj¹ solidne fundamenty, odpowiednie materia³y i trwa³e konstrukcje.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj o estetyce – harmonijnie zaprojektowane budynki podnosz¹ wartoœæ i komfort ¿ycia mieszkañców.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_035 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_035;
	
	if (Bonus_ItWr_Book[35])
	{ description			=	"Siedliska bandytów (przeczytane)"; }
	else
	{ description			=	"Siedliska bandytów"; };
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
				Doc_PrintLines	(nDocID,  0, "Terytoria, gdzie ³atwiej napotkaæ bandytów, to czêsto odleg³e i s³abo zaludnione obszary, gdzie w³adza centralna ma ograniczon¹ kontrolê.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gêste lasy, góry i nieprzebyte doliny s¹ idealnymi miejscami dla ukrywaj¹cych siê grup.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "B¹dŸ czujny w takich rejonach i unikaj podró¿owania samotnie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zbieraj informacje od miejscowej ludnoœci, aby znaæ aktualne zagro¿enia i unikaæ niebezpiecznych szlaków.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_036 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_036;
	
	if (Bonus_ItWr_Book[36])
	{ description			=	"Kultyœci (przeczytane)"; }
	else
	{ description			=	"Kultyœci"; };
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
				Doc_PrintLines	(nDocID,  0, "Kultyœci czêsto dzia³aj¹ z motywacji religijnych, politycznych lub osobistych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ich cele mog¹ obejmowaæ zdobycie w³adzy, przywrócenie dawnych tradycji czy spe³nienie proroctw.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Badaj symbole i rytua³y, aby zrozumieæ ich motywy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e kultystyczne sekty mog¹ byæ bardzo niebezpieczne, a ich liderzy zazwyczaj maj¹ siln¹ charyzmê i potrafi¹ manipulowaæ swoimi wyznawcami.");
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
				Doc_PrintLines	(nDocID,  0, "Siarka jest kluczowym sk³adnikiem w wielu alchemicznych procesach.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Mo¿e byæ u¿ywana do tworzenia eliksirów, które maj¹ w³aœciwoœci oczyszczaj¹ce i lecznicze, a tak¿e do produkcji wybuchowych substancji, takich jak proch strzelniczy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, aby zawsze dok³adnie mierzyæ iloœci u¿ywanych sk³adników i przeprowadzaæ eksperymenty w kontrolowanych warunkach, aby unikn¹æ niebezpiecznych wybuchów.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_038 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_038;
	
	if (Bonus_ItWr_Book[38])
	{ description			=	"Wykorzystanie ¿ywicy (przeczytane)"; }
	else
	{ description			=	"Wykorzystanie ¿ywicy"; };
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
				Doc_PrintLines	(nDocID,  0, "¯ywica jest cennym surowcem o wielu zastosowaniach.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Mo¿e byæ u¿ywana jako klej do ³¹czenia ró¿nych materia³ów, a tak¿e do uszczelniania naczyñ i ³odzi.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W alchemii, ¿ywica bywa sk³adnikiem eliksirów i mikstur, ze wzglêdu na swoje w³aœciwoœci lecznicze i konserwuj¹ce.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zbieraj ¿ywicê z drzew ostro¿nie, aby nie uszkodziæ roœliny i zapewniæ jej ci¹g³¹ produkcjê.");
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
				Doc_PrintLines	(nDocID,  0, "Kartografia to sztuka tworzenia map, która wymaga precyzyjnego pomiaru i obserwacji.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dobry kartograf musi znaæ techniki orientacji w terenie i pos³ugiwaæ siê instrumentami takimi jak kompas i sekstant.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Tworzenie map obejmuje zarówno rysowanie terenów, jak i zaznaczanie wa¿nych punktów geograficznych i informacji topograficznych.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e dok³adna mapa jest nieocenionym narzêdziem dla podró¿ników i wojskowych.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_040 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_040;
	
	if (Bonus_ItWr_Book[40])
	{ description			=	"Gwardia królewska (przeczytane)"; }
	else
	{ description			=	"Gwardia królewska"; };
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
				Doc_PrintLines	(nDocID,  0, "Gwardia królewska to elitarna jednostka wojskowa, której g³ównym zadaniem jest ochrona monarchy i rodziny królewskiej.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Cz³onkowie gwardii s¹ starannie wybierani spoœród najlepszych wojowników, a ich szkolenie obejmuje zarówno walkê wrêcz, jak i pos³ugiwanie siê ró¿norodn¹ broni¹.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e gwardzista musi byæ nie tylko doskona³ym wojownikiem, ale równie¿ lojalnym s³ug¹, gotowym poœwiêciæ ¿ycie dla swojego w³adcy.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_041 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_041;
	
	if (Bonus_ItWr_Book[41])
	{ description			=	"Gildia Magów (przeczytane)"; }
	else
	{ description			=	"Gildia Magów"; };
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
				Doc_PrintLines	(nDocID,  0, "Gildia Magów to miejsce, gdzie adepci magii mog¹ rozwijaæ swoje umiejêtnoœci pod okiem doœwiadczonych mistrzów.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gildia oferuje dostêp do staro¿ytnych ksi¹g, potê¿nych artefaktów i tajemnych zaklêæ.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka¿dy mag, przystêpuj¹c do gildii, zobowi¹zuje siê przestrzegaæ jej zasad i dzieliæ swoj¹ wiedz¹ z innymi cz³onkami.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e w gildii wa¿na jest nie tylko moc, ale i m¹droœæ oraz etyka u¿ycia magii.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_042 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_042;
	
	if (Bonus_ItWr_Book[42])
	{ description			=	"£owcy smoków (przeczytane)"; }
	else
	{ description			=	"£owcy smoków"; };
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
				Doc_PrintLines	(nDocID,  0, "£owcy smoków to grupa œmia³ków, którzy podejmuj¹ siê polowania na te potê¿ne bestie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wiedza o smokach, ich zwyczajach i s³abych punktach jest kluczowa.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "£owcy musz¹ byæ uzbrojeni w specjalne bronie i zbroje, odporne na smoczy ogieñ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e smoki s¹ niezwykle inteligentne i niebezpieczne, a polowanie na nie wymaga nie tylko odwagi, ale i sprytu oraz doœwiadczenia.");
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
				Doc_PrintLines	(nDocID,  0, "Paladyni to œwiêci wojownicy, którzy przysiêgli broniæ sprawiedliwoœci i walczyæ z si³ami z³a.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ich si³a pochodzi nie tylko z umiejêtnoœci bojowych, ale tak¿e z g³êbokiej wiary, która umo¿liwia im korzystanie z boskich mocy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Paladyni s¹ czêsto na pierwszej linii frontu w walce z demonami i innymi potworami.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e bycie paladynem to nie tylko przywilej, ale i ogromna odpowiedzialnoœæ.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_044 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_044;
	
	if (Bonus_ItWr_Book[44])
	{ description			=	"Lud asasynów (przeczytane)"; }
	else
	{ description			=	"Lud asasynów"; };
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
				Doc_PrintLines	(nDocID,  0, "Zakon Asasynów to tajemnicza organizacja, która specjalizuje siê w skrytobójstwach.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Asasyni s¹ mistrzami kamufla¿u, skradania siê i walki w cieniu.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka¿dy adept przechodzi intensywne szkolenie, ucz¹c siê technik zabijania, ale tak¿e filozofii zakonu, która czêsto obejmuje walkê o wolnoœæ i sprawiedliwoœæ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e asasyn dzia³a szybko, precyzyjnie i bez œladu.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_045 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_045;
	
	if (Bonus_ItWr_Book[45])
	{ description			=	"Trofea zwierzêce (przeczytane)"; }
	else
	{ description			=	"Trofea zwierzêce"; };
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
				Doc_PrintLines	(nDocID,  0, "Pozyskiwanie trofeów zwierzêcych wymaga umiejêtnoœci i precyzji, aby zachowaæ jakoœæ i wartoœæ trofeum.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Skóry powinny byæ odpowiednio oprawione i wyprawione, aby unikn¹æ ich zepsucia.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Szpony i k³y nale¿y starannie oczyœciæ i zabezpieczyæ przed uszkodzeniem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e ka¿da czêœæ zwierzêcia mo¿e mieæ swoje zastosowanie, a troska o detale zwiêksza wartoœæ zdobytych trofeów.");
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
				Doc_PrintLines	(nDocID,  0, "Przyrz¹dzanie bimbru i rumu to proces, który wymaga wiedzy o fermentacji i destylacji.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Fermentuj surowce, takie jak melasa, cukier czy zbo¿e, aby uzyskaæ alkohol.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nastêpnie destyluj go, aby zwiêkszyæ jego moc i oczyœciæ z zanieczyszczeñ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, aby pracowaæ w kontrolowanych warunkach aby uzyskaæ bezpieczny i wysokiej jakoœci produkt.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_047 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_047;
	
	if (Bonus_ItWr_Book[47])
	{ description			=	"Produkcja serów i wypieków (przeczytane)"; }
	else
	{ description			=	"Produkcja serów i wypieków"; };
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
				Doc_PrintLines	(nDocID,  0, "Tworzenie serów to skomplikowany proces, który zaczyna siê od zakwaszenia mleka i oddzielenia serwatki.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nastêpnie formuj i dojrzewaj ser w odpowiednich warunkach, kontroluj¹c temperaturê i wilgotnoœæ.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wypiek chleba zaczyna siê od przygotowania ciasta z m¹ki, wody, dro¿d¿y i soli.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po wyroœniêciu ciasto formuj i piecz w odpowiedniej temperaturze.");
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
				Doc_PrintLines	(nDocID,  0, "Broñ lekka, taka jak sztylety, jest idealna do szybkich i precyzyjnych ataków.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Umo¿liwia skradanie siê i b³yskawiczne ataki na blisk¹ odleg³oœæ.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Broñ ciê¿ka, jak topory dwurêczne, zadaje potê¿ne, mia¿d¿¹ce ciosy, zdolne prze³amaæ zbroje i zadawaæ œmiertelne obra¿enia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e broñ lekka wymaga zrêcznoœci i szybkoœci, podczas gdy broñ ciê¿ka wymaga si³y i wytrzyma³oœci.");
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
				Doc_PrintLines	(nDocID,  0, "Szmaragdy s¹ cenione za swoj¹ g³êbok¹, zielon¹ barwê, która symbolizuje odrodzenie i p³odnoœæ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "S¹ one czêsto u¿ywane w bi¿uterii i amuletach ochronnych.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Rubiny, o intensywnym czerwonym kolorze, s¹ symbolem mi³oœci i pasji.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Czêsto uwa¿a siê je za kamienie przynosz¹ce szczêœcie i ochronê.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_050 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_050;
	
	if (Bonus_ItWr_Book[50])
	{ description			=	"Zastosowanie rtêci (przeczytane)"; }
	else
	{ description			=	"Zastosowanie rtêci"; };
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
				Doc_PrintLines	(nDocID,  0, "Rtêæ, znana równie¿ jako '¿ywe srebro', jest czêsto u¿ywana w alchemii do tworzenia amalgamatów i katalizowania reakcji chemicznych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Rtêæ mo¿e równie¿ byæ stosowana w procesach oczyszczania i transmutacji metali.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e rtêæ jest toksyczna, wiêc zawsze pracuj z ni¹ w odpowiednio wentylowanych pomieszczeniach i u¿ywaj zabezpieczeñ, aby unikn¹æ zatrucia.");
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
				Doc_PrintLines	(nDocID,  0, "Tworzenie tytoniu zaczyna siê od starannej uprawy i zbioru liœci tytoniu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Liœcie s¹ nastêpnie suszone i fermentowane, aby uzyskaæ odpowiedni¹ jakoœæ i aromat.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po fermentacji liœcie s¹ ciête i mieszane, aby stworzyæ ró¿ne mieszanki.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e ka¿dy etap produkcji wp³ywa na ostateczny smak i jakoœæ tytoniu.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_052 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_052;
	
	if (Bonus_ItWr_Book[52])
	{ description			=	"Wyrób atramentu (przeczytane)"; }
	else
	{ description			=	"Wyrób atramentu"; };
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
				Doc_PrintLines	(nDocID,  0, "Wyrób atramentu wymaga mieszania odpowiednich sk³adników, takich jak sadza, guma arabska i woda.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dodaj barwniki, aby uzyskaæ ró¿ne kolory i eksperymentuj z proporcjami, aby stworzyæ atrament o odpowiedniej gêstoœci i trwa³oœci.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, aby przechowywaæ atrament w szczelnych pojemnikach, aby zapobiec jego wysychaniu.");
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
				Doc_PrintLines	(nDocID,  0, "Traktowanie ran zaczyna siê od dok³adnego oczyszczenia miejsca urazu, aby zapobiec infekcji.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U¿ywaj czystej wody lub alkoholu, aby zdezynfekowaæ ranê.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nastêpnie, przyk³adaj steryln¹ gazê i owiñ banda¿em, dbaj¹c o to, aby nie by³ zbyt ciasny, co mog³oby utrudniæ kr¹¿enie krwi.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, aby regularnie zmieniaæ opatrunki i monitorowaæ stan rany. Jeœli zauwa¿ysz oznaki infekcji, natychmiast skonsultuj siê z medykiem.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_054 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_054;
	
	if (Bonus_ItWr_Book[54])
	{ description			=	"Oswajanie zwierz¹t (przeczytane)"; }
	else
	{ description			=	"Oswajanie zwierz¹t"; };
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
				Doc_PrintLines	(nDocID,  0, "Oswajanie zwierz¹t to proces, który wymaga cierpliwoœci i zrozumienia ich natury.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zacznij od nawi¹zania zaufania poprzez regularne karmienie i ³agodne mówienie. Unikaj gwa³townych ruchów i pozwól zwierzêciu przyzwyczaiæ siê do twojej obecnoœci.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Stosuj pozytywne wzmocnienia, takie jak smako³yki, aby nagradzaæ po¿¹dane zachowania.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e ka¿de zwierzê jest inne i mo¿e wymagaæ indywidualnego podejœcia.");
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
				Doc_PrintLines	(nDocID,  0, "Sprint to technika biegania na krótkich dystansach z maksymaln¹ prêdkoœci¹.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Skup siê na silnym starcie, z pochylonym tu³owiem i dynamicznym wyjœciem z bloków.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Utrzymuj rytmiczny oddech i koordynuj ruchy r¹k z nogami, aby zachowaæ równowagê.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pracuj nad rozwijaniem si³y miêœni nóg oraz technik¹, aby zmaksymalizowaæ swoj¹ prêdkoœæ i wydolnoœæ.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_056 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_056;
	
	if (Bonus_ItWr_Book[56])
	{ description			=	"Przygotowywanie s³odyczy (przeczytane)"; }
	else
	{ description			=	"Przygotowywanie s³odyczy"; };
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
				Doc_PrintLines	(nDocID,  0, "Przygotowanie miodu zaczyna siê od zbioru plastrów z uli i ich delikatnego odwirowywania, aby oddzieliæ miód od wosku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Miód przechowuj w szczelnych s³oikach, aby zachowa³ œwie¿oœæ.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przygotowanie d¿emu wymaga gotowania owoców z cukrem, a¿ do uzyskania odpowiedniej konsystencji.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dodaj sok z cytryny, aby podkreœliæ smak i przed³u¿yæ trwa³oœæ. Przechowuj d¿em w sterylizowanych s³oikach.");
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
				Doc_PrintLines	(nDocID,  0, "Skuteczne handlowanie wymaga znajomoœci rynku i umiejêtnoœci negocjacyjnych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zawsze staraj siê zrozumieæ potrzeby i pragnienia klientów, aby lepiej dostosowaæ swoj¹ ofertê. Negocjuj cenê, pamiêtaj¹c, ¿e wartoœæ produktu zale¿y od popytu i poda¿y.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dbaj o dobr¹ reputacjê, oferuj¹c wysokiej jakoœci produkty i uczciwe ceny.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e lojalni klienci to klucz do d³ugoterminowego sukcesu.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_058 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_058;
	
	if (Bonus_ItWr_Book[58])
	{ description			=	"Wypasanie zwierz¹t (przeczytane)"; }
	else
	{ description			=	"Wypasanie zwierz¹t"; };
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
				Doc_PrintLines	(nDocID,  0, "Wypasanie owiec i kóz wymaga regularnej opieki i monitorowania stada.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zapewniaj im dostêp do œwie¿ej wody i odpowiedniej paszy, bogatej w sk³adniki od¿ywcze.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Regularnie kontroluj stan zdrowia zwierz¹t, sprawdzaj¹c sierœæ, racice i zêby.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przemieszczaj stado, aby unikn¹æ nadmiernego wypasu jednego obszaru i zapewniæ równomierny wzrost roœlinnoœci.");
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
				Doc_PrintLines	(nDocID,  0, "Zastraszenie lub przekupienie mog¹ byæ skuteczne w sytuacjach, gdzie inne metody zawiod³y.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zastraszenie dzia³a najlepiej na osoby o s³abej woli lub w sytuacjach nag³ych, gdzie nie ma czasu na negocjacje.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przekupienie jest bardziej subtelne i mo¿e byæ stosowane tam, gdzie oferowana korzyœæ przewy¿sza ryzyko.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e obie metody nios¹ ryzyko i mog¹ prowadziæ do nieprzewidzianych konsekwencji, jeœli zostan¹ Ÿle zastosowane.");
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
				Doc_PrintLines	(nDocID,  0, "Krawiectwo to sztuka tworzenia odzie¿y, która wymaga precyzji i umiejêtnoœci. ");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zacznij od wyboru odpowiednich tkanin i narzêdzi, takich jak ig³y, nici i no¿yczki.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dok³adnie mierz i kroj materia³, aby zapewniæ idealne dopasowanie. Szyj starannie, dbaj¹c o wykoñczenia i detale, które nadaj¹ odzie¿y estetyczny wygl¹d i trwa³oœæ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e dobrze wykonana odzie¿ to po³¹czenie funkcjonalnoœci i stylu.");
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
				Doc_PrintLines	(nDocID,  0, "Gra w szachy to strategiczna rozgrywka, która wymaga przewidywania ruchów przeciwnika i planowania w³asnych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka¿da figura ma swoje unikalne ruchy i rolê na planszy. Skup siê na kontrolowaniu centrum i rozwijaniu swoich figur, aby zyskaæ przewagê.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Unikaj pochopnych ruchów i zawsze analizuj potencjalne konsekwencje.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e szachy to nie tylko gra umiejêtnoœci, ale tak¿e cierpliwoœci i koncentracji.");
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
				Doc_PrintLines	(nDocID,  0, "Biedota i szlachta ¿yj¹ w dwóch odmiennych œwiatach.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Biedota walczy o przetrwanie, czêsto pracuj¹c ciê¿ko za niewielk¹ zap³atê, podczas gdy szlachta cieszy siê bogactwem i luksusem, uzyskuj¹c maj¹tki i wp³ywy poprzez dziedziczenie i polityczne uk³ady.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Relacje miêdzy tymi grupami s¹ napiête, gdy¿ nierównoœci spo³eczne i ekonomiczne prowadz¹ do konfliktów i niezadowolenia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e ka¿de spo³eczeñstwo ma swoj¹ strukturê, która wp³ywa na ¿ycie jednostek.");
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
				Doc_PrintLines	(nDocID,  0, "Grzybiarstwo to pasjonuj¹ce zajêcie, które wymaga wiedzy i ostro¿noœci. Kluczowe jest rozró¿nienie grzybów jadalnych od truj¹cych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dobre grzyby maj¹ zazwyczaj charakterystyczne cechy: jednolite ubarwienie, przyjemny zapach i brak gorzkiego smaku.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Unikaj grzybów o jaskrawych kolorach, nieprzyjemnym zapachu lub tych, które maj¹ pierœcieñ na trzonie i bia³e blaszki - wiele z nich to truj¹ce muchomory.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e znajomoœæ szczegó³ów, takich jak kszta³t kapelusza i trzonu, oraz œrodowiska, w którym roœnie grzyb, jest kluczowa dla bezpiecznego grzybobrania.");
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
				Doc_PrintLines	(nDocID,  0, "Wapno jest u¿ywane w budownictwie do tworzenia zaprawy murarskiej i tynków, dziêki swoim w³aœciwoœciom wi¹¿¹cym.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jest równie¿ stosowane w rolnictwie do poprawy jakoœci gleby.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wêgiel, z kolei, jest podstawowym surowcem energetycznym, u¿ywanym do ogrzewania i wytapiania metali.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jego w³aœciwoœci redukuj¹ce s¹ kluczowe w procesach metalurgicznych.");
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
				Doc_PrintLines	(nDocID,  0, "Saletra jest g³ównym sk³adnikiem prochu strzelniczego i jest u¿ywana w pirotechnice oraz do nawo¿enia gleby, poniewa¿ dostarcza azotu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Siarka jest stosowana w alchemii do tworzenia ró¿nych mikstur i eliksirów oraz w produkcji materia³ów wybuchowych.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kombinacja saletry i siarki tworzy podstawê wielu reakcji chemicznych, które maj¹ szerokie zastosowanie w przemyœle i magii.");
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
				Doc_PrintLines	(nDocID,  0, "Czerwona magiczna ruda to rzadki surowiec, który posiada w³aœciwoœci pirokinetyczne.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "rê¿ wykonany z tej rudy mo¿e byæ na³adowany zaklêciami ognia, co sprawia, ¿e ka¿de uderzenie jest nie tylko fizycznie destrukcyjne, ale i podpalaj¹ce.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Obróbka tej rudy wymaga zaawansowanych umiejêtnoœci kowalskich i magicznych, aby w pe³ni wykorzystaæ jej potencja³.");
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
				Doc_PrintLines	(nDocID,  0, "Magia iluzji to subtelna i wymagaj¹ca dziedzina, która polega na manipulowaniu postrzeganiem rzeczywistoœci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Iluzjoniœci potrafi¹ tworzyæ obrazy, które wprowadzaj¹ w b³¹d zmys³y przeciwnika, ukrywaj¹ prawdziwe obiekty lub osoby, a nawet tworz¹ iluzoryczne dŸwiêki.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Opanowanie tej sztuki wymaga du¿ej wyobraŸni i precyzyjnej kontroli magicznych energii.");
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
				Doc_PrintLines	(nDocID,  0, "Dyplomacja to umiejêtnoœæ negocjacji i budowania relacji miêdzy ró¿nymi stronami.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dobry dyplomata potrafi s³uchaæ, zrozumieæ ró¿ne perspektywy i znaleŸæ kompromis, który zadowoli wszystkie strony.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kluczowe jest zachowanie spokoju, grzecznoœæ i umiejêtnoœæ przekonywania.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e dyplomacja to nie tylko sztuka s³ów, ale tak¿e gestów i niewerbalnych sygna³ów.");
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
				Doc_PrintLines	(nDocID,  0, "Etykieta dworska to zbiór zasad i norm zachowania obowi¹zuj¹cych na dworze królewskim.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opanuj sztukê uk³onów, tytu³owania i odpowiedniego ubioru.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Znajomoœæ protoko³u i umiejêtnoœæ zachowania siê w towarzystwie szlachty i monarchii s¹ kluczowe dla zdobycia szacunku i unikniêcia faux pas.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e etykieta to nie tylko zewnêtrzne zachowanie, ale tak¿e wewnêtrzna postawa szacunku i uprzejmoœci.");
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
				Doc_PrintLines	(nDocID,  0, "Opowiadanie historii to umiejêtnoœæ przyci¹gania uwagi s³uchaczy i przekazywania im emocji oraz m¹droœci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opowieœci mog¹ byæ epickie, dramatyczne lub humorystyczne, ale zawsze powinny mieæ wyraŸny pocz¹tek, rozwiniêcie i zakoñczenie.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U¿ywaj barwnego jêzyka, opisywaj szczegó³y i wci¹gaj s³uchaczy w œwiat swojej opowieœci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e dobra historia to taka, która pozostaje w pamiêci na d³ugo po jej wys³uchaniu.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_071 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_071;
	
	if (Bonus_ItWr_Book[71])
	{ description			=	"Hodowla pszczó³ (przeczytane)"; }
	else
	{ description			=	"Hodowla pszczó³"; };
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
				Doc_PrintLines	(nDocID,  0, "Hodowla pszczó³ to sztuka wymagaj¹ca cierpliwoœci i wiedzy o tych po¿ytecznych owadach.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zak³adaj ule w miejscach os³oniêtych od wiatru, ale dobrze nas³onecznionych. Dbaj o zdrowie pszczó³, regularnie kontroluj¹c ule i zapewniaj¹c im odpowiednie warunki do rozwoju.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zbieraj miód i wosk z zachowaniem ostro¿noœci, aby nie naraziæ pszczó³ na stres.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e pszczo³y odgrywaj¹ kluczow¹ rolê w zapylaniu roœlin, a ich ochrona jest istotna dla ekosystemu.");
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
				Doc_PrintLines	(nDocID,  0, "Jubilerstwo to sztuka tworzenia bi¿uterii z metali szlachetnych i kamieni. Wymaga precyzyjnych narzêdzi i umiejêtnoœci obróbki materia³ów.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Naucz siê technik kucia, lutowania i osadzania kamieni.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Projektuj unikalne wzory, które bêd¹ odzwierciedlaæ piêkno i elegancjê.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e ka¿da sztuka bi¿uterii powinna byæ nie tylko estetyczna, ale i trwa³a.");
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
				Doc_PrintLines	(nDocID,  0, "Tworzenie ceramiki to staro¿ytne rzemios³o, które ³¹czy w sobie praktycznoœæ i sztukê.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Proces zaczyna siê od wyboru odpowiedniej gliny, która bêdzie dobrze formowaæ siê na kole garncarskim lub pod rêkami rzemieœlnika.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kiedy surowa forma jest gotowa, nale¿y j¹ pozostawiæ do wyschniêcia, a nastêpnie wypaliæ w piecu, aby zyska³a trwa³oœæ. Wypalona ceramika mo¿e byæ szkliwiona i ponownie wypalona, co nadaje jej barwê i po³ysk. ");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e ka¿de naczynie, miska czy rzeŸba to unikalne dzie³o, które odzwierciedla indywidualny styl i umiejêtnoœci twórcy.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_074 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_074;
	
	if (Bonus_ItWr_Book[74])
	{ description			=	"Tworzenie pergaminów (przeczytane)"; }
	else
	{ description			=	"Tworzenie pergaminów"; };
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
				Doc_PrintLines	(nDocID,  0, "Tworzenie pergaminów to proces wymagaj¹cy precyzji i cierpliwoœci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zaczyna siê od obróbki skór zwierz¹t, najczêœciej owczych, cielêcych lub koŸlêcych. Skóry moczy siê w wapiennej wodzie, aby usun¹æ w³osy i t³uszcz, a nastêpnie naci¹ga na ramy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po wyschniêciu, powierzchniê skóry wyg³adza siê pumeksem, tworz¹c idealnie g³adk¹ powierzchniê do pisania.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pergaminy s¹ nastêpnie przycinane do odpowiednich rozmiarów i gotowe do zapisu magicznych run czy staro¿ytnych tekstów.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_075 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_075;
	
	if (Bonus_ItWr_Book[75])
	{ description			=	"Struganie strza³ (przeczytane)"; }
	else
	{ description			=	"Struganie strza³"; };
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
				Doc_PrintLines	(nDocID,  0, "Tworzenie przedmiotów z drewna to sztuka, która wymaga znajomoœci ró¿nych technik i narzêdzi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zacznij od wyboru odpowiedniego drewna, takiego jak brzoza czy cis.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Do strugania strza³ potrzebujesz prostych, ale precyzyjnych narzêdzi, takich jak no¿e strugarskie i szlifowniki.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka¿da strza³a musi byæ idealnie prosta, z dobrze wywa¿onym grotem i piórami na koñcu, aby zapewniæ celnoœæ i zasiêg.");
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
				Doc_PrintLines	(nDocID,  0, "Sadzenie warzyw i zbo¿a to podstawa rolnictwa, która wymaga planowania i odpowiednich technik.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Marchew wymaga luŸnej, dobrze drenuj¹cej gleby, aby korzenie mog³y swobodnie rosn¹æ. Ziemniaki sadzi siê na g³êbokoœci oko³o 10 cm, w odstêpach co 30 cm.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pszenica natomiast wymaga przygotowania pola, siewu nasion na odpowiedniej g³êbokoœci i regularnego nawadniania.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e odpowiednia pielêgnacja, takie jak odchwaszczanie i nawo¿enie, znacz¹co wp³ywa na jakoœæ i iloœæ plonów.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_077 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_077;
	
	if (Bonus_ItWr_Book[77])
	{ description			=	"Wspó³praca w walce (przeczytane)"; }
	else
	{ description			=	"Wspó³praca w walce"; };
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
				Doc_PrintLines	(nDocID,  0, "Wspó³praca z sojusznikami podczas walki wymaga koordynacji i zrozumienia swoich ról.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "omunikacja jest kluczowa – ustalcie sygna³y i strategie przed walk¹. Zawsze b¹dŸ œwiadomy pozycji swoich sojuszników, aby unikaæ przypadkowych ataków.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wykorzystuj swoje umiejêtnoœci do wspierania innych, na przyk³ad magowie mog¹ os³aniaæ wojowników, a ³ucznicy powinni likwidowaæ odleg³e zagro¿enia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e zgrana dru¿yna jest znacznie silniejsza ni¿ suma jej poszczególnych cz³onków.");
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
				Doc_PrintLines	(nDocID,  0, "Sztuka uwodzenia to umiejêtnoœæ zdobywania serc i uwagi innych osób.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kluczowe s¹ tu charyzma, pewnoœæ siebie i umiejêtnoœæ rozmowy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "B¹dŸ uwa¿ny i empatyczny, s³uchaj swojego rozmówcy i reaguj na jego potrzeby.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wykorzystuj subtelne gesty, spojrzenia i komplementy, aby zbudowaæ napiêcie i zainteresowanie.");
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
				Doc_PrintLines	(nDocID,  0, "Astronomia to nauka o gwiazdach, planetach i innych cia³ach niebieskich.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Poznanie ruchów planet, faz ksiê¿yca i konstelacji gwiazd pozwala na lepsze zrozumienie kosmosu.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U¿ywaj teleskopów i map nieba, aby obserwowaæ ruchy niebieskie i zjawiska astronomiczne.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e astronomia nie tylko pozwala na naukowe odkrycia, ale tak¿e inspiruje i zachwyca swoj¹ niezmierzonoœci¹.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_080 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_080;
	
	if (Bonus_ItWr_Book[80])
	{ description			=	"RzeŸbiarstwo (przeczytane)"; }
	else
	{ description			=	"RzeŸbiarstwo"; };
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
				Doc_PrintLines	(nDocID,  0, "RzeŸbiarstwo to sztuka tworzenia trójwymiarowych form z ró¿nych materia³ów, takich jak kamieñ, drewno czy glina.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opanuj techniki ciêcia, kszta³towania i wyg³adzania materia³ów.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zacznij od prostych projektów, a nastêpnie przechodŸ do bardziej skomplikowanych form.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e ka¿da rzeŸba powinna odzwierciedlaæ twoj¹ wizjê i emocje, nadaj¹c martwym materia³om ¿ycie.");
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
				Doc_PrintLines	(nDocID,  0, "Kaligrafia to piêkne pisanie, które ³¹czy w sobie artystyczny wyraz i precyzjê techniczn¹.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "U¿ywaj odpowiednich narzêdzi, takich jak pióra, tusze i specjalne papiery.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Opanuj ró¿ne style pisma, od gotyckiego po italikê, i æwicz regularnie, aby doskonaliæ swoje umiejêtnoœci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e kaligrafia to nie tylko estetyka, ale tak¿e sposób wyra¿ania myœli i uczuæ.");
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
				Doc_PrintLines	(nDocID,  0, "Tkactwo to staro¿ytna sztuka tworzenia tkanin poprzez przeplatanie nici.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opanuj ró¿ne techniki tkackie, takie jak tkanie na krosnach, haftowanie i plecenie.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wybieraj ró¿ne materia³y, takie jak we³na, jedwab czy bawe³na, aby tworzyæ unikalne wzory i tekstury.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e tkactwo wymaga precyzji i cierpliwoœci, ale efekty mog¹ byæ zarówno artystyczne, jak i praktyczne.");
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
				Doc_PrintLines	(nDocID,  0, "Maskowanie to umiejêtnoœæ ukrywania swojej obecnoœci i zlewania siê z otoczeniem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wykorzystuj naturalne elementy krajobrazu, takie jak krzewy, drzewa i kamienie, aby zakryæ swoj¹ sylwetkê.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Noszenie odpowiedniego kamufla¿u, dostosowanego do danego terenu, równie¿ jest kluczowe.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e umiejêtne poruszanie siê i minimalizowanie ha³asu s¹ równie wa¿ne jak samo maskowanie.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_084 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_084;
	
	if (Bonus_ItWr_Book[84])
	{ description			=	"Leczenie magi¹ (przeczytane)"; }
	else
	{ description			=	"Leczenie magi¹"; };
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
				Doc_PrintLines	(nDocID,  0, "Leczenie magi¹ to sztuka, która wymaga znajomoœci odpowiednich zaklêæ i eliksirów.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Skupienie i wewnêtrzny spokój s¹ kluczowe do skutecznego przekierowania magicznej energii na rany i choroby.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Poznaj podstawowe inkantacje i symbole lecznicze, które pomog¹ w regeneracji tkanek, oczyszczaniu z trucizn i przywracaniu si³ witalnych.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e odpowiednie przygotowanie i medytacja mog¹ znacznie zwiêkszyæ efektywnoœæ leczenia.");
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
				Doc_PrintLines	(nDocID,  0, "Negocjacje to umiejêtnoœæ osi¹gania porozumienia pomiêdzy stronami o ró¿nych interesach.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kluczowe jest tu s³uchanie i zrozumienie potrzeb oraz motywacji drugiej strony.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U¿ywaj logicznych argumentów i proponuj kompromisy, które mog¹ byæ korzystne dla obu stron.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e cierpliwoœæ, opanowanie i umiejêtnoœæ czytania mowy cia³a s¹ nieocenione w skutecznych negocjacjach.");
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
				Doc_PrintLines	(nDocID,  0, "Tworzenie magicznych amuletów to proces, który ³¹czy w sobie rzemios³o i magiê.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wybierz odpowiednie materia³y, takie jak metale szlachetne, kamienie i runy, które maj¹ specyficzne w³aœciwoœci magiczne.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Odpowiednie zaklêcia i ceremonie nadadz¹ amuletom po¿¹dane moce ochronne, lecznicze lub wzmacniaj¹ce.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e amulet nabiera mocy równie¿ dziêki wierze i intencji jego w³aœciciela.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_087 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_087;
	
	if (Bonus_ItWr_Book[87])
	{ description			=	"Rozbrajanie pu³apek (przeczytane)"; }
	else
	{ description			=	"Rozbrajanie pu³apek"; };
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
				Doc_PrintLines	(nDocID,  0, "Rozbrajanie pu³apek to umiejêtnoœæ, która wymaga precyzji, cierpliwoœci i wiedzy o mechanizmach u¿ywanych do ich konstruowania.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najpierw dok³adnie zbadaj pu³apkê, aby zrozumieæ, jak dzia³a.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U¿ywaj odpowiednich narzêdzi, takich jak szczypce, no¿e i haczyki, aby bezpiecznie dezaktywowaæ mechanizmy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e najwa¿niejsze jest zachowanie spokoju i ostro¿noœci, aby unikn¹æ przypadkowego uruchomienia pu³apki.");
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
				Doc_PrintLines	(nDocID,  0, "Tworzenie mozaik to artystyczna technika polegaj¹ca na uk³adaniu ma³ych kawa³ków materia³u, takich jak kamienie, szk³o czy ceramika, w celu stworzenia wiêkszego obrazu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wybieraj kolory i kszta³ty, które razem utworz¹ harmonijn¹ ca³oœæ.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U¿ywaj odpowiednich narzêdzi do ciêcia i uk³adania elementów, a tak¿e mocnych klejów i zapraw.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e ka¿da mozaika opowiada historiê i mo¿e byæ wyrazem twojej kreatywnoœci.");
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
				Doc_PrintLines	(nDocID,  0, "Zaklinanie broni to proces, który ³¹czy w sobie magiê i kowalstwo, nadaj¹c orê¿owi nadnaturalne w³aœciwoœci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wykorzystuj specjalne inkantacje, runy i magiczne substancje, aby wzmocniæ ostrze, nadaæ mu zdolnoœci elementarne lub ochronne.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka¿de zaklêcie musi byæ precyzyjnie wykonane i dostosowane do rodzaju broni oraz intencji u¿ytkownika.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e zaklêta broñ jest potê¿nym narzêdziem, które wymaga odpowiedzialnego u¿ycia.");
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
				Doc_PrintLines	(nDocID,  0, "Kolonizacja niezamieszka³ych terenów wymaga dok³adnego planowania i przygotowania.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wybierz odpowiednie miejsce, uwzglêdniaj¹c dostêp do wody, ¿yznych gleb i surowców naturalnych.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zorganizuj grupê kolonizatorów, zapewniaj¹c im niezbêdne narzêdzia, nasiona i zapasy ¿ywnoœci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e budowanie nowych osiedli to proces stopniowy, który wymaga wytrwa³oœci, wspó³pracy i zdolnoœci do adaptacji w nieznanych warunkach.");
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
				Doc_PrintLines	(nDocID,  0, "Zarz¹dzanie magazynem i transportem to kluczowe aspekty logistyki, które zapewniaj¹ ci¹g³oœæ operacji i dostaw.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Upewnij siê, ¿e magazyn jest dobrze zorganizowany, a wszystkie towary s¹ odpowiednio oznaczone i przechowywane.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Planowanie transportu wymaga koordynacji i uwzglêdnienia czynników takich jak trasy, czas dostawy i bezpieczeñstwo ³adunków.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e efektywne zarz¹dzanie zasobami i terminowe dostawy to fundamenty udanej logistyki.");
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
				Doc_PrintLines	(nDocID,  0, "Meteorologia to nauka o atmosferze i jej zjawiskach, która pomaga przewidywaæ warunki pogodowe.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opanuj techniki obserwacji chmur, wiatru i temperatury, aby zrozumieæ zmieniaj¹ce siê wzorce pogodowe.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wykorzystuj narzêdzia takie jak barometry, higrometry i anemometry do dok³adnych pomiarów.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e prognozowanie pogody to nie tylko analiza danych, ale tak¿e umiejêtnoœæ interpretacji i przewidywania zjawisk atmosferycznych na podstawie zdobytej wiedzy i doœwiadczenia.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_093 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_093;
	
	if (Bonus_ItWr_Book[93])
	{ description			=	"Tworzenie witra¿y (przeczytane)"; }
	else
	{ description			=	"Tworzenie witra¿y"; };
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
				Doc_PrintLines	(nDocID,  0, "Tworzenie witra¿y to artystyczna technika ³¹czenia kawa³ków kolorowego szk³a za pomoc¹ o³owianych ram.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opanuj umiejêtnoœæ ciêcia szk³a na precyzyjne kszta³ty i sk³adania ich w harmonijne wzory.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U¿ywaj ró¿nych kolorów i tekstur szk³a, aby uzyskaæ efektowne efekty œwietlne.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e witra¿e s¹ nie tylko dekoracyjne, ale tak¿e mog¹ opowiadaæ historie i wprowadzaæ magiczn¹ atmosferê do wnêtrz.");
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
				Doc_PrintLines	(nDocID,  0, "Przewodzenie karawanom to odpowiedzialne zadanie, które wymaga umiejêtnoœci organizacyjnych i znajomoœci terenu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Planuj trasy, uwzglêdniaj¹c dostêpnoœæ wody, schronienia i bezpiecznych miejsc na postój.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dbaj o morale i bezpieczeñstwo cz³onków karawany, monitoruj¹c ich stan zdrowia i reaguj¹c na zagro¿enia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e skuteczne przewodzenie karawanom wymaga cierpliwoœci, doœwiadczenia i umiejêtnoœci radzenia sobie w trudnych sytuacjach.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_095 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_095;
	
	if (Bonus_ItWr_Book[95])
	{ description			=	"Machiny oblê¿nicze (przeczytane)"; }
	else
	{ description			=	"Machiny oblê¿nicze"; };
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
				Doc_PrintLines	(nDocID,  0, "Machiny oblê¿nicze, takie jak tarany i katapulty, odgrywaj¹ kluczow¹ rolê w zdobywaniu ufortyfikowanych twierdz.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tarany s¹ u¿ywane do wy³amywania bram i murów, podczas gdy katapulty wyrzucaj¹ ciê¿kie pociski na du¿e odleg³oœci, niszcz¹c struktury obronne i siej¹c zamêt w szeregach przeciwnika.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Precyzyjna obs³uga tych machin wymaga zespo³owej pracy i synchronizacji.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Upewnij siê, ¿e wszystkie czêœci s¹ w dobrym stanie i odpowiednio nasmarowane, a operatorzy dobrze wyszkoleni, aby maksymalnie wykorzystaæ potencja³ machin oblê¿niczych.");
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
				Doc_PrintLines	(nDocID,  0, "Prowadzenie karczmy to sztuka, która wymaga zaradnoœci, goœcinnoœci i dobrego zarz¹dzania. Dbaj o atmosferê, utrzymuj¹c czystoœæ i wygodê lokalu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zapewnij ró¿norodne menu z lokalnymi specja³ami oraz dobrze zaopatrzony bar z najlepszymi trunkami.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e zadowoleni goœcie to najlepsi reklamodawcy, wiêc zawsze traktuj ich z szacunkiem i uprzejmoœci¹.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dobrze przemyœlana logistyka dostaw oraz zarz¹dzanie personelem to klucz do sukcesu ka¿dej karczmy.");
				Doc_Show		(nDocID);
};
///******************************************************************************************
instance ItWr_Book_097 (ItemPR_BookXp)
{
	visual					=	"ItWr_Book_02_05.3ds";
	on_state[0]				=	Use_ItWr_Book_097;
	
	if (Bonus_ItWr_Book[97])
	{ description			=	"¯ycie klasztorne (przeczytane)"; }
	else
	{ description			=	"¯ycie klasztorne"; };
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
				Doc_PrintLines	(nDocID,  0, "¯ycie klasztorne to oddanie siê duchowym praktykom, medytacji i pracy na rzecz wspólnoty.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dni s¹ wype³nione modlitwami, studiowaniem œwiêtych tekstów oraz prac¹ fizyczn¹, tak¹ jak uprawa roli czy rzemios³o.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Klasztor jest miejscem ciszy i kontemplacji, gdzie ka¿dy cz³onek spo³ecznoœci d¹¿y do osi¹gniêcia wewnêtrznego spokoju i harmonii.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wspó³praca i wzajemne wsparcie s¹ fundamentami ¿ycia klasztornego, a dyscyplina i pokora pomagaj¹ w duchowym rozwoju.");
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
				Doc_PrintLines	(nDocID,  0, "Kryptografia to nauka o szyfrowaniu i deszyfrowaniu informacji, która od wieków by³a kluczowa dla bezpiecznej komunikacji.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Opanowanie technik kodowania, takich jak podstawienie i transpozycja, pozwala na tworzenie bezpiecznych wiadomoœci.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Znajomoœæ matematyki i algorytmów jest niezbêdna do zrozumienia bardziej zaawansowanych systemów szyfruj¹cych.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e skuteczna kryptografia wymaga nie tylko znajomoœci technik, ale tak¿e kreatywnoœci w tworzeniu nowych metod ochrony informacji.");
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
				Doc_PrintLines	(nDocID,  0, "Praca zwiadowcy to nieustanne przemieszczanie siê, obserwacja i zbieranie informacji na temat ruchów wroga oraz terenu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zwiadowca musi byæ bieg³y w sztuce kamufla¿u i skradania siê, aby unikn¹æ wykrycia.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wa¿na jest tak¿e umiejêtnoœæ szybkiego podejmowania decyzji i przekazywania zdobytych informacji.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pamiêtaj, ¿e zwiadowca dzia³a czêsto na terytorium wroga, wiêc umiejêtnoœæ przetrwania w trudnych warunkach i radzenie sobie w niebezpiecznych sytuacjach s¹ kluczowe.");
				Doc_Show		(nDocID);
};
