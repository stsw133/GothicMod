///******************************************************************************************
prototype ItemPR_BookLp (C_Item)
{
	name						=	"Ksiπøka";
	mainflag					=	ITEM_KAT_DOCS;
	flags						=	ITEM_MULTI;
	
	value						=	400;
	material					=	MAT_LEATHER;
	scemeName					=	"MAPSEALED";
	
	TEXT[1]						=	NAME_Bonus_Lp;
	COUNT[1]					=	1;
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
	INV_ZBIAS					=	175;
};

prototype ItemPR_BookXp (C_Item)
{
	name						=	"Ksiπøka";
	mainflag					=	ITEM_KAT_DOCS;
	flags						=	ITEM_MULTI;
	
	value						=	50;
	material					=	MAT_LEATHER;
	scemeName					=	"MAPSEALED";
	
	TEXT[4]						=	"Zapewnia premiÍ doúwiadczenia.";
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
	INV_ZBIAS					=	175;
};

prototype ItemPR_Map (C_Item)
{
	name						=	"Mapa";
	mainflag					=	ITEM_KAT_DOCS;
	flags						=	ITEM_MULTI;
	
	material					=	MAT_LEATHER;
	scemeName					=	"MAP";
	
	TEXT[5]						=	NAME_Value;
};

///******************************************************************************************

var int Bonus_ItWr_BookLp[20];
var int Bonus_ItWr_BookXp[150];

///******************************************************************************************
/// LP books
///******************************************************************************************
instance ItWr_BookLp_Fight1H (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_04.3ds";
	on_state[0]					=	Use_ItWr_BookLp_Fight1H;
	
	if (Bonus_ItWr_BookLp[0])	{	description = "Kunszt obronny po≥udniowcÛw (przeczytane)";	}
	else						{	description = "Kunszt obronny po≥udniowcÛw";				};
};
func void Use_ItWr_BookLp_Fight1H()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[0])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[0] = true;	};
	CreateInvItem(self, ItWr_BookLp_Fight1H);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Red_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Kunszt obronny po≥udniowcÛw");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po≥udniowiec w porÛwnaniu z mieszkaÒcem pÛ≥nocy nie polega tak bardzo na sile fizycznej, preferujπc zwinnoúÊ, a gorπcy klimat jego ojczyzny zmusza go do korzystania z løejszych i dajπcych wiÍkszπ swobodÍ ruchÛw pancerzy. W zwiπzku z tym styl walki ludzi po≥udnia jest ca≥kowicie inny od tego, do ktÛrego jesteúmy przyzwyczajeni.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Prawdopodobnie najs≥ynniejszym manewrem wywodzπcym siÍ z po≥udnia jest jednorÍczny blok po≥πczony z krokiem wstecz: cofniÍcie siÍ pozwala na zmniejszenie si≥y wrogiego ciosu i umoøliwia przyjÍcie postawy u≥atwiajπcej wyprowadzenie kontrataku.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_Fight2H (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_03.3ds";
	on_state[0]					=	Use_ItWr_BookLp_Fight2H;
	
	if (Bonus_ItWr_BookLp[1])	{	description = "Bloki dwurÍczne (przeczytane)";	}
	else						{	description = "Bloki dwurÍczne";				};
};
func void Use_ItWr_BookLp_Fight2H()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[1])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[1] = true;	};
	CreateInvItem(self, ItWr_BookLp_Fight2H);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Red_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Bloki dwurÍczne");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Blokowanie ciosÛw przeciwnika za pomocπ broni dwurÍcznej umoøliwia silnym wojownikom gwa≥towne powstrzymanie wroga i przerwanie ewentualnej kombinacji jego ciosÛw.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zatrzymany w ten sposÛb przeciwnik traci inicjatywÍ i ≥atwiej go potem skutecznie zaatakowaÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_StarPower (ItemPR_BookLp) 
{
	visual						=	"ItWr_Book_02_02.3ds";
	on_state[0]					=	Use_ItWr_BookLp_StarPower;
	
	if (Bonus_ItWr_BookLp[2])	{	description = "Boska moc gwiazd (przeczytane)";	}
	else						{	description = "Boska moc gwiazd";				};
};
func void Use_ItWr_BookLp_StarPower()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[2])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[2] = true;	};
	CreateInvItem(self, ItWr_BookLp_StarPower);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Mage_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Mage_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "...jednak kiedy upÛr wo≥u po≥πczy siÍ z przebieg≥oúciπ wojownika, strzeøcie siÍ, albowiem bÍdziecie úwiadkami wielkich zmian.");
				Doc_PrintLines	(nDocID,  0, "UpÛr wo≥u po≥πczony z wytrwa≥oúciπ wojownika moøe zaburzyÊ odwieczny porzπdek. Kosmiczna materia oddzielajπca wymiary staje siÍ coraz cieÒsza i s≥absza. WkrÛtce nie bÍdzie w stanie powstrzymaÊ istot Beliara przed wdarciem siÍ do naszej rzeczywistoúci.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W pradawnych czasach, kiedy oba úwiaty by≥y po≥πczone silnπ wiÍziπ, s≥udzy Z≥a mogli bez przeszkÛd plπdrowaÊ nasze ziemie, i tylko moc Innosa oraz jego WybraÒca pozwoli≥a nam odeprzeÊ ataki Wroga."	);
				Doc_PrintLines	(nDocID,  1, "Jeúli taka sytuacja siÍ powtÛrzy, niechaj Innos ma nas w swej opiece, albowiem od stuleci nie by≥o poúrÛd nas jego WybraÒca.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_GodsGift (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_01.3ds";
	on_state[0]					=	Use_ItWr_BookLp_GodsGift;
	
	if (Bonus_ItWr_BookLp[3])	{	description = "Dar od bogÛw (przeczytane)";	}
	else						{	description = "Dar od bogÛw";				};
};
func void Use_ItWr_BookLp_GodsGift()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[3])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[3] = true;	};
	CreateInvItem(self, ItWr_BookLp_GodsGift);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Mage_L.tga", false); 
				Doc_SetPage		(nDocID,  1, "Book_Mage_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLine	(nDocID,  0, "Magia");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Dar od bogÛw");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z dawien dawna cz≥ek prÛbowa≥ zg≥ÍbiÊ naturÍ i genezÍ sztuk magicznych. Jeno gdzie rozpoczπÊ takie poszukiwania? Czy magiÍ moøna w ogÛle opisaÊ? PrÛøno szukaÊ rÛwnie niespÛjnego zjawiska we úwiecie: wszak magia jednako leczy i zabija, tworzy i niszczy.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Gdzie zatem szukaÊ tej nieopisanej potÍgi? Magia jest tym, czym jest - najpotÍøniejszym i najwspanialszym darem, jaki cz≥owiek otrzyma≥ od bogÛw. Baczcie jeno, by dar Ûw rych≥o nie sta≥ siÍ przekleÒstwem, gdyø nieliczni bÍdπ w stanie zrozumieÊ magiÍ i wykorzystaÊ jπ do w≥asnych celÛw. Inni sami zostanπ wykorzystani.");	
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Barthos z Laran");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_SecretsOfMagic (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_02.3ds";
	on_state[0]					=	Use_ItWr_BookLp_SecretsOfMagic;
	
	if (Bonus_ItWr_BookLp[4])	{	description = "Tajniki magii (przeczytane)";	}
	else						{	description = "Tajniki magii";					};
};
func void Use_ItWr_BookLp_SecretsOfMagic()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[4])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[4] = true;	};
	CreateInvItem(self, ItWr_BookLp_SecretsOfMagic);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Mage_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Mage_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0,  275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLine	(nDocID,  0, "Tajniki magii");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Magia nie zamieszkuje w ciele samego magusa. Jest on raczej jako zmyúlny rzemieúlnik, a ona jako narzÍdzie jego. Takoø poczπtkujπcy magus uczy siÍ jak onπ moc okie≥znaÊ i kierowaÊ niπ wedle swojej woli.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Jego duch nadaje owej mocy poøπdany kszta≥t, ogniskuje jπ i wreszcie uwalnia. W takich chwilach dusza magusa wznosi siÍ ponad nasz úwiat i spoziera na Drugπ StronÍ, gdzie stoi pa≥ac potÍgi, ktÛrπ on kszta≥tuje i przekazuje.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "Barthos z Laran");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_PowerfulArt (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_03.3ds";
	on_state[0]					=	Use_ItWr_BookLp_PowerfulArt;
	
	if (Bonus_ItWr_BookLp[5])	{	description = "WszechpotÍøna sztuka (przeczytane)";	}
	else						{	description = "WszechpotÍøna sztuka";				};
};
func void Use_ItWr_BookLp_PowerfulArt()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[5])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[5] = true;	};
	CreateInvItem(self, ItWr_BookLp_PowerfulArt);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Mage_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Mage_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLine	(nDocID,  0, "WszechpotÍøna sztuka");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "KsiÍga dla tych, co w sztukach magicznych uczeni sπ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "UmiejÍtnoúci magusa wzrastajπ z czasem. Najpierw jest jako ziarno zboøa, ktÛre trzeba chroniÊ, by nie zmarnia≥o. Lecz wkrÛtce ziarno wypuszcza kie≥ki, stajπc siÍ piÍknπ roúlinπ.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Z kaødym nowym dniem roúlina staje siÍ wiÍksza i silniejsza. Tak samo jest z magusem. Na poczπtku nauki jego si≥y sπ wπt≥e, lecz z czasem okrzepnie, stajπc siÍ potÍøniejszym. Ciπg≥e dπøenie do absolutnej perfekcji powinno byÊ nadrzÍdnym celem kaødego adepta magii. Ziarno potÍgi dane im przez bogÛw jest bowiem najcenniejszym darem, jakie úmiertelnik moøe otrzymaÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_Elementare (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_04.3ds";
	on_state[0]					=	Use_ItWr_BookLp_Elementare;
	
	if (Bonus_ItWr_BookLp[6])	{	description = "Arcanum øywio≥Ûw (przeczytane)";	}
	else						{	description = "Arcanum øywio≥Ûw";				};
};
func void Use_ItWr_BookLp_Elementare()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[6])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[6] = true;	};
	CreateInvItem(self, ItWr_BookLp_Elementare);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Mage_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Mage_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLine	(nDocID,  0, "Arcanum øywio≥Ûw");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Miejsce magii w ziemskim porzπdku");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wiele badaÒ przeprowadzono, g≥owiπc siÍ nad zaleønoúciπ magii od wszelakich øywio≥Ûw. W rezultacie przyjÍto, iø jest ona - magia - ostatecznym, najpotÍøniejszym øywio≥em ze wszystkich. Wszak to dziÍki niej magus moøe kszta≥towaÊ pozosta≥e si≥y natury wedle w≥asnego upodobania.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Kaødy øywio≥, w swej najczystszej formie, ujawnia powiπzania z magiπ. Oczywiúcie, naturalne manifestacje takich powiπzaÒ naleøπ do rzadkoúci i sπ skrzÍtnie poszukiwane. ZdolnoúÊ magusa do kontrolowania potÍgi øywio≥Ûw stanowi ostateczny dowÛd, iø magia jest najczystszym i najwspanialszym dobrem obecnym w naszej egzystencji.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_RealPower (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_05.3ds";
	on_state[0]					=	Use_ItWr_BookLp_RealPower;
	
	if (Bonus_ItWr_BookLp[7])	{	description = "Prawdziwa moc (przeczytane)";	}
	else						{	description = "Prawdziwa moc";					};
};
func void Use_ItWr_BookLp_RealPower()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[7])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[7] = true;	};
	CreateInvItem(self, ItWr_BookLp_RealPower);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Mage_L.tga", false); 
				Doc_SetPage		(nDocID,  1, "Book_Mage_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLine	(nDocID,  0, "Prawdziwa moc");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "åwiÍta powinnoúÊ mÍdrca");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To potÍga odrÛønia magusa od zwyk≥ego úmiertelnika. W≥adny wykorzystywaÊ boskπ moc, magus wyjÍty jest spod tych wszystkich praw natury, ktÛre dotyczπ ludzi prostych i krÛlÛw jednako. ");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Gdy magus osiπgnie poziom, ktÛry pozwoli mu wykroczyÊ poza granice ludzkiej egzystencji, wstÍpuje do úwiata niedostÍpnego zwyk≥ym úmiertelnikom. Moøe prze≥amywaÊ bariery czasu i przestrzeni, i nawet úmierÊ - ostateczna bariera - nie jest mu straszna.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_MagicOre (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_02.3ds";
	on_state[0]					=	Use_ItWr_BookLp_MagicOre;
	
	if (Bonus_ItWr_BookLp[8])	{	description = "Magiczna ruda (przeczytane)";	}
	else						{	description = "Magiczna ruda";					};
};
func void Use_ItWr_BookLp_MagicOre()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[8])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[8] = true;	};
	CreateInvItem(self, ItWr_BookLp_MagicOre);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najlepszπ rudÍ do wyrobu wszelkiego rodzaju orÍøa znaleüÊ moøna w kopalniach w dolinie Khorinis. Wykutπ z niej broÒ cechuje niebywa≥a wytrzyma≥oúÊ. Pok≥ady rudy wystÍpujπ zwykle g≥Íboko pod ziemiπ, lecz g≥upcem ten, kto nie podejmie trudu wydobycia jej na úwiat≥o dzienne. Niewiele jest takich skarbÛw na úwiecie...");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Magiczna broÒ przebije kaødy pancerz i pogruchocze kaødπ tarczÍ. Zaiste, krÛlewski to orÍø i krÛlewskπ cenÍ trzeba zap≥aciÊ za choÊby sztylet wykuty z tego szlachetnego kruszcu. Takoø surowπ cenÍ p≥acπ gÛrnicy pracujπcy w kopalniach. RudÍ nie≥atwo oddzieliÊ od skalnych pok≥adÛw, tak jakby z ca≥ych si≥ walczy≥a, by pozostaÊ w ≥onie matki Ziemi.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_Varant1 (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_04.3ds";
	on_state[0]					=	Use_ItWr_BookLp_Varant1;
	
	if (Bonus_ItWr_BookLp[9])	{	description = "Bitwa o Varrant Tom 1 (przeczytane)";	}
	else						{	description = "Bitwa o Varrant Tom 1";					};
};
func void Use_ItWr_BookLp_Varant1()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[9])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[9] = true;	};
	CreateInvItem(self, ItWr_BookLp_Varant1);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Red_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "...ale sprytny Rhobar postanowi≥ zaatakowaÊ. Zebra≥ swoje si≥y i kaza≥ im nÍkaÊ s≥abszπ, prawπ flankÍ nieprzyjaciela. Nie tracπc chwili, krÛl pchnπ≥ najlepsze swe oddzia≥y na wroga, i przebi≥ siÍ przezeÒ niczym miecz przecinajπcy mÍøa. Wojska krÛlewskie par≥y zatem bez wytchnienia w stronÍ Varant. Rhobar wiedzia≥ wszak, øe jedyna szansa ocalenia leøy w rozbiciu armii nieprzyjaciela i niedopuszczeniu do po≥πczenia si≥ Gellona i Lukkora.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "  Najpierw jednak postanowi≥ przeciπÊ ich linie zaopatrzenia...");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "...Gellon poleg≥ a jego armia posz≥a w rozsypkÍ. Ale Rhobar nie zamierza≥ daÊ przeciwnikowi chwili wytchnienia i rzuci≥ swe si≥y na pozosta≥e oddzia≥y wroga. Tu jednak Lukkor rzuci≥ siÍ na krÛlewskich znienacka i zada≥ straszliwy cios wyczerpanym wojskom Rhobara...");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_Varant2 (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_05.3ds";
	on_state[0]					=	Use_ItWr_BookLp_Varant2;
	
	if (Bonus_ItWr_BookLp[10])	{	description = "Bitwa o Varrant Tom 2 (przeczytane)";	}
	else						{	description = "Bitwa o Varrant Tom 2";					};
};
func void Use_ItWr_BookLp_Varant2()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[10])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[10] = true;	};
	CreateInvItem(self, ItWr_BookLp_Varant2);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Red_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wojna by≥a skoÒczona. Varant straci≥o swe morskie porty, tak potrzebne dla zaopatrywania armii. KrÛl Rhobar nie traci≥ wiÍcej czasu na polu bitwy, lecz zostawi≥ swych genera≥Ûw, by ci rozprawili siÍ z niedobitkami nieprzyjaciela. Varrantczycy posiadali juø tylko jedno ognisko oporu, zgromadzone wokÛ≥ Lukkora, najpotÍøniejszego genera≥a ca≥ego narodu, ktÛry umiejÍtnie zamieni≥ poraøkÍ w zwyciÍstwo.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale teraz jego armia znalaz≥a siÍ w potrzasku. Sytuacja zda≥a siÍ byÊ beznadziejna, choÊ jego wojska przewyøsza≥y si≥y krÛlewskie liczbπ i wyposaøeniem. Oto jeden z MyrtaÒskich bohaterÛw, mÍøny genera≥ imieniem Lee, zwabi≥ przeciwnika w pu≥apkÍ. Na podmok≥ej, bagnistej ziemi ciÍøka kawaleria Lukkora nie mia≥a szans w starciu ze zwinnymi øo≥nierzami Lee. Zdziesiπtkowane oddzia≥y Varantu wkrÛtce musia≥y uznaÊ wyøszoúÊ przeciwnika. Lukkor zosta≥ pokonany.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_MyrthanianPoetry (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_02.3ds";
	on_state[0]					=	Use_ItWr_BookLp_MyrthanianPoetry;
	
	if (Bonus_ItWr_BookLp[11])	{	description = "Poezja myrtaÒska (przeczytane)";	}
	else						{	description = "Poezja myrtaÒska";				};
};
func void Use_ItWr_BookLp_MyrthanianPoetry()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[11])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[11] = true;	};
	CreateInvItem(self, ItWr_BookLp_MyrthanianPoetry);
	
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
				Doc_PrintLine	(nDocID,  0, "    PieúÒ");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "		  Skruchy");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Na poczπtku by≥a moc, jak jasny únieg bia≥a,");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dziú niewielka czπstka dawnej chwa≥y pozosta≥a.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przypomina o jednoúci z dawnych lat,");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "jakøe rÛønej od chciwoúci, ktÛrπ úwiat");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "nasz zdepta≥ i odrzuci≥ po wsze czasy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nasz duch nie zdzierøy≥ ostatecznej prÛby,");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "a poøπdanie bÍdzie ürÛd≥em naszej zguby.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bo nie masz juø jednoúci na tym úwiecie.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_GodsWisdom1 (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_01.3ds";
	on_state[0]					=	Use_ItWr_BookLp_GodsWisdom1;
	
	if (Bonus_ItWr_BookLp[12])	{	description = "MπdroúÊ bogÛw Tom 1 (przeczytane)";	}
	else						{	description = "MπdroúÊ bogÛw Tom 1";				};
};
func void Use_ItWr_BookLp_GodsWisdom1()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[12])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[12] = true;	};
	CreateInvItem(self, ItWr_BookLp_GodsWisdom1);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Red_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wys≥uchajcie s≥Ûw boøych, bo pragnπ oni, byúcie ich wys≥uchali. Przestrzegajcie praw boøych, bo chcπ oni, byúcie ich przestrzegali. Czcijcie kap≥anÛw boøych, bo oni sπ wybraÒcami ≥aski...");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "S≥owa Innosa: A gdybyúcie nie mogli ich pojπÊ, nie odrzucajcie s≥Ûw kap≥anÛw, bo g≥oszπ oni mojπ mπdroúÊ. Gdyø ja jestem S≥oÒcem na niebie, úwiat≥em i øyciem na Ziemi. A wszystko, co wrogiem jest S≥oÒca, jest i moim wrogiem, i zostanie wygnane do krainy wiecznej ciemnoúci.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "S≥owa Adanosa: Øyjcie i pracujcie, bo dzieÒ stworzono po to, by mπø mÛg≥ øyÊ i pracowaÊ. Szukajcie wiedzy, byúcie mogli przekazaÊ jπ synom swoim, gdyø taka jest wola moja. Ale strzeøcie siÍ, bo cz≥ek g≥upi i leniwy zostanie wygnany do krainy wiecznej ciemnoúci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "S≥owa Beliara: A ktokolwiek wystπpi przeciw woli boøej, ze mnπ bÍdzie mia≥ do czynienia. Na jego cia≥o bÛl zeúlÍ okrutny, a jego duch pÛjdzie ze mnπ do krainy wiecznej ciemnoúci.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_GodsWisdom2 (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_02.3ds";
	on_state[0]					=	Use_ItWr_BookLp_GodsWisdom2;
	
	if (Bonus_ItWr_BookLp[13])	{	description = "MπdroúÊ bogÛw Tom 2 (przeczytane)";	}
	else						{	description = "MπdroúÊ bogÛw Tom 2";				};
};
func void Use_ItWr_BookLp_GodsWisdom2()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[13])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[13] = true;	};
	CreateInvItem(self, ItWr_BookLp_GodsWisdom2);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Red_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O zaraniu dziejÛw: Na poczπtku nie by≥o dnia ani nocy, i øadne øywe stworzenie nie przemierza≥o úwiata. Wtedy pojawi≥ siÍ Innos, a jego blask pada≥ na ZiemiÍ. Innos obdarzy≥ úwiat darem øycia. Ale øadne stworzenie nie úmia≥o spojrzeÊ w twarz Innosa, wiÍc dobry bÛg stworzy≥ S≥oÒce. Lecz mimo to, jasnoúÊ by≥a zbyt wielka, toteø Innos podzieli≥ siÍ na dwoje i tak powsta≥ Beliar. Beliar stworzy≥ noc. Teraz cz≥owiek mÛg≥ wreszcie øyÊ, lecz nie wiedzia≥ jak. Dlatego Innos podzieli≥ siÍ po raz wtÛry i tak powsta≥ Adanos. Adanos przyniÛs≥ ludziom pomys≥owoúÊ i mπdroúÊ, ktÛrej tak bardzo potrzebowali.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dlatego Innos postanowi≥ zostawiÊ ludzkoúÊ pod opiekπ Adanosa i uda≥ siÍ na spoczynek. Lecz Beliar p≥onπ≥ z zazdroúci, gdyø ludzie bali siÍ go i nie oddawali mu czci. Tedy postanowi≥ Beliar stworzyÊ cz≥owieka, ktÛry modli≥by siÍ tylko do niego. Ale cz≥owiek Ûw by≥ jako wszyscy inni, i ba≥ siÍ Beliara i nie oddawa≥ mu czci. BÛg nocy rozz≥oúci≥ siÍ i zabi≥ cz≥owieka krzyczπc: Dobrze! BÛjcie siÍ mnie zatem, ale czeúÊ oddacie mi, choÊby po úmierci. Tymi s≥owy ustanowi≥ Beliar úmierÊ - kres øywota ludzkiego."	);
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_GodsWisdom3 (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_03.3ds";
	on_state[0]					=	Use_ItWr_BookLp_GodsWisdom3;
	
	if (Bonus_ItWr_BookLp[14])	{	description = "MπdroúÊ bogÛw Tom 3 (przeczytane)";	}
	else						{	description = "MπdroúÊ bogÛw Tom 3";				};
};
func void Use_ItWr_BookLp_GodsWisdom3()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[14])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[14] = true;	};
	CreateInvItem(self, ItWr_BookLp_GodsWisdom3);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Red_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Red_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Innos pozwoli≥, by ludzie mogli go us≥yszeÊ i przemawiaÊ do niego. Pozwoli≥ im rÛwnieø czyniÊ cuda i nazwa≥ je magiπ. DziÍki magii, ludzie zaczÍli zmieniaÊ úwiat wedle swego upodobania, jedni mπdrze, inni g≥upio. Widzπc to, Innos zabra≥ dar magii ludziom g≥upim i pozostawi≥ go w rÍkach ludzi úwiat≥ych. Obdarzy≥ ich rÛwnieø innymi ≥askami, czyniπc swoimi kap≥anami i nadajπc im miano magÛw.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ludzie czcili kap≥anÛw Innosa i oddawali im czeúÊ, ale wielu magÛw odwrÛci≥o siÍ od Innosa i uciek≥o siÍ pod opiekÍ jego boskiego brata - Adanosa. Kasta magÛw uleg≥a rozbiciu. Ci, ktÛrzy podπøali za bogiem mπdroúci nazwali siebie magami KrÍgu Wody. Wyznawcy Innosa nazywani zaú byli Magami Ognia.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_Hunting (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_02.3ds";
	on_state[0]					=	Use_ItWr_BookLp_Hunting;
	
	if (Bonus_ItWr_BookLp[15])	{	description = "£owy i zwierzyna (przeczytane)";	}
	else						{	description = "£owy i zwierzyna";				};
};
func void Use_ItWr_BookLp_Hunting()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[15])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[15] = true;	};
	CreateInvItem(self, ItWr_BookLp_Hunting);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jego zapiski przetrwa≥y ca≥e wieki i po dziú dzieÒ uznawane sπ za najznakomitsze kompendium wiedzy o polowaniu. Po d≥ugich latach starÊ na pÛ≥nocnym pograniczu, niemal kaødy obywatel potrafi pos≥ugiwaÊ siÍ ≥ukiem. Jednak sztuka polowania daleko wykracza poza podstawowe zasady strzelania z ≥uku! Zwierzyna jest wszak p≥ocha i nieprzewidywalna!");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Polowanie z ≥ukiem ma swe poczπtki w czasach staroøytnych. W ciπgu ca≥ych tysiπcleci nie zasz≥y w technikach ≥owieckich wiÍksze zmiany i tak juø najprawdopodobniej pozostanie. Jakie czynniki wp≥ywajπ tak naprawdÍ na skutecznoúÊ pos≥ugiwania siÍ ≥ukiem? To w≥aúnie rozpoznanie tych czynnikÛw czyni prawdziwego mistrza ≥ucznictwa.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_Fight (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_03.3ds";
	on_state[0]					=	Use_ItWr_BookLp_Fight;
	
	if (Bonus_ItWr_BookLp[16])	{	description = "Sztuka walki (przeczytane)";	}
	else						{	description = "Sztuka walki";				};
};
func void Use_ItWr_BookLp_Fight()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[16])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[16] = true;	};
	CreateInvItem(self, ItWr_BookLp_Fight);
	
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
				Doc_PrintLines	(nDocID,  0, "Od 2000 lat nauki mistrzÛw kszta≥tujπ rozwÛj sztuki walki.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "ZrÍcznoúÊ, opanowanie, szybkoúÊ, zdolnoúÊ obserwacji i b≥yskawicznego podejmowania decyzji - wszystkie te umiejÍtnoúci naleøy bezustannie doskonaliÊ. Jedynie doskona≥a koordynacja ruchÛw i zachowanie w≥aúciwej postawy pozwolπ na prawid≥owy rozwÛj twych umiejÍtnoúci.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przes≥anie duchowych i cielesnych nauk Mistrza przetrwa≥o wiele lat.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jego niepospolity sukces by≥ natchnieniem dla kolejnych pokoleÒ. åwiat zmienia≥ siÍ bez przerwy, ale idealna harmonia si≥ duchowych i sprawnoúci cia≥a pozosta≥a niezmiennπ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_Astronomy (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_05.3ds";
	on_state[0]					=	Use_ItWr_BookLp_Astronomy;
	
	if (Bonus_ItWr_BookLp[17])	{	description = "Astronomia (przeczytane)";	}
	else						{	description = "Astronomia";					};
};
func void Use_ItWr_BookLp_Astronomy()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[17])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[17] = true;	};
	CreateInvItem(self, ItWr_BookLp_Astronomy);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Brown_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Brown_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W centrum wszechúwiata znajduje siÍ Morgrad, co zawiera cztery øywio≥y - ziemiÍ, wodÍ, ogieÒ i wiatr. Morgrad, co jest wiecznie niespokojnym sercem Beliara. A nad nim rozciπga siÍ sfera niebios.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W odwiecznej hierarchii kosmosu cz≥owiek stoi poúrodku. Jego dusza pozwala mu doúwiadczaÊ ≥ask niebiaÒskich, ale jego cia≥o stworzone jest z substancji Morgradu. Jest wiÍc cz≥owiek odzwierciedleniem ca≥ego úwiata.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Orbity wszystkich planet, czyli drogi, jakie pokonujπ okrπøajπc Morgrad, zmieniajπ siÍ nieznacznie z up≥ywem lat. Pewnym jest zatem, iø ca≥y wszechúwiat zmierza powoli do jakiegoú celu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Obserwujπc ruch ksiÍøyca na nocnym niebie ustaliliúmy d≥ugoúÊ roku i stworzyliúmy pierwszy kalendarz.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_Focus (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_05.3ds";
	on_state[0]					=	Use_ItWr_BookLp_Focus;
	
	if (Bonus_ItWr_BookLp[18])	{	description = "Kamienie ogniskujπce (przeczytane)";	}
	else						{	description = "Kamienie ogniskujπce";				};
};
func void Use_ItWr_BookLp_Focus()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[18])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[18] = true;	};
	CreateInvItem(self, ItWr_BookLp_Focus);
	
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
				Doc_PrintLines	(nDocID,  0, "Magia skumulowana w kamieniu ulega wielokrotnemu wzmocnieniu zanim wyzwolπ jπ s≥owa zaklÍcia. To, czy efekt bÍdzie trwa≥y czy tylko chwilowy, zaleøy wy≥πcznie od maga.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tym samym, po wyzwoleniu energii, kamieÒ staje siÍ jeno pustπ, pozbawionπ mocy skorupπ.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "S≥owa, ktÛre naleøy wypowiedzieÊ, aby uwolniÊ moc kamienia, nie powinny byÊ zagadkπ dla wiÍkszoúci adeptÛw sztuk magicznych. W dzisiejszych czasach, nawet formu≥y pozwalajπce tchnπÊ magiÍ w nowy artefakt spowszednia≥y.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale tylko nieliczni majπ umiejÍtnoúci potrzebne do ponownego na≥adowania kamienia. Te prastare formu≥y sπ pilnie strzeøonym sekretem arcymistrzÛw magii.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zatem, MÍdrcze - otwÛrz swπ duszÍ na s≥owa staroøytnej potÍgi.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_Golem (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_05.3ds";
	on_state[0]					=	Use_ItWr_BookLp_Golem;
	
	if (Bonus_ItWr_BookLp[19])	{	description = "Arcanum Golum (przeczytane)";	}
	else						{	description = "Arcanum Golum";					};
};
func void Use_ItWr_BookLp_Golem()
{
	if (Npc_IsPlayer(self) && !Bonus_ItWr_BookLp[19])	{	B_RaiseAttribute(self, default, 1); Bonus_ItWr_BookLp[19] = true;	};
	CreateInvItem(self, ItWr_BookLp_Golem);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_Mage_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_Mage_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Magia golemÛw");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tylko ktoú, kto choÊ raz stawi≥ czo≥a ucieleúnieniu øywio≥Ûw, jakim jest Golem, zrozumie lÍk i respekt, jaki istoty te budzπ wúrÛd najmÍøniejszych nawet podrÛønikÛw.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Te kamienne kolosy sπ niemal niezniszczalne. Øaden miecz, topÛr czy ≥uk nie jest w stanie wyrzπdziÊ im powaøniejszej krzywdy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jedyne doniesienia o zwyciÍskiej walce stoczonej z Golemem pochodzπ z zapiskÛw bezimiennego najemnika. Opisa≥ on jak potÍønymi ciosami wojennego m≥ota uda≥o mu siÍ rozbiÊ potÍønego nieprzyjaciela w drobny py≥.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
/// XP books
///******************************************************************************************

var int RandAtrDocsCounter;
func void Npc_AddDocsCounter(var int index, var int volume)
{
	if (Npc_IsPlayer(self))
	{
		var int value; value = volume*25 + 25;
		
		if (volume > 1 && !MEM_ReadStatArr(Bonus_ItWr_BookXp, index - volume + 1))
		{
			B_Say (self, self, "$CANTUNDERSTANDTHIS");
		}
		else if (!MEM_ReadStatArr(Bonus_ItWr_BookXp, index))
		{
			B_GivePlayerExp(value * 2);
			MEM_WriteStatArr(Bonus_ItWr_BookXp, index, true);
			
			RandAtrDocsCounter += value;
			if (RandAtrDocsCounter/1000) > ((RandAtrDocsCounter-value)/1000)
			{
				PfxRandomizedAttributesOrder(MEM_ReadStatArr(RandomizedAttributesOrder, RandAtrDocsCounter/1000 % 5));
				if (RandAtrDocsCounter >= 5000)	{	RandAtrDocsCounter -= 5000;	};
			}
			else
			{
				Print_ExtPrcnt (-1, YPOS_ExpGained, ConcatStrings(IntToString(1000 - (RandAtrDocsCounter%1000)), " pozosta≥o do bonusu!"), FONT_ScreenSmall, COL_White, TIME_Print);
			};
		};
	};
};

///******************************************************************************************
instance ItWr_BookXp_000 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_000;
	
	if (Bonus_ItWr_BookXp[0])	{	description = "Na granicy úwiat≥a I (przeczytane)";	}
	else						{	description = "Na granicy úwiat≥a I";				};
	
	TEXT[0]						=	"Zapiski mistrza Telariona z Uniwersytetu ArkanÛw,";
	TEXT[1]						=	"sporzπdzone podczas podrÛøy badawczej";
	TEXT[2]						=	"do Doliny Mgie≥, roku 37 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_000()
{
	Npc_AddDocsCounter(0, 1);
	CreateInvItem(self, ItWr_BookXp_000);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_01_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_01_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Na granicy úwiat≥a");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "åmierÊ nie stanowi koÒca, jak g≥oszπ kap≥ani prostego ludu. Stanowi raczej prÛg, ktÛrego natura nie jest jeszcze w pe≥ni poznana. Dla niektÛrych - koniec, dla innych - poczπtek.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W Dolinie Mgie≥, gdzie wiatr nie milknie nawet na chwilÍ, gdzie cienie drzew przypominajπ wychudzone d≥onie zmar≥ych, spotka≥em ludzi, ktÛrych relacje kaøπ poddaÊ w wπtpliwoúÊ wiele nauk z Akademii.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najbardziej znamienna by≥a opowieúÊ myúliwego o imieniu Beran, cz≥owieka prostego, lecz spoglπdajπcego na úwiat z niepokojπcπ przenikliwoúciπ. Podczas samotnych ≥owÛw zosta≥ ciÍøko zraniony przez rozjuszonego dzika. Przez ca≥π noc leøa≥ bez przytomnoúci wúrÛd traw, bliski úmierci.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Twierdzi≥, øe przez ten czas Ñunosi≥ siÍ nad sobπî, widzπc w≥asne cia≥o od gÛry, jakby by≥ jedynie obserwatorem cudzego losu. S≥ysza≥ g≥osy ñ ciche, znajome, przemawiajπce bez s≥Ûw, a jednak zrozumiale. Widzia≥ postacie bez twarzy, oúwietlone zimnym blaskiem, czekajπce.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W rozmowie z nim uderzy≥a mnie nie tyle treúÊ, co sposÛb mÛwienia ñ nie by≥a to opowieúÊ szaleÒca, lecz cz≥owieka g≥Íboko poruszonego, ktÛry coú przeøy≥ i sam nie potrafi≥ tego nazwaÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Inni mieszkaÒcy doliny, choÊ bardziej niechÍtni do rozmÛw, przyznawali siÍ do podobnych doznaÒ. Zw≥aszcza ci, ktÛrzy balansowali na krawÍdzi øycia: ofiary upadkÛw, oparzeÒ, topielcy, starcy w gorπczkowych majakach. Opisywa≥y one zawsze ten sam stan ñ ciszÍ, úwiat≥o, obecnoúÊ, zawieszenie.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_001 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_001;
	
	if (Bonus_ItWr_BookXp[1])	{	description = "Na granicy úwiat≥a II (przeczytane)";	}
	else						{	description = "Na granicy úwiat≥a II";					};
	
	TEXT[0]						=	"Zapiski mistrza Telariona z Uniwersytetu ArkanÛw,";
	TEXT[1]						=	"sporzπdzone podczas podrÛøy badawczej";
	TEXT[2]						=	"do Doliny Mgie≥, roku 37 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_001()
{
	Npc_AddDocsCounter(1, 2);
	CreateInvItem(self, ItWr_BookXp_001);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_01_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_01_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Na granicy úwiat≥a");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z punktu widzenia arkanistycznego, zjawiska te mogπ wskazywaÊ na istnienie przestrzeni poúredniej ñ liminalnego miejsca miÍdzy øyciem a tym, co za nim. W niektÛrych traktatach wspomina siÍ o istnieniu sfery Przejúcia ñ lustrzanym odbiciu úwiata øywych, z ktÛrego dusza moøe jeszcze zawrÛciÊ, jeúli tylko wola lub przeznaczenie jej na to pozwolπ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kap≥ani odrzucajπ takie poglπdy, uznajπc je za bluüniercze, lecz alchemicy i magowie snujπ w≥asne teorie. Rytua≥y przejúcia stosowane przez plemiona wschodnich bagien ñ podczas ktÛrych cia≥a sπ smarowane mieszankami spowalniajπcymi bicie serca i pogrπøajπcymi umys≥ w transie ñ mogπ mieÊ na celu w≥aúnie dotkniÍcie tej granicy, bez jej przekraczania.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W jednym z moich eksperymentÛw zastosowa≥em podobnπ mieszankÍ zio≥owπ na ochotniku ñ m≥odym adepcie, imieniem Narvius. Po podaniu wyciπgu z czarnego g≥ogu i korzenia Lethe, zapad≥ on w g≥Íboki letarg, z ktÛrego wybudzi≥ siÍ dopiero po trzech dniach.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Podczas transkrypcji jego relacji okaza≥o siÍ, øe rÛwnieø widzia≥ úwiat≥o, otaczajπce go zewszπd, lecz niespalajπce. Us≥ysza≥ imiÍ w≥asne, wypowiadane przez g≥os matki, ktÛra zmar≥a wiele lat wczeúniej. Odczuwa≥ spokÛj, ale teø niepokÛj ñ jakby kaøda decyzja mia≥a zawaøyÊ na czymú wiÍkszym, niø jego w≥asny los.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Czy dusza moøe siÍ zagubiÊ, zawisnπÊ miÍdzy úwiatami? Czy to, co my uznajemy za sen i majaki, nie jest w rzeczywistoúci u≥amkiem innego porzπdku? Nie mam jeszcze odpowiedzi, lecz jedno wiem na pewno ñ úmierÊ nie jest milczeniem, lecz echem.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_002 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_002;
	
	if (Bonus_ItWr_BookXp[2])	{	description = "Cisza poúrÛd wzgÛrz I (przeczytane)";	}
	else						{	description = "Cisza poúrÛd wzgÛrz I";					};
	
	TEXT[0]						=	"Fragment dziennikÛw badawczych brata Envalda,";
	TEXT[1]						=	"klasztor w Treomarze. Rok 22 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_002()
{
	Npc_AddDocsCounter(2, 1);
	CreateInvItem(self, ItWr_BookXp_002);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_02_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_02_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Cisza poúrÛd wzgÛrz");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie ma nic bardziej przeraøajπcego niø cisza, ktÛra powinna byÊ przerwana ludzkim g≥osem. Cisza w miejscu, gdzie jeszcze wczoraj ktoú piek≥ chleb, poi≥ byd≥o, zmywa≥ krew z rπk po rzezi úwini.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Taka cisza czeka≥a mnie w dolinie Arbel, gdzie dotar≥em w ramach badania przypadkÛw nag≥ego opuszczania osad przez ca≥e spo≥ecznoúci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dolina ta nie jest odosobnionym przypadkiem. W ostatnich trzech dekadach podobne zjawiska mia≥y miejsce na granicach Marchii PÛ≥nocnej, wschodnich stepach Cerdanu oraz w pobliøu dawnych ruin Wergil.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "We wszystkich przypadkach znika≥y ca≥e wioski ñ nie tylko ludzie, ale i ich úlady. Sto≥y by≥y zastawione, zwierzÍta porzucone, ogieÒ jeszcze tli≥ siÍ w paleniskach. Nie znajdowano cia≥, nie toczy≥y siÍ bitwy. Øadnych znakÛw walki, rabunku, paniki.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W Arbel zostawi≥em straønikÛw i spÍdzi≥em noc sam, w chacie cieúli. Notowa≥em temperaturÍ powietrza, wilgotnoúÊ, znaki magiczne ñ nic nadzwyczajnego.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jednak nocπ s≥ysza≥em coú, czego nie potrafiÍ wyjaúniÊ. Chrapliwy oddech. Szelest krokÛw na suchych liúciach, zbyt rÛwny i úwiadomy, by przypisaÊ go zwierzynie. Gdy wyszed≥em na zewnπtrz, nie by≥o nikogo.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_003 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_003;
	
	if (Bonus_ItWr_BookXp[3])	{	description = "Cisza poúrÛd wzgÛrz II (przeczytane)";	}
	else						{	description = "Cisza poúrÛd wzgÛrz II";					};
	
	TEXT[0]						=	"Fragment dziennikÛw badawczych brata Envalda,";
	TEXT[1]						=	"klasztor w Treomarze. Rok 22 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_003()
{
	Npc_AddDocsCounter(3, 2);
	CreateInvItem(self, ItWr_BookXp_003);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_02_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_02_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Cisza poúrÛd wzgÛrz");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dalsze badania ujawni≥y jedynie subtelne anomalie: lekkie odchylenia pola many, ktÛre ledwie rejestrowa≥y moje przyrzπdy. W jednym z domostw, wúrÛd dzieciÍcych zabawek, znalaz≥em coú, co wprawi≥o mnie w dreszcz ñ drewnianπ figurkÍ, przedstawiajπcπ humanoidalnπ postaÊ bez twarzy, z d≥ugimi rÍkami i bez stÛp. By≥a starannie ustawiona na progu, jakby mia≥a kogoú zatrzymaÊ... lub zaprosiÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Miejscowi, z ktÛrymi rozmawia≥em w okolicznych osadach, nie chcieli mÛwiÊ o Arbel. NiektÛrzy twierdzili, øe mieszkaÒcy Ñzostali wezwaniî - przez g≥os, ktÛry s≥yszy siÍ we únie. Inni, øe zostali ÑwziÍci pod ziemiÍî, øe noc otwar≥a swoje usta i po≥knÍ≥a ich bez úladu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Teorie? MnÛstwo. PrzekleÒstwo? Moøliwe, ale brak úladÛw rytualnych. Dzia≥anie kultycznych sekt? Takøe nieprawdopodobne przy takiej skali i braku przemocy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Osobiúcie sk≥aniam siÍ ku tezie o dzia≥aniu sfery przenikajπcej ñ tak zwanej Trzeciej Warstwy, o ktÛrej piszπ magowie z Elturi: úwiata rÛwnoleg≥ego, stycznego, ktÛry w wyjπtkowych okolicznoúciach moøe Ñnak≥adaÊ siÍî na nasz.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jedno jest pewne ñ osady nie znikajπ bez powodu. Ktoú lub coú zbiera tych ludzi. Czy dla jakiegoú celu? Czy z kaprysu? Czy sπ jeszcze tam, gdzie stali? Czy patrzπ na nas zza cienkiej zas≥ony?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dla bezpieczeÒstwa nakaza≥em spalenie chat w Arbel, ale nie wiem, czy ogieÒ zniszczy coú, czego nie moøna dotknπÊ. Nie spa≥em od tamtej nocy. Czasem wydaje mi siÍ, øe s≥yszÍ ich kroki za úcianπ klasztoru. Ale przecieø to niemoøliwe. Prawda?");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_004 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_004;
	
	if (Bonus_ItWr_BookXp[4])	{	description = "UwiÍziony g≥os I (przeczytane)";	}
	else						{	description = "UwiÍziony g≥os I";				};
	
	TEXT[0]						=	"Esej autorstwa Arcymaga Relmira,";
	TEXT[1]						=	"sporzπdzony na polecenie Rady PiÍciu.";
	TEXT[2]						=	"Zakazany do kopiowania bez zgody.";
};
func void Use_ItWr_BookXp_004()
{
	Npc_AddDocsCounter(4, 1);
	CreateInvItem(self, ItWr_BookXp_004);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_03_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_03_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "UwiÍziony g≥os");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie ma nic prostszego niø z≥amaÊ cz≥owieka. Czasem wystarczy g≥Ûd. Czasem strach. Ale najskuteczniejszy jest dotyk magii - tej cichej, bez koloru, bez b≥ysku. Tej, ktÛra nie podpala, lecz szepcze.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "ZaklÍcia kontroli umys≥u, choÊ rzadko nauczane otwarcie, stanowiπ jedne z najstarszych i najpotÍøniejszych form wp≥ywu arkanicznego. W nich kryje siÍ nie tylko w≥adza nad cia≥em, ale nad samπ istotπ cz≥owieczeÒstwa.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W trakcie badaÒ w Wieøy Szronu mia≥em okazjÍ testowaÊ prostπ wersjÍ Dominare Mentem na wiÍüniach, ktÛrych zgodzi≥ siÍ oddaÊ Zakon Inkwizycji.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W teorii zaklÍcie mia≥o jedynie ÑuspokoiÊî skazanego, lecz jego oczy gas≥y po pierwszym inkantacie. Nie odpowiada≥ na pytania. Nie reagowa≥ na imiÍ. Gdy kazano mu zabiÊ szczura, zrobi≥ to bez drøenia rÍki. Gdy kazano mu zjeúÊ w≥asne palce - prÛbowa≥, dopÛki nie powstrzymaliúmy go zaklÍciem ochronnym.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Problem nie leøy w dzia≥aniu samej magii. Ona wykonuje to, czego siÍ od niej øπda. Problem tkwi w pytaniu: czy nadal moøemy mÛwiÊ o cz≥owieku, jeúli decyzje nie naleøπ juø do niego?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pisa≥em do mistrza Ardevala z Vengaru, specjalisty od umys≥Ûw zaklÍtych, pytajπc o naturÍ Ñjaî w kontekúcie trwa≥ego zniewolenia. Odpisa≥ mi w sposÛb ch≥odny: ÑWola jest funkcjπ z≥oøenia impulsÛw. Magia tylko zmienia impuls. A czy alchemik zmienia istotÍ cz≥owieka, lejπc mu eliksir odwagi?î G≥Íboko siÍ z nim nie zgadzam.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_005 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_005;
	
	if (Bonus_ItWr_BookXp[5])	{	description = "UwiÍziony g≥os II (przeczytane)";	}
	else						{	description = "UwiÍziony g≥os II";					};
	
	TEXT[0]						=	"Esej autorstwa Arcymaga Relmira,";
	TEXT[1]						=	"sporzπdzony na polecenie Rady PiÍciu.";
	TEXT[2]						=	"Zakazany do kopiowania bez zgody.";
};
func void Use_ItWr_BookXp_005()
{
	Npc_AddDocsCounter(5, 2);
	CreateInvItem(self, ItWr_BookXp_005);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_03_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_03_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "UwiÍziony g≥os");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "RÛønica miÍdzy eliksirem a zaklÍciem zniewolenia leøy w namyúle. Cz≥owiek, wypijajπc eliksir, nadal myúli ñ inaczej, moøe szybciej lub odwaøniej, ale samodzielnie. Magia umys≥u nie wzmacnia decyzji ñ ona usuwa wybÛr.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W najgorszym przypadku, zaklÍcia te potrafiπ wykorzeniÊ ca≥e wspomnienia, przekszta≥cajπc ofiarÍ w puste naczynie. Ktoú moøe argumentowaÊ, øe to lepsze niø úmierÊ. Ale czymøe jest øycie, jeúli nie moøna go uznaÊ za w≥asne?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W ruinach Lothamar odnalaz≥em glif, ktÛrego znaczenia d≥ugo nie potrafi≥em rozszyfrowaÊ. Dziú wierzÍ, øe by≥ to symbol: po≥πczenie oka i zamkniÍtych ust.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Patrzysz, ale nie moøesz mÛwiÊ. Widzisz, ale nie moøesz dzia≥aÊ. To idealna metafora tego, co czyniπ czary zniewolenia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DopÛki magia s≥uøy uzdrowieniu, ochronie, tworzeniu - nie protestujÍ. Ale zniewolenie umys≥u powinno byÊ traktowane jak trucizna duszy. Nie przez wzglπd na ofiarÍ, lecz na maga. Kto raz posmakuje absolutnej kontroli, ten rzadko potrafi wrÛciÊ do dialogu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zamknπ≥em swoje notatki, zapieczÍtowa≥em formu≥y, zniszczy≥em runy. Nie dlatego, øe ba≥em siÍ tego, co stworzy≥em. Ale dlatego, øe nie ba≥em siÍ juø niczego.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "A to, bracie, jest zawsze pierwszy znak zguby.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_006 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_04.3ds";
	on_state[0]					=	Use_ItWr_BookXp_006;
	
	if (Bonus_ItWr_BookXp[6])	{	description = "Mowa kamieni I (przeczytane)";	}
	else						{	description = "Mowa kamieni I";					};
	
	TEXT[0]						=	"Notatki starszego badacza run,";
	TEXT[1]						=	"mistrza Virellona z Akademii Loryjskiej.";
	TEXT[2]						=	"Rok 49 po Wielkiej Erupcji.";
};
func void Use_ItWr_BookXp_006()
{
	Npc_AddDocsCounter(6, 1);
	CreateInvItem(self, ItWr_BookXp_006);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_04_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_04_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Mowa kamieni");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gdy m≥odzi adepci pytajπ mnie, dlaczego spÍdzi≥em szeúÊdziesiπt dwa lata øycia na roztrzπsaniu skamienia≥ych symboli wykutych w mokrych korytarzach pod gÛrami Sarr-Mereth, odpowiadam zawsze tak samo: bo tylko kamienie nigdy nie k≥amiπ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ludzie k≥amiπ. Kap≥ani zmyúlajπ. Kronikarze upiÍkszajπ. Ale rysa na obelisku nie zmienia kszta≥tu, choÊby nie wiem ilu wojownikÛw przelewa≥o krew za jej znaczenie. Runy, ktÛre odnajdujemy w ruinach, sπ jÍzykiem tych, ktÛrzy nie zostawili potomkÛw. Ale pozostawili myúl.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W ruinach Kars-Turai, po≥oøonych na pograniczu pustkowi, natrafi≥em niegdyú na kamiennπ bramÍ z≥oøonπ z czternastu segmentÛw.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Kaødy pokryty by≥ identycznym znakiem przypominajπcym spiralÍ zamkniÍtπ przez trzy kreski. WiÍkszoúÊ uzna≥a to za dekoracjÍ. Ja uzna≥em za intencjÍ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po latach porÛwnaÒ ze znaleziskami z GÛr Mgielnych zrozumia≥em: znak ten oznacza ÑpamiÍÊ, ktÛra nie chce byÊ zapomnianaî. Subtelna rÛønica. Nie ÑpamiÍÊî, ale w≥aúnie taka ñ ktÛra siÍ opiera, ktÛra trwa.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Te cywilizacje, ktÛre znamy tylko z run, nie mia≥y krÛlÛw, ktÛrych imiona przetrwa≥y. Nie mia≥y bogÛw, ktÛrzy przeszli prÛbÍ wiary. Ale mia≥y jÍzyk ñ pozbawiony gramatyki, lecz nie sensu. JÍzyk, ktÛry nie opowiada, tylko wskazuje.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_007 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_04.3ds";
	on_state[0]					=	Use_ItWr_BookXp_007;
	
	if (Bonus_ItWr_BookXp[7])	{	description = "Mowa kamieni II (przeczytane)";	}
	else						{	description = "Mowa kamieni II";				};
	
	TEXT[0]						=	"Notatki starszego badacza run,";
	TEXT[1]						=	"mistrza Virellona z Akademii Loryjskiej.";
	TEXT[2]						=	"Rok 49 po Wielkiej Erupcji.";
};
func void Use_ItWr_BookXp_007()
{
	Npc_AddDocsCounter(7, 2);
	CreateInvItem(self, ItWr_BookXp_007);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_04_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_04_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Mowa kamieni");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Podczas badaÒ w dolnych warstwach ruin Elkh-Yar natrafiliúmy na zespÛ≥ glifÛw przypominajπcych dzisiejsze znaki ostrzegawcze. Wielu uzna≥o je za rytualne. Ale w zestawieniu z rozk≥adem pomieszczeÒ, iloúciπ koúci w okolicy i obecnoúciπ pradawnej pu≥apki z gazem uzna≥em je za proste znaki informacyjne ñ Ñnie wchodü, umieraszî.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pomyúlcie o tym: ktoú, tysiπce lat temu, zada≥ sobie trud, by zostawiÊ ostrzeøenie. I wiedzia≥, øe nikt nie bÍdzie zna≥ jego mowy. WiÍc uøy≥ obrazu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "JÍzyk ruin jest jÍzykiem metafory. To, øe nie rozumiemy, nie znaczy, øe nie zostaliúmy ostrzeøeni.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ale najg≥Íbszy wstrzπs przeøy≥em w ruinach Varn-Tel. Tam, poúrÛd zupe≥nie nieznanych symboli, jeden z moich uczniÛw odnalaz≥ wzÛr identyczny z runπ z naszego w≥asnego archiwum. Nie by≥ to b≥πd. Symbol by≥ dok≥adnie taki sam ñ a oznacza≥ w naszej runice Ñmilczenieî.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Czy to dowÛd na wspÛlne ürÛd≥o jÍzyka? Czy echo dawnej katastrofy, po ktÛrej cywilizacje musia≥y zaczπÊ od nowa, zostawiajπc tylko jedno s≥owo? Czy moøe znak, øe ktoú tam, po drugiej stronie czasu, juø nas s≥ysza≥?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem. Ale jeúli mia≥bym przemÛwiÊ do przysz≥oúci, majπc do dyspozycji tylko jednπ runÍ, wybra≥bym tÍ samπ. Bo czasem cisza mÛwi najwiÍcej.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_008 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_008;
	
	if (Bonus_ItWr_BookXp[8])	{	description = "Prze≥amanie wzoru I (przeczytane)";	}
	else						{	description = "Prze≥amanie wzoru I";				};
	
	TEXT[0]						=	"Fragmenty dziennika mistrza Albrechtusa,";
	TEXT[1]						=	"wyklÍtego alchemika z Martwego KrÍgu.";
	TEXT[2]						=	"Spisane potajemnie w roku 16 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_008()
{
	Npc_AddDocsCounter(8, 1);
	CreateInvItem(self, ItWr_BookXp_008);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_05_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_05_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Prze≥amanie wzoru");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kaøde stworzenie nosi w sobie wzÛr ñ schemat, ktÛry powtarza siÍ od urodzenia aø po úmierÊ. Nie jest to wzÛr widoczny go≥ym okiem, lecz coú ukrytego w g≥Íbi miÍsa, pod øy≥π, za koúciπ. Nazwa≥em to niciπ øywej formy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z poczπtku wierzy≥em, øe jest ona niezmienna ñ boski rys, nienaruszalny. Ale gdy po raz pierwszy skrzyøowa≥em krew jaszczura skalnego z krwiπ psa straøniczego, a nastÍpnie wprowadzi≥em jπ do m≥odego kozio≥ka przy pomocy tkanek zarodkowych i eliksiru rozwarcia komÛrek, coú siÍ zmieni≥o.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "ZwierzÍ øy≥o. Na pierwszy rzut oka nic szczegÛlnego. Ale jego skÛra pokry≥a siÍ szorstkπ ≥uskπ, a ürenice wyd≥uøy≥y siÍ jak u gadÛw. Biega≥ szybciej, skaka≥ wyøej, nie spa≥.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Czwartego dnia rozszarpa≥ swoje rodzeÒstwo. Piπtego zdech≥ - nie z g≥odu, nie z rany, lecz z wewnÍtrznego rozk≥adu. Tak jakby cia≥o prÛbowa≥o byÊ dwoma rzeczami naraz i rozerwa≥o samo siebie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W kolejnych prÛbach uøy≥em ziÛ≥ harmonizujπcych: senna z doliny Dorthil, wyciπg z larwy mglistego chrzπszcza, krwi z martwego wiÍünia. Wyniki by≥y... bardziej trwa≥e, lecz mniej przewidywalne.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wyniki by≥y... bardziej trwa≥e, lecz mniej przewidywalne. Jedno z cielπt urodzi≥o siÍ z trzema oczami, ktÛre zamyka≥y siÍ osobno. Inne ros≥o zbyt szybko i zmar≥o po dwÛch tygodniach pod ciÍøarem w≥asnych koúci.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_009 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_009;
	
	if (Bonus_ItWr_BookXp[9])	{	description = "Prze≥amanie wzoru II (przeczytane)";	}
	else						{	description = "Prze≥amanie wzoru II";				};
	
	TEXT[0]						=	"Fragmenty dziennika mistrza Albrechtusa,";
	TEXT[1]						=	"wyklÍtego alchemika z Martwego KrÍgu.";
	TEXT[2]						=	"Spisane potajemnie w roku 16 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_009()
{
	Npc_AddDocsCounter(9, 2);
	CreateInvItem(self, ItWr_BookXp_009);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_05_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_05_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Prze≥amanie wzoru");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Moi asystenci zaczÍli szeptaÊ. Jeden uciek≥. Drugi otru≥ siÍ, piszπc na úcianie laboratorium jedno s≥owo: ÑodwrÛÊî. Nie pos≥ucha≥em.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie szukam potworÛw. Szukam zmiany. Prze≥amania ograniczeÒ formy, ktÛrπ narzuci≥ úwiat. Jeúli ziele potrafi rosnπÊ w úniegu, jeúli ogieÒ moøe paliÊ pod wodπ ñ dlaczego cz≥owiek nie mia≥by byÊ silniejszy, mπdrzejszy, mniej kruchy?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zaczπ≥em prÛbowaÊ na ludziach. WiÍüniowie. Heretycy. SkazaÒcy. Na≥oønice. U≥omni. Nikt nie p≥aka≥ za nimi.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zmieniali siÍ. Jeden straci≥ g≥os, ale s≥ysza≥ bicie serc w promieniu szeúciu stÛp. Inny wytrzymywa≥ wrzπtek na skÛrze, ale úni≥ tylko krzyk. Jeden z nich zniknπ≥. Dos≥ownie ñ zostawi≥ tylko cieÒ na úcianie, ktÛry nie znika do dziú. A moøe po prostu zniknÍ≥a jego forma. Moøe przeszed≥ gdzieú dalej. Nie wiem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dziú moje rÍce siÍ trzÍsπ. Krew, ktÛrπ pobra≥em z w≥asnego palca, da≥a reakcjÍ nieprzewidzianπ. Od tygodnia nie czujÍ bÛlu. Od trzech dni nie úpiÍ. Od wczoraj widzÍ rzeczy, ktÛre nie majπ úwiat≥a, a mimo to rzucajπ cieÒ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zamykam ten dziennik. Nie dlatego, øe koÒczÍ. Ale dlatego, øe moøe juø nie jestem sobπ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_010 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_010;
	
	if (Bonus_ItWr_BookXp[10])	{	description = "W cieniu Prze≥Íczy I (przeczytane)";	}
	else						{	description = "W cieniu Prze≥Íczy I";				};
	
	TEXT[0]						=	"Zapiski Harlena Gorretha, podrÛønika";
	TEXT[1]						=	"i kartografa z krÛlestwa Ilvar.";
	TEXT[2]						=	"Znalezione przy jego ciele w dolinie Ysnar.";
};
func void Use_ItWr_BookXp_010()
{
	Npc_AddDocsCounter(10, 1);
	CreateInvItem(self, ItWr_BookXp_010);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_06_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_06_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "W cieniu Prze≥Íczy");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "MÛwiπ, øe PrzeklÍta Prze≥Ícz nigdy nie przebacza drugiego kroku. Øe pierwszy stawia siÍ z odwagπ, ale drugi z wπtpliwoúciπ - a to w≥aúnie ona úciπga na ciebie to, co tam czyha. MÛwiπ teø, øe kto przejdzie ca≥y trakt, juø nigdy nie wrÛci taki sam. Albo nie wrÛci wcale.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wyruszy≥em wczesnπ wiosnπ. Mia≥em trzy cele: sporzπdziÊ dok≥adnπ mapÍ prze≥Íczy, odnaleüÊ ruiny wieøy zwiadowczej z czasÛw wojny z Ur-Mazarem, oraz... przestaÊ uciekaÊ przed w≥asnym cieniem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To ostatnie nie by≥o w planie, ale Prze≥Ícz to miejsce, ktÛre wyciπga z cz≥owieka wiÍcej, niø sam jest gotÛw zobaczyÊ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pierwsze dni by≥y spokojne. ånieg topnia≥ powoli, rzeki jeszcze nie wezbra≥y. Puste szlaki, g≥uche echo, zwalone mosty. NiepokÛj przyszed≥ dopiero pÛüniej, gdy düwiÍki zaczÍ≥y brzmieÊ... znajomo. Krok, ktÛry nie by≥ mÛj. Oddech, ktÛry nie by≥ z wiatru.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Trzeciego dnia natrafi≥em na kamienny obelisk - g≥adki, z pojedynczym znakiem wyrytym jakby pazurem: spiralny krπg z rozdarciem po úrodku. Nie zna≥em jego znaczenia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W nocy po jego zobaczeniu przyúni≥o mi siÍ, øe úpiÍ pod ziemiπ, wúrÛd koúci, i øe ktoú mnie wo≥a, ale nie g≥osem - pamiÍciπ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_011 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_011;
	
	if (Bonus_ItWr_BookXp[11])	{	description = "W cieniu Prze≥Íczy II (przeczytane)";	}
	else						{	description = "W cieniu Prze≥Íczy II";					};
	
	TEXT[0]						=	"Zapiski Harlena Gorretha, podrÛønika";
	TEXT[1]						=	"i kartografa z krÛlestwa Ilvar.";
	TEXT[2]						=	"Znalezione przy jego ciele w dolinie Ysnar.";
};
func void Use_ItWr_BookXp_011()
{
	Npc_AddDocsCounter(11, 2);
	CreateInvItem(self, ItWr_BookXp_011);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_06_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_06_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "W cieniu Prze≥Íczy");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kolejne dni by≥y jak marsz przez wspomnienie. Napotyka≥em miejsca, ktÛrych nie zna≥em, ale ktÛre wydawa≥y siÍ znajome. KamieÒ, ktÛry przypomina≥ dom mojej matki. Zbocze, jak to z m≥odoúci w gÛrach Orven. DüwiÍki przypomina≥y úmiech, ktÛrego nikt nie wyda≥.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W po≥owie drogi zaczπ≥em widzieÊ postacie. Zawsze za daleko, by rozpoznaÊ. Zawsze nieruchome, gdy patrzy≥em. Gdy przystawa≥em, znika≥y.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Na szÛsty dzieÒ znalaz≥em ruinÍ wieøy. Tam nie by≥o czasu. Mchy nie ros≥y, ogieÒ nie chcia≥ siÍ tliÊ. W úrodku sta≥ stÛ≥, a na nim mapa - moja mapa. Taka sama, jakπ nosi≥em przy pasie, ale oznaczona innymi szlakami. Kiedy porÛwna≥em jπ z mojπ, drogi siÍ zgadza≥y - ale miejsca juø nie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To nie by≥a mapa tego, co widzia≥em. To by≥a mapa tego, co pamiÍta≥em.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "SiÛdmego dnia wrÛci≥em. Nikt nie wierzy≥. Tylko moja d≥oÒ - od tej pory pokryta cienkπ, czarnπ siatkπ øy≥ - przypomina mi, øe tam by≥em. Øe Prze≥Ícz istnieje nie tylko w úwiecie, ale i w nas.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeúli tam ruszysz, nie pytaj o drogÍ. Pytaj, czy to naprawdÍ ty chcesz iúÊ - czy moøe coú innego w tobie juø ruszy≥o przodem.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_012 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_012;
	
	if (Bonus_ItWr_BookXp[12])	{	description = "Oko w szafirze I (przeczytane)";	}
	else						{	description = "Oko w szafirze I";				};
	
	TEXT[0]						=	"RÍkopis brata Melverena,";
	TEXT[1]						=	"przechowywany w KsiÍdze ZakazÛw.";
	TEXT[2]						=	"Przed lekturπ wymagana zgoda Arcyopata.";
};
func void Use_ItWr_BookXp_012()
{
	Npc_AddDocsCounter(12, 1);
	CreateInvItem(self, ItWr_BookXp_012);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_07_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_07_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Oko w szafirze");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie kaødy dar jest b≥ogos≥awieÒstwem. Nie kaøda relikwia zosta≥a dana nam przez Boga. Nie kaødy, kto mÛwi, øe widzi prawdÍ - naprawdÍ jπ widzi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "PiszÍ to w tajemnicy, w nocy, przy úwietle jednej úwiecy, z pergaminu wyciÍtego ze starej homilii. To, co spisujÍ, nie jest przeznaczone dla uczniÛw.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ani dla kap≥anÛw. Ani dla nikogo, kto nadal wierzy, øe úwiat dzieli siÍ tylko na úwiat≥o i cieÒ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Relikwia Proroka trafi≥a do klasztoru trzydzieúci dwa lata temu. By≥a to ozdobna szkatu≥a, zamkniÍta na trzy pieczÍcie i otwierana tylko raz do roku, w czasie najd≥uøszej nocy. Wewnπtrz: oko - niegnijπce, osadzone w szafirze, przezroczyste jak woda.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "MÛwiono, øe to pozosta≥oúÊ po Proroku Ymelasie, ktÛry widzia≥ przysz≥oúÊ, zanim jπ wymÛwiono. Poczπtkowo traktowaliúmy jπ z naboøeÒstwem. Modliliúmy siÍ przy niej. Spisaliúmy szeúÊdziesiπt dwie homilie na jej temat. Ale potem... coú siÍ zmieni≥o.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "PBrat Theorin przesta≥ spaÊ. MÛwi≥, øe oko Ñpatrzy nawet zamkniÍteî. Brat Alrik, milczπcy jak ska≥a przez trzy dekady, zaczπ≥ mÛwiÊ - ale w jÍzyku, ktÛrego nikt nie zna≥. Brat Mareld oúlep≥, chociaø jego oczy by≥y zdrowe. MÛwi≥ tylko: Ñnie chcÍ juø widzieÊî.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_013 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_013;
	
	if (Bonus_ItWr_BookXp[13])	{	description = "Oko w szafirze II (przeczytane)";	}
	else						{	description = "Oko w szafirze II";					};
	
	TEXT[0]						=	"RÍkopis brata Melverena,";
	TEXT[1]						=	"przechowywany w KsiÍdze ZakazÛw.";
	TEXT[2]						=	"Przed lekturπ wymagana zgoda Arcyopata.";
};
func void Use_ItWr_BookXp_013()
{
	Npc_AddDocsCounter(13, 2);
	CreateInvItem(self, ItWr_BookXp_013);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_07_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_07_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Oko w szafirze");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kiedy przyszed≥ mÛj czas, by pe≥niÊ nocny dozÛr przy relikwii, nie ba≥em siÍ. By≥em jeszcze wtedy pewien, øe to tylko szept starych mÍøczyzn. Przesπdy. LÍki.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale w úrodku nocy us≥ysza≥em w≥asne imiÍ. Nie g≥osem, lecz odczuciem. Wtedy zrozumia≥em, øe to oko nie patrzy≥o w przysz≥oúÊ. Ono jπ tworzy≥o.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez kolejne miesiπce zauwaøa≥em zmiany. Ci, ktÛrzy d≥uøej przebywali przy relikwii, zaczynali podejmowaÊ decyzje, ktÛre wczeúniej wydawa≥y siÍ im obce. Kap≥ani ≥amali úluby. Bracia spisywali rzeczy, ktÛrych nie rozumieli.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ja sam znalaz≥em pod poduszkπ tekst, ktÛry rzekomo napisa≥em - lecz pismo nie by≥o moje. I nie zna≥em øadnego z opisanych w nim imion.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Poprosi≥em o zamkniÍcie relikwii na sta≥e. Rada odmÛwi≥a. Wierzyli, øe to dowÛd dzia≥ania boskiego planu. Ale czy plan, ktÛry odbiera wolnoúÊ woli, nie jest w≥aúnie tym, przed czym przestrzegali nas úwiÍci?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W koÒcu ukrad≥em oko. Chcia≥em je zakopaÊ. ZniszczyÊ. RzuciÊ w ogieÒ. Ale nie mog≥em. Trzyma≥em je w d≥oni i czu≥em, øe ono mnie zna. Zna kaødπ mojπ decyzjÍ, zanim jπ podjπ≥em. Kaøde drøenie palcÛw. Kaøde s≥owo, ktÛrego nie wypowiedzia≥em. To nie by≥o oko úwiÍtego. To by≥ klucz.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy otwiera niebo, czy piek≥o. Wiem tylko, øe otwiera coú. I øe nie powinniúmy juø patrzeÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_014 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_014;
	
	if (Bonus_ItWr_BookXp[14])	{	description = "Kult rozumu I (przeczytane)";	}
	else						{	description = "Kult rozumu I";				};
	
	TEXT[0]						=	"Fragment zapiskÛw Dorella z Imroth,";
	TEXT[1]						=	"ostatniego øyjπcego cz≥onka Rady DziewiÍciu.";
	TEXT[2]						=	"Spisano na wygnaniu, rok 7 po Ciszy.";
};
func void Use_ItWr_BookXp_014()
{
	Npc_AddDocsCounter(14, 1);
	CreateInvItem(self, ItWr_BookXp_014);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_08_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_08_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Kult rozumu");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Imroth nie upad≥o z g≥odu. Nie pad≥o pod mieczem, nie obrÛci≥o siÍ w ruinÍ od ognia. Mury nadal sta≥y, gdy wyjeødøa≥em. Fontanny jeszcze bi≥y wodπ, a dzwony wieø milcza≥y z powagπ, jakby czeka≥y na znak. Ale ludzi juø nie by≥o.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Miasto umar≥o, bo uwierzy≥o, øe rozum wystarczy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wszystko zaczÍ≥o siÍ od Wprowadzenia Prawa - nowego kodeksu, ktÛry mia≥ zastπpiÊ stary porzπdek. Spisano go w dziewiÍÊ dni i dziewiÍÊ nocy, w Radzie, gdzie zasiadali najwiÍksi logicy, arytmicy, mÍdrcy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zakazano modlitw - nie z nienawiúci, lecz z przekonania, øe prawda nie potrzebuje rytua≥Ûw. Zakazano poezji - nie z pogardy, lecz z myúli, øe úwiat nie potrzebuje metafory, jeúli zna siÍ przyczynÍ i skutek.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Potem przysz≥a kolej na úwiÍta. Zlikwidowano je, bo zak≥Ûca≥y rytm pracy. Imroth mia≥o byÊ czyste. Harmonijne. Doskona≥e.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Z poczπtku efekty by≥y imponujπce. Plony ros≥y jak nigdy, kanalizacja dzia≥a≥a bez zarzutu, archiwa porzπdkowano do ostatniego úwistka.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzieci uczono, øe uczucia sπ tylko zak≥Ûceniem biologicznego uk≥adu. Øe nadzieja to b≥πd poznawczy. Øe strach naleøy wymazaÊ. MÛwiono, øe wyjechali. Ale nikt nie widzia≥, by wyjeødøali. Po prostu ñ z dnia na dzieÒ ñ przestawali istnieÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_015 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_015;
	
	if (Bonus_ItWr_BookXp[15])	{	description = "Kult rozumu II (przeczytane)";	}
	else						{	description = "Kult rozumu II";					};
	
	TEXT[0]						=	"Fragment zapiskÛw Dorella z Imroth,";
	TEXT[1]						=	"ostatniego øyjπcego cz≥onka Rady DziewiÍciu.";
	TEXT[2]						=	"Spisano na wygnaniu, rok 7 po Ciszy.";
};
func void Use_ItWr_BookXp_015()
{
	Npc_AddDocsCounter(15, 2);
	CreateInvItem(self, ItWr_BookXp_015);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_08_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_08_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Kult rozumu");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Rada to bagatelizowa≥a. ÑNieprzystosowani.î ÑElement niestabilny.î ÑOczyszczenie systemu.î Ale nawet najwiÍksi z nas zaczÍli mÛwiÊ ciszej. UnikaÊ spojrzeÒ. CzuÊ... coú.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To Ñcoúî nie pasowa≥o do rÛwnaÒ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pewnej nocy obudzi≥em siÍ i us≥ysza≥em úpiew. Cichy. P≥ynπcy z dolnych poziomÛw miasta. PieúÒ w jÍzyku, ktÛry zna≥em z dzieciÒstwa, choÊ nie by≥ juø uøywany. PieúÒ o gwieüdzie, ktÛra nigdy nie wschodzi, ale zawsze úwieci. Poszed≥em za niπ. Znalaz≥em tylko pustkÍ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "NastÍpnego dnia wszyscy úpiewajπcy zniknÍli. W koÒcu odszed≥em. Nie dlatego, øe siÍ ba≥em. Ale dlatego, øe zaczπ≥em rozumieÊ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Imroth nie zosta≥o zniszczone. Ono samo siÍ z siebie wymaza≥o. ZniknÍ≥o, jak rÛwnanie, w ktÛrym wszystkie sk≥adniki zosta≥y uproszczone ñ aø zosta≥ tylko jeden wynik: zero.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeúli ktoú znajdzie kiedyú mury tego miasta, niech nie pyta, co siÍ tam sta≥o. Niech zapyta, czego tam nie by≥o.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie by≥o úmiechu. Nie by≥o ≥ez. Nie by≥o modlitw. Nie by≥o lÍku. Nie by≥o sensu. I to w≥aúnie nas zabi≥o.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_016 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_016;
	
	if (Bonus_ItWr_BookXp[16])	{	description = "Z wnÍtrza bestii I (przeczytane)";	}
	else						{	description = "Z wnÍtrza bestii I";					};
	
	TEXT[0]						=	"Zapiski Ebrama z Harn,";
	TEXT[1]						=	"by≥ego uzdrowiciela, skryby i pustelnika.";
	TEXT[2]						=	"Odrzucone przez wszystkie szko≥y uczone.";
};
func void Use_ItWr_BookXp_016()
{
	Npc_AddDocsCounter(16, 1);
	CreateInvItem(self, ItWr_BookXp_016);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_09_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_09_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Z wnÍtrza bestii");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez trzydzieúci dwa lata rozcina≥em cia≥a - zwierzπt, ludzi, i tych, ktÛrych nie sposÛb zaklasyfikowaÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dla innych by≥em opÍtanym szaleÒcem, dla nielicznych - ürÛd≥em wiedzy, ktÛrego bali siÍ pytaÊ. Ale dla siebie by≥em tylko tym, ktÛry chcia≥ zrozumieÊ: co czyni istotÍ potworem?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Cia≥a potworÛw nie sπ przypadkiem. W øadnym z tych stworzeÒ - od cienistych wÍøy po trupie ogary - nie znalaz≥em chaosu. Ich organy sπ uporzπdkowane. Ich uk≥ad krwionoúny, choÊ inny, dzia≥a. Ich struktura jest logiczna. Nawet u istot bez oczu, ktÛre widzπ. Nawet u tych, ktÛre nie majπ ust, a krzyczπ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "To nie sπ b≥Ídy natury. To nie sπ pomy≥ki. To projekty.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zaczπ≥em wiÍc badaÊ miejsca ich pojawieÒ. Pradawne lasy. Zapomniane ruiny. Miejsca bitew. Ale najwiÍcej úladÛw znalaz≥em wokÛ≥ ludzi. Nie w dziczy. Nie w jaskiniach. Lecz tam, gdzie cz≥owiek cierpia≥. Gdzie zdradzi≥. Gdzie zabija≥ bez powodu. Gdzie b≥aga≥ o øycie, ale nikt go nie s≥ysza≥.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W ruinach Berr Murr, gdzie niegdyú palono czarownice, widzia≥em stworzenie bez twarzy, ktÛre powtarza≥o s≥owa w jÍzyku dzieci. W lochach Kastriel, gdzie umierali g≥odni wiÍüniowie, znalaz≥em truch≥o istoty o trzech øo≥πdkach - pustych, ale krzyczπcych jak usta.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_017 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_017;
	
	if (Bonus_ItWr_BookXp[17])	{	description = "Z wnÍtrza bestii II (przeczytane)";	}
	else						{	description = "Z wnÍtrza bestii II";				};
	
	TEXT[0]						=	"Zapiski Ebrama z Harn,";
	TEXT[1]						=	"by≥ego uzdrowiciela, skryby i pustelnika.";
	TEXT[2]						=	"Odrzucone przez wszystkie szko≥y uczone.";
};
func void Use_ItWr_BookXp_017()
{
	Npc_AddDocsCounter(17, 2);
	CreateInvItem(self, ItWr_BookXp_017);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_09_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_09_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Z wnÍtrza bestii");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gdyby potwory rodzi≥y siÍ tylko z bagien i krwi, moøe by≥bym spokojny. Ale one rodzπ siÍ z cierpienia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Czasem pytam siebie: czy cz≥owiek tworzy potwora? Czy moøe potwÛr to tylko odbicie, echo jego w≥asnych czynÛw?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W jednym z moich eksperymentÛw - byÊ moøe najgorszym - zamknπ≥em siÍ na cztery tygodnie w ruinach úwiπtyni, gdzie wedle relacji Ñcoúî mia≥o pojawiaÊ siÍ w nocy. Po trzeciej dobie przesta≥em spaÊ. Po szÛstej zaczπ≥em mÛwiÊ do úcian. Po dziesiπtej s≥ysza≥em jÍki z w≥asnego cienia. A czternastego dnia zobaczy≥em siebie ñ ale nie siebie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Sta≥o przede mnπ coú, co zna≥o kaødπ mojπ ranÍ, kaøde moje k≥amstwo, kaøde s≥owo, ktÛre wypowiedzia≥em w gniewie. Nie zaatakowa≥o mnie. Tylko patrzy≥o, aø zrozumia≥em. Nie przyciπgnπ≥em potwora. By≥em nim.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Od tamtej pory nie mÛwiÍ juø Ñoneî. MÛwiÍ Ñmyî. Bo potwornoúÊ nie rodzi siÍ z miÍsa. Rodzi siÍ z pamiÍci. Z rzeczy, ktÛrych nie da siÍ wybaczyÊ. Z win, ktÛrych nie da siÍ pogrzebaÊ. Z kszta≥tÛw, ktÛre úwiat prÛbuje wyrzuciÊ poza margines, a ktÛre wracajπ - bardziej prawdziwe niø my sami.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie bÛj siÍ ich. BÛj siÍ, øe je rozpoznasz.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_018 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_018;
	
	if (Bonus_ItWr_BookXp[18])	{	description = "KoúÊ ponad duszÍ I (przeczytane)";	}
	else						{	description = "KoúÊ ponad duszÍ I";					};
	
	TEXT[0]						=	"Notatki archiwisty Elmarina z Wydzia≥u";
	TEXT[1]						=	"Religii Porzuconych. Klasztor w Trystan,";
	TEXT[2]						=	"rok 61 po Drugim Pochodzie.";
};
func void Use_ItWr_BookXp_018()
{
	Npc_AddDocsCounter(18, 1);
	CreateInvItem(self, ItWr_BookXp_018);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_10_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_10_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "KoúÊ ponad duszÍ");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kult znany jako Dzieci Szpiku zosta≥ po raz pierwszy udokumentowany 37 lat temu, gdy w osadzie przy granicy z Pogorzeliskiem natrafiono na opuszczony klasztor pe≥en wyciszonych, lecz øyjπcych ludzi ñ pozbawionych jÍzykÛw, owiniÍtych w szare bandaøe, úpiπcych w pozycji embrionalnej na zimnym kamieniu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie znaleziono øadnego cia≥a. Nie by≥o úladÛw przemocy, g≥odu, ani szaleÒstwa. Ale w jednym z pomieszczeÒ ñ pierwotnie kaplicy ñ odkryto rzeübiony monolit przedstawiajπcy istotÍ pozbawionπ twarzy, z pustym oczodo≥em w miejscu serca. U jego stÛp z≥oøone by≥y ludzkie øebra ñ oczyszczone i u≥oøone w kszta≥t krzyøa.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Dzieci Szpiku ñ jak pÛüniej ich nazwano ñ nie wyznajπ øadnego konkretnego bÛstwa. Ich doktryna opiera siÍ na przekonaniu, øe prawdziwe ja cz≥owieka nie znajduje siÍ w duszy, lecz w szpiku koúci. S≥owa, myúli, czyny ñ wszystko to uznajπ za iluzjÍ. Tylko to, co cierpi wewnÍtrznie, jest rzeczywiste.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zachowane zapisy rytualne sugerujπ, øe cz≥onkowie wspÛlnoty przechodzili inicjacjÍ zwanπ Obnaøeniem. Polega≥a ona na úwiadomym z≥amaniu jednej z w≥asnych koúci ñ zazwyczaj rÍki ñ przy zachowaniu pe≥nej úwiadomoúci. Nie czyniono tego z sadystycznych pobudek, lecz jako akt prawdy: ÑKoúÊ, ktÛra ≥amie siÍ z wyboru, nigdy wiÍcej nie k≥amieî ñ jak g≥osi jeden z inskrybowanych tekstÛw znalezionych w ich celach.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_019 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_019;
	
	if (Bonus_ItWr_BookXp[19])	{	description = "KoúÊ ponad duszÍ II (przeczytane)";	}
	else						{	description = "KoúÊ ponad duszÍ II";				};
	
	TEXT[0]						=	"Notatki archiwisty Elmarina z Wydzia≥u";
	TEXT[1]						=	"Religii Porzuconych. Klasztor w Trystan,";
	TEXT[2]						=	"rok 61 po Drugim Pochodzie.";
};
func void Use_ItWr_BookXp_019()
{
	Npc_AddDocsCounter(19, 2);
	CreateInvItem(self, ItWr_BookXp_019);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_10_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_10_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "KoúÊ ponad duszÍ");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "NiektÛre dokumenty wskazujπ na istnienie wyøszych rytua≥Ûw: WewnÍtrznego Kamienia, Daru Cierpienia, a nawet rytua≥u zwanego PrzesuniÍciem, ktÛrego znaczenia nie uda≥o siÍ ustaliÊ ñ ale ktÛrego symbolem by≥ cz≥owiek bez øeber, stojπcy z pustym spojrzeniem w otwartym grobie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wbrew obiegowym opiniom, Dzieci Szpiku nie praktykowa≥y kanibalizmu ani nie prowadzi≥y ekspansji. Ich wp≥yw rÛs≥ jednak subtelnie ñ wszÍdzie tam, gdzie spo≥ecznoúÊ cierpia≥a, gdzie zawiod≥y prawa, wiara, i logika. Kiedy Inkwizycja spali≥a ich drugπ wspÛlnotÍ w G≥Íbokiej Dolinie, nie znaleziono ani cia≥, ani buntownikÛw. Tylko jedno zdanie wyryto w kamieniu pod ziemiπ: ÑSzpik nie p≥onie.î");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Obecnie kult uznaje siÍ za wymar≥y. Ale w trzech rÛønych miastach ñ bez zwiπzku z sobπ ñ odkryto samookaleczenia identyczne z rytua≥ami Dzieci. W kaødym z tych przypadkÛw ofiary milcza≥y. Nie z dumy. Nie z lÍku. Z g≥Íbokiego, niewyt≥umaczalnego spokoju.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie jestem wyznawcπ. Jestem badaczem. Ale czasem, gdy czujÍ bÛl w kolanie, powtarzam ich modlitwÍ: ÑNiech koúÊ przemÛwi, gdy g≥os nie wystarczy.î");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "I czujÍ, jak coú odpowiada.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_020 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_020;
	
	if (Bonus_ItWr_BookXp[20])	{	description = "Ziemia nie zapomina I (przeczytane)";	}
	else						{	description = "Ziemia nie zapomina I";					};
	
	TEXT[0]						=	"Zapiski oficjalne sporzπdzone przez kartografa";
	TEXT[1]						=	"Gorthena Lestvala na zlecenie Rady Miejskiej Vael.";
	TEXT[2]						=	"Rok 48 po Drugim Roz≥amie.";
};
func void Use_ItWr_BookXp_020()
{
	Npc_AddDocsCounter(20, 1);
	CreateInvItem(self, ItWr_BookXp_020);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_11_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_11_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Ziemia nie zapomina");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W dniu 4. miesiπca Przymrozu uda≥em siÍ wraz z eskortπ do doliny za Prze≥Íczπ Rekk, by potwierdziÊ zgodnoúÊ nowo wykonanych map z terenem rzeczywistym. Obszar ten, choÊ od lat niezamieszkany, wciπø jest przedmiotem sporu granicznego pomiÍdzy domenπ Vael a marchiπ Enren.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Juø pierwsze pomiary wykaza≥y rozbieønoúci. Wg≥Íbienie oznaczone na wczeúniejszych mapach jako Stara Niecka Kurhanowa (lokacja 14B) zniknÍ≥o ca≥kowicie, zastπpione p≥askim, ubitym gruntem bez roúlinnoúci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W miejscu tym nasi towarzysze donosili o dziwnym uczuciu ciÍøkoúci oraz sporadycznym krwawieniu z nosa. SprzÍt metalowy rdzewia≥ nadzwyczaj szybko.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W punkcie 19C - nieopodal dawnego obozu wojsk krÛlewskich - ziemia by≥a twardsza niø powinna, a odg≥os krokÛw zdawa≥ siÍ odbijaÊ wielokrotnie, mimo braku naturalnych przeszkÛd.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po rozkopaniu wierzchniej warstwy natrafiliúmy na wypalonπ kamiennπ siatkÍ, jakby podziemnπ pod≥ogÍ lub fundament o nienaturalnie regularnych krawÍdziach. Nie znaleüliúmy tam szczπtkÛw, ale zapach spalenizny utrzymywa≥ siÍ d≥ugo po zasypaniu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "MieszkaÒcy pobliskich wsi twierdzπ, øe w nocy Ñcoú úwieciî nad dawnπ liniπ frontu, a dzieciom úniπ siÍ Ñg≥osy w ziemiî. Brak dowodÛw. Moøliwe lokalne przesπdy.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_021 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_021;
	
	if (Bonus_ItWr_BookXp[21])	{	description = "Ziemia nie zapomina II (przeczytane)";	}
	else						{	description = "Ziemia nie zapomina II";					};
	
	TEXT[0]						=	"Zapiski oficjalne sporzπdzone przez kartografa";
	TEXT[1]						=	"Gorthena Lestvala na zlecenie Rady Miejskiej Vael.";
	TEXT[2]						=	"Rok 48 po Drugim Roz≥amie.";
};
func void Use_ItWr_BookXp_021()
{
	Npc_AddDocsCounter(21, 2);
	CreateInvItem(self, ItWr_BookXp_021);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_11_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_11_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Ziemia nie zapomina");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W miejscu oznaczonym 21D, na zachodnim zboczu, znajdujπ siÍ drzewa wyraünie wykrzywione w jednym kierunku - ku wschodowi - mimo braku wiatru. Zjawisko to, choÊ dziwne, nie wydaje siÍ byÊ magiczne, ale po≥oøone centralnie wg≥Íbienie o úrednicy piÍciu krokÛw nie przyjmuje wody ñ deszcz wsiπka momentalnie, a únieg topnieje zanim dotknie ziemi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "NiektÛre zjawiska sugerujπ trwa≥π obecnoúÊ resztek energii magicznej, prawdopodobnie z czasÛw Bitwy o Prze≥Ícz Rekk, gdzie wed≥ug kronik wykorzystano zakazane czary skupiajπce ogieÒ na duøym obszarze.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Brak jednoznacznych dowodÛw, jednak zalecam, by nie wydawaÊ pozwoleÒ na osiedlenia, ani tym bardziej uprawy w obrÍbie co najmniej piÍciuset krokÛw od dawnych linii frontu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dodatkowo: metalowe narzÍdzia uøywane przez naszπ grupÍ po trzech dniach by≥y ca≥kowicie skorodowane, mimo øe pogoda by≥a sucha, a opakowania szczelne. Dwa konie odmÛwi≥y dalszego marszu w punkcie 18E i pad≥y po kilku godzinach, bez oznak choroby.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie jestem magiem. Ale coú w tej ziemi nie chce byÊ ruszane.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_022 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_022;
	
	if (Bonus_ItWr_BookXp[22])	{	description = "Klπtwa øycia I (przeczytane)";	}
	else						{	description = "Klπtwa øycia I";					};
	
	TEXT[0]						=	"Zapiski medyka krÛlewskiego Raltana Vossara.";
	TEXT[1]						=	"Spisano w roku 73 po Wojnie Trzech Bram.";
	TEXT[2]						=	"ZbiÛr zdeponowany w archiwum medycznym Therelis.";
};
func void Use_ItWr_BookXp_022()
{
	Npc_AddDocsCounter(22, 1);
	CreateInvItem(self, ItWr_BookXp_022);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_12_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_12_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Klπtwa øycia");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z poczπtku uzna≥em to za oszustwo. WÍdrowiec, ktÛry doniÛs≥ o cz≥owieku Ñmartwym, lecz úwiadomymî, mia≥ poszarpanπ d≥oÒ i trzπs≥ siÍ z gorπczki. Myúla≥em, øe to urojenia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale potem przyszli kolejni. Trzej rolnicy, jeden straønik, jeden mag uczniowski. Wszyscy opowiadali to samo: o ludziach, ktÛrzy nie mÛwiπ, nie ruszajπ siÍ, ale patrzπ. I rozumiejπ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zgodzi≥em siÍ zbadaÊ jedno z cia≥, ktÛre przyniesiono z podgÛrskiej osady Tarnveil.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "By≥o ca≥kowicie odwodnione, bez miÍúni w udach, øebra wystawa≥y jak zbroja, oczy zapadniÍte. SkÛra jak pergamin. Ale ürenice reagowa≥y. Gdy zbliøy≥em d≥oÒ do jego twarzy - p≥aka≥. Tyle øe bez ≥ez. To nie by≥ trup. To by≥ ktoú, kto nie mÛg≥ umrzeÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przez nastÍpne tygodnie przebadaliúmy czternaúcie takich przypadkÛw. Wszystkie identyczne. Skrajna martwica tkanek. Brak pulsu. Brak g≥osu (krtaÒ zanik≥a). Czasem pozosta≥oúci szmerÛw w p≥ucach. Ale reakcje oczu, úledzenie ruchu, czasem nawet pojedyncze ≥zy. Jeden z pacjentÛw drøa≥ przez ca≥π noc, gdy przez przypadek wbito mu szpilkÍ w opuszki palcÛw - opuszki, ktÛre by≥y tylko koúciπ i resztkπ skÛry.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_023 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_023;
	
	if (Bonus_ItWr_BookXp[23])	{	description = "Klπtwa øycia II (przeczytane)";	}
	else						{	description = "Klπtwa øycia II";				};
	
	TEXT[0]						=	"Zapiski medyka krÛlewskiego Raltana Vossara.";
	TEXT[1]						=	"Spisano w roku 73 po Wojnie Trzech Bram.";
	TEXT[2]						=	"ZbiÛr zdeponowany w archiwum medycznym Therelis.";
};
func void Use_ItWr_BookXp_023()
{
	Npc_AddDocsCounter(23, 2);
	CreateInvItem(self, ItWr_BookXp_023);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_12_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_12_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Klπtwa øycia");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "PrÛbowaliúmy eliksirÛw rewitalizujπcych, magii przywracania, bodücÛw bÛlowych. Nic nie dzia≥a≥o. Cia≥a nie przyjmowa≥y øadnej substancji. Ale teø nie ulega≥y rozk≥adowi ca≥kowitemu. Jakby úmierÊ zatrzyma≥a siÍ w po≥owie - a úwiadomoúÊ zosta≥a uwiÍziona.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po rozmowach z lokalnymi zielarkami dowiedzieliúmy siÍ o starym micie - o ludziach, ktÛrzy przeklÍli siebie sami, prÛbujπc osiπgnπÊ nieúmiertelnoúÊ Ñczystym pragnieniem trwaniaî. Mieli modliÊ siÍ nie do bogÛw, lecz do samych siebie. Nie chcieli umieraÊ. I nie umarli. Ale zapomnieli poprosiÊ o øycie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie znaleüliúmy øadnych znakÛw magicznych, øadnych run, klπtw, zaklÍÊ. Ale kaøde z cia≥ mia≥o na mostku pionowe naciÍcie - niechirurgiczne, zbyt rÛwne, by by≥o przypadkowe. Jakby ktoú Ñotworzy≥î ich intencjÍ i zostawi≥ ranÍ, przez ktÛrπ mia≥o wp≥ynπÊ coú wiÍkszego.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dwa z tych cia≥ zniknÍ≥y. Jedno podczas transportu do miasta. Drugie zniknÍ≥o z zamkniÍtej izby, pozostawiajπc tylko bia≥y úlad na pod≥odze i wg≥Íbienie w miejscu, gdzie leøa≥a g≥owa. Od tej pory badania przerwano.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zabraniam dalszych prÛb. To nie jest choroba. To nie jest magia. To wo≥anie, ktÛre zosta≥o wys≥uchane - ale nie zrozumiane. Niech ten tekst pozostanie zamkniÍty. Jeúli ktoú go czyta - nie prÛbuj øyÊ wiecznie. Bo moøesz przestaÊ øyÊ. Ale nie przestaniesz byÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_024 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_024;
	
	if (Bonus_ItWr_BookXp[24])	{	description = "O wymazywaniu imion I (przeczytane)";	}
	else						{	description = "O wymazywaniu imion I";					};
	
	TEXT[0]						=	"Fragment traktatu autorstwa nieznanego skryby,";
	TEXT[1]						=	"odnaleziony w archiwach Starego Opactwa w Orne.";
	TEXT[2]						=	"Kopia sporzπdzona z zachowanych zwojÛw.";
};
func void Use_ItWr_BookXp_024()
{
	Npc_AddDocsCounter(24, 1);
	CreateInvItem(self, ItWr_BookXp_024);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_13_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_13_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "O wymazywaniu imion");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie kaøde imiÍ jest darem. Nie kaøde imiÍ chroni. Czasem imiÍ staje siÍ klπtwπ, a pamiÍÊ - przekleÒstwem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sztuka uniewaøniania imienia, znana wúrÛd pustelnikÛw z GÛr Iglistych jako Trzecie Milczenie, by≥a praktykowana nie jako forma zapomnienia, lecz jako úrodek ochronny i sπd zarazem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Cz≥owiek, ktÛremu uniewaøniono imiÍ, nie by≥ juø úcigany. Nie by≥ teø czczony. Po prostu przestawa≥ istnieÊ w úwiadomoúci úwiata.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie chodzi tu o zabÛjstwo. Cia≥o nadal øy≥o. Ale wszelki zapis o tej osobie musia≥ byÊ usuniÍty: dokumenty spalono, nazwiska wykuto z kamienia, wspomnienia úwiadkÛw zak≥Ûcano rytua≥em opartym na powtarzaniu pustych form. Sam winny, jeúli jeszcze øy≥, musia≥ z≥oøyÊ swoje imiÍ do naczynia z popio≥u i roztrzaskaÊ je na o≥tarzu milczenia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "NiektÛrzy czynili to dobrowolnie. Wierzyli, øe uniewaøniajπc w≥asne imiÍ, mogπ uwolniÊ siÍ od przeznaczenia. Inni - zostali do tego zmuszeni.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W starych rejestrach klasztoru Arven wspomina siÍ o siedmiu takich przypadkach. Szeúciu z nich zmar≥o w ciπgu miesiπca. SiÛdmy... zniknπ≥. Ale nie w sensie fizycznym.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_025 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_025;
	
	if (Bonus_ItWr_BookXp[25])	{	description = "O wymazywaniu imion II (przeczytane)";	}
	else						{	description = "O wymazywaniu imion II";					};
	
	TEXT[0]						=	"Fragment traktatu autorstwa nieznanego skryby,";
	TEXT[1]						=	"odnaleziony w archiwach Starego Opactwa w Orne.";
	TEXT[2]						=	"Kopia sporzπdzona z zachowanych zwojÛw.";
};
func void Use_ItWr_BookXp_025()
{
	Npc_AddDocsCounter(25, 2);
	CreateInvItem(self, ItWr_BookXp_025);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_13_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_13_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "O wymazywaniu imion");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zniknπ≥ z opowieúci, z kronik, z wspomnieÒ úwiadkÛw. Pozosta≥ po nim tylko b≥πd w indeksie i martwe miejsce w modlitwach - puste imiÍ miÍdzy dwoma innymi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wierzono, øe úwiat sam odrzuca istnienie kogoú, kto nie ma imienia. Jakby rzeczywistoúÊ potrzebowa≥a s≥owa, by rozpoznaÊ kszta≥t. Bez s≥owa - kszta≥t rozmywa siÍ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Znaleziono ludzi, ktÛrzy podobno znali kogoú Ñbez twarzyî, Ñbez przesz≥oúciî, Ñkogo nikt nie wo≥a≥ po imieniuî. Ale czym naprawdÍ jest taka osoba? Czy nadal jest sobπ?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie wiadomo, czy uniewaønienie imienia rani duszÍ - ale rani pamiÍÊ. A cz≥owiek, ktÛry nie jest pamiÍtany, nie naleøy juø do úwiata øywych.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "NiektÛre starsze teksty sugerujπ, øe moøna siÍ tak ÑukryÊî przed istotami, ktÛre rozpoznajπ tylko po imieniu. Øe to nie ludzie wymyúlili rytua≥ uniewaøniania. Øe to od nich go przejÍliúmy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeúli kiedykolwiek odnajdziesz miejsce, w ktÛrym ktoú prÛbowa≥ zetrzeÊ swoje imiÍ - nie wypowiadaj go, choÊbyú je rozpozna≥.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "ImiÍ, raz uniewaønione, nie powinno wracaÊ. A jeúli wrÛci - nie pozna ciÍ juø jako przyjaciela.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_026 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_026;
	
	if (Bonus_ItWr_BookXp[26])	{	description = "O skÛrze I (przeczytane)";	}
	else						{	description = "O skÛrze I";					};
	
	TEXT[0]						=	"Fragment podrÍcznika mistrza Edgara";
	TEXT[1]						=	"z warsztatu przy wschodnim targu w Karthil.";
	TEXT[2]						=	"Zakazany przez cech za Ñzbyt dosadny tonî.";
};
func void Use_ItWr_BookXp_026()
{
	Npc_AddDocsCounter(26, 1);
	CreateInvItem(self, ItWr_BookXp_026);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_14_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_14_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "O skÛrze");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jeúli chcesz robiÊ ze skÛr coú wiÍcej niø brudnπ szmatÍ, ktÛrej nie powstydzi≥by siÍ nawet úmieciarz z Ursel, musisz zapamiÍtaÊ trzy rzeczy: skÛra úmierdzi, skÛra k≥amie, skÛra pamiÍta. Zacznijmy od poczπtku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie kaøda skÛra nadaje siÍ do garbowania. Najlepsze: jelenie, dziki, m≥ode wilki. Z≥e: kozy (zbyt cienkie), starzy wilcy (zbyt pok≥ute), cokolwiek z bagien (pachnie tak, øe nie pomoøe ani ogieÒ, ani modlitwa).");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nigdy nie bierz skÛry ze zwierzÍcia, ktÛre pad≥o z choroby - bÍdzie siÍ ≥uszczyÊ i nie trzymaÊ barwnika. åciπgaj skÛrÍ noøem zakrzywionym. Nie prÛbuj ciπÊ prosto - oderwiesz miÍso razem z w≥Ûknem.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "SkÛra, ktÛrej nie odseparujesz jak trzeba, to skÛra zmarnowana. A mistrz, ktÛry widzi zmarnowanπ skÛrÍ, to mistrz, ktÛry wyrzuca czeladnika za drzwi. Sπ dwa sposoby: na wapnie i na mÛzgu. Oba skuteczne, oba obrzydliwe.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Garbowanie na wapnie trwa d≥uøej, ale mniej úmierdzi. Wrzucasz skÛrÍ do beczki z wodπ i wapnem, czekasz aø w≥osy zacznπ odpadaÊ same. Potem skrobiesz, p≥uczesz i wk≥adasz do bejcy z kory dÍbu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Garbowanie na mÛzgu jest szybsze, ale... wymaga mÛzgu. Dos≥ownie. MÛzg zwierzÍcia mieszasz z wodπ i ugniatasz skÛrÍ aø nasiπknie. Potem wieszasz i suszysz nad ogniskiem. SkÛra tak przygotowana jest miÍkka, elastyczna i ciep≥a. Ale jeúli siÍ nie domyjesz - wszyscy bÍdπ wiedzieÊ, øe wczoraj garbowa≥eú. BÍdzie ciÍ czuÊ przez dwa dni.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_027 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_027;
	
	if (Bonus_ItWr_BookXp[27])	{	description = "O skÛrze II (przeczytane)";	}
	else						{	description = "O skÛrze II";				};
	
	TEXT[0]						=	"Fragment podrÍcznika mistrza Edgara";
	TEXT[1]						=	"z warsztatu przy wschodnim targu w Karthil.";
	TEXT[2]						=	"Zakazany przez cech za Ñzbyt dosadny tonî.";
};
func void Use_ItWr_BookXp_027()
{
	Npc_AddDocsCounter(27, 2);
	CreateInvItem(self, ItWr_BookXp_027);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_14_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_14_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "O skÛrze");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dobrze przygotowana skÛra ma lekko chropowatπ powierzchniÍ, pachnie dymem albo ziemiπ, nie strzÍpi siÍ i nie faluje. Jeúli faluje - spieprzy≥eú suszenie. Jeúli siÍ klei - zostawi≥eú t≥uszcz. Jeúli pÍka - garbowa≥eú za krÛtko. Jeúli wszystko na raz - moøe zostaÒ drwalem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z takiej skÛry zrobisz: buty (twarda czÍúÊ z karku), rÍkawice (brzuch, miÍkki), pasy (czÍúÊ lÍdüwiowa), pochwy (jeúli nie masz metalu), lub przekleÒstwa (jeúli coú pominiesz i klient wrÛci).");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Kaøda skÛra by≥a kiedyú czymú øywym. Nie zapominaj o tym. èle przygotowana skÛra potrafi ÑpamiÍtaÊî: kurczyÊ siÍ, pÍkaÊ, skrÍcaÊ siÍ w nocy przy cieple ognia. To nie magia. To ty by≥eú idiotπ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale sπ tacy, co mÛwiπ, øe skÛra z bestii zabitej z nienawiúci kurczy siÍ na karku, jakby chcia≥a wrÛciÊ do swego pana. Nie wiem. Nie prÛbowa≥em. Ale raz robi≥em rÍkawicÍ z wilka, ktÛry zjad≥ cz≥owieka.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Prawa rÍka zgubi≥a siÍ po tygodniu. Klientowi zosta≥o tylko lewa. I z≥e sny.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_028 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_15.3ds";
	on_state[0]					=	Use_ItWr_BookXp_028;
	
	if (Bonus_ItWr_BookXp[28])	{	description = "Bitwa w cieúninie I (przeczytane)";	}
	else						{	description = "Bitwa w cieúninie I";				};
	
	TEXT[0]						=	"Spisane przez kapitana Arvonna Vel Tern,";
	TEXT[1]						=	"by≥ego dowÛdcÍ øaglowca ÑGniew Po≥udniaî.";
	TEXT[2]						=	"Fragment pamiÍtnika odnalezionego w Myrth.";
};
func void Use_ItWr_BookXp_028()
{
	Npc_AddDocsCounter(28, 1);
	CreateInvItem(self, ItWr_BookXp_028);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_15_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_15_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Bitwa w cieúninie");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nigdy nie wierzy≥em w potwory.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zanim wyp≥ynπ≥em przez cieúninÍ Gror, myúla≥em, øe ork to tylko inny cz≥owiek - z wiÍkszym toporem i mniejszπ cierpliwoúciπ. Bandyta, tyle øe z innym akcentem. Ale to, co przysz≥o wtedy zza mg≥y, nie mia≥o w sobie nic z cz≥owieka.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wyp≥ynÍliúmy w siedem jednostek. Trzy øaglowce, dwie ≥odzie myúliwskie, dwa transportowce. By≥em dowÛdcπ ÑGniewu Po≥udniaî - czternastu ludzi, dwa balisty, smolna beczka i modlitwa do Ylry.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Wiatr by≥ dobry. Øagle napiÍte. Szum fal jak zawsze. Ale ptaki - ptaki zniknÍ≥y po po≥udniu. I morze zaczÍ≥o oddychaÊ ciÍøej. Jakby coú czeka≥o pod spodem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "O zmierzchu mg≥a spad≥a jak zas≥ona. Gruba, t≥usta. Zgubiliúmy kontakt z ÑBia≥ym Jeleniemî. Potem z ÑSzÛstπ Falπî. Krzyki us≥yszeliúmy zanim zobaczyliúmy úwiat≥a.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ogniste kule - nie z katapult, ale z rπk. Rzucane jak kamienie. Przebi≥y burtÍ ÑWÍøa PÛ≥nocyî jednym uderzeniem. Ich ≥odzie by≥y mniejsze, ale pancerne, z dziobem w kszta≥cie szczÍki. Rzuca≥y siÍ bokiem, ≥ama≥y maszty, a potem z ich wnÍtrza wychodzi≥y.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie jak øo≥nierze. Jak coú, co czeka≥o na okazjÍ, by siÍ poruszyÊ. Nieúli topory, ktÛre tnπ drewno jak papier. Wchodzili na pok≥ad po linach, go≥ymi rÍkami, bez krzyku. Tylko oczy - øÛ≥te, matowe.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_029 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_15.3ds";
	on_state[0]					=	Use_ItWr_BookXp_029;
	
	if (Bonus_ItWr_BookXp[29])	{	description = "Bitwa w cieúninie II (przeczytane)";	}
	else						{	description = "Bitwa w cieúninie II";				};
	
	TEXT[0]						=	"Spisane przez kapitana Arvonna Vel Tern,";
	TEXT[1]						=	"by≥ego dowÛdcÍ øaglowca ÑGniew Po≥udniaî.";
	TEXT[2]						=	"Fragment pamiÍtnika odnalezionego w Myrth.";
};
func void Use_ItWr_BookXp_029()
{
	Npc_AddDocsCounter(29, 2);
	CreateInvItem(self, ItWr_BookXp_029);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_15_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_15_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Bitwa w cieúninie");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jeden z moich ludzi wpad≥ do wody i krzycza≥ jeszcze d≥ugo. Potem przesta≥. Ale nie by≥o chlupotu. Jakby coú go wciπgnÍ≥o pod spÛd.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Walka trwa≥a... nie wiem, ile. Tyle, co potrzeba, øeby zapamiÍtaÊ kaødy düwiÍk. Drewno pÍkajπce pod stalπ. OgieÒ trzeszczπcy na øaglach. Oddech cz≥owieka obok, ktÛry wie, øe nie zdπøy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "ÑGniew Po≥udniaî zosta≥ ostatni. Zdπøyliúmy odpaliÊ smolnπ beczkÍ, rozlaÊ ogieÒ i przeciπÊ cumy napastnika. ZatonÍli razem z nami. Ale wiatr nas uniÛs≥. Dryfowaliúmy trzy dni. Bez wody. Bez steru. Bez g≥osu.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Przeøy≥em ja i dwÛch ch≥opcÛw. Jeden oúlep≥. Drugi straci≥ rÍkÍ. Powiedzπ wam, øe to by≥a bitwa. Øe obroniliúmy szlak handlowy. Øe flota orkÛw zosta≥a zatrzymana. Nie wierzcie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To nie by≥a bitwa. To by≥a prÛba, z ktÛrej nikt nie wraca tak samo. Orkowie nie przyszli po ziemiÍ. Ani po z≥oto. Przyszli sprawdziÊ, jak bardzo chcemy jeszcze øyÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "I nie wiem, czy nasza odpowiedü im wystarczy≥a.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_030 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_030;
	
	if (Bonus_ItWr_BookXp[30])	{	description = "Milczenie bogÛw I (przeczytane)";	}
	else						{	description = "Milczenie bogÛw I";					};
	
	TEXT[0]						=	"Fragment pokutnej ksiÍgi brata Alinora,";
	TEXT[1]						=	"spisany w klasztorze na WzgÛrzach Kruka.";
	TEXT[2]						=	"Nigdy nie w≥πczony do oficjalnego kanonu.";
};
func void Use_ItWr_BookXp_030()
{
	Npc_AddDocsCounter(30, 1);
	CreateInvItem(self, ItWr_BookXp_030);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_01_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_01_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Milczenie bogÛw");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nauczyli mnie, øe bogowie mÛwiπ przez ogieÒ, przez cuda, przez znaki. Øe wystarczy modlitwa, pokora i cisza, by ich us≥yszeÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "SpÍdzi≥em trzydzieúci dwa lata w murach úwiπtyni Innosa, uczπc dzieci prostych modlitw i t≥umaczπc starcom, dlaczego cierpienie jest prÛbπ. A potem przysz≥o to, czego nie przewidzia≥ øaden traktat.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Plaga dotknÍ≥a trzy wsie. Dzieci umiera≥y jako pierwsze. Mleko kwaúnia≥o jeszcze w udoju. Cienie ros≥y w domach nawet przy otwartym ogniu. Ludzie b≥agali - o litoúÊ, o znak, o cokolwiek.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Modli≥em siÍ dniem i nocπ. Z krwiπ na kolanach, z g≥osem zdartym do pustki. Ale nie przysz≥o nic. Ani úwiat≥o. Ani g≥os. Ani nawet sen. Tylko milczenie. Nie takie zwyk≥e, nocne.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To by≥o milczenie, ktÛre przyciska≥o do ziemi. Jakby ktoú patrzy≥, ale nic nie mÛwi≥. Jakby czeka≥, aø przestanÍ pytaÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wtedy po raz pierwszy pomyúla≥em: a jeúli to jest odpowiedü?");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_031 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_031;
	
	if (Bonus_ItWr_BookXp[31])	{	description = "Milczenie bogÛw II (przeczytane)";	}
	else						{	description = "Milczenie bogÛw II";					};
	
	TEXT[0]						=	"Fragment pokutnej ksiÍgi brata Alinora,";
	TEXT[1]						=	"spisany w klasztorze na WzgÛrzach Kruka.";
	TEXT[2]						=	"Nigdy nie w≥πczony do oficjalnego kanonu.";
};
func void Use_ItWr_BookXp_031()
{
	Npc_AddDocsCounter(31, 2);
	CreateInvItem(self, ItWr_BookXp_031);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_01_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_01_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Milczenie bogÛw");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Moøe bogowie nie sπ tacy, jakimi chcieliúmy ich widzieÊ. Moøe nie walczπ ze z≥em ani o dobro, nie uk≥adajπ naszych úcieøek. Moøe sπ... poza tym. Obok. Albo w ogÛle bez s≥Ûw, bez emocji, jak rzeka, ktÛra p≥ynie i nie obchodzi jej, kto siÍ w niej topi. Ale jeúli tak - to gdzie miejsce na wiarÍ?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zaczπ≥em pytaÊ inaczej. Nie: ÑDlaczego nas opuúcili?î, ale: ÑCzy kiedykolwiek nas s≥yszeli?î. Czy nasze úwiπtynie, nasze pieúni, nasze pochody - to nie tylko g≥os w studni?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie twierdzÍ, øe bogÛw nie ma. TwierdzÍ tylko, øe ich sposÛb istnienia moøe byÊ obcy rozumowi cz≥owieka.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Moøe nie chcπ naszego czczenia, tylko naszego zrozumienia. Albo odwrotnie - moøe nie chcπ niczego. Moøe ich obecnoúÊ to stan, nie zamiar.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po dziú dzieÒ noszÍ kaptur pokutnika i milczÍ w dzieÒ úwiπteczny. Nie w geúcie niewiary. Lecz w uznaniu, øe niewiedza moøe byÊ jedynπ formπ prawdy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeúli kiedyú bogowie przemÛwiπ, moøe nie zrobiπ tego jÍzykiem. Moøe bÍdzie to kamieÒ, ktÛry siÍ nie kruszy. Dziecko, ktÛre milczy, ale patrzy za d≥ugo. Albo tylko wiatr, ktÛry nagle staje siÍ zimniejszy, choÊ nie powinien.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeúli przyjdzie taki dzieÒ - nie pytaj ich, dlaczego nie przyszli wczeúniej. Zamiast tego zapytaj siebie: czy na pewno chcia≥eú ich us≥yszeÊ?");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_032 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_032;
	
	if (Bonus_ItWr_BookXp[32])	{	description = "Z popio≥Ûw nocy I (przeczytane)";	}
	else						{	description = "Z popio≥Ûw nocy I";					};
	
	TEXT[0]						=	"Spisane przez rycerza Edricha,";
	TEXT[1]						=	"jednego ze úwiadkÛw Bitwy pod Bramant.";
	TEXT[2]						=	"Przechowywane w kaplicy åwiÍtego P≥omienia.";
};
func void Use_ItWr_BookXp_032()
{
	Npc_AddDocsCounter(32, 1);
	CreateInvItem(self, ItWr_BookXp_032);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_02_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_02_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Z popio≥Ûw nocy");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kiedy úwiat by≥ jeszcze podzielony nie krÛlestwami, lecz ciszπ miÍdzy ogniskami, a imiÍ Innosa szeptano bardziej ze strachu niø z czci - nie istnia≥o coú takiego jak zakon.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Istnieli tylko wojownicy. A wúrÛd nich, czasem, ludzie úwiat≥a. By≥em jednym z nich.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie nazwaliúmy siÍ paladynami. Jeszcze nie. WÍdrowaliúmy od osady do osady, gaszπc zarzewia ciemnoúci, nie w imiÍ doktryny, lecz wbrew ciemnoúci, ktÛra nie znosi úwiat≥a.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Bitwa pod Bramant - choÊ dziú uczona jako zwyciÍstwo - nie by≥a niczym wiÍcej jak rzeziπ. Nie z liczby wrogÛw, ale z ich natury. To, co wysz≥o z rozpadliny pod starym cmentarzyskiem, nie mia≥o oczu, ale widzia≥o. Nie mia≥o jÍzyka, ale szepta≥o.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Cia≥a, ktÛre nie powinny siÍ ruszaÊ. Kruki bez piÛr, ale z ludzkimi twarzami. Stworzenia sk≥adajπce siÍ z ran, nie z miÍsa. Pomioty Beliara - tak ich wtedy nie nazwaliúmy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dopiero pÛüniej magowie rozpoznali znaki: pÍkniÍtπ gwiazdÍ, krπg bez úrodka, cienie, ktÛre p≥onÍ≥y ogniem czarnym jak g≥Ûd.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "By≥o nas siedmiu. Z øywych wrÛci≥o czterech. Jeden straci≥ jÍzyk. Drugi - wzrok. Trzeci úni≥ juø tylko o ogniu.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_033 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_033;
	
	if (Bonus_ItWr_BookXp[33])	{	description = "Z popio≥Ûw nocy II (przeczytane)";	}
	else						{	description = "Z popio≥Ûw nocy II";					};
	
	TEXT[0]						=	"Spisane przez rycerza Edricha,";
	TEXT[1]						=	"jednego ze úwiadkÛw Bitwy pod Bramant.";
	TEXT[2]						=	"Przechowywane w kaplicy åwiÍtego P≥omienia.";
};
func void Use_ItWr_BookXp_033()
{
	Npc_AddDocsCounter(33, 2);
	CreateInvItem(self, ItWr_BookXp_033);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_02_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_02_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Z popio≥Ûw nocy");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ja... do dziú s≥yszÍ düwiÍk, jaki wydaje skÛra, gdy schodzi z øywego cia≥a.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale coú siÍ wtedy wydarzy≥o. W samym úrodku bitwy - gdy modlitwy nie dzia≥a≥y, a ostrza siÍ ≥ama≥y - nagle powia≥ wiatr, ktÛry nie by≥ z tego úwiata.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ciep≥y, lecz bez ognia. I g≥os - nie w uszach, lecz w sercu. KrÛtki. Jedno s≥owo: ÑStaÒî. I staliúmy. Nie z odwagi. Z pos≥uszeÒstwa. Coú - ktoú - da≥ nam si≥Í, by przetrwaÊ do rana.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Kiedy zapad≥a cisza, nie zostaliúmy juø tymi samymi wojownikami. Przestaliúmy byÊ ludümi, ktÛrzy szukajπ bitew. ZaczÍliúmy szukaÊ czystoúci. Postanowiliúmy, øe to, co siÍ wydarzy≥o w Bramant, nie powtÛrzy siÍ nigdy wiÍcej.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "ZaczÍliúmy od przysiÍgi: miecz nigdy nie zostanie wzniesiony z gniewu, tylko z potrzeby. Øaden ogieÒ nie zostanie rozpalony po zmroku bez modlitwy. Øadne imiÍ Beliara nie zostanie wypowiedziane pod dachem úwiat≥a.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Tak powsta≥ Zakon PaladynÛw Innosa. Nie ze zwyciÍstwa. Ze strachu i wiedzy, øe Innos moøe nie interweniowaÊ - ale daje p≥omieÒ, ktÛry musimy nosiÊ sami.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Paladyn to nie wojownik. To cz≥owiek, ktÛry patrzy≥ w ciemnoúÊ i nie odwrÛci≥ wzroku. Nie dlatego, øe nie ba≥ siÍ - tylko dlatego, øe nikt inny nie patrzy≥. A ciemnoúÊ, bracia... ona nie úpi.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_034 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_034;
	
	if (Bonus_ItWr_BookXp[34])	{	description = "Bez pieczÍci I (przeczytane)";	}
	else						{	description = "Bez pieczÍci I";					};
	
	TEXT[0]						=	"Testament spisany przez Sirela Doventa,";
	TEXT[1]						=	"by≥ego skryby wojskowego,";
	TEXT[2]						=	"wiÍzionego w Podziemiach WrÛt Zachodnich.";
};
func void Use_ItWr_BookXp_034()
{
	Npc_AddDocsCounter(34, 1);
	CreateInvItem(self, ItWr_BookXp_034);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_03_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_03_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Bez pieczÍci");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jeúli czytasz te s≥owa, znaczy øe moja cela zosta≥a otwarta. A skoro zosta≥a otwarta, to znaczy, øe ktoú nie wyciπgnπ≥ wnioskÛw. Bo nie powinno tu byÊ nikogo. Ani ludzi. Ani úwiat≥a. Ani przebaczenia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nazywam siÍ Sirel Dovent. Przez dziewiÍÊ lat by≥em pisarzem wojskowym przy forcie Dharn. Spisywa≥em rozkazy, przelicza≥em zapasy, wysy≥a≥em meldunki. Nic wielkiego. Papier, tusz, pieczÍÊ. Tak wyglπda wojna z biurka.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zawsze mÛwili, øe skryba nie nosi miecza, ale jego s≥owa mogπ zabiÊ. Nie zrozumia≥em, co to znaczy, dopÛki naprawdÍ kogoú nie zabi≥em.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "ZaczÍ≥o siÍ niewinnie. Pewien porucznik, Nerron, mia≥ wtyki. MÛg≥ dostarczyÊ øywnoúÊ do fortu bez op≥at celnych, jeúli dokument wyglπda≥... Ñw≥aúciwieî.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zmienia≥em wiÍc daty, podpisa≥em nieistniejπce osoby, przestawia≥em kolumny. Kilka sakiewek trafia≥o do mojej szuflady. Wydawa≥o siÍ uczciwe. Nikogo nie bi≥em. Nikogo nie g≥odzi≥em. Tylko pisa≥em inaczej.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Potem by≥ rozkaz o rotacji warty. Stara zmiana mia≥a wrÛciÊ, nowa przejπÊ nocnπ s≥uøbÍ. Ale by≥ problem: dowÛdca nie zdπøy≥ podpisaÊ dokumentu. Czeka≥, aø wrÛci zwiad. MÛwi≥, øeby nie robiÊ nic, pÛki nie wrÛci.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_035 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_035;
	
	if (Bonus_ItWr_BookXp[35])	{	description = "Bez pieczÍci II (przeczytane)";	}
	else						{	description = "Bez pieczÍci II";				};
	
	TEXT[0]						=	"Testament spisany przez Sirela Doventa,";
	TEXT[1]						=	"by≥ego skryby wojskowego,";
	TEXT[2]						=	"wiÍzionego w Podziemiach WrÛt Zachodnich.";
};
func void Use_ItWr_BookXp_035()
{
	Npc_AddDocsCounter(35, 2);
	CreateInvItem(self, ItWr_BookXp_035);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_03_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_03_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Bez pieczÍci");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Znudzi≥o mi siÍ czekanie. ÑTo tylko zmiana wartyî - pomyúla≥em. Przecieø wiadomo, kto ma iúÊ, gdzie, kiedy. Wziπ≥em pergamin. Przepisa≥em polecenie. Podrobi≥em pieczÍÊ. Warta zmieni≥a siÍ zgodnie z rozkazem, ktÛrego nie by≥o.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W nocy przyszli. Nie wiem, co to by≥o. Nikt nie wrÛci≥. Ani z jednej, ani z drugiej zmiany. Zosta≥y tylko úlady butÛw na b≥ocie, niedopite kubki i brama otwarta na oúcieø.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kiedy dowÛdca wrÛci≥ i zobaczy≥, co siÍ sta≥o, nie krzycza≥. Nie z≥orzeczy≥. Po prostu wyjπ≥ swÛj miecz, po≥oøy≥ go na moim biurku i powiedzia≥: ÑPodpisz to.î");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "To by≥ wyrok. MÛj w≥asny. Spisa≥em go sam - ze szczegÛ≥ami, ze úwiadkami, z datπ. Tym razem juø naprawdÍ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Od tamtej pory tu siedzÍ. Nie bojÍ siÍ úmierci. BojÍ siÍ, øe znÛw uznam coú za Ñdrobneî. Øe znÛw uwierzÍ, iø piÛro nic nie waøy. A ono waøy wiÍcej niø miecz.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, ilu ludzi zabi≥em tuszem. Ale wiem, øe pierwszy z nich mia≥ imiÍ. I ja je wymaza≥em.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_036 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_04.3ds";
	on_state[0]					=	Use_ItWr_BookXp_036;
	
	if (Bonus_ItWr_BookXp[36])	{	description = "Deszczowa noc I (przeczytane)";	}
	else						{	description = "Deszczowa noc I";				};
	
	TEXT[0]						=	"Fragment prywatnego dziennika.";
	TEXT[1]						=	"CzÍúÊ stron by≥a mokra, czÍúÊ nadpalona.";
	TEXT[2]						=	"Nazwisko autora nieczytelne.";
};
func void Use_ItWr_BookXp_036()
{
	Npc_AddDocsCounter(36, 1);
	CreateInvItem(self, ItWr_BookXp_036);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_04_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_04_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Deszczowa noc");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 1");
				Doc_PrintLines	(nDocID,  0, "Nakry≥em ich wieczorem, w naszej izbie. Miecz wisia≥ nad drzwiami, zawsze tam by≥. Nie myúla≥em - zrobi≥em, co musia≥em. Oboje.");
				Doc_PrintLines	(nDocID,  0, "Zaciπgnπ≥em cia≥a nad rzekÍ, tam gdzie siÍ ≥πczy z bagnem. Nie s≥ychaÊ tam nic prÛcz øab. Zakopa≥em ich pod starym drzewem, g≥Íboko, w jednej mogile.");
				Doc_PrintLines	(nDocID,  0, "Rano powiedzia≥em w wiosce, øe uciek≥a z kochankiem. Ludzie pokiwali g≥owami. I tyle.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "DzieÒ 5");
				Doc_PrintLines	(nDocID,  1, "Tej nocy nie spa≥em. Obudzi≥ mnie düwiÍk przypominajπcy oddech - g≥Íboki, úwiszczπcy, pe≥en bÛlu i wúciek≥oúci. Tuø nad mojπ g≥owπ.");
				Doc_PrintLines	(nDocID,  1, "Ale tej nocy pada≥o - d≥ugo i mocno. Uzna≥em, øe to tylko szum deszczu i przes≥yszenia, ale nie mia≥em odwagi siÍ odwrÛciÊ. Leøa≥em sparaliøowany, jak dziecko we únie.");
				Doc_PrintLines	(nDocID,  1, "Rano wmÛwi≥em sobie, øe to by≥ tylko koszmar. A wodÍ, ktÛrπ zauwaøy≥em pod ≥Ûøkiem i na deskach uzna≥em za przeciek z dachu.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_037 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_04.3ds";
	on_state[0]					=	Use_ItWr_BookXp_037;
	
	if (Bonus_ItWr_BookXp[37])	{	description = "Deszczowa noc II (przeczytane)";	}
	else						{	description = "Deszczowa noc II";				};
	
	TEXT[0]						=	"Fragment prywatnego dziennika.";
	TEXT[1]						=	"CzÍúÊ stron by≥a mokra, czÍúÊ nadpalona.";
	TEXT[2]						=	"Nazwisko autora nieczytelne.";
};
func void Use_ItWr_BookXp_037()
{
	Npc_AddDocsCounter(37, 2);
	CreateInvItem(self, ItWr_BookXp_037);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_04_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_04_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Deszczowa noc");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 6");
				Doc_PrintLines	(nDocID,  0, "To wrÛci≥o. Tym razem nie pada≥o. Cisza by≥a tak gÍsta, øe s≥ysza≥em w≥asne drøenie. Oddech by≥ d≥uøszy. CiÍøszy. Jakby... coú p≥aka≥o przez dziurÍ w p≥ucach.");
				Doc_PrintLines	(nDocID,  0, "SiedzÍ i nas≥uchujÍ, ale wciπø bojÍ siÍ spojrzeÊ. Rano znÛw ta woda - tym razem nawet na stole. Nie úpiÍ. Nie jem. Zaczynam siÍ sypaÊ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "DzieÒ 7");
				Doc_PrintLines	(nDocID,  1, "Dziú po≥oøy≥em siÍ z mieczem. åwieca siÍ pali≥a. Gdy Ñtoî przysz≥o - s≥ysza≥em juø nie tylko oddech, ale teø chlupot, jakby stπpa≥o po b≥ocie. Z≥apa≥em miecz i odwrÛci≥em siÍ.");
				Doc_PrintLines	(nDocID,  1, "Sta≥a nade mnπ. Kobieca sylwetka, ca≥a czarna, pokryta mokrym w≥osiem i wodorostami. Nie mia≥a twarzy - tylko ciemnπ masÍ, z ktÛrej kapa≥a woda. Wydobywajπcy siÍ z niej zapach brudu i zgnilizny by≥ nie do zniesienia. PrÛbowa≥em krzyknπÊ, ale nic nie wysz≥o. Nie mog≥em siÍ ruszyÊ.");
				Doc_PrintLines	(nDocID,  1, "I wtedy... ona upad≥a. Jakby coú jπ z≥ama≥o. Szarpa≥a siÍ po ziemi jak ryba poza wodπ, wijπc siÍ bezg≥oúnie, aø wreszcie uciek≥a pe≥znπc, jak wπø. Przez drzwi, ktÛre by≥y otwarte. Ca≥π noc przesiedzia≥em z mieczem i úwiecπ w drøπcych d≥oniach. I z bijπcym sercem, ktÛre wali≥o mi jak m≥otem o czaszkÍ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ 8");
				Doc_PrintLines	(nDocID,  1, "GrÛb by≥ rozkopany - z wewnπtrz. Ziemia wypchniÍta, korzenie po≥amane. Zrozumia≥em, øe ona wrÛci≥a.");
				Doc_PrintLines	(nDocID,  1, "WrÛci≥em i zaczπ≥em pisaÊ. Moøe to ostatnie, co robiÍ, majπc jeszcze rozum.");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, jak d≥ugo jeszcze wytrzymam. Moøe wariujÍ. Ale nie mam zamiaru siÍ poddaÊ. ZrobiÍ coú, co jπ zatrzyma. Cokolwiek.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_038 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_038;
	
	if (Bonus_ItWr_BookXp[38])	{	description = "Niepos≥uszne ostrza I (przeczytane)";	}
	else						{	description = "Niepos≥uszne ostrza I";					};
	
	TEXT[0]						=	"Zapiski mistrza Olbrechta,";
	TEXT[1]						=	"dawniej kowala przy krÛlewskim dworze.";
};
func void Use_ItWr_BookXp_038()
{
	Npc_AddDocsCounter(38, 1);
	CreateInvItem(self, ItWr_BookXp_038);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_05_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_05_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Niepos≥uszne ostrza");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z øelazem spÍdzi≥em wiÍcej lat niø z ludümi. Ono nie zdradza, nie milknie, nie starzeje siÍ tak jak cz≥owiek. Ale kto mÛwi, øe øelazo nie pamiÍta?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez czterdzieúci trzy lata wykona≥em przesz≥o tysiπc ostrzy. WiÍkszoúÊ to by≥a zwyczajna stal - øo≥nierskie miecze, ch≥opskie noøe, ceremonialne sztylety. Wszystkie dobre, solidne rzemios≥o. Ale czasem... trafia≥ siÍ wyjπtek.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "ZamÛwienie przysz≥o od moønego z po≥udnia. Sam przyniÛs≥ rudÍ - czarna, ciÍøka, matowa jak wypalona koúÊ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Twierdzi≥, øe pochodzi z g≥Íbokiego roz≥amu w gÛrach, gdzie niegdyú sta≥a úwiπtynia dawno zapomnianego ludu. Z poczπtku chcia≥em odmÛwiÊ - nie lubiÍ materia≥u o nieznanym pochodzeniu. Ale zap≥aci≥ z gÛry, i to suto, a surowiec, choÊ dziwny, ku≥ siÍ jak marzenie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Uformowa≥em klingÍ zgodnie z øyczeniem: prosta, ale doskonale wywaøona. Jednak juø po zahartowaniu poczu≥em ch≥Ûd - nie fizyczny, tylko... obecny. Jakby coú przylgnÍ≥o do ostrza. Nie odwaøy≥em siÍ wtedy powiedzieÊ tego g≥oúno.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_039 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_039;
	
	if (Bonus_ItWr_BookXp[39])	{	description = "Niepos≥uszne ostrza II (przeczytane)";	}
	else						{	description = "Niepos≥uszne ostrza II";					};
	
	TEXT[0]						=	"Zapiski mistrza Olbrechta,";
	TEXT[1]						=	"dawniej kowala przy krÛlewskim dworze.";
};
func void Use_ItWr_BookXp_039()
{
	Npc_AddDocsCounter(39, 2);
	CreateInvItem(self, ItWr_BookXp_039);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_05_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_05_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Niepos≥uszne ostrza");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "TydzieÒ pÛüniej wieúniak przyszed≥ z ranπ - pÍkniÍta rÍkojeúÊ i rozciÍte palce. Powiedzia≥, øe gdy tylko z≥apa≥ broÒ, poczu≥, øe coú Ñgo mierzyî. Miecz odrzuci≥. MÛwi≥, øe ostrze... pulsowa≥o. Sprawdzi≥em je - nic szczegÛlnego. Ale nie potrafi≥em juø dotknπÊ go bez rÍkawic.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Inny przypadek: miecz rycerza z GÛrniczej Doliny. Mia≥ przezwisko Po≥ykacz ZdrajcÛw. Twierdzi≥, øe øelazo pÍka zawsze, gdy zabije niewinnego. Kiedyú walczy≥ z ch≥opem, ktÛry ponoÊ zgwa≥ci≥ dziewczynÍ z wioski - ostrze siÍ rozpad≥o po pierwszym uderzeniu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "PÛüniej okaza≥o siÍ, øe to by≥ jego brat, niewinny. Sam rycerz powiesi≥ siÍ dwa dni pÛüniej. Przys≥a≥ mi po úmierci resztki miecza z dopiskiem: ÑTo nie ja decydowa≥emî.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ale najmocniej zapamiÍta≥em ostrze bez imienia. Wyku≥em je w m≥odoúci, a potem zaginÍ≥o. Po latach wrÛci≥o - ktoú zostawi≥ je przy moich drzwiach. Klinga by≥a nieco stÍpiona, rÍkojeúÊ przetarta, ale nie zardzewia≥a. Mimo braku pielÍgnacji - zero úladÛw czasu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Od tego dnia... zaczÍ≥y siÍ dziwne sny. åni≥o mi siÍ, øe miecz wraca, zawsze wraca, do tej samej d≥oni. Øe odcina rÍce tym, ktÛrzy prÛbujπ go zatrzymaÊ. Øe sam siÍ unosi. Øe krπøy - nie szukajπc w≥aúciciela, ale ofiary.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zamurowa≥em go. Zamurowa≥em i przesta≥em kuÊ. Nie dlatego, øe siÍ ba≥em. Ale dlatego, øe zrozumia≥em - øelazo nie zapomina. Ono pamiÍta krew. PamiÍta d≥onie. PamiÍta szept.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeúli znajdziesz ostrze, ktÛrego nikt nie chce, nie pytaj, czemu jest bez w≥aúciciela. Moøe to nie cz≥owiek trzyma miecz, tylko miecz trzyma cz≥owieka.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_040 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_040;
	
	if (Bonus_ItWr_BookXp[40])	{	description = "Dziennik z Szybu VII I (przeczytane)";	}
	else						{	description = "Dziennik z Szybu VII I";					};
	
	TEXT[0]						=	"Zapiski znalezione przy ciele gÛrnika";
	TEXT[1]						=	"w zawa≥ach kopalni krÛlewskiej pod Rendor.";
	TEXT[2]						=	"Brak dalszych wpisÛw po dniu dziewiπtym.";
};
func void Use_ItWr_BookXp_040()
{
	Npc_AddDocsCounter(40, 1);
	CreateInvItem(self, ItWr_BookXp_040);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_06_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_06_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Dziennik z Szybu VII");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 1");
				Doc_PrintLines	(nDocID,  0, "Zapisali mnie do Szybu VII. Powiedzieli, øe tu nie pytajπ o winÍ, tylko o rÍce. Mam dwie. KopiÍ. Dosta≥em m≥ot, koc, wodÍ i chleb z suszonym czymú. PonoÊ miÍso. Wchodzπc, zsunÍ≥o mi siÍ úwiat≥o z he≥mu. Jeden ze starych powiedzia≥: to znak. Nie wiem, czego.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 2");
				Doc_PrintLines	(nDocID,  0, "Rano trzy uderzenia dzwona. KopaÊ od razu. Ciche g≥osy. Nikt tu nie mÛwi, chyba øe trzeba. åciany mokre. Woda kapie ca≥y czas. Ktoú powiedzia≥, øe im g≥Íbiej, tym cieplej. Prawda. Duszno tam niøej. Ale lepiej tam niø przy wejúciu - tam straønicy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "DzieÒ 3");
				Doc_PrintLines	(nDocID,  1, "W nocy s≥ysza≥em düwiÍk. Nie stukanie. Nie kroki. Coú jak skrobanie po kamieniu. Moøe szczury. Jeden z gÛrnikÛw - bez oka, mÛwi ma≥o - tylko splunπ≥ i wycofa≥ siÍ wyøej. Straønik go odes≥a≥ z powrotem. Nie wrÛci≥. Powiedzieli, øe uciek≥.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ 4");
				Doc_PrintLines	(nDocID,  1, "Ktoú znalaz≥ dziwnπ rudÍ. Czarna, jakby porowata. Krucha. Straønik kaza≥ zostawiÊ. MÛwili coú o Ñg≥Íbinowej skaleî. Ale jeden m≥ody wziπ≥ kawa≥ek do kieszeni. Wieczorem mia≥ gorπczkÍ. Oczy przekrwione. ZÍbami zgrzyta≥, jakby úni≥ coú z≥ego. Rano by≥ martwy. Zabrali go i kazali nie mÛwiÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_041 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_041;
	
	if (Bonus_ItWr_BookXp[41])	{	description = "Dziennik z Szybu VII II (przeczytane)";	}
	else						{	description = "Dziennik z Szybu VII II";				};
	
	TEXT[0]						=	"Zapiski znalezione przy ciele gÛrnika";
	TEXT[1]						=	"w zawa≥ach kopalni krÛlewskiej pod Rendor.";
	TEXT[2]						=	"Brak dalszych wpisÛw po dniu dziewiπtym.";
};
func void Use_ItWr_BookXp_041()
{
	Npc_AddDocsCounter(41, 2);
	CreateInvItem(self, ItWr_BookXp_041);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_06_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_06_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Dziennik z Szybu VII");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 5");
				Doc_PrintLines	(nDocID,  0, "ZaczÍliúmy nowy tunel. åciana by≥a dziwnie miÍkka. Jakby nie kamieÒ, tylko coú miÍdzy. Uderzy≥em raz i pÍk≥o g≥Íboko. Zrobi≥a siÍ szczelina. Nie ma prawa tak siÍ kruszyÊ. Za úcianπ - cisza. Za bardzo cisza. Jakby úwiat siÍ koÒczy≥ zaraz za tπ warstwπ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 6");
				Doc_PrintLines	(nDocID,  0, "Nikt nie chce tam kopaÊ. Ale nikt teø nie mÛwi. Kaødy wie. Zmienili straønikÛw. Nowi milczπ jeszcze bardziej. Dali nam wiÍcej úwiat≥a. Dlaczego? Nikt nie pyta. W nocy znÛw by≥o skrobanie. D≥uøsze. Jakby po suficie. Ale nikt tam nie by≥.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "DzieÒ 7");
				Doc_PrintLines	(nDocID,  1, "ZaczÍ≥o úmierdzieÊ. Nie zgni≥e. Jakby rdzewiejπce miÍso. Powiedzieli, øe to od wody. Jeden stary gÛrnik wyjπ≥ z sakwy coú, co wyglπda≥o jak koúÊ. Ale cienka, jakby nie z cz≥owieka. Upuúci≥ jπ i rozpad≥a siÍ na proszek. Nikt nic nie powiedzia≥. Tylko szybciej jedli.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ 8");
				Doc_PrintLines	(nDocID,  1, "Zerwa≥o siÍ rusztowanie przy szczelinie. DwÛch spad≥o. Nie wrÛcili. Jeden krzycza≥, ale potem ucich≥. Nie jakby zemdla≥. Jakby ktoú go uciszy≥. Znaleüli tylko jeden but. Straønik powiedzia≥, øe majπ siÍ zg≥osiÊ ochotnicy do dalszego kopania. Nie by≥o ochotnikÛw. Wyznaczyli losowo. Pad≥o na mnie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ 9");
				Doc_PrintLines	(nDocID,  1, "Kopa≥em. CzujÍ, øe coú mnie obserwuje. Nie s≥yszÍ juø kapania. Tylko oddech. G≥Íboki. Nieregularny. Czasem coú jak chrobotanie - nie ziemi, tylko czegoú po ziemi. W úcianie jest szczelina. Wiem, øe ona patrzy. Jeúli ktoú to znajdzie, nie schodücie g≥Íbiej. Niech to, co tam jest, zostanie w ciemnoúci.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_042 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_042;
	
	if (Bonus_ItWr_BookXp[42])	{	description = "Spod fundamentÛw I (przeczytane)";	}
	else						{	description = "Spod fundamentÛw I";					};
	
	TEXT[0]						=	"Spisane przez mistrza murarskiego";
	TEXT[1]						=	"Ervona Halda, odnalezione w ruinach";
	TEXT[2]						=	"klasztoru Arnem. Tekst czÍúciowo przepalony.";
};
func void Use_ItWr_BookXp_042()
{
	Npc_AddDocsCounter(42, 1);
	CreateInvItem(self, ItWr_BookXp_042);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_07_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_07_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Spod fundamentÛw");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie wiem, kto zleci≥ budowÍ. Przyszli z po≥udnia, z dokumentami i z≥otem. Mieli plan, pieczÍcie, zapas wapna i milczπcego kap≥ana, ktÛry nie mÛwi≥ ani s≥owa, ale pokazywa≥, gdzie mamy kopaÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie pyta≥em. Nie po raz pierwszy budowa≥em coú bez tablicy i patrona. Praca to praca. Dali mi ludzi, dali mi czas, dali mi ziemiÍ. Gdybym wiedzia≥, co w niej siedzi, nie podjπ≥bym siÍ roboty.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Fundamenty stawialiúmy d≥ugo. Grunt by≥ miÍkki, mimo øe ska≥a pod spodem powinna byÊ twarda. Woda wlewa≥a siÍ nocπ, ale tylko nocπ. W dzieÒ nie by≥o ani kropli. Zaprawa wiπza≥a, ale odparowywa≥a zapach - dziwny, metaliczny, jakby gnijπcy kamieÒ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pierwsze rysy pojawi≥y siÍ na úcianie pÛ≥nocnej. Naturalna sprawa przy osiadaniu muru. Ale potem zaczÍ≥y siÍ uk≥adaÊ w wzory - pÛ≥≥uki, spirale, coú jak ludzkie twarze w grymasie snu. MÛj czeladnik Fenn prÛbowa≥ to zamalowaÊ wapnem, ale rano znÛw by≥y. I znÛw trochÍ inne.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wierzÍ w duchy. Ale jak wchodziliúmy na rusztowanie, mieliúmy wraøenie, øe ceg≥y oddychajπ. Jakby by≥y lekko ciep≥e. Jakby ros≥y, milimetr po milimetrze, bez naszej pomocy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zostawialiúmy jednπ warstwÍ - rano by≥y dwie. MÛwiliúmy sobie, øe to sen, øe zmÍczenie, øe opary wapna. Ale nikt juø nie spa≥ pod úcianami.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_043 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_043;
	
	if (Bonus_ItWr_BookXp[43])	{	description = "Spod fundamentÛw II (przeczytane)";	}
	else						{	description = "Spod fundamentÛw II";				};
	
	TEXT[0]						=	"Spisane przez mistrza murarskiego";
	TEXT[1]						=	"Ervona Halda, odnalezione w ruinach";
	TEXT[2]						=	"klasztoru Arnem. Tekst czÍúciowo przepalony.";
};
func void Use_ItWr_BookXp_043()
{
	Npc_AddDocsCounter(43, 2);
	CreateInvItem(self, ItWr_BookXp_043);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_07_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_07_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Spod fundamentÛw");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Na dziedziÒcu coú przesiπka≥o spod ziemi. Nie woda. Coú gÍstszego. Rudy úluz. Kap≥ani powiedzieli, øeby nie dotykaÊ - øe to Ñb≥ogos≥awieÒstwo kamieniaî.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "MÛj brat, kamieniarz, zbiera≥ to na szpachelkÍ i wyla≥ za mur. Nazajutrz mia≥ rÍkÍ spuchniÍtπ jak buk≥ak i paznokcie czarne jak wÍgiel. Dwa dni pÛüniej zniknπ≥. Nikt nie widzia≥, jak wyszed≥.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gdy skoÒczyliúmy mury, przyjechali nowi kap≥ani, øeby odprawiÊ poúwiÍcenie. Obejrzeli úciany. Weszli do úrodka. Wyszli biali jak kreda. Nie odezwali siÍ ani s≥owem.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "NastÍpnego dnia budynek zosta≥ zapieczÍtowany. Nikt nie dokoÒczy≥ dachu. Nikt nie wniÛs≥ o≥tarza. Nikt nie z≥oøy≥ modlitwy. Op≥acono nas z gÛry i kazano wyjechaÊ bez dnia zw≥oki.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nazwy klasztoru nie wpisano do rejestrÛw. A my, ktÛrzy go stawialiúmy, mieliúmy nie mÛwiÊ, co tam widzieliúmy. Ale czasem, kiedy budzÍ siÍ w nocy, mam przeczucie, øe tamto Ñcoúî dalej roúnie.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_044 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_044;
	
	if (Bonus_ItWr_BookXp[44])	{	description = "Niezmienne niebo I (przeczytane)";	}
	else						{	description = "Niezmienne niebo I";					};
	
	TEXT[0]						=	"Dziennik latarnika z przylπdka Rauenstein,";
	TEXT[1]						=	"rok 18 po trzecim wielkim przyp≥ywie.";
};
func void Use_ItWr_BookXp_044()
{
	Npc_AddDocsCounter(44, 1);
	CreateInvItem(self, ItWr_BookXp_044);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_08_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_08_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Niezmienne niebo");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 1");
				Doc_PrintLines	(nDocID,  0, "Nowa zmiana. Przylπdek jak zawsze: sÛl w powietrzu, cisza poza wiatrem. Gdy piszÍ te s≥owa, s≥oÒce wisi dok≥adnie nad ska≥π pÛ≥nocnπ. Jutro sprawdzÍ, czy to przypadek.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 5");
				Doc_PrintLines	(nDocID,  0, "To nie przypadek. Zaznaczy≥em cieÒ o tej samej porze dnia. Zawsze w tym samym miejscu. Moøe zbieg okolicznoúci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 12");
				Doc_PrintLines	(nDocID,  0, "Dziú po raz czwarty z rzÍdu widzia≥em, jak mewy przelatujπ tÍ samπ trasπ, w tej samej formacji. Jedna kulawa, jedna bez jednego lotki - zawsze w tej samej pozycji. Kaødego ranka. Nie zmieniajπ kierunku. To nie moøe byÊ przypadek.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "DzieÒ 16");
				Doc_PrintLines	(nDocID,  1, "Skrzynie z prowiantem przyniesione ≥odziπ. Ten sam marynarz, co zwykle. Ta sama broda, to samo utykanie. Przywita≥ siÍ dok≥adnie tymi samymi s≥owami co miesiπc temu: ÑMorze dziú spokojne, ale nie ufam mu.î Zapyta≥em o pogodÍ. Odpowiedzia≥ identycznie: ÑJak nie dmucha, to siÍ czai.î To nie powtÛrzenie. To powielenie. PowtÛrzy≥ teø gest d≥oniπ, ten sam uk≥ad palcÛw. Jakby scena odgrywa≥a siÍ wed≥ug wczeúniej napisanego scenariusza.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ 21");
				Doc_PrintLines	(nDocID,  1, "W nocy úni≥o mi siÍ, øe umieram z g≥odu. Obudzi≥em siÍ zlany potem. Na stole leøa≥ ciep≥y bochen chleba. Jeszcze go nie by≥o wczoraj. Nie pamiÍtam, øebym go piek≥. Nie pamiÍtam, øebym w ogÛle mia≥ mπkÍ. Ale smakowa≥ jak zawsze. Tak samo jak poprzedni, ktÛrego przecieø juø zjad≥em.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_045 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_045;
	
	if (Bonus_ItWr_BookXp[45])	{	description = "Niezmienne niebo II (przeczytane)";	}
	else						{	description = "Niezmienne niebo II";				};
	
	TEXT[0]						=	"Dziennik latarnika z przylπdka Rauenstein,";
	TEXT[1]						=	"rok 18 po trzecim wielkim przyp≥ywie.";
};
func void Use_ItWr_BookXp_045()
{
	Npc_AddDocsCounter(45, 2);
	CreateInvItem(self, ItWr_BookXp_045);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_08_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_08_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Niezmienne niebo");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 24");
				Doc_PrintLines	(nDocID,  0, "Codziennie sprawdzam poziom przyp≥ywu - ska≥a przy boi ma znacznik. Woda zatrzyma≥a siÍ dok≥adnie na tej samej wysokoúci. Cztery dni z rzÍdu. Zegarek chodzi. åwieca siÍ wypala. W≥osy rosnπ. Ale morze nie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 27");
				Doc_PrintLines	(nDocID,  0, "Napisa≥em list. Nie wiem, komu. Schowa≥em go do butelki i wrzuci≥em do wody. NastÍpnego ranka znalaz≥em go na brzegu. Nie otwartπ butelkÍ - list. Suchy. MÛj charakter pisma. MÛj podpis. Ale nie mÛj papier. Jakby... ktoú mi go odes≥a≥.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "DzieÒ 30");
				Doc_PrintLines	(nDocID,  1, "Niebo siÍ nie zmienia. Chmury sπ zawsze w tym samym miejscu. CieÒ od latarni - ten sam kπt. Ptaki, fale, wiatr - wszystko powtarzalne. Nie starzejÍ siÍ jak reszta. Mam siwe w≥osy, ale nie pamiÍtam, kiedy przesta≥y rosnπÊ. Paznokcie sπ takie same od tygodni. Nie czujÍ, øeby mÛj g≥Ûd rÛs≥. CzujÍ tylko... ciÍøar powtÛrzeÒ. Jakby czas krπøy≥ wokÛ≥ mnie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ 31?");
				Doc_PrintLines	(nDocID,  1, "Dzisiaj zegar siÍ zatrzyma≥. Nie wiem, o ktÛrej. I nie wiem, ktÛry to dzieÒ. Liczy≥em je, ale moøe pomyli≥em siÍ gdzieú po drodze. Moøe by≥o ich wiÍcej. Moøe mniej.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ ?");
				Doc_PrintLines	(nDocID,  1, "Niebo siÍ nie zmienia. Ale wczoraj, kiedy od≥oøy≥em piÛro, zauwaøy≥em coú dziwnego. W rogu stronicy... atrament juø tam by≥. Jakby te s≥owa czeka≥y, aø je napiszÍ. Nie pamiÍtam, kiedy ostatni raz coú zapisa≥em sam z siebie. Moøe juø tylko udajÍ, øe wybieram s≥owa.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_046 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_046;
	
	if (Bonus_ItWr_BookXp[46])	{	description = "W cieniu stodo≥y I (przeczytane)";	}
	else						{	description = "W cieniu stodo≥y I";					};
	
	TEXT[0]						=	"Zanotowane przez Edrena Halma,";
	TEXT[1]						=	"pisarza podrÛønego, w okolicach";
	TEXT[2]						=	"GÛrnego Wergolu, roku 43 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_046()
{
	Npc_AddDocsCounter(46, 1);
	CreateInvItem(self, ItWr_BookXp_046);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_09_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_09_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "W cieniu stodo≥y");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie sπdzi≥em, øe dzieÒ, w ktÛrym zatrzyma≥em siÍ w tej przeklÍtej osadzie, przyniesie mi coú wiÍcej niø b≥oto na butach i spalonπ owsiankÍ w gospodzie. A jednak.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zna≥em ich wielu - filozofÛw, pisarzy, myúlicieli. Jedni przemawiali z pulpitÛw, inni ze ska≥, jeszcze inni milczeli ca≥e øycie, tylko po to, by wypowiedzieÊ jedno, wiekopomne zdanie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale nikt z nich nie mÛwi≥ tak, jak mÛwi≥ Derun. ImiÍ zwyk≥e. Cz≥owiek - z pozoru teø. Stary, pochylony, z lewym okiem jakby przygas≥ym.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "MÛwili, øe kiedyú dosta≥ od konia w g≥owÍ i od tamtej pory Ñgada jak szalonyî. Unikali go. åmiali siÍ z niego. Jedna baba w karczmie powiedzia≥a, øe Ñjuø od dziesiÍciu lat to on bardziej z chmurπ gada niø z cz≥owiekiemî.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, co mnie tknÍ≥o. Moøe deszcz. Moøe nuda. Zatrzyma≥em siÍ przy nim, gdy siedzia≥ na pniu pod stodo≥π i coú mrucza≥. ZaczÍliúmy rozmowÍ - a raczej: ja zaczπ≥em. On odpowiedzia≥ pytaniem.");
				Doc_PrintLines	(nDocID,  1, "ÑCzy cz≥owiek ma nogi, øeby iúÊ do przodu, czy øeby nie uciec do ty≥u?î");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_047 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_047;
	
	if (Bonus_ItWr_BookXp[47])	{	description = "W cieniu stodo≥y II (przeczytane)";	}
	else						{	description = "W cieniu stodo≥y II";				};
	
	TEXT[0]						=	"Zanotowane przez Edrena Halma,";
	TEXT[1]						=	"pisarza podrÛønego, w okolicach";
	TEXT[2]						=	"GÛrnego Wergolu, roku 43 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_047()
{
	Npc_AddDocsCounter(47, 2);
	CreateInvItem(self, ItWr_BookXp_047);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_09_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_09_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "W cieniu stodo≥y");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zdziwiony, spyta≥em, o co mu chodzi. Odpowiedzia≥:");
				Doc_PrintLines	(nDocID,  0, "ÑA o co ci chodzi, kiedy idziesz? Wiesz, czy tylko udajesz, øe wiesz?î");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zrazu uzna≥em to za be≥kot. Ale potem zapyta≥ mnie:");
				Doc_PrintLines	(nDocID,  0, "ÑIle rzeczy robisz, bo chcesz - a ile, bo ci siÍ tylko wydaje, øe chcesz?î");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przyznam: zamilk≥em. A on mÛwi≥ dalej, powoli, spokojnie, jakby waøy≥ kaøde s≥owo:");
				Doc_PrintLines	(nDocID,  0, "ÑMia≥em kiedyú kozÍ. G≥upia by≥a. Myúla≥a, øe jak jπ ciπgnÍ na sznurze, to znaczy, øe prowadzi. I tak samo ja - ca≥e øycie myúla≥em, øe idÍ gdzie chcÍ. A sznur by≥ tylko d≥uøszy.î");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zaczπ≥em notowaÊ. Nie dla ksiπøki, nie dla pieniÍdzy. Po prostu... musia≥em. Zapyta≥em go, co sπdzi o úmierci. Odpowiedzia≥:");
				Doc_PrintLines	(nDocID,  1, "ÑA co sπdzisz o trzeciej drzemce? To i tak siÍ stanie. Lepiej siÍ nie zbudziÊ za wczeúnie.î");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "O sens øycia?");
				Doc_PrintLines	(nDocID,  1, "ÑSens? A po co ci sens? Owca nie ma sensu. A øyje.î");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "I jeszcze to, ktÛre chyba zapamiÍtam do koÒca swoich dni:");
				Doc_PrintLines	(nDocID,  1, "ÑZiemia siÍ krÍci, bo nikt jej nie powiedzia≥, øe moøe przestaÊ. A ludzie krÍcπ siÍ razem z niπ, bo bojπ siÍ stanπÊ i zapytaÊ: dlaczego?.î");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy Derun by≥ szalony. Ale wiem, øe gdy odchodzi≥em, nie mia≥em juø pewnoúci co do wielu rzeczy, ktÛre wydawa≥y siÍ wczeúniej oczywiste. I chyba o to chodzi≥o.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_048 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_048;
	
	if (Bonus_ItWr_BookXp[48])	{	description = "Na s≥owie go mam I (przeczytane)";	}
	else						{	description = "Na s≥owie go mam I";					};
	
	TEXT[0]						=	"Dokument spisany przez Egdara,";
	TEXT[1]						=	"by≥ego úledczego garnizonu GÛrnego Wergolu.";
	TEXT[2]						=	"Przechowywany w archiwum straøy.";
};
func void Use_ItWr_BookXp_048()
{
	Npc_AddDocsCounter(48, 1);
	CreateInvItem(self, ItWr_BookXp_048);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_10_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_10_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Na s≥owie go mam");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ludzie myúlπ, øe winni siÍ przyznajπ, bo majπ skrupu≥y.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie majπ. Przyznajπ siÍ, bo pope≥niajπ b≥πd. I ja jestem od tego, by na ten b≥πd cierpliwie czekaÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z≥amanie cz≥owieka to nie kwestia si≥y, lecz rytmu. Musisz wejúÊ w jego tempo - nie burzyÊ go, nie przyt≥aczaÊ. Wystarczy, øe dasz mu siÍ wygadaÊ, a sam zbuduje sobie szubienicÍ z w≥asnych s≥Ûw.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "1. Nigdy nie pytaj wprost.");
				Doc_PrintLines	(nDocID,  1, "Jeúli zapytasz: ÑCzy zabi≥eú tego cz≥owieka?î, to dostaniesz Ñnieî. I nie dowiesz siÍ niczego. Zamiast tego pytaj: ÑCo zrobi≥eú po tym, jak odszed≥ z twojej zagrody?î i ÑZanim znalaz≥eú ten nÛø, gdzie by≥eú?î");
				Doc_PrintLines	(nDocID,  1, "Zmuszasz go do opowieúci. A opowieúci zawsze majπ luki. A kaøda luka - to okno, przez ktÛre wchodzi prawda.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "2. Daj mu coú wygraÊ.");
				Doc_PrintLines	(nDocID,  1, "Cz≥owiek, ktÛry czuje siÍ sprytny, mÛwi wiÍcej. Daj mu siÍ poprawiÊ: ÑTo by≥o ko≥o wieøy m≥ynarza, tak? ñ Nie, nie, raczej przy starym moúcie.î");
				Doc_PrintLines	(nDocID,  1, "Gratulacje. W≥aúnie ustali≥eú miejsce zbrodni, chociaø jeszcze przed chwilπ zarzeka≥ siÍ, øe nie by≥ w okolicy.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_049 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_049;
	
	if (Bonus_ItWr_BookXp[49])	{	description = "Na s≥owie go mam II (przeczytane)";	}
	else						{	description = "Na s≥owie go mam II";				};
	
	TEXT[0]						=	"Dokument spisany przez Egdara,";
	TEXT[1]						=	"by≥ego úledczego garnizonu GÛrnego Wergolu.";
	TEXT[2]						=	"Przechowywany w archiwum straøy.";
};
func void Use_ItWr_BookXp_049()
{
	Npc_AddDocsCounter(49, 2);
	CreateInvItem(self, ItWr_BookXp_049);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_10_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_10_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Na s≥owie go mam");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "3. Wiedza pozorna");
				Doc_PrintLines	(nDocID,  0, "Czasem wystarczy powiedzieÊ: ÑJuø wiemy, øe to ty. Potrzebujemy tylko szczegÛ≥Ûw, øeby zamknπÊ sprawÍ.î");
				Doc_PrintLines	(nDocID,  0, "Nie wiesz nic. Ale on nie wie, øe nie wiesz. I dlatego zacznie mÛwiÊ - nie z øalu, ale øeby ÑzmniejszyÊ karÍî, ktÛrej siÍ boi. To dzia≥a. CzÍúciej, niø by siÍ chcia≥o przyznaÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "4. Powtarzaj. Aø powie inaczej.");
				Doc_PrintLines	(nDocID,  0, "Kaødy k≥amca zapomina w≥asne k≥amstwa. Pytaj dwa, trzy razy o to samo - ale w odstÍpie czasu, w innym kontekúcie. Niech sam zaplπcze siÍ w zeznaniach.");
				Doc_PrintLines	(nDocID,  0, "Jak siÍ zaplπcze - przestaje broniÊ prawdy, a zaczyna broniÊ historii. Wtedy wystarczy jedno pytanie za duøo.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "5. Obserwuj przerwy.");
				Doc_PrintLines	(nDocID,  1, "Nie s≥owa sπ waøne. Waøne jest, co dzieje siÍ miÍdzy s≥owami. Gdy milknie - nie przerywaj.");
				Doc_PrintLines	(nDocID,  1, "Cisza to najciÍøszy miecz. Ludzie bojπ siÍ ciszy, bo tam w≥aúnie czai siÍ ich sumienie. Czasem wystarczy patrzeÊ i czekaÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "6. Fa≥szywe pytanie");
				Doc_PrintLines	(nDocID,  1, "ÑCzemu nie powiedzia≥eú wczeúniej, øe zna≥eú ofiarÍ?î");
				Doc_PrintLines	(nDocID,  1, "On nie powiedzia≥, øe zna≥. Ale teraz musi siÍ t≥umaczyÊ - bo podúwiadomoúÊ juø z≥apa≥a haczyk.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie walcz z podejrzanym. Daj mu walczyÊ z w≥asnym obrazem siebie. I nigdy, przenigdy nie zapominaj: Najgorsze rzeczy mÛwi siÍ szeptem. Najmocniejsze wyznania ñ przypadkiem. A najwiÍksze b≥Ídy ñ wtedy, gdy cz≥owiek czuje siÍ bezpieczny.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_050 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_050;
	
	if (Bonus_ItWr_BookXp[50])	{	description = "Z drugiej strony szk≥a I (przeczytane)";	}
	else						{	description = "Z drugiej strony szk≥a I";				};
	
	TEXT[0]						=	"Spisano z notatek uczonego Eirena Halbricha,";
	TEXT[1]						=	"badajπcego zjawiska optyczne w klasztorze";
	TEXT[2]						=	"Porthalm. Rok 17 po Drugim TrzÍsieniu.";
};
func void Use_ItWr_BookXp_050()
{
	Npc_AddDocsCounter(50, 1);
	CreateInvItem(self, ItWr_BookXp_050);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_11_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_11_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Z drugiej strony szk≥a");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie wiem, kto pierwszy zauwaøy≥, øe to lustro nie dzia≥a jak inne. By≥o stare, oprawione w ramÍ z czarnego drewna, z delikatnym wzorem przypominajπcym wijπce siÍ pnπcza. Sta≥o w zakamarku biblioteki klasztornej, gdzie úwiat≥o rzadko dociera≥o.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Poczπtkowo myúla≥em, øe to tylko z≥udzenie. Odbicie wydawa≥o siÍ nieco opÛünione, jakby úwiat≥o potrzebowa≥o wiÍcej czasu, by siÍ odbiÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale z czasem zauwaøy≥em, øe niektÛre rzeczy w odbiciu sπ inne. Ksiπøki na pÛ≥kach mia≥y inne tytu≥y, úwiece pali≥y siÍ, choÊ w rzeczywistoúci by≥y zgaszone.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pewnego dnia postanowi≥em przeprowadziÊ eksperyment. Ustawi≥em przed lustrem krzes≥o i usiad≥em na nim, trzymajπc w d≥oni úwiecÍ. W odbiciu by≥a zgaszona ñ dopÛki nie prÛbowa≥em jej zapaliÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wtedy, zanim jeszcze ogieÒ dotknπ≥ knota, p≥omieÒ juø pojawi≥ siÍ w odbiciu. Ruch wyprzedzony, jakby tamten úwiat przewidywa≥ mÛj zamiar.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Z czasem zaczπ≥em dostrzegaÊ w odbiciu postaÊ. Sta≥a za mnπ, nieruchoma, z twarzπ skrytπ w cieniu. Gdy odwraca≥em siÍ, nikogo nie by≥o. Ale w lustrze ñ zawsze tam by≥a.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_051 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_051;
	
	if (Bonus_ItWr_BookXp[51])	{	description = "Z drugiej strony szk≥a II (przeczytane)";	}
	else						{	description = "Z drugiej strony szk≥a II";					};
	
	TEXT[0]						=	"Spisano z notatek uczonego Eirena Halbricha,";
	TEXT[1]						=	"badajπcego zjawiska optyczne w klasztorze";
	TEXT[2]						=	"Porthalm. Rok 17 po Drugim TrzÍsieniu.";
};
func void Use_ItWr_BookXp_051()
{
	Npc_AddDocsCounter(51, 2);
	CreateInvItem(self, ItWr_BookXp_051);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_11_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_11_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Z drugiej strony szk≥a");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Postanowi≥em dotknπÊ powierzchni lustra. By≥o zimne, ale pod palcami poczu≥em delikatne pulsowanie, jakby serce bijπce w g≥Íbi szk≥a. Nacisnπ≥em mocniej ñ i wtedy poczu≥em, jak coú chwyta mojπ d≥oÒ od drugiej strony. Szarpnπ≥em siÍ i cofnπ≥em, serce wali≥o mi jak m≥ot.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Od tamtej pory unika≥em lustra. Ale ono mnie przyciπga≥o. Czu≥em jego obecnoúÊ, jakby obserwowa≥o mnie przez úciany. Sny sta≥y siÍ koszmarami ñ úni≥em o úwiecie po drugiej stronie, ciemnym, zimnym, pe≥nym cieni bez twarzy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pewnej nocy obudzi≥em siÍ i zobaczy≥em, øe lustro stoi naprzeciw mojego ≥Ûøka. Nie pamiÍtam, bym je tam przyniÛs≥. W odbiciu nie by≥o mnie ñ tylko pusty pokÛj i postaÊ stojπca tam, gdzie powinienem byÊ ja.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zrozumia≥em, øe lustro nie odbija rzeczywistoúci. Ono pokazuje inny úwiat, rÛwnoleg≥y, ale nie identyczny. åwiat, w ktÛrym coú lub ktoú prÛbuje siÍ przedostaÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dziú rano lustro zniknÍ≥o. Zosta≥a po nim tylko pusta úciana. Ale w odbiciu okna widzÍ, øe stoi tam nadal. I postaÊ w nim jest coraz bliøej.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_052 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_052;
	
	if (Bonus_ItWr_BookXp[52])	{	description = "Na granicy sacrum I (przeczytane)";	}
	else						{	description = "Na granicy sacrum I";				};
	
	TEXT[0]						=	"Autor: mistrz Maglan z Archiwum åwitu,";
	TEXT[1]						=	"by≥y cz≥onek KrÍgu åwiat≥a.";
	TEXT[2]						=	"Rok 48 po Trzecim Przebudzeniu.";
};
func void Use_ItWr_BookXp_052()
{
	Npc_AddDocsCounter(52, 1);
	CreateInvItem(self, ItWr_BookXp_052);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_12_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_12_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Na granicy sacrum");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez ca≥e øycie nauczano mnie, øe moc pochodzi od bogÛw. åwiat≥o Innosa ñ czyste i prawe. CieÒ Beliara ñ mroczny, lecz rÛwnie realny. RÛwnowaga Adanosa ñ milczπca, lecz wszechobecna.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "A magia? Magia by≥a zawsze ≥πcznikiem miÍdzy nami a nimi. Kap≥ani g≥oszπ, øe to dar. Zaklinacze mÛwiπ, øe to ≥aska. Krπg Ognia - øe to obowiπzek. Krπg Wody - øe to narzÍdzie rÛwnowagi. I przez lata w to wierzy≥em.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Aø do momentu, gdy przesta≥em rozumieÊ, dlaczego niektÛre rytua≥y dzia≥ajπ rÛwnie skutecznie - niezaleønie od tego, do ktÛrego boga sπ skierowane.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W ruinach na wschodnich pustkowiach odnalaz≥em pieczÍcie starsze niø nasze úwiπtynie, runy starsze niø alfabet. Ich wzory uk≥ada≥y siÍ w znane nam zaklÍcia - ale øaden z tych symboli nie mia≥ powiπzania z kultem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "A jednak dzia≥a≥y. Rzuca≥y ogieÒ. Leczy≥y rany. Wiπza≥y dusze.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zaczπ≥em porÛwnywaÊ modlitwy kap≥anÛw z inkantacjami magÛw. I nie mog≥em nie zauwaøyÊ, øe rÛønice sπ tylko powierzchowne - melodie inne, s≥owa inne, ale schemat i struktura niemal identyczne. Jakby wszyscy uczyli siÍ z tego samego, zapomnianego ürÛd≥a.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_053 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_053;
	
	if (Bonus_ItWr_BookXp[53])	{	description = "Na granicy sacrum II (przeczytane)";	}
	else						{	description = "Na granicy sacrum II";				};
	
	TEXT[0]						=	"Autor: mistrz Maglan z Archiwum åwitu,";
	TEXT[1]						=	"by≥y cz≥onek KrÍgu åwiat≥a.";
	TEXT[2]						=	"Rok 48 po Trzecim Przebudzeniu.";
};
func void Use_ItWr_BookXp_053()
{
	Npc_AddDocsCounter(53, 2);
	CreateInvItem(self, ItWr_BookXp_053);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_12_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_12_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Na granicy sacrum");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie oúmielam siÍ mÛwiÊ tego g≥oúno, lecz coraz bardziej wierzÍ, øe magia nie pochodzi od bogÛw. Øe to oni nauczyli siÍ z niej korzystaÊ ñ a my, przez wieki, pomyliliúmy skutek z przyczynπ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sπ tacy, ktÛrzy twierdzπ, øe magia Ñs≥yszyî, øe Ñcoúî odpowiada. NiektÛrzy mÛwiπ o g≥osach przywo≥ywanych przez z≥oøone runy - g≥osach, ktÛre nie sπ ani ludzkie, ani boskie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W staroøytnych tekstach znalaz≥em frazy opisujπce moc jako wyp≥ywajπcπ z g≥Íbin úwiata, ze szczelin miÍdzy bytami, z nie-miejsc, gdzie nie ma øycia ani úmierci.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "To by t≥umaczy≥o, dlaczego magia tak czÍsto wymaga ceny. Dlaczego zbyt wielka jej iloúÊ kala duszÍ. Dlaczego niektÛre zaklÍcia sπ z natury zepsute, jakby ich fundament by≥ obcy naszemu úwiatu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "ByÊ moøe bogowie nie sπ ürÛd≥em mocy, lecz tylko jej straønikami. Albo pasoøytami. ByÊ moøe najwiÍkszπ herezjπ nie jest pos≥ugiwanie siÍ mocπ, lecz wierzenie, øe to úwiÍtoúÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeúli tak jest - to wszystko, co zbudowaliúmy, opiera siÍ na k≥amstwie. A to, co naprawdÍ øyje pod naszymi stopami, w krwi ziemi i cieniu umys≥u - jeszcze nie przemÛwi≥o.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale kiedy to zrobi... byÊ moøe nikt nie bÍdzie w stanie tego powstrzymaÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_054 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_054;
	
	if (Bonus_ItWr_BookXp[54])	{	description = "Cienie bez imienia I (przeczytane)";	}
	else						{	description = "Cienie bez imienia I";				};
	
	TEXT[0]						=	"Spisano z zapiskÛw mistrza nekromancji";
	TEXT[1]						=	"Ralkara Morna, niegdyú ucznia KrÍgu Wody,";
	TEXT[2]						=	"pÛüniej wygnanego. Odnaleziono w ruinach Yrras.";
};
func void Use_ItWr_BookXp_054()
{
	Npc_AddDocsCounter(54, 1);
	CreateInvItem(self, ItWr_BookXp_054);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_13_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_13_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Cienie bez imienia");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie kaøda dusza, ktÛrπ wzywamy, odpowiada. Nie kaøda przyzywana istota przychodzi z miejsca, ktÛre da siÍ opisaÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez lata studiowa≥em rytua≥y nekromantyczne - te zachowane w ruinach, zakazane przez krÍgi magÛw, przepisywane w szeptach z jednego martwego jÍzyka na inny.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Poczπtkowo sπdzi≥em, øe przywo≥ujπc szkielet, oøywiam zw≥oki - nic wiÍcej. Ale w ktÛrymú momencie zrozumia≥em: to nie sπ po prostu zw≥oki. To nie jest tylko cia≥o. Jest w nim coú jeszcze.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Kiedy przyzywamy szkielet - nie pytamy, czyj on by≥. Nie prosimy duszy o zgodÍ. A jednak istota wstaje i wykonuje rozkazy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dlaczego? Jeúli to tylko magia oøywiajπca materiÍ - skπd pos≥uszeÒstwo? Jeúli to duch, czemu siÍ nie buntuje?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Najbardziej niepokojπce sπ demony. Pojawiajπ siÍ znikπd - nie z ognia, nie z ziemi, ale jakby przesiπka≥y przez rzeczywistoúÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nikt ich nie widzia≥, zanim je przyzwa≥, a mimo to istniejπ w formach, ktÛrych nigdy nie zapomnÍ. Majπ strukturÍ, cel, z gÛry okreúlony sposÛb dzia≥ania - jakby by≥y czÍúciπ wiÍkszego porzπdku, do ktÛrego nie mamy dostÍpu.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_055 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_055;
	
	if (Bonus_ItWr_BookXp[55])	{	description = "Cienie bez imienia II (przeczytane)";	}
	else						{	description = "Cienie bez imienia II";					};
	
	TEXT[0]						=	"Spisano z zapiskÛw mistrza nekromancji";
	TEXT[1]						=	"Ralkara Morna, niegdyú ucznia KrÍgu Wody,";
	TEXT[2]						=	"pÛüniej wygnanego. Odnaleziono w ruinach Yrras.";
};
func void Use_ItWr_BookXp_055()
{
	Npc_AddDocsCounter(55, 2);
	CreateInvItem(self, ItWr_BookXp_055);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_13_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_13_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Cienie bez imienia");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wiem, co mÛwiπ kap≥ani Beliara. Øe te istoty pochodzπ z jego wymiaru. Ale czym on jest? Krainπ úmierci? Otch≥aniπ dusz? A moøe magazynem pos≥usznych form, z ktÛrych korzystajπ ci, ktÛrzy znajπ odpowiednie znaki?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pewnego razu przyzwa≥em istotÍ - nieznanπ, ogromnπ, bez imienia. Gdy tylko siÍ pojawi≥a, us≥ysza≥em coú. Nie s≥owami. W g≥owie. Pytanie: ÑCzy ty teø únisz?î. Nic wiÍcej. Nigdy pÛüniej øadne stworzenie przyzwane nie powiedzia≥o ani s≥owa.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Od tamtej pory wierzÍ, øe nie wszystkie te byty sπ pozbawione úwiadomoúci. Øe niektÛre sπ przebudzone. Øe po drugiej stronie nie ma raju, nieba ani piek≥a, tylko coú nieskoÒczonego, zimnego, czekajπcego.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "NiektÛre z tych istot to nie zmarli. To ci, ktÛrzy nigdy siÍ nie narodzili. Poczπtkowo myúla≥em, øe to tylko metafora. Ale teraz wierzÍ inaczej.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "ByÊ moøe to szczπtki dusz, ktÛrych nigdy nie tchnÍ≥o øycie. ByÊ moøe to pragnienia - tak silne, øe nie zgas≥y nawet w niebycie. Gdy ich przyzywamy, nie budzimy zmar≥ych. Budzimy pamiÍÊ øycia, ktÛre nigdy nie mia≥o poczπtku.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie sπ duchami - nie majπ wspomnieÒ, nie znajπ jÍzyka. Ale pragnπ istnieÊ - i byÊ moøe to pragnienie przyciπga ich do naszych zaklÍÊ. Nie buntujπ siÍ, bo nie znajπ wolnoúci. Nie mÛwiπ, bo nigdy nie mÛwili.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_056 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_056;
	
	if (Bonus_ItWr_BookXp[56])	{	description = "Cia≥o bez g≥osu I (przeczytane)";	}
	else						{	description = "Cia≥o bez g≥osu I";					};
	
	TEXT[0]						=	"Spisane przez Adepta Nemerana,";
	TEXT[1]						=	"ostatniego ucznia mistrza Allirema,";
	TEXT[2]						=	"rok 41 po Ciszy WewnÍtrznej Bramy.";
};
func void Use_ItWr_BookXp_056()
{
	Npc_AddDocsCounter(56, 1);
	CreateInvItem(self, ItWr_BookXp_056);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_14_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_14_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Cia≥o bez g≥osu");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie wszystkie zbrodnie zaczynajπ siÍ od krzyku. NiektÛre od milczenia. Tak by≥o w przypadku mojego mistrza - alchemika Allirema, cz≥owieka, ktÛrego imienia nie ma juø w kronikach, a ktÛrego dom odwiedzili straønicy dopiero po jego úmierci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Znaleziono go martwego przy stole destylacyjnym, z kapturem nasuniÍtym na oczy. Obok leøa≥ dziennik - zamkniÍty na prosty zatrzask, ale zapisany szyfrem, ktÛry rozumia≥ tylko on. Tylko ja.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Allirem mia≥ w zwyczaju zapisywaÊ najwaøniejsze notatki od koÒca, w odbiciu lustrzanym i ze zmienionym uk≥adem symboli. Wiedzia≥em, jak je czytaÊ. I zrozumia≥em, co prÛbowa≥ ukryÊ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W piwnicy - pod warsztatem, ktÛrego drzwi by≥y zabezpieczone jedynie prostym ryglem - odkryto szeúÊ osÛb. Nagi tors, posiniaczone koÒczyny, oczy szeroko otwarte, nie spuszczajπce wzroku z nikogo, kto siÍ zbliøy≥.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Øyli. Ale nie reagowali na s≥owa, krzyki, b≥agania. Tylko na dotyk. Wtedy drøeli. Patrzyli prosto w oczy. I czekali.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Straø poprosi≥a o pomoc kogoú, kto mÛg≥by ich zrozumieÊ - lekarza miejskiego, znachora imieniem Tarven. Cz≥owieka uczciwego, lecz nadto ufnego.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_057 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_057;
	
	if (Bonus_ItWr_BookXp[57])	{	description = "Cia≥o bez g≥osu II (przeczytane)";	}
	else						{	description = "Cia≥o bez g≥osu II";					};
	
	TEXT[0]						=	"Spisane przez Adepta Nemerana,";
	TEXT[1]						=	"ostatniego ucznia mistrza Allirema,";
	TEXT[2]						=	"rok 41 po Ciszy WewnÍtrznej Bramy.";
};
func void Use_ItWr_BookXp_057()
{
	Npc_AddDocsCounter(57, 2);
	CreateInvItem(self, ItWr_BookXp_057);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_14_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_14_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Cia≥o bez g≥osu");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLines	(nDocID,  0, "Uzna≥, øe to objaw traumy, byÊ moøe d≥ugotrwa≥ego uwiÍzienia. PrzeniÛs≥ ich do szpitala i - to jego najwiÍkszy b≥πd - nie umieúci≥ w izolatkach, lecz w zwyk≥ych pokojach. ÑNiech zaznajπ przestrzeni. Niech zacznπ oddychaÊ,î mÛwi≥.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nazajutrz byli juø poza budynkiem. Tego samego dnia w rÛønych czÍúciach miasta dosz≥o do siedmiu zabÛjstw.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Øadnego úwiadectwa walki. Cia≥a wykrwawione, najczÍúciej bez koÒczyn - oderwanych, nie odciÍtych. Jeden z patrolujπcych øo≥nierzy zosta≥ znaleziony z wyrwanym mostkiem. U Tarvena nie znaleziono nikogo. Tylko otwarte drzwi i przewrÛcony stolik.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W rozszyfrowanym dzienniku Allirema nie by≥o receptury. Ale by≥a teoria. Pisa≥ o oddzieleniu úwiadomoúci od reakcji. O stworzeniu istoty, ktÛra Ñreaguje zawsze, lecz nie decyduje nigdyî. KtÛra nie s≥yszy, lecz wyczuwa obecnoúÊ. Nie rozumie jÍzyka, lecz rozpoznaje bicie serca.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To nie byli szaleÒcy. To nie by≥y bestie. To byli ludzie, z ktÛrych wydobyto rozum, pozostawiajπc tylko miÍúnie, zmys≥y, instynkt.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W laboratorium znalaz≥em zasuszone zio≥a, oznaczone starπ notacjπ chemicznπ. Ich zapach przypomina≥ popiÛ≥ po deszczu. Uda≥o mi siÍ je zidentyfikowaÊ. I odtworzyÊ wywar.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Formu≥a jest gotowa. Dzie≥o prawie ukoÒczone. Postanawiam je dokoÒczyÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_058 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_15.3ds";
	on_state[0]					=	Use_ItWr_BookXp_058;
	
	if (Bonus_ItWr_BookXp[58])	{	description = "O grach I (przeczytane)";	}
	else						{	description = "O grach I";					};
	
	TEXT[0]						=	"Spisane przez uczonego Ambria,";
	TEXT[1]						=	"o popularnych formach rozrywki rÛønych";
	TEXT[2]						=	"warstw spo≥ecznych Archolos i kontynentu.";
};
func void Use_ItWr_BookXp_058()
{
	Npc_AddDocsCounter(58, 1);
	CreateInvItem(self, ItWr_BookXp_058);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_15_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_15_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "O grach");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ludzie, odkπd tylko zeszli z drzew (a byÊ moøe nawet wczeúniej), wymyúlali gry. Gdy nie úcigajπ siÍ o chleb, úcigajπ siÍ o punkty, monety lub dumÍ. Gra to ma≥y úwiat, w ktÛrym obowiπzujπ inne prawa - i byÊ moøe w≥aúnie dlatego tak bardzo nas do niej ciπgnie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gra w koúci ñ gra prostych rπk i szybkich decyzji");
				Doc_PrintLines	(nDocID,  0, "Najstarsza ze znanych form hazardu, grana wszÍdzie tam, gdzie ziemia twarda, a stÛ≥ zbÍdny. Ulubiona rozrywka wieúniakÛw, bandytÛw, pasterzy i pijakÛw. Jej zasady sπ proste: rzucasz - wygrywasz albo przeklinasz.");
				Doc_PrintLines	(nDocID,  0, "Uczeni sugerujπ, øe pierwsze koúci nie zosta≥y stworzone przez ludzi. NiektÛre podania przypisujπ ich wynalezienie goblinom, ktÛre w czasach dawnych wojennych niewoli mia≥y bawiÊ siÍ rzucaniem zwierzÍcych zÍbÛw w przerwach od ≥upÛw i krzykÛw. Gdy ludzie poznali tÍ grÍ, uproúcili regu≥y i nadali jej znaczenie - niektÛrzy twierdzπ, øe nawet religijne: w koÒcu to los decyduje.");
				Doc_PrintLines	(nDocID,  0, "Do dziú, w karczmach i norach, koúci uderzajπ o drewno, toczπc siÍ z düwiÍkiem decyzji przeznaczenia. Wiele bÛjek zaczÍ≥o siÍ od przegranej rundy. Jeszcze wiÍcej przyjaüni - od wspÛlnego rzutu, ktÛry obu graczy zostawi≥ w nÍdzy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Gra w karty ñ sztuka blefu i pamiÍci");
				Doc_PrintLines	(nDocID,  1, "Karty sπ grπ ludzi, ktÛrzy majπ zbyt wiele do stracenia, by polegaÊ na samym szczÍúciu. Rozpowszechnione wúrÛd mieszczan, straøy, piratÛw i najemnikÛw, sπ czymú wiÍcej niø zabawπ - to Êwiczenie spostrzegawczoúci, zapamiÍtywania, oceny charakteru i... k≥amstwa.");
				Doc_PrintLines	(nDocID,  1, "Najbardziej znanπ odmianπ jest Czarny Jack, stworzony - jak g≥osi legenda - przez pirata imieniem Czarny Jack Marron, ktÛry gra≥ nim z za≥ogπ o prawo dowodzenia. Twierdzi≥, øe ta gra uczy wszystkiego, co waøne na morzu: ÑKiedy braÊ, kiedy czekaÊ i kiedy k≥amaÊ z uúmiechem.î");
				Doc_PrintLines	(nDocID,  1, "Karty szybko trafi≥y do miast i garnizonÛw, gdzie w godzinach wolnych od patroli i pracy rozgrywano ca≥e wieczory. Straønicy mÛwiπ, øe po trzech rundach poznasz cz≥owieka lepiej niø po trzech dniach rozmowy.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_059 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_15.3ds";
	on_state[0]					=	Use_ItWr_BookXp_059;
	
	if (Bonus_ItWr_BookXp[59])	{	description = "O grach II (przeczytane)";	}
	else						{	description = "O grach II";					};
	
	TEXT[0]						=	"Spisane przez uczonego Ambria,";
	TEXT[1]						=	"o popularnych formach rozrywki rÛønych";
	TEXT[2]						=	"warstw spo≥ecznych Archolos i kontynentu.";
};
func void Use_ItWr_BookXp_059()
{
	Npc_AddDocsCounter(59, 2);
	CreateInvItem(self, ItWr_BookXp_059);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_15_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_15_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "O grach");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gra w szachy ñ zderzenie umys≥Ûw");
				Doc_PrintLines	(nDocID,  0, "Szachy to gra arystokratÛw, uczonych i magÛw. Stworzone - wed≥ug tradycji - przez nadwornego stratega Aranthyela z Avenord, ktÛry chcia≥ szkoliÊ ksiÍcia nie tylko w bitwie, ale i w przewidywaniu. Kaøda figura symbolizuje element w≥adzy: krÛla, radÍ, rycerzy, duchowieÒstwo i lud. A kaødy ruch - skutek decyzji.");
				Doc_PrintLines	(nDocID,  0, "Szachy nie uczπ szybkiej reakcji, lecz cierpliwoúci. W zamkach i pa≥acach grajπ w nie w milczeniu, popijajπc wino, patrzπc przeciwnikowi w oczy i myúlπc trzy ruchy naprzÛd. Magowie, ktÛrzy grywajπ w szachy, uwaøajπ tÍ grÍ za formÍ magii mentalnej, bo kto przewidzi przysz≥oúÊ planszy, ten moøe zrozumieÊ przysz≥oúÊ úwiata.");
				Doc_PrintLines	(nDocID,  0, "To rÛwnieø jedyna gra, w ktÛrej zwyk≥y pionek moøe staÊ siÍ krÛlowπ. I byÊ moøe dlatego niektÛrych przeraøa najbardziej.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Powiedz mi, w co grasz ñ a powiem ci, kim jesteú.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kaøda warstwa spo≥eczna ma swojπ grÍ - bo kaøda ma swoje lÍki i pragnienia.");
				Doc_PrintLines	(nDocID,  1, "* Wieúniak ufa losowi, wiÍc rzuca koúÊmi.");
				Doc_PrintLines	(nDocID,  1, "* Najemnik ufa swojej pamiÍci i osπdowi, wiÍc gra w karty.");
				Doc_PrintLines	(nDocID,  1, "* Szlachcic ufa planowi i hierarchii, wiÍc przesuwa figury po planszy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale kaødy z nich - choÊ inny - gra z tego samego powodu: by przez chwilÍ zapomnieÊ, øe úwiat poza sto≥em nie daje tylu regu≥. Ani tylu zwyciÍstw.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_060 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_060;
	
	if (Bonus_ItWr_BookXp[60])	{	description = "Godzina úmierci I (przeczytane)";	}
	else						{	description = "Godzina úmierci I";					};
	
	TEXT[0]						=	"Ostatnie zapiski mistrza Deirama,";
	TEXT[1]						=	"zegarmistrza z pÛ≥nocnego";
	TEXT[2]						=	"kwarta≥u Gildenvy, rok nieznany.";
};
func void Use_ItWr_BookXp_060()
{
	Npc_AddDocsCounter(60, 1);
	CreateInvItem(self, ItWr_BookXp_060);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_01_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_01_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Godzina úmierci");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez czternaúcie lat prowadzi≥em warsztat przy Bruku PÛ≥nocnym. Wszyscy wiedzieli, øe by≥ wczeúniej w≥asnoúciπ starego mistrza Argosa - mojego nauczyciela i przyjaciela. Po jego úmierci, doúÊ nag≥ej, przejπ≥em sklep i ca≥π zawartoúÊ, jak sam mi wczeúniej zaleci≥.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "WúrÛd wielu zegarÛw, z ktÛrych wiÍkszoúÊ zna≥em od dawna, jeden budzi≥ moje zaciekawienie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "By≥ nietypowy: wykonany z ciemnego drewna bez zdobieÒ, z jednπ tylko, grubπ wskazÛwkπ. Nie reagowa≥ na naciπg, nie otwiera≥ siÍ, nie dawa≥ siÍ rozebraÊ. WskazÛwka zawsze sta≥a w tym samym miejscu - 2:11.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "PrÛb naprawy nie podejmowa≥em od razu. Zegar wydawa≥ siÍ martwy, jakby by≥ atrapπ. Dopiero po úmierci mojej øony - nag≥ej, bez bÛlu, bez przyczyny - przypomnia≥em sobie, øe spojrza≥em wtedy na ten zegar. Wskazywa≥ dok≥adnie 2:11.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Myúla≥em, øe to przypadek. Ale dwa dni pÛüniej zauwaøy≥em, øe wskazÛwka zmieni≥a pozycjÍ. Teraz sta≥a nieruchomo na 5:37.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zaczπ≥em sprawdzaÊ mechanizm - nie znalaz≥em øadnego. Ani sprÍøyny, ani przek≥adni. Nie powinien dzia≥aÊ. A jednak, kiedy wybi≥a godzina 5:37, zmar≥ mÛj starszy syn. Po prostu osunπ≥ siÍ z krzes≥a przy úniadaniu. Bez krzyku. Bez ostrzeøenia.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_061 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_061;
	
	if (Bonus_ItWr_BookXp[61])	{	description = "Godzina úmierci II (przeczytane)";	}
	else						{	description = "Godzina úmierci II";					};
	
	TEXT[0]						=	"Ostatnie zapiski mistrza Deirama,";
	TEXT[1]						=	"zegarmistrza z pÛ≥nocnego";
	TEXT[2]						=	"kwarta≥u Gildenvy, rok nieznany.";
};
func void Use_ItWr_BookXp_061()
{
	Npc_AddDocsCounter(61, 2);
	CreateInvItem(self, ItWr_BookXp_061);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_01_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_01_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Godzina úmierci");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zegar znÛw zmieni≥ godzinÍ. SprÛbowa≥em go zniszczyÊ - siekierπ, potem m≥otem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zniknπ≥ z warsztatu, a kiedy wrÛci≥em po godzinie, sta≥ znÛw tam, gdzie wczeúniej. W nienaruszonym stanie. Ze wskazÛwkπ przesuniÍtπ dalej. Wtedy zmar≥ mÛj m≥odszy syn.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie prÛbowa≥em juø go dotykaÊ. Ale zaczπ≥em go obserwowaÊ. I zrozumia≥em: zawsze wskazuje kolejnπ godzinÍ úmierci - ale nigdy nie mÛwi, kogo ona dotyczy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Od tamtej pory codziennie, tuø przed wybiciem godziny, ktÛrπ pokazuje, podchodzÍ do tarczy i rÍcznie przesuwam wskazÛwkÍ o jeden dzieÒ do przodu. Nie gwa≥townie. Powoli. Cicho.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy to coú zmienia. Moøe nie. Moøe tylko opÛüniam to, co nieuniknione. Ale dopÛki zegar mnie s≥ucha, bÍdÍ to robi≥.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dziú wskazuje 6:42. Zaraz bÍdzie 6:41. MuszÍ koÒczyÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_062 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_062;
	
	if (Bonus_ItWr_BookXp[62])	{	description = "Jak rodzπ siÍ potwory I (przeczytane)";	}
	else						{	description = "Jak rodzπ siÍ potwory I";				};
	
	TEXT[0]						=	"Zapisy kap≥ana Enratha z Domu RÛwnowagi,";
	TEXT[1]						=	"sporzπdzone w úwiπtyni Adanosa w Setarze,";
	TEXT[2]						=	"rok 93 po Zawarciu Trzeciego Rozejmu.";
};
func void Use_ItWr_BookXp_062()
{
	Npc_AddDocsCounter(62, 1);
	CreateInvItem(self, ItWr_BookXp_062);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_02_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_02_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Jak rodzπ siÍ potwory");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Cz≥owiek od zawsze odrÛønia≥ istoty znane od nieznanych. Te pierwsze nazwa≥ zwierzÍtami. Te drugie - potworami.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "NiektÛrzy prÛbujπ wprowadzaÊ dodatkowe podzia≥y, mÛwiπc o bestiach, monstrum czy demonach. Ale w istocie wszystko sprowadza siÍ do jednej granicy: miÍdzy tym, co pochodzi z naturalnego porzπdku úwiata, a tym, co nie powinno istnieÊ, a jednak istnieje.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wilk, jeleÒ, úcierwojad, pe≥zacz - wszystkie te istoty, jakkolwiek groüne, majπ krew, koúci, zmys≥y, potrzeby. Polujπ, broniπ siÍ, rozmnaøajπ. Moøna je zrozumieÊ. Moøna je nawet oswoiÊ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ale czym sπ potwory?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie mÛwiÍ tu o nazwie, jakπ pospÛlstwo nadaje kaødemu, czego siÍ boi. MÛwiÍ o istotach, ktÛrych natura nie wynika z narodzin, lecz z przemiany.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "WúrÛd nich znajdziemy topielce - ludzi, ktÛrzy utonÍli samotnie, w bÛlu, czÍsto niesprawiedliwie. Wisielce - cia≥a tych, ktÛrzy zginÍli zdradzeni lub oskarøeni fa≥szywie. Øagwie - kobiety, ktÛre sp≥onÍ≥y na stosie, choÊ nie zna≥y øadnych czarÛw. I wiele innych, ktÛrym úmierÊ przysz≥a nie za grzechy, lecz za cudze winy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie sπ to duchy, choÊ pamiÍtajπ. Nie sπ to cia≥a, choÊ poruszajπ siÍ i atakujπ. Nie sπ teø w pe≥ni úwiadome - ale ich istnienie opiera siÍ na jednym wspÛlnym elemencie: øalu.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_063 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_063;
	
	if (Bonus_ItWr_BookXp[63])	{	description = "Jak rodzπ siÍ potwory II (przeczytane)";	}
	else						{	description = "Jak rodzπ siÍ potwory II";				};
	
	TEXT[0]						=	"Zapisy kap≥ana Enratha z Domu RÛwnowagi,";
	TEXT[1]						=	"sporzπdzone w úwiπtyni Adanosa w Setarze,";
	TEXT[2]						=	"rok 93 po Zawarciu Trzeciego Rozejmu.";
};
func void Use_ItWr_BookXp_063()
{
	Npc_AddDocsCounter(63, 2);
	CreateInvItem(self, ItWr_BookXp_063);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_02_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_02_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Jak rodzπ siÍ potwory");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To w≥aúnie øal zdaje siÍ byÊ kluczem. Nie ten cichy, zamkniÍty w sercu, lecz ten, ktÛry nie moøe znaleüÊ ujúcia. Øal zrodzony z niesprawiedliwoúci, ktÛry nie moøe zostaÊ zapomniany. Øal, ktÛry nie koÒczy siÍ wraz ze úmierciπ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To prowadzi mnie do innego pytania: czym sπ demony?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zapisano w wielu traktatach, øe Innos stworzy≥ ludzi, a Beliar - demony. Ale jeúli potwory, jak pokazujπ przyk≥ady, nie zosta≥y stworzone - tylko sta≥y siÍ - czy nie mog≥oby to samo dotyczyÊ demonÛw?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Skoro potwory powstajπ z ludzi przez øal, zdradÍ i niesprawiedliwoúÊ, to z czego powsta≥y demony? Czy Beliar naprawdÍ je stworzy≥, czy moøe one teø z czegoú wyros≥y?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeúli Innos obdarzy≥ ludzi wolπ i úwiat≥em, a Beliar zosta≥ odrzucony, zapomniany, znienawidzony - to moøe demony sπ nie jego dzie≥em, lecz jego odpowiedziπ. Moøe tak, jak potwory rodzπ siÍ z øalu jednostek, demony zrodzi≥y siÍ z øalu samego boga.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wtedy ≥atwiej zrozumieÊ, dlaczego demony domagajπ siÍ czci. Dlaczego zak≥adajπ sekty, mÛwiπ jÍzykiem ludzi, pragnπ úwiπtyÒ, ofiar, imion. Nie jak bogowie - ale jak ci, ktÛrzy kiedyú nimi chcieli byÊ. Jakby teø mia≥y w sobie echo tego, co zosta≥o nies≥usznie odrzucone.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Moøna by wÛwczas powiedzieÊ, øe miÍdzy ludümi a bogami jest mniej rÛønic, niø chcielibyúmy przyznaÊ. Ale potwory? One nadal nie pasujπ do øadnego porzπdku. Nie s≥uøπ ani Innosowi, ani Beliarowi, ani Adanosowi. Nie majπ celu. Nie majπ przysz≥oúci. A jednak istniejπ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "I to w≥aúnie ich istnienie niepokoi mnie najbardziej.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_064 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_064;
	
	if (Bonus_ItWr_BookXp[64])	{	description = "Zeznanie Gorina I (przeczytane)";	}
	else						{	description = "Zeznanie Gorina I";					};
	
	TEXT[0]						=	"Spisane przez skrybÍ miejskiego garnizonu,";
	TEXT[1]						=	"w obecnoúci porucznika Ervana.";
	TEXT[2]						=	"Zeznaje niejaki Gorin zwany ÑSzybkimî.";
};
func void Use_ItWr_BookXp_064()
{
	Npc_AddDocsCounter(64, 1);
	CreateInvItem(self, ItWr_BookXp_064);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_03_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_03_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Zeznanie Gorina");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ja... ja wiem, øe to wyglπda üle. Ale to nie tak mia≥o byÊ. My nie jesteúmy aø tak g≥upi, jak to wyglπda≥o. To wszystko przez niego. Przez tego, co siÍ zowie... Ethelard.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tak, tak siÍ przedstawi≥. Ethelard. Juø wtedy trzeba by≥o siÍ zorientowaÊ, øe coú nie gra.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Bandyta nie ma na imiÍ Ethelard. Bandyta to masz, no, ÑSzczurî, ÑCichy Brumî, ÑKocio≥î, coú normalnego. A on od razu - Ethelard, mi≥o mi was poznaÊ, panowie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pojawi≥ siÍ ktÛregoú wieczora w karczmie u Maura. Siedzia≥ sam, w czystej koszuli (czystej!), popija≥ wino (wino!), a jak Trask do niego zagada≥, to powiedzia≥: ÑZ przyjemnoúciπ do≥πczÍ, jeúli wasze dzia≥ania nie naruszajπ moich zasad etycznych.î");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "No i co mieliúmy zrobiÊ? Trzeba ludzi, jeden nasz leøa≥ po ciÍciu, wiÍc go przyjÍliúmy. A on... no, niby pomaga≥. Ale jakoú tak... dziwnie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Na napadzie na wÛz z winem zamiast po prostu rzuciÊ siÍ z krzakÛw, on wyszed≥ przed zaprzÍg, rozpostar≥ rÍce i zaczπ≥ przemowÍ. ÑWybaczcie przemoc, ktÛrπ jesteúcie zmuszeni za chwilÍ przeøyÊî - to powiedzia≥.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "A potem siÍgnπ≥ po nÛø i machnπ≥ nim w powietrze... w powietrze, panie! Nawet nie trafi≥ nikogo!");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_065 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_065;
	
	if (Bonus_ItWr_BookXp[65])	{	description = "Zeznanie Gorina II (przeczytane)";	}
	else						{	description = "Zeznanie Gorina II";					};
	
	TEXT[0]						=	"Spisane przez skrybÍ miejskiego garnizonu,";
	TEXT[1]						=	"w obecnoúci porucznika Ervana.";
	TEXT[2]						=	"Zeznaje niejaki Gorin zwany ÑSzybkimî.";
};
func void Use_ItWr_BookXp_065()
{
	Npc_AddDocsCounter(65, 2);
	CreateInvItem(self, ItWr_BookXp_065);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_03_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_03_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Zeznanie Gorina");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale dobra, wino ukradliúmy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najgorzej by≥o z tπ ostatniπ akcjπ - przez ktÛrπ tu siedzÍ. Mieliúmy zakosiÊ kasetkÍ z podatkami z domu urzÍdnika. Zwyk≥a robota: wejúÊ, zabraÊ, wyjúÊ. A Ethelard? Ethelard mia≥ plan.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Napisa≥ list. LIST. Do urzÍdnika. Podpisany: ÑWasz z≥odziej z sumieniemî. Kaza≥ go pod≥oøyÊ pod drzwi. Napisa≥ tam, øe Ñprzyjdziemy dziú w nocy zabraÊ, co wasze paÒstwo zabra≥o pierwszeî.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "No i co zrobi≥ urzÍdnik? Oczywiúcie wezwa≥ straø. PiÍtnastu ludzi w úrodku, panie. Z psami.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jak nas z≥apali, Ethelard tylko poprawi≥ mankiet i powiedzia≥: ÑPoraøka, ale czysta moralnie.î A potem siÍ uk≥oni≥!");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, co to by≥ za cz≥owiek. MÛwi≥, øe studiowa≥ retorykÍ w Setarze i øe by≥ kiedyú wyk≥adowcπ. Ale nikt nie wiedzia≥, czemu odszed≥. Moøe dlatego, øe mÛwi≥ jak ksiπøka, ale øy≥ jak idiota.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To wszystko. MÛwiÍ, jak by≥o.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_066 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_04.3ds";
	on_state[0]					=	Use_ItWr_BookXp_066;
	
	if (Bonus_ItWr_BookXp[66])	{	description = "Granice magii I (przeczytane)";	}
	else						{	description = "Granice magii I";				};
	
	TEXT[0]						=	"Spisane przez mistrza Thaeliona";
	TEXT[1]						=	"z klasztoru Adanosa w dolinie Setary,";
	TEXT[2]						=	"w 12 roku po ustanowieniu Rady PiÍciu.";
};
func void Use_ItWr_BookXp_066()
{
	Npc_AddDocsCounter(66, 1);
	CreateInvItem(self, ItWr_BookXp_066);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_04_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_04_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Granice magii");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W poczπtkach ludzkiego zg≥Íbiania sztuk magicznych, zanim jeszcze ustanowiono krÍgi wtajemniczenia, zanim nadano imiona runom i zaczÍto katalogowaÊ w≥aúciwoúci pierwiastkÛw, magia by≥a domenπ elit.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tylko uczniowie úwiπtyÒ, adepci øyjπcy w cieniu wieø i bibliotek, mieli do niej dostÍp - i tylko w celach, ktÛre uznawano za wznios≥e.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dlatego tak zaskakujπcy by≥ przypadek cz≥owieka imieniem Siran - prostego myúliwego z pogranicza GÛr PÛ≥nocnych, ktÛry nie tylko pojπ≥ magiÍ bez mistrza, ale uczyni≥ z niej narzÍdzie codziennego uøytku.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Z opowieúci miejscowej ludnoúci wynika, øe Siran nie dπøy≥ do potÍgi. Pragnπ≥ jedynie... wygody. Polowa≥ na istoty, ktÛre wychodzi≥y z nor tylko nocπ - istoty czu≥e na úwiat≥o, a zarazem zbyt niebezpieczne, by zbliøaÊ siÍ do nich z pochodniπ w rÍce.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Tak wiÍc, z pomocπ instynktu i eksperymentÛw, nauczy≥ siÍ przywo≥ywaÊ iskrÍ úwiat≥a, ktÛra unosi≥a siÍ nad jego ramieniem. Dziú to zaklÍcie uczπ siÍ poczπtkujπcy magowie w niøszych krÍgach, ale wÛwczas by≥o czymú nowym.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To úwiat≥o nie spala≥o, nie ogrzewa≥o, nie b≥yska≥o - po prostu by≥o. A Siran dziÍki niemu mÛg≥ celnie strzelaÊ z ≥uku nawet w úrodku nocy.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_067 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_04.3ds";
	on_state[0]					=	Use_ItWr_BookXp_067;
	
	if (Bonus_ItWr_BookXp[67])	{	description = "Granice magii II (przeczytane)";	}
	else						{	description = "Granice magii II";				};
	
	TEXT[0]						=	"Spisane przez mistrza Thaeliona";
	TEXT[1]						=	"z klasztoru Adanosa w dolinie Setary,";
	TEXT[2]						=	"w 12 roku po ustanowieniu Rady PiÍciu.";
};
func void Use_ItWr_BookXp_067()
{
	Npc_AddDocsCounter(67, 2);
	CreateInvItem(self, ItWr_BookXp_067);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_04_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_04_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Granice magii");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z czasem, jak sam przyzna≥ jednemu z braci z klasztoru na Trzeciej Prze≥Íczy, zaczπ≥ siÍgaÊ po magiÍ do innych rzeczy: podgrzewa≥ wodÍ w misce, by wypraÊ ubranie; przyciπga≥ wodÍ z oddalonych strumieni; oczyszcza≥ üle wyprawione miÍso.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dla wiÍkszoúci magÛw jego dzia≥ania uchodzi≥yby za bezczeszczenie daru boskiego - dla niego by≥y tylko pomocπ w øyciu. Ale to, co mia≥o nastπpiÊ pÛüniej, przeros≥o nawet nasze pojÍcie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pewnej nocy Siran stanπ≥ oko w oko z czymú, czego nie spodziewa≥ siÍ spotkaÊ - potworem znanym miejscowym jako Ñkamienny karkî, rodzajem gÛrskiego trolla. W obliczu úmierci, zamiast uciekaÊ, wyciπgnπ≥ rÍkÍ i wypowiedzia≥ zaklÍcie, ktÛre - jak twierdzi≥ - mia≥o ÑzmusiÊ bestiÍ, by sta≥a siÍ mniej strasznaî.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "I sta≥a siÍ. Skurczy≥a siÍ do rozmiarÛw duøego psa. Oszo≥omiona, uciek≥a. ZaklÍcie to, ktÛre nazwaliúmy pÛüniej Zmniejszeniem, zosta≥o dok≥adnie przebadane przez nasz zakon.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "WkrÛtce przesz≥o do arsena≥u magÛw bitewnych, a potem do kaødego najwyøszego krÍgu. Sta≥o siÍ narzÍdziem o wielkiej sile - a takøe broniπ, ktÛra zapoczπtkowa≥a wyginiÍcie wielu smokÛw. Tak bowiem dzia≥a magia: nie w krzyku i ogniu, ale w prostocie geniuszu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Siran nie zbudowa≥ wieøy. Nie otworzy≥ szko≥y. Nie napisa≥ øadnego traktatu. Ale to on pierwszy udowodni≥, øe magia nie musi byÊ domenπ wojen i kaplic, lecz moøe byÊ obecna w myciu rπk i rozpalaniu ogniska.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wszyscy to pojÍli. Wielu z nas potrzebowa≥o lat, by zrozumieÊ, øe wielkoúÊ zaklÍcia nie zaleøy od tego, jak g≥oúno je wypowiesz - tylko od tego, jak dobrze rozumiesz, po co je tworzysz.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_068 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_068;
	
	if (Bonus_ItWr_BookXp[68])	{	description = "Nie moje wspomnienia I (przeczytane)";	}
	else						{	description = "Nie moje wspomnienia I";					};
	
	TEXT[0]						=	"Fragment dziennika Ternina z Aredan,";
	TEXT[1]						=	"straønika miejskiego. PrzejÍty po jego znikniÍciu,";
	TEXT[3]						=	"obecnie przechowywany w archiwum straøy.";
};
func void Use_ItWr_BookXp_068()
{
	Npc_AddDocsCounter(68, 1);
	CreateInvItem(self, ItWr_BookXp_068);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_05_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_05_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Nie moje wspomnienia");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Poczπtkowo myúla≥em, øe to sen. ZmÍczenie po nocnej zmianie, moøe nie do koÒca przespane poranki. Ale sny nie majπ zapachu. Nie zostawiajπ odciskÛw.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pierwszy raz zdarzy≥o siÍ to, gdy patrolowa≥em portowe nabrzeøa. Nagle... zapach smo≥y, choÊ nie by≥o jej nigdzie w pobliøu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Potem krzyk dziecka. Niewyraüny, odleg≥y. I obraz: kobieta w czerwonym fartuchu wciπgajπca coú w cieÒ pod pomostem. Nie zna≥em jej, nigdy jej nie widzia≥em. A jednak wiedzia≥em, jak siÍ nazywa≥a. Alvra. Wiedzia≥em to z ca≥π pewnoúciπ ñ tak jakbym to ja tam wtedy by≥.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Poczπtkowo myúla≥em: moøe historia, ktÛrπ kiedyú us≥ysza≥em i zapomnia≥em. Ale to siÍ powtarza≥o. Z kaødπ kolejnπ zmianπ widzia≥em wiÍcej. Ale nie z moich w≥asnych dni. Z przesz≥oúci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Widzia≥em mÍøczyznÍ grzebiπcego coú za karczmπ ÑPod Lutniπî.");
				Doc_PrintLines	(nDocID,  1, "Widzia≥em m≥odπ s≥uøkÍ podsypujπcπ coú do kubka swojego pana.");
				Doc_PrintLines	(nDocID,  1, "Widzia≥em ch≥opca... ciπgnπcego trupa do studni.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_069 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_069;
	
	if (Bonus_ItWr_BookXp[69])	{	description = "Nie moje wspomnienia II (przeczytane)";	}
	else						{	description = "Nie moje wspomnienia II";				};
	
	TEXT[0]						=	"Fragment dziennika Ternina z Aredan,";
	TEXT[1]						=	"straønika miejskiego. PrzejÍty po jego znikniÍciu,";
	TEXT[3]						=	"obecnie przechowywany w archiwum straøy.";
};
func void Use_ItWr_BookXp_069()
{
	Npc_AddDocsCounter(69, 2);
	CreateInvItem(self, ItWr_BookXp_069);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_05_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_05_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Nie moje wspomnienia");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "NiektÛre z tych zdarzeÒ rozpozna≥em. W kartotekach - sprawy niewyjaúnione. ZamkniÍte z braku dowodÛw. Zapomniane. A teraz: obecne w mojej g≥owie jakby to by≥y moje w≥asne wspomnienia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wszystkie wizje majπ wspÛlnπ cechÍ. Zawsze koÒczπ siÍ ciszπ. Nie düwiÍkowπ. Ciszπ decyzji. Jakby ten, kto to przeøy≥... przesta≥ mÛwiÊ. Przesta≥ istnieÊ. Albo zosta≥ zmuszony, by zapomnieÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pytanie, ktÛre mnie przeúladuje, brzmi: czyje to wspomnienia? I dlaczego w≥aúnie ja?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie powiedzia≥em nikomu. Komendant uzna≥by, øe siÍ wypali≥em. Ale kaødego dnia zapisujÍ kolejne strzÍpy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "I za kaødym razem odnajdujÍ miejsce ze snu ñ i ono istnieje. Z≥amana lampa. Krwawy úlad pod deszczem. Cienka szrama na drzwiach stajni. To nie halucynacje. To ktoú... lub coú... pokazuje mi to, co zosta≥o ukryte.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem jeszcze, czy to dar, czy przekleÒstwo. Ale przysiÍgam, øe jeúli kiedyú rozwiπøÍ te sprawy, wrÛcÍ i opiszÍ je wszystkie. A jeúli nie wrÛcÍ - niech ktoú przeczyta te s≥owa i zrozumie, øe czasem prawda nie umiera. Tylko czeka, aø ktoú sobie jπ przypomni.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_070 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_070;
	
	if (Bonus_ItWr_BookXp[70])	{	description = "Lud rzπdzπcy I (przeczytane)";	}
	else						{	description = "Lud rzπdzπcy I";					};
	
	TEXT[0]						=	"Spisane przez lorda Emerika z rodu Langvenn,";
	TEXT[1]						=	"po wieczerzy z panem Aldorem z Warthall,";
	TEXT[2]						=	"roku 214 po Koronacji Rodu WewnÍtrznego.";
};
func void Use_ItWr_BookXp_070()
{
	Npc_AddDocsCounter(70, 1);
	CreateInvItem(self, ItWr_BookXp_070);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_06_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_06_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Lud rzπdzπcy samym sobπ");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie sπdzi≥em, øe doczekam dnia, w ktÛrym przyjdzie mi usiπúÊ i rozwaøaÊ pomys≥ rÛwnie ob≥πkaÒczy, co ten, ktÛry wczoraj pad≥ przy moim stole.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "MÛj stary znajomy, pan Aldor - skπdinπd cz≥ek wykszta≥cony i z pewnoúciπ trzeüwo myúlπcy w sprawach gospodarki i fortyfikacji - odwaøy≥ siÍ zasugerowaÊ, øe przysz≥oúciπ krÛlestw jest... w≥adza ludu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tak, dobrze zapisujÍ - nie rodu, nie krwi, nie prawa dziedzicznego, lecz ludu. Ludu, ktÛry mia≥by ÑwybieraÊ swoich przywÛdcÛwî, jak to ujπ≥, z ÑpoúrÛd siebieî. Rozumiem przez to, øe rybak z nabrzeøa mia≥by g≥os rÛwny mojemu? A pastuch z przedgÛrza mÛg≥by wskazaÊ, kto ma zasiadaÊ na tronie?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Trudno mi by≥o nie parsknπÊ úmiechem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Oto bowiem koncepcja, w ktÛrej tytu≥ krÛlewski - úwiÍty, nadany z woli samego Innosa, przekazywany przez krew i naukÍ od pokoleÒ - mia≥by byÊ podwaøony przez g≥osy gminu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jakby ci, co nigdy nie trzymali piÛra, mogli oceniÊ mπdroúÊ edyktÛw. Jakby ci, co ledwie znajπ w≥asne imiÍ, rozumieli, czym jest zarzπdzanie ziemiami, prawem, armiπ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_071 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_071;
	
	if (Bonus_ItWr_BookXp[71])	{	description = "Lud rzπdzπcy II (przeczytane)";	}
	else						{	description = "Lud rzπdzπcy II";				};
	
	TEXT[0]						=	"Spisane przez lorda Emerika z rodu Langvenn,";
	TEXT[1]						=	"po wieczerzy z panem Aldorem z Warthall,";
	TEXT[2]						=	"roku 214 po Koronacji Rodu WewnÍtrznego.";
};
func void Use_ItWr_BookXp_071()
{
	Npc_AddDocsCounter(71, 2);
	CreateInvItem(self, ItWr_BookXp_071);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_06_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_06_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Lud rzπdzπcy samym sobπ");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pan Aldor, z b≥yskiem w oku, twierdzi≥, øe Ñlud najlepiej wie, czego potrzebujeî. Rzek≥bym raczej: Ñlud najlepiej wie, czego pragnieî - a to nie to samo. Dziecko pragnie s≥odyczy, ale ojciec daje mu chleb. T≥um pragnie zemsty, ha≥asu, zmian - ale kraj potrzebuje porzπdku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zapyta≥em go wiÍc: a co, jeúli lud wybierze g≥upca? Albo ≥otra, ktÛry dobrze mÛwi, ale üle rzπdzi? Odpowiedzia≥: ÑwÛwczas lud go odsunieî. Tak lekko to rzek≥, jakby odsunπÊ w≥adcÍ by≥o rÛwnie ≥atwe, co zmieniÊ piekarza.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wszak historia pe≥na jest w≥adcÛw, ktÛrych nie sposÛb by≥o ruszyÊ, choÊ wszyscy chcieli. I pe≥na jest ludÛw, ktÛre milcza≥y, choÊ wiedzia≥y, øe powinni.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zapyta≥em go teø, czy to nie oznacza, øe kaødy mÛg≥by zostaÊ w≥adcπ - nawet syn kowala? Powiedzia≥: ÑJeúli jest mπdry, czemu nie?î - i w tej chwili wiedzia≥em juø, øe nie jest to rozmowa o paÒstwie, ale o urojeniach.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W≥adza bowiem to nie umiejÍtnoúÊ liczenia monet czy przemawiania z krzes≥a na placu. W≥adza to odpowiedzialnoúÊ przekazywana przez krew, wsparta wychowaniem, honorem, i przyjÍta z b≥ogos≥awieÒstwem Innosa. To nie gra. To nie targ. To brzemiÍ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "åwiat, w ktÛrym mot≥och wybiera swoich panÛw, nie bÍdzie rzπdzony - tylko rzucany na wiatr. A wiatr nie zna litoúci.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_072 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_072;
	
	if (Bonus_ItWr_BookXp[72])	{	description = "Rozwaøania kata I (przeczytane)";	}
	else						{	description = "Rozwaøania kata I";					};
	
	TEXT[0]						=	"Spisane przez Lewarka z Dareth,";
	TEXT[1]						=	"urzÍdowego wykonawcÍ wyrokÛw";
	TEXT[2]						=	"KrÛlewskiej Marchii PÛ≥nocnej.";
};
func void Use_ItWr_BookXp_072()
{
	Npc_AddDocsCounter(72, 1);
	CreateInvItem(self, ItWr_BookXp_072);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_07_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_07_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Rozwaøania kata");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kiedy by≥em m≥ody, myúla≥em, øe zadaniem kata jest przecinaÊ g≥owy, a nie myúli. Øe moje rÍce s≥uøπ krÛlowi, a nie sumieniu. Myli≥em siÍ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Egzekucja nie zaczyna siÍ od podniesienia ostrza. Zaczyna siÍ od spojrzenia. Tego krÛtkiego, przed zawiπzaniem oczu - jeúli je w ogÛle wiπøπ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Spojrzenie mÛwi wszystko. Winni patrzπ z dumπ lub wúciek≥oúciπ. Niewinni... patrzπ w milczeniu. Jakby pytali, czy na pewno mam prawo.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Widzia≥em rÛøne oczy. Zrezygnowane, trzÍsπce siÍ ze strachu, pijane, pe≥ne nienawiúci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale najtrudniejsze by≥y te, ktÛre mÛwi≥y: ÑWiem, øe nie powinienem tu byÊ.î I to nie chodzi o winÍ - chodzi o poraøkÍ úwiata, ktÛry zamiast ocaliÊ, wola≥ uciszyÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "MÛwiπ, øe kat nie powinien zadawaÊ pytaÒ. Ale ja zaczπ≥em zadawaÊ je po trzydziestym wykonanym wyroku.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_073 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_073;
	
	if (Bonus_ItWr_BookXp[73])	{	description = "Rozwaøania kata II (przeczytane)";	}
	else						{	description = "Rozwaøania kata II";					};
	
	TEXT[0]						=	"Spisane przez Lewarka z Dareth,";
	TEXT[1]						=	"urzÍdowego wykonawcÍ wyrokÛw";
	TEXT[2]						=	"KrÛlewskiej Marchii PÛ≥nocnej.";
};
func void Use_ItWr_BookXp_073()
{
	Npc_AddDocsCounter(73, 2);
	CreateInvItem(self, ItWr_BookXp_073);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_07_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_07_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Rozwaøania kata");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dlaczego najciszej umierali ci, ktÛrzy pope≥nili najgorsze zbrodnie, a najg≥oúniej ci, ktÛrzy ukradli chleb?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dlaczego miecz drøa≥ mi w d≥oni nie przy mordercy, ale przy m≥odej kobiecie, ktÛra oszuka≥a podatnika? Dlaczego kap≥ani b≥ogos≥awiπ mojπ rÍkÍ, a nie modlπ siÍ o serce?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po czterdziestej egzekucji zaczπ≥em prowadziÊ notatki. Nie o ofiarach. O sobie. O tym, czy ostrze wesz≥o g≥adko. Czy cia≥o upad≥o w ciszy. Czy by≥o to sprawiedliwe. Widzisz, prawdziwa egzekucja nie dotyczy tylko g≥owy skazaÒca. Ona dotyczy rÛwnowagi, jaka po niej zostaje w úwiecie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie ma nic ciÍøszego od miecza, ktÛry úcina cz≥owieka nie majπcego czym siÍ obroniÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Czasem ktoú z t≥umu szepta≥: ÑDobrze mu tak.î Czasem rzucano zgni≥e warzywa. Ale raz - tylko raz - stara kobieta uklÍk≥a i modli≥a siÍ za mnie. Powiedzia≥a: ÑTo ty zap≥acisz pÛüniej, nie on.î D≥ugo úmia≥em siÍ z tej g≥upoty.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Teraz juø nie. Z wiekiem odkry≥em, øe pamiÍÊ kata jest gorsza niø miecz. Bo miecz siÍ tÍpi. PamiÍÊ nie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie jestem filozofem. Nie jestem kap≥anem. Ale wiem jedno: sprawiedliwoúÊ jest úlepa, tylko wtedy, gdy zbyt d≥ugo patrzy≥a. A kiedy zamykam oczy, widzÍ nie te g≥owy, ktÛre spad≥y - tylko te, ktÛre nie powinny by≥y.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeúli Innos naprawdÍ jest úwiat≥em, niech spojrzy takøe na nas, ktÛrzy gasili cudze úwiece. Nie z powo≥ania. Z obowiπzku.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_074 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_074;
	
	if (Bonus_ItWr_BookXp[74])	{	description = "Uúmiech z porcelany I (przeczytane)";	}
	else						{	description = "Uúmiech z porcelany I";					};
	
	TEXT[0]						=	"Fragmenty prywatnych zapiskÛw krÛlewskiego";
	TEXT[1]						=	"b≥azna znanego jako ÑPstryczekî. Orygina≥";
	TEXT[2]						=	"znaleziono schowany pod pod≥ogπ w starej komnacie.";
};
func void Use_ItWr_BookXp_074()
{
	Npc_AddDocsCounter(74, 1);
	CreateInvItem(self, ItWr_BookXp_074);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_08_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_08_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Uúmiech z porcelany");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ludzie lubiπ mnie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Albo raczej: lubiπ siÍ úmiaÊ, gdy ja jestem. To nie to samo - ale i nie szkodzi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "RobiÍ miny, pokazujÍ jÍzyk, przewracam siÍ, mÛwiÍ jak wieúniak po piwie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Kiedy krÛl ma z≥y dzieÒ, kaøe mnie zawo≥aÊ. Gdy goúÊ z innego krÛlestwa krÍci nosem - jestem Ñpoprawiaczem atmosferyî. åmiejπ siÍ. To dobrze. åmiech koi. Nawet jeúli nie mÛj.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pytajπ czasem, jak to jest byÊ b≥aznem. MÛwiÍ: ÑLepiej niø byÊ nieszczÍúliwym!î I úmiejπ siÍ. Nie wiedzπ, øe odpowiedü by≥a szczera.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie pamiÍtam juø matki. Ojca trochÍ. PamiÍtam jedynie dzieÒ, kiedy wszyscy zamilkli. Kiedy p≥onÍ≥a wioska, a ja - dziecko jeszcze - sta≥em wúrÛd popio≥Ûw i nie p≥aka≥em, bo nikt nie zosta≥, by mnie pocieszyÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_075 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_075;
	
	if (Bonus_ItWr_BookXp[75])	{	description = "Uúmiech z porcelany II (przeczytane)";	}
	else						{	description = "Uúmiech z porcelany II";					};
	
	TEXT[0]						=	"Fragmenty prywatnych zapiskÛw krÛlewskiego";
	TEXT[1]						=	"b≥azna znanego jako ÑPstryczekî. Orygina≥";
	TEXT[2]						=	"znaleziono schowany pod pod≥ogπ w starej komnacie.";
};
func void Use_ItWr_BookXp_075()
{
	Npc_AddDocsCounter(75, 2);
	CreateInvItem(self, ItWr_BookXp_075);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_08_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_08_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Uúmiech z porcelany");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "PÛüniej przygarnÍ≥a mnie trupa kuglarzy. Powiedzieli: Ñåmiech to øycie. Naucz siÍ úmiaÊ, to ciÍ nie zabije.î WiÍc siÍ nauczy≥em. Najpierw robi≥em miny sam przed sobπ. Potem przed innymi. Potem juø nie wiedzia≥em, czy to twarz, czy maska.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Byli tacy, co chcieli siÍ ze mnπ zaprzyjaüniÊ. Ale wtedy zawsze milknÍ. Bo co im powiem? Øe czasem, kiedy úpiÍ, úni mi siÍ, øe dalej gram, choÊ nie ma juø nikogo na widowni? Øe najbardziej przeraøa mnie cisza miÍdzy salwami úmiechu?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie. Lepiej nie mÛwiÊ. Nie chcÍ dawaÊ innym mojego ciÍøaru. Wystarczy, øe úmiejπ siÍ dziÍki mnie. Wystarczy, øe choÊ raz dziennie ktoú dziÍki mojej g≥upocie zapomni o w≥asnym smutku.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Kiedy jestem sam, zdejmujÍ dzwonki z czapki. Cisza wtedy düwiÍczy bardziej niø úmiech. Ale nie p≥aczÍ. Nie umiem juø. Twarz siÍ nauczy≥a uúmiechaÊ - nawet w samotnoúci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Moøe to dobrze. Moøe trzeba mieÊ kogoú, kto siÍ úmieje, nawet jeúli nie ma ku temu powodu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "A jeúli kiedyú zginÍ - niech nie p≥aczπ. Niech siÍ úmiejπ. To by≥by najlepszy pogrzeb dla kogoú takiego jak ja.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_076 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_076;
	
	if (Bonus_ItWr_BookXp[76])	{	description = "Era bez snÛw I (przeczytane)";	}
	else						{	description = "Era bez snÛw I";					};
	
	TEXT[0]						=	"Fragmenty dziennika alchemika";
	TEXT[1]						=	"Wernarda z Farrin, odnalezione";
	TEXT[2]						=	"w zrujnowanej wieøy badawczej.";
};
func void Use_ItWr_BookXp_076()
{
	Npc_AddDocsCounter(76, 1);
	CreateInvItem(self, ItWr_BookXp_076);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_09_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_09_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Era bez snÛw");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 1");
				Doc_PrintLines	(nDocID,  0, "Oto poczπtek nowego etapu w historii alchemii. Jeúli moje obliczenia sπ poprawne, a sk≥adniki w≥aúciwie dobrane - dziú wypi≥em pierwszπ w dziejach miksturÍ snobÛjczπ.");
				Doc_PrintLines	(nDocID,  0, "Tak jπ roboczo nazwÍ. Nie usypiajπcπ. Nie pobudzajπcπ. Po prostu - eliminujπcπ potrzebÍ snu. PÛki co - czujÍ siÍ úwietnie. Umys≥ jasny. Palce zrÍczne. Øadnych objawÛw zmÍczenia.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "DzieÒ 2");
				Doc_PrintLines	(nDocID,  1, "Zyska≥em siedem dodatkowych godzin na badania. Siedem! Czy moøna przeceniÊ wartoúÊ dodatkowego czasu? Tyle przecieø marnujemy, zamkniÍci w ciemnoúci w≥asnych powiek. Mikstura dzia≥a doskonale. ZapisujÍ jej sk≥ad w osobnym tomie - na wypadek, gdybym naprawdÍ zosta≥ odkrywcπ stulecia.");
				Doc_PrintLines	(nDocID,  1, "Nie czujÍ g≥odu, nie czujÍ sennoúci. Tylko... lekki niepokÛj, gdy patrzÍ w ciemnoúÊ. Jakby coú poruszy≥o siÍ za rega≥em. MÛg≥bym przysiπc, øe ksiπøki przestawi≥y siÍ same.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_077 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_077;
	
	if (Bonus_ItWr_BookXp[77])	{	description = "Era bez snÛw II (przeczytane)";	}
	else						{	description = "Era bez snÛw II";				};
	
	TEXT[0]						=	"Fragmenty dziennika alchemika";
	TEXT[1]						=	"Wernarda z Farrin, odnalezione";
	TEXT[2]						=	"w zrujnowanej wieøy badawczej.";
};
func void Use_ItWr_BookXp_077()
{
	Npc_AddDocsCounter(77, 2);
	CreateInvItem(self, ItWr_BookXp_077);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_09_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_09_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Era bez snÛw");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 4");
				Doc_PrintLines	(nDocID,  1, "Zaczynam s≥yszeÊ szepty. Tylko nocπ. Nie sπ uporczywe, nie przeszkadzajπ w pracy. Ale sπ. Ciche, jakby ktoú szepta≥ tuø przy uchu, choÊ nikogo nie ma.");
				Doc_PrintLines	(nDocID,  1, "Raz widzia≥em coú... cieÒ. W kπcie laboratorium. Pomyúla≥em: cieÒ w≥asnych lÍkÛw. Ale cieÒ nie powinien zostawiaÊ úladÛw. A ten zostawi≥.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "DzieÒ 6");
				Doc_PrintLines	(nDocID,  1, "Zjawiajπ siÍ co noc. Najpierw tylko jako kontury. Potem oczy. Potem kszta≥ty przypominajπce ludzi, ale jakby z≥amanych. SkrÍconych. Krzywych. Poruszajπ siÍ powoli. I nie patrzπ mi w oczy. Tylko na d≥onie.");
				Doc_PrintLines	(nDocID,  1, "PiszÍ to o czwartej nad ranem. Cia≥o drøy, ale nie ze zmÍczenia. Mikstura dzia≥a - o tak. Nie úpiÍ. Nigdy. Nie úpiÍ juø szÛsta noc z rzÍdu. Ale to nie ja jestem tym, kto siÍ budzi.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ 7?");
				Doc_PrintLines	(nDocID,  1, "Straci≥em rachubÍ. Mikstura koÒczy siÍ. Ale nie mogÍ spaÊ. Nawet bez niej. Oni czekajπ. Czajπ siÍ w zgiÍciach úcian. Kiedy zamykam oczy, sπ bliøej. Nie zasnÍ juø nigdy.");
				Doc_PrintLines	(nDocID,  1, "PiszÍ, øeby pamiÍtaÊ. Bo juø nie wiem, czy to moje myúli, czy ich. Nie wiem, czy te s≥owa bÍdπ mia≥y sens dla kogokolwiek. Ale jeúli to czytasz - nie prÛbuj zatrzymaÊ snu. Sen nie jest zmarnowanym czasem.");
				Doc_PrintLines	(nDocID,  1, "To bariera. I ja jπ zburzy≥em.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_078 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_078;
	
	if (Bonus_ItWr_BookXp[78])	{	description = "Na ≥aÒcuchu wolnoúci I (przeczytane)";	}
	else						{	description = "Na ≥aÒcuchu wolnoúci I";					};
	
	TEXT[0]						=	"Fragment osobistego dziennika niewolnika";
	TEXT[1]						=	"wyzwolonego dekretem cesarskim.";
	TEXT[2]						=	"Autor nieznany z imienia.";
};
func void Use_ItWr_BookXp_078()
{
	Npc_AddDocsCounter(78, 1);
	CreateInvItem(self, ItWr_BookXp_078);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_10_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_10_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Na ≥aÒcuchu wolnoúci");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kiedy straønik wrÍczy≥ mi dokument, nie rozumia≥em jego s≥Ûw. ÑJesteú wolnyî, powiedzia≥.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale ja nigdy nie zna≥em tego s≥owa. MÛwi≥ je tak, jakby mia≥o smak w ustach, jakby nios≥o ciÍøar z≥ota. A dla mnie by≥o puste. Brzmia≥o jak øart. Jak zaklÍcie bez znaczenia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wychowa≥em siÍ w cieniu winnic, w ktÛrych nie ros≥a dla mnie ani jedna kiúÊ. Spa≥em w ziemiankach, jada≥em resztki. Nie zna≥em matki. Ojciec by≥ narzÍdziem - tak jak ja. Nie nauczy≥em siÍ myúleÊ, tylko reagowaÊ. Nie pytaÊ, tylko czekaÊ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "I nagle... wolnoúÊ?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dano mi dom. Ma≥y, ale mÛj. Dano mi ziemiÍ, chudπ, ale mojπ. Dano mi narzÍdzia, od ktÛrych nikt nie wymaga≥ krwi. Ale nie dano mi instrukcji. Co robiÊ o úwicie, kiedy nikt nie budzi? Co mÛwiÊ, gdy nikt nie pyta?");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_079 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_079;
	
	if (Bonus_ItWr_BookXp[79])	{	description = "Na ≥aÒcuchu wolnoúci II (przeczytane)";	}
	else						{	description = "Na ≥aÒcuchu wolnoúci II";				};
	
	TEXT[0]						=	"Fragment osobistego dziennika niewolnika";
	TEXT[1]						=	"wyzwolonego dekretem cesarskim.";
	TEXT[2]						=	"Autor nieznany z imienia.";
};
func void Use_ItWr_BookXp_079()
{
	Npc_AddDocsCounter(79, 2);
	CreateInvItem(self, ItWr_BookXp_079);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_10_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_10_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Na ≥aÒcuchu wolnoúci");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie mia≥em ≥aÒcucha. Ale wciπø czu≥em ciÍøar na karku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ludzie wolni majπ swoje rytua≥y. Modlπ siÍ, przeklinajπ, úmiejπ, wybierajπ. Ja patrzy≥em na nich jak na stworzenia z innego úwiata.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie ufa≥em wolnoúci. Bo z wolnoúciπ przychodzi odpowiedzialnoúÊ, a z niπ - wina. A ja zna≥em tylko karÍ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "PrÛbowa≥em wrÛciÊ. Do majπtku. Do dawnych panÛw. Powiedzieli: ÑNie jesteú juø naszî. Nawet ≥aÒcucha nie chcieli przyjπÊ z powrotem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "I wtedy zrozumia≥em: nie jestem juø nikim. Ale nie jestem teø kimú. Jestem pÍkniÍciem miÍdzy dwoma úwiatami. Zbyt úwiadomy, by byÊ pos≥usznym. Zbyt uformowany, by byÊ wolnym.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeúli kiedyú spotkasz wyzwoleÒca - nie pytaj go, jak mu jest na wolnoúci. Zapytaj: czy siÍ jej nauczy≥.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bo wolnoúÊ to jÍzyk, ktÛrego nie kaødy chce s≥uchaÊ. A jeszcze mniej potrafi nim mÛwiÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_080 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_080;
	
	if (Bonus_ItWr_BookXp[80])	{	description = "Kazania bez s≥uchaczy I (przeczytane)";	}
	else						{	description = "Kazania bez s≥uchaczy I";				};
	
	TEXT[0]						=	"Fragmenty dziennika kap≥ana Meriona";
	TEXT[1]						=	"z kaplicy Innosa w Kar Belfir,";
	TEXT[2]						=	"odnalezione lata po upadku osady.";
};
func void Use_ItWr_BookXp_080()
{
	Npc_AddDocsCounter(80, 1);
	CreateInvItem(self, ItWr_BookXp_080);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_11_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_11_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Kazania bez s≥uchaczy");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 1 po ciszy");
				Doc_PrintLines	(nDocID,  0, "Dziú rano jak zwykle uderzy≥em w dzwon na wezwanie. Echo by≥o dziwne - jakby coú poch≥ania≥o düwiÍk. WnÍtrze kaplicy teø jakby ch≥odniejsze, choÊ úwiece pali≥y siÍ spokojnie. Bracia nie przyszli. Pomyúla≥em, øe moøe zaspa≥em. Odprawi≥em mszÍ sam.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 2 po ciszy");
				Doc_PrintLines	(nDocID,  0, "Brat Halven nie przyszed≥ na poranne modlitwy, co dziwne, bo zawsze zjawia≥ siÍ pierwszy. Odprawi≥em kazanie o wytrwa≥oúci i roztropnoúci. Usiad≥em w ≥awce i s≥ucha≥em w≥asnego g≥osu odbijajπcego siÍ od kamieni.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "DzieÒ 4 po ciszy");
				Doc_PrintLines	(nDocID,  1, "Na ≥awkach kurz. Zaczπ≥em wycieraÊ. åciany nasiπkajπ ciszπ jak wodπ. Wczoraj mÛwi≥em o wspÛ≥czuciu. Dziú - o pustce. Nie wiem, do kogo. Ale kiedy wypowiadam s≥owa, czujÍ jak coú drga w powietrzu. Jakby s≥ucha≥o.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ 7 po ciszy");
				Doc_PrintLines	(nDocID,  1, "Woda w dzbanie nie zmÍtnia≥a mimo up≥ywu dni. åwiece palπ siÍ rÛwno. Nawet bez podcinania knotÛw. Przysiπg≥bym, øe ktoú s≥ucha zza drzwi zakrystii - s≥yszÍ tam oddech. Ale gdy zajrzÍ - nic.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ 12 po ciszy");
				Doc_PrintLines	(nDocID,  1, "Zaczπ≥em mÛwiÊ inne kazania. Nie te z ksiÍgi. MÛwiÍ o rzeczach, ktÛre sam chcia≥bym us≥yszeÊ. Dziú mÛwi≥em: ÑNie jesteú sam, nawet jeúli twoje s≥owa nie majπ odpowiedzi. Bo sam fakt, øe mÛwisz, znaczy, øe jeszcze ktoú moøe us≥yszeÊ.î");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_081 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_081;
	
	if (Bonus_ItWr_BookXp[81])	{	description = "Kazania bez s≥uchaczy II (przeczytane)";	}
	else						{	description = "Kazania bez s≥uchaczy II";				};
	
	TEXT[0]						=	"Fragmenty dziennika kap≥ana Meriona";
	TEXT[1]						=	"z kaplicy Innosa w Kar Belfir,";
	TEXT[2]						=	"odnalezione lata po upadku osady.";
};
func void Use_ItWr_BookXp_081()
{
	Npc_AddDocsCounter(81, 2);
	CreateInvItem(self, ItWr_BookXp_081);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_11_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_11_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Kazania bez s≥uchaczy");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 19 po ciszy");
				Doc_PrintLines	(nDocID,  0, "W únie przyúni≥ mi siÍ ch≥opiec w habicie. Mia≥ twarz, ktÛrej nie zna≥em, ale oczy jak brat Halven. Pyta≥, czy jeszcze wierzÍ. Odpowiedzia≥em mu w kazaniu: ÑWiara to nie úwiat≥o - to chÍÊ trwania w ciemnoúci, zanim úwiat≥o znÛw siÍ pojawi.î");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 27 po ciszy");
				Doc_PrintLines	(nDocID,  0, "Ktoú dziú zapali≥ úwiecÍ, ktÛrej nie dotyka≥em. I po≥oøy≥ chleb na o≥tarzu. Nie wiem, czy to znak Innosa, czy øart. Ale podziÍkowa≥em. DziÍkowaÊ - to forma modlitwy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "DzieÒ 34 po ciszy");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy ktoú jeszcze øyje w Kar Belfir. Ale wiem, øe coú mnie s≥ucha. Moøe nie ludzie. Moøe nie BÛg. Moøe po prostu pamiÍÊ kamieni. Ale moje s≥owa majπ wagÍ. CzujÍ to po powietrzu, ktÛre gÍstnieje.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ 42 po ciszy");
				Doc_PrintLines	(nDocID,  1, "MÛwi≥em dziú o úmierci, ale nie jak kap≥an - jak cz≥owiek. ÑåmierÊ to nie koniec. To przerwana rozmowa. A kaøda rozmowa moøe byÊ wznowiona, jeúli ktoú zapamiÍta≥ ostatnie s≥owo.î");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ 50 po ciszy");
				Doc_PrintLines	(nDocID,  1, "Jestem sam. Ale nie samotny.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ 51 po ciszy");
				Doc_PrintLines	(nDocID,  1, "Jeúli ktoú kiedyú znajdzie te zapiski - niech pamiÍta: g≥os kap≥ana nie zawsze trafia do uszu. Czasem trafia w przestrzeÒ. I jeúli tam coú jest... to ono s≥ucha uwaøniej niø ludzie.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_082 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_082;
	
	if (Bonus_ItWr_BookXp[82])	{	description = "Straø w cieniu g≥odu I (przeczytane)";	}
	else						{	description = "Straø w cieniu g≥odu I";					};
	
	TEXT[0]						=	"Fragmenty notatnika kapitana Werrana";
	TEXT[1]						=	"w czasie wielkiego g≥odu w Roku Ognia.";
	TEXT[2]						=	"Zapiski ujawniono dopiero po jego úmierci.";
};
func void Use_ItWr_BookXp_082()
{
	Npc_AddDocsCounter(82, 1);
	CreateInvItem(self, ItWr_BookXp_082);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_12_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_12_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Straø w cieniu g≥odu");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 12 od og≥oszenia stanu niedoboru");
				Doc_PrintLines	(nDocID,  0, "Ograniczono racje do po≥owy. Rozkazy mÛwiπ jasno: utrzymaÊ porzπdek, zabezpieczyÊ magazyny, zapobiec panice. Ale na ulicach juø czai siÍ szept g≥odu. Dzieci patrzπ na straønikÛw nie ze strachem - z nadziejπ. Myúlπ, øe coú im damy. Nie rozumiejπ, øe bronimy nie tylko porzπdku, ale teø chleba.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "DzieÒ 18");
				Doc_PrintLines	(nDocID,  1, "Z≥apaliúmy trzech ch≥opcÛw, ktÛrzy prÛbowali dostaÊ siÍ do magazynu. Najstarszy mia≥ moøe dwanaúcie lat. Twierdzili, øe chcieli tylko mπki Ñdla chorej matkiî. Nie ukradli niczego. Rozkaz by≥ jasny: przyk≥ad. Publiczne wych≥ostanie. Lud patrzy≥. Matki zas≥ania≥y dzieciom oczy. Ale nie odwracali wzroku. Najgorsze by≥o to, øe ja teø nie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ 22");
				Doc_PrintLines	(nDocID,  1, "Zabito piekarza. Nie przez nas - przez t≥um. ZaczÍ≥y siÍ samosπdy. Od dziú patrolujemy nie tylko ulice, ale i piekarnie, studnie, karczmy. Mamy byÊ wszÍdzie. Jeden z moich ludzi - Rehan - powiedzia≥, øe úni≥ mu siÍ chleb. Zwyk≥y chleb, jeszcze ciep≥y. I øe po przebudzeniu p≥aka≥. Nie wiedzia≥em, co mu odpowiedzieÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_083 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_083;
	
	if (Bonus_ItWr_BookXp[83])	{	description = "Straø w cieniu g≥odu II (przeczytane)";	}
	else						{	description = "Straø w cieniu g≥odu II";				};
	
	TEXT[0]						=	"Fragmenty notatnika kapitana Werrana";
	TEXT[1]						=	"w czasie wielkiego g≥odu w Roku Ognia.";
	TEXT[2]						=	"Zapiski ujawniono dopiero po jego úmierci.";
};
func void Use_ItWr_BookXp_083()
{
	Npc_AddDocsCounter(83, 2);
	CreateInvItem(self, ItWr_BookXp_083);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_12_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_12_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Straø w cieniu g≥odu");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DzieÒ 27");
				Doc_PrintLines	(nDocID,  1, "Rada nakaza≥a sporzπdziÊ listy uprzywilejowanych. Szlachty, duchownych, urzÍdnikÛw. Ich racje majπ byÊ nietkniÍte. Mieliúmy wydzieliÊ zapas z magazynu i zabezpieczyÊ transport. Kiedy przyszli po niego mieszkaÒcy dzielnicy portowej, odmÛwiliúmy. Wtedy pierwszy raz pad≥y kamienie. Nie z≥amali szyku, ale z≥amali coú innego. W nas.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "DzieÒ 31");
				Doc_PrintLines	(nDocID,  1, "Zatrzymaliúmy kobietÍ, ktÛra krad≥a z przydzia≥u dla kapitu≥y. W jej worku by≥a tylko skÛrka. Pytaliúmy: dlaczego? Powiedzia≥a: ÑBo moje dziecko zjada drewno.î MÛj sierøant nie zdo≥a≥ wymÛwiÊ wyroku. Ja go dokoÒczy≥em. Zabraliúmy jπ do lochu. Po powrocie rzuci≥ he≥m i odszed≥. Powiedzia≥, øe nie bÍdzie d≥uøej chroni≥ chleba, ktÛry go nie dotyczy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ 34");
				Doc_PrintLines	(nDocID,  1, "Dziú zastrzeliliúmy mÍøczyznÍ. PrÛbowa≥ wedrzeÊ siÍ do kuchni zamkowej. Zanim dobieg≥, zdπøy≥ krzyknπÊ: ÑG≥Ûd nie zna praw!î Nie wiem, czy to krzyk rozpaczy, czy oskarøenie. Ale mia≥ racjÍ. G≥Ûd nie zna praw. Tylko ludzie prÛbujπ je narzuciÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "DzieÒ 36");
				Doc_PrintLines	(nDocID,  1, "Nie úpiÍ. S≥yszÍ ich w nocy - nie tych z zewnπtrz. Tych, ktÛrych imion nie znam, a ktÛrych skaza≥em. WidzÍ ich twarze, choÊ nigdy nie spojrzeli mi w oczy. Nie wiem, ilu jeszcze dni trzeba, by zrozumieÊ, czy postÍpowa≥em s≥usznie. Ale wiem, øe praworzπdnoúÊ nie rÛwna siÍ sprawiedliwoúci. I øe nikt nie mÛwi øo≥nierzowi, co ma zrobiÊ z sumieniem po wszystkim.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_084 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_084;
	
	if (Bonus_ItWr_BookXp[84])	{	description = "Zanim zrozumia≥em I (przeczytane)";	}
	else						{	description = "Zanim zrozumia≥em I";				};
	
	TEXT[0]						=	"Spisane przez Emerona z Daranthor,";
	TEXT[1]						=	"w ostatnim roku jego øycia. RÍkopis";
	TEXT[2]						=	"odnaleziono nad brzegiem jeziora Elen-Tir.";
};
func void Use_ItWr_BookXp_084()
{
	Npc_AddDocsCounter(84, 1);
	CreateInvItem(self, ItWr_BookXp_084);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_13_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_13_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Zanim zrozumia≥em dzieÒ");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Mia≥em dwadzieúcia lat i uwaøa≥em, øe úwiat jest zepsuty.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie wierzy≥em w øadne prawa, nie ufa≥em øadnym ludziom. W≥adcy byli tyranami, kupcy z≥odziejami, a nawet dzieci - cÛø, by≥em przekonany, øe i one z czasem stanπ siÍ czÍúciπ tej machiny k≥amstwa i przemocy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Mia≥em w sobie ogieÒ, ktÛry chcia≥ wszystko spaliÊ. Kaøda rana zadana úwiatu wydawa≥a mi siÍ usprawiedliwiona, bo przecieø Ñúwiat sam pierwszy zrani≥ mnieî.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pisa≥em manifesty, wyg≥asza≥em tyrady, burzy≥em siÍ przeciw kaødej strukturze, kaødemu systemowi, kaødemu cz≥owiekowi, ktÛry úmia≥ siÍ uúmiechaÊ, jakby nic siÍ nie dzia≥o. W moich oczach kaødy uúmiech by≥ ignorancjπ, a kaøda zgoda - zdradπ rozumu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Aø ktÛregoú dnia... po prostu usiad≥em na kamieniu przy potoku.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wydarzy≥o siÍ nic. Nikt mnie nie przekona≥. Øadna ksiÍga nie spad≥a z nieba, øadna prawda nie zosta≥a wypisana ogniem na úcianie. Po prostu usiad≥em i patrzy≥em, jak woda p≥ynie miÍdzy kamieniami. I po raz pierwszy... niczego nie osπdzi≥em.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_085 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_085;
	
	if (Bonus_ItWr_BookXp[85])	{	description = "Zanim zrozumia≥em II (przeczytane)";	}
	else						{	description = "Zanim zrozumia≥em II";				};
	
	TEXT[0]						=	"Spisane przez Emerona z Daranthor,";
	TEXT[1]						=	"w ostatnim roku jego øycia. RÍkopis";
	TEXT[2]						=	"odnaleziono nad brzegiem jeziora Elen-Tir.";
};
func void Use_ItWr_BookXp_085()
{
	Npc_AddDocsCounter(85, 2);
	CreateInvItem(self, ItWr_BookXp_085);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_13_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_13_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Zanim zrozumia≥em dzieÒ");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie powiedzia≥em, øe nurt jest zbyt s≥aby. Nie oskarøy≥em ga≥Ízi, øe siÍ z≥ama≥a. Nie skarci≥em ptaka, øe úpiewa. Siedzia≥em. I by≥em. I... by≥o dobrze. Od tamtej chwili wszystko zaczÍ≥o siÍ zmieniaÊ. Nie od razu. Ale stopniowo.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zaczπ≥em jeúÊ wolniej. Przesta≥em szukaÊ winnych, gdy chleb by≥ za twardy. Smakowa≥. Tylko tyle. Zaczπ≥em iúÊ, gdzie mnie nogi nios≥y - nie po to, by uciec od czegoú, ani by coú udowodniÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po prostu szed≥em. Patrzy≥em na twarze ludzi. Przesta≥em ich szukaÊ w nich oznak winy. Zobaczy≥em zmÍczenie. I czu≥oúÊ. I wstyd. I nadziejÍ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zaczπ≥em rozumieÊ, øe úwiat nie jest ani z≥y, ani dobry. On po prostu jest. I øe moje gniewne oczy by≥y tylko kolejnπ parπ zniekszta≥cajπcych szkie≥.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dziú mam ponad szeúÊdziesiπt lat. I czasem pytam siebie: czy zmπdrza≥em, czy po prostu zmÍczy≥em siÍ walkπ? Nie wiem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale wiem, øe teraz, gdy s≥oÒce zachodzi, nie pytam: dlaczego zachodzi? Nie krzyczÍ: czemu znÛw siÍ koÒczy dzieÒ? PatrzÍ. I myúlÍ: by≥o piÍknie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "I jutro teø bÍdzie. Bo jutro - to tylko kolejna okazja, by usiπúÊ przy potoku.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_086 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_086;
	
	if (Bonus_ItWr_BookXp[86])	{	description = "Cud narzÍdzi I (przeczytane)";	}
	else						{	description = "Cud narzÍdzi I";					};
	
	TEXT[0]						=	"Notatki wynalazcy Seldrana z Warsztatu";
	TEXT[1]						=	"PÛ≥nocnego KrÍgu, sporzπdzone";
	TEXT[2]						=	"w latach 9ñ14 po Trzecim Przesileniu.";
};
func void Use_ItWr_BookXp_086()
{
	Npc_AddDocsCounter(86, 1);
	CreateInvItem(self, ItWr_BookXp_086);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_14_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_14_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Cud narzÍdzi");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Od czasÛw najdawniejszych przypisywano magii wiele rÛl: ogrzewania, ochrony, wskazywania drogi, przybliøania rzeczy oddalonych. Lecz czymøe jest magia, jeúli nie sposobem oddzia≥ywania na úwiat - tak samo, jak rÍka, m≥ot czy s≥owo?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "PragnÍ w niniejszym dokumencie przedstawiÊ niektÛre z moich doúwiadczeÒ i wynalazkÛw, ktÛre - jak sπdzÍ - stanowiπ alternatywÍ dla prostych zaklÍÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie w duchu rywalizacji z magami, lecz jako dowÛd, øe nie kaøda niezwyk≥oúÊ musi pochodziÊ z energii runicznej.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "O zjawisku zwanym Ñdeszczochronemî");
				Doc_PrintLines	(nDocID,  1, "W dzieciÒstwie nauczono mnie, iø aurÍ ochronnπ moøe przyzwaÊ tylko kap≥an lub mag øywio≥Ûw. D≥ugo w to wierzy≥em, dopÛki nie przysz≥a burza, a ja, w po≥owie drogi miÍdzy kuüniπ a domem, przemÛk≥em do koúci.");
				Doc_PrintLines	(nDocID,  1, "Tak narodzi≥ siÍ koncept deszczochronu - konstrukcji z drewna i giÍtych øeber, pokrytej impregnowanym p≥Ûtnem, rozpinanej nad g≥owπ. Chroni przed deszczem nie si≥π magicznπ, lecz przez fizycznπ przeszkodÍ.");
				Doc_PrintLines	(nDocID,  1, "Co osobliwe, niektÛrzy wieúniacy, widzπc mnie suchym po ulewie, oskarøyli mnie o uøycie zaklÍcia ukrycia. Paradoksalnie - urzπdzenie niemagiczne, uznane zosta≥o za magiczne.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_087 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_087;
	
	if (Bonus_ItWr_BookXp[87])	{	description = "Cud narzÍdzi II (przeczytane)";	}
	else						{	description = "Cud narzÍdzi II";				};
	
	TEXT[0]						=	"Notatki wynalazcy Seldrana z Warsztatu";
	TEXT[1]						=	"PÛ≥nocnego KrÍgu, sporzπdzone";
	TEXT[2]						=	"w latach 9ñ14 po Trzecim Przesileniu.";
};
func void Use_ItWr_BookXp_087()
{
	Npc_AddDocsCounter(87, 2);
	CreateInvItem(self, ItWr_BookXp_087);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_14_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_14_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Cud narzÍdzi");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O oku z≥oøonym, czyli przyrzπdzie powiÍkszajπcym");
				Doc_PrintLines	(nDocID,  0, "NiektÛre zaklÍcia pozwalajπ widzieÊ daleko, inne - dostrzegaÊ to, co ukryte. Ja postanowi≥em zbadaÊ, czy nie da siÍ osiπgnπÊ podobnego efektu przez soczewki.");
				Doc_PrintLines	(nDocID,  0, "Okaza≥o siÍ, iø szk≥o, odpowiednio szlifowane i na≥oøone warstwami, moøe znaczπco zmieniaÊ sposÛb, w jaki postrzegamy kszta≥ty.");
				Doc_PrintLines	(nDocID,  0, "Uda≥o mi siÍ stworzyÊ zestaw szkie≥ przybliøajπcych, ktÛry pozwala dostrzec szczegÛ≥y liúcia, w≥Ûkna tkaniny, a nawet niewidoczne go≥ym okiem stworzenia øyjπce w ka≥uøach. Z czasem urzπdzenie to zaczÍliúmy nazywaÊ wielookiem - choÊ jego konstrukcja przypomina raczej pojedynczπ, wyd≥uøonπ tubÍ.");
				Doc_PrintLines	(nDocID,  0, "NiektÛrzy magowie uznali to za groüne - ÑwidzieÊ zbyt wiele to zuchwa≥oúÊî, powiedzia≥ mi pewien starzec z Wieøy Cienia. Lecz czyø nie dlatego powsta≥a magia, by dostrzegaÊ wiÍcej?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "O urzπdzeniu zapalajπcym bez p≥omienia");
				Doc_PrintLines	(nDocID,  1, "Zapalanie ognia, choÊ banalne dla maga, bywa uciπøliwe dla zwyk≥ych rzemieúlnikÛw. D≥ugo szuka≥em metody, by wywo≥aÊ iskrÍ w sposÛb natychmiastowy.");
				Doc_PrintLines	(nDocID,  1, "Po dziesiπtkach prÛb uda≥o mi siÍ skonstruowaÊ tzw. zapalnik trzaskowy - niewielkie narzÍdzie oparte na naprÍøonej sprÍøynie, ktÛra przy naciúniÍciu uderza stalπ o krzemieÒ.");
				Doc_PrintLines	(nDocID,  1, "ChoÊ technika wydaje siÍ trywialna, efekt - ogieÒ na øπdanie - sprawia, øe dla wielu wyglπda to jak zaklÍcie. Zresztπ, jeden ze straønikÛw miejskich poprosi≥ mnie, by przerobiÊ mu go na pierúcieÒ, by mÛc ÑrzucaÊ iskrπ z d≥oniî.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Uwagi koÒcowe");
				Doc_PrintLines	(nDocID,  1, "Nie twierdzÍ, øe moje urzπdzenia sπ lepsze od magii. TwierdzÍ tylko, øe sπ moøliwe. I øe byÊ moøe - tylko byÊ moøe - istnieje úcieøka poznania rÛwnoleg≥a wobec tej, ktÛrπ obrali arkaniúci. åcieøka, w ktÛrej nie potrzeba many, lecz cierpliwoúci, nie rÛødøki, lecz klucza, i nie kapliczki, lecz warsztatu.");
				Doc_PrintLines	(nDocID,  1, "Niech przysz≥oúÊ rozsπdzi, ktÛre cuda przetrwajπ prÛbÍ czasu: te wyryte w krÍgu run, czy te zakute w stali i szkle.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_088 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_15.3ds";
	on_state[0]					=	Use_ItWr_BookXp_088;
	
	if (Bonus_ItWr_BookXp[88])	{	description = "Na skraju poznania I (przeczytane)";	}
	else						{	description = "Na skraju poznania I";				};
	
	TEXT[0]						=	"Zapisy eksperymentalne mistrza Calverna";
	TEXT[1]						=	"z Wieøy Zachodniej,";
	TEXT[2]						=	"rok 42 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_088()
{
	Npc_AddDocsCounter(88, 1);
	CreateInvItem(self, ItWr_BookXp_088);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_15_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_15_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Na skraju poznania");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dusza. S≥owo obecne w pieúniach kap≥anÛw, w zaklÍciach nekromantÛw, w modlitwach konajπcych. Od dziecka uczono mnie, øe istnieje - lecz nigdy nie pokazano jej dowodu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z czasem przesta≥o mnie to zadowalaÊ. Jeúli dusza rzeczywiúcie stanowi esencjÍ øycia, to dlaczego nie pozostawia po sobie úladu w úwiecie, ktÛry potrafimy zmierzyÊ, zwaøyÊ, zbadaÊ?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Moje badania rozpoczπ≥em od najprostszych úrodkÛw. Waga precyzyjna, stworzona wed≥ug modelu z Khorinis, pozwoli≥a mi zbadaÊ cia≥o w chwili úmierci.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zauwaøy≥em, øe w niektÛrych przypadkach masa cia≥a zmniejsza≥a siÍ o u≥amek uncji natychmiast po ostatnim oddechu. W innych - przeciwnie, jakby coú przez chwilÍ ciπøy≥o bardziej, zanim zniknÍ≥o bez úladu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "T≥umaczenie tego zjawiska wy≥πcznie odparowaniem lub skurczem miÍúni wydaje siÍ niewystarczajπce. SzczegÛlnie jeden przypadek, gdy cia≥o waøy≥o wiÍcej po úmierci niø za øycia, nie daje mi spokoju.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jakby coú siÍ do niego przysunÍ≥o... a nie odesz≥o.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_089 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_15.3ds";
	on_state[0]					=	Use_ItWr_BookXp_089;
	
	if (Bonus_ItWr_BookXp[89])	{	description = "Na skraju poznania II (przeczytane)";	}
	else						{	description = "Na skraju poznania II";					};
	
	TEXT[0]						=	"Zapisy eksperymentalne mistrza Calverna";
	TEXT[1]						=	"z Wieøy Zachodniej,";
	TEXT[2]						=	"rok 42 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_089()
{
	Npc_AddDocsCounter(89, 2);
	CreateInvItem(self, ItWr_BookXp_089);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_15_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_15_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Na skraju poznania");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kolejne prÛby przeprowadza≥em przy uøyciu kryszta≥Ûw mocy, znanych z czu≥oúci na obecnoúÊ øywej istoty. Trzymane przy osobie konajπcej, zmienia≥y barwÍ - zazwyczaj przyciemnia≥y, jakby coú je zas≥ania≥o.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po úmierci barwa ta przez kilka oddechÛw pozostawa≥a niezmienna, po czym nastÍpowa≥ nag≥y rozb≥ysk i kryszta≥ wraca≥ do swej pierwotnej jasnoúci. Zjawisko to powtarza≥o siÍ zbyt regularnie, by uznaÊ je za przypadek. Czyøby dusza opuszczajπc cia≥o wp≥ywa≥a na kryszta≥? A moøe kryszta≥ nie reagowa≥ na øycie... lecz na jego oddzielenie?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "WspÛ≥praca z wynalazcπ z Dolnego Zau≥ka umoøliwi≥a mi jeszcze jedno doúwiadczenie. Zbudowaliúmy urzπdzenie rejestrujπce drgania powietrza - coú na kszta≥t mechanicznego ucha. Zainstalowane przy ≥oøu úmierci jednego z ochotnikÛw (starego skryby z Gildii Wiedzy), zarejestrowa≥o szeúÊ cichych, regularnych uderzeÒ kilkanaúcie chwil po úmierci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie przypomina≥y one ani odg≥osu spadajπcych przedmiotÛw, ani bicia serca. Bardziej... kroki. Oddalajπce siÍ, rytmiczne, niemal bezdüwiÍczne. Nie potrafiÍ tego wyjaúniÊ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Im wiÍcej prÛbowa≥em, tym wiÍcej napotyka≥em wπtpliwoúci. Jeúli dusza istnieje, dlaczego tylko czasem udaje siÍ jπ zarejestrowaÊ? Jeúli zaú nie istnieje, skπd te anomalie, niemoøliwe do powtÛrzenia czysto fizycznymi úrodkami?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Moøe dusza nie przebywa w úwiecie materii, lecz przecieka przez niego jak woda przez zbutwia≥e drewno. Moøe nie chodzi o to, by jπ z≥apaÊ, lecz by dostrzec jej cieÒ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy przyszli badacze uznajπ moje zapiski za przejaw odwagi, czy g≥upoty. Wiem tylko, øe nie zdo≥a≥em dowieúÊ niczego ponad wπtpliwoúÊ - a mimo to nie potrafiÍ porzuciÊ tego tematu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bo jeúli istnieje coú, co waøy mniej niø ziarnko popio≥u, a potrafi nadaÊ sens øyciu... to czyø nie warto go szukaÊ?");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_090 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_090;
	
	if (Bonus_ItWr_BookXp[90])	{	description = "Anomalnie g≥Íbinowe I (przeczytane)";	}
	else						{	description = "Anomalnie g≥Íbinowe I";					};
	
	TEXT[0]						=	"Zapisy mistrza Geolitha z KrÍgu";
	TEXT[1]						=	"KartografÛw, spisane podczas wyprawy";
	TEXT[2]						=	"do podziemnych warstw GÛr Starych.";
};
func void Use_ItWr_BookXp_090()
{
	Npc_AddDocsCounter(90, 1);
	CreateInvItem(self, ItWr_BookXp_090);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_01_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_01_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Anomalnie g≥Íbinowe");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie wszystko, co znajduje siÍ pod naszymi stopami, jest martwe.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "ChoÊ zwyk≥o siÍ sπdziÊ, øe ziemia jest biernym noúnikiem metalu, ska≥y i ciszy, sπ miejsca, w ktÛrych zdaje siÍ ona øyÊ - nie w sensie metaforycznym, lecz rzeczywistym, organicznym, niemal úwiadomym.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Podczas ekspedycji prowadzonej przez KartografÛw, wspieranej przez GildiÍ InøynierÛw i jednego z MagÛw Przestrzeni, natrafiliúmy na kompleks jaskiÒ znajdujπcy siÍ na g≥Íbokoúci ponad dziewiÍÊdziesiÍciu sπøni pod dolinπ Argoth.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ich uk≥ad nie by≥ naturalny - brak≥o nieregularnoúci charakterystycznych dla jam krasowych, a liczne tunele tworzy≥y niemal geometryczne figury, jakby ca≥oúÊ zosta≥a wyø≥obiona przez zamys≥, nie przez czas.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pierwsze anomalie dotyczy≥y echa. W miejscach, w ktÛrych powinno rozchodziÊ siÍ swobodnie, zanika≥o w jednej chwili, jakby düwiÍk by≥ poch≥aniany, nie odbijany.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W innych punktach - zw≥aszcza przy po≥udniowej odnodze g≥Ûwnej komory - echo powtarza≥o s≥owa z opÛünieniem kilku oddechÛw, zmienione, jakby przeøute przez coú, co je usi≥owa≥o zrozumieÊ. Jeden z towarzyszy przysiπg≥, øe g≥os, ktÛry wrÛci≥ do niego, nie by≥ jego w≥asny.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_091 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_091;
	
	if (Bonus_ItWr_BookXp[91])	{	description = "Anomalnie g≥Íbinowe II (przeczytane)";	}
	else						{	description = "Anomalnie g≥Íbinowe II";					};
	
	TEXT[0]						=	"Zapisy mistrza Geolitha z KrÍgu";
	TEXT[1]						=	"KartografÛw, spisane podczas wyprawy";
	TEXT[2]						=	"do podziemnych warstw GÛr Starych.";
};
func void Use_ItWr_BookXp_091()
{
	Npc_AddDocsCounter(91, 2);
	CreateInvItem(self, ItWr_BookXp_091);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_01_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_01_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Anomalnie g≥Íbinowe");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zauwaøyliúmy teø ruchy powietrza - delikatne, ale rytmiczne, przypominajπce wdech i wydech. Nie by≥y one powiπzane z øadnym znanym ciπgiem wentylacyjnym, a ich si≥a zdawa≥a siÍ zmieniaÊ w zaleønoúci od obecnoúci ludzi. W chwilach milczenia - zanika≥y. Gdy mÛwiliúmy lub poruszaliúmy siÍ - nasila≥y siÍ. Jakby coú nas s≥ucha≥o.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Struktura ska≥ rÛwnieø wykazywa≥a nietypowe w≥aúciwoúci. åciany niektÛrych tuneli by≥y g≥adkie i ciep≥e w dotyku, pomimo braku jakiegokolwiek ürÛd≥a ciep≥a. Inne - porowate, ale reagujπce na nacisk, ugina≥y siÍ lekko, jakby podszyte elastycznπ warstwπ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jeden z uczniÛw, nie zachowawszy ostroønoúci, wbi≥ grot laski w úcianÍ, ktÛra chwilÍ pÛüniej zaczÍ≥a siÍ zamykaÊ. Nie ucierpia≥, ale miejsce to juø wiÍcej siÍ nie otworzy≥o.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Najbardziej niepokojπca by≥a tzw. Komora Czwarta - obszerna przestrzeÒ na koÒcu úcieøki zachodniej, ca≥kowicie pozbawiona düwiÍku. Ani kroki, ani g≥os, ani skrzypienie zawiasÛw nie mia≥y tam brzmienia. MÛj notariusz zapisa≥, øe prÛbowa≥ wydaÊ z siebie krzyk - lecz nie s≥ysza≥ nic, nawet bicia w≥asnego serca. SpÍdziliúmy tam dok≥adnie dziewiÍÊ chwil, po czym wszyscy, niezaleønie od siebie, odczuli nag≥y niepokÛj - uczucie obserwacji, jakby z wnÍtrza samej ska≥y.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po powrocie na powierzchniÍ i przeglπdzie zapisÛw, niektÛre z map - tworzone na bieøπco przez automatyczne piÛra reagujπce na pozycjÍ - uleg≥y zniekszta≥ceniom. Linie falowa≥y, krzyøowa≥y siÍ w sposÛb niemoøliwy do wykonania ludzkπ rÍkπ. Na jednej z nich pojawi≥ siÍ symbol, ktÛrego nie rysowa≥ øaden z cz≥onkÛw wyprawy. Owal przecinany poziomo trzema ≥ukami. Øaden znany jÍzyk nie zawiera takiego znaku. Po spaleniu tej mapy, atrament z pozosta≥ych zaczπ≥ blaknπÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie potrafiÍ wyjaúniÊ, czym sπ te g≥Íbie. Moøe to pozosta≥oúÊ po starszym úwiecie, zakopanym pod warstwami czasu. A moøe to cia≥o - lub fragment cia≥a - czegoú, co nigdy nie umar≥o, bo nigdy w pe≥ni siÍ nie narodzi≥o.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_092 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_092;
	
	if (Bonus_ItWr_BookXp[92])	{	description = "Sny proroka I (przeczytane)";	}
	else						{	description = "Sny proroka I";					};
	
	TEXT[0]						=	"Odpis fragmentÛw pergaminu";
	TEXT[1]						=	"odnalezionego w ruinach úwiπtyni Ylath,";
	TEXT[2]						=	"wed≥ug zapisu kustosza Gildii Wiedzy.";
};
func void Use_ItWr_BookXp_092()
{
	Npc_AddDocsCounter(92, 1);
	CreateInvItem(self, ItWr_BookXp_092);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_02_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_02_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Sny proroka");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie wiadomo, kim by≥ autor tych s≥Ûw. Znaleziono je w krypcie zawalonej úwiπtyni, zapisane drøπcπ rÍkπ na zaschniÍtym pergaminie, nieopatrzone imieniem. JÍzyk wskazuje na wiek przedruniczny, a same treúci... cÛø. Czytajπcy ostrzegani sπ przed dos≥ownym pojmowaniem wizji. Prorocy nie piszπ dla rozumu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pierwszy sen: o ogniu bez ciep≥a");
				Doc_PrintLines	(nDocID,  0, "Widzia≥em p≥omieÒ, ktÛry nie dawa≥ ciep≥a. P≥onπ≥ nad wodπ, nie odbijajπc siÍ w niej. Ludzie stali wokÛ≥ niego i ogrzewali d≥onie, lecz nie z powodu ciep≥a - lecz z lÍku. Kaødy, kto spojrza≥ prosto w ogieÒ, widzia≥ swojπ twarz, ale starszπ o sto lat.");
				Doc_PrintLines	(nDocID,  0, "NiektÛrzy úmiali siÍ, widzπc, øe nie majπ juø w≥osÛw. Inni p≥akali, bo poznali dzieÒ w≥asnej úmierci. Jeden odszed≥ i nigdy nie wrÛci≥. S≥ysza≥em tylko jego kroki oddalajπce siÍ w suchym, martwym lesie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Drugi sen: o mieúcie bez cieni");
				Doc_PrintLines	(nDocID,  1, "Spacerowa≥em po mieúcie zbudowanym z bia≥ego kamienia. Wszystkie budowle by≥y idealne, kaødy kπt prosty. Ale s≥oÒce úwieci≥o zewszπd - a cieni nie by≥o. Nawet ludzie ich nie mieli.");
				Doc_PrintLines	(nDocID,  1, "Pyta≥em jednego z nich, czy wie, dlaczego jego cieÒ odszed≥. Odpowiedzia≥: ÑZgubi≥em go w momencie, gdy przesta≥em zadawaÊ pytania.î I uúmiechnπ≥ siÍ. Ale jego uúmiech by≥ zbyt szeroki. Przekroczy≥ usta.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Trzeci sen: o drzewie z g≥osami");
				Doc_PrintLines	(nDocID,  1, "W úrodku nocy znalaz≥em siÍ w lesie, ktÛrego drzewa nie mia≥y liúci. Jedno z nich szepta≥o do mnie. Jego korona porusza≥a siÍ, choÊ nie by≥o wiatru. MÛwi≥o g≥osami dzieci, starcÛw i tych, ktÛrzy zamilkli dawno temu.");
				Doc_PrintLines	(nDocID,  1, "ÑNie naleøymy juø do úwiataî - rzek≥o - Ñale on wciπø nas pamiÍta. Jesteúmy korzeniem snu, ktÛry únisz kaødej nocy, choÊ tego nie wiesz.î Gdy siÍ obudzi≥em, mia≥em pod paznokciami ziemiÍ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_093 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_093;
	
	if (Bonus_ItWr_BookXp[93])	{	description = "Sny proroka II (przeczytane)";	}
	else						{	description = "Sny proroka II";					};
	
	TEXT[0]						=	"Odpis fragmentÛw pergaminu";
	TEXT[1]						=	"odnalezionego w ruinach úwiπtyni Ylath,";
	TEXT[2]						=	"wed≥ug zapisu kustosza Gildii Wiedzy.";
};
func void Use_ItWr_BookXp_093()
{
	Npc_AddDocsCounter(93, 2);
	CreateInvItem(self, ItWr_BookXp_093);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_02_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_02_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Sny proroka");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Czwarty sen: o oceanie bez wody");
				Doc_PrintLines	(nDocID,  0, "Szuka≥em brzegu, lecz fale nie by≥y z wody, lecz z kurzu. Statek sunπ≥ przez ten ocean bez steru, a za≥oga patrzy≥a w niebo, ktÛrego nie by≥o. Tam, gdzie powinna byÊ gwiazda pÛ≥nocna, widnia≥o puste miejsce, czarne jak rana. Kapitan mÛwi≥: ÑTylko ci, ktÛrzy nie wiedzπ, dokπd p≥ynπ, mogπ dop≥ynπÊ tam, gdzie trzeba.î");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Piπty sen: o s≥oÒcu, ktÛre przemawia");
				Doc_PrintLines	(nDocID,  0, "Na niebie nie by≥o chmur, ale s≥oÒce mia≥o usta. MÛwi≥o jÍzykiem zbyt starym, bym go pojπ≥, ale czu≥em s≥owa pod skÛrπ. Gdy zamyka≥em oczy, widzia≥em litery wyryte na powiekach. Kaøde zdanie bola≥o. Wszystkie roúliny wokÛ≥ ros≥y w kierunku przeciwnym niø s≥oÒce - jakby ucieka≥y.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "SzÛsty sen: o cz≥owieku z oczami innych");
				Doc_PrintLines	(nDocID,  1, "Spotka≥em cz≥owieka, ktÛry mia≥ dwanaúcie par oczu. Wszystkie patrzy≥y jednoczeúnie, kaøde z innego miejsca i czasu. Jedno oko p≥aka≥o, inne úmia≥o siÍ, trzecie by≥o zamkniÍte, choÊ on by≥ przytomny.");
				Doc_PrintLines	(nDocID,  1, "Zapyta≥em: ÑKtÛre z nich widzi prawdziwie?î Odrzek≥: ÑØadne. Ale dopiero razem zaczynajπ widzieÊ.î");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "SiÛdmy sen: o únie, ktÛry nie by≥ mÛj");
				Doc_PrintLines	(nDocID,  1, "Ostatni sen úni≥em oczami kogoú innego. Czu≥em obce cia≥o, inne wspomnienia, strach nie mÛj. Ucieka≥em przez korytarz wykuty w koúci, a coú za mnπ porusza≥o siÍ w milczeniu. Obejrza≥em siÍ - i zobaczy≥em siebie. Spa≥em. Ale to nie by≥o moje cia≥o.");
				Doc_PrintLines	(nDocID,  1, "Obudzi≥em siÍ z uczuciem, øe od tego momentu dzielÍ swoje øycie z kimú jeszcze. Nie wiem, kim jest. Ale czasem, gdy zasypiam, mam wraøenie, øe to on mnie úni.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiadomo, czy te sny sπ zapisem wizji, choroby, czy przekleÒstwa. Ale jedno jest pewne - ktokolwiek je spisa≥, nie przeøy≥ ich bez zmiany. A moøe... nie przeøy≥ ich wcale.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_094 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_094;
	
	if (Bonus_ItWr_BookXp[94])	{	description = "Pod powierzchniπ I (przeczytane)";	}
	else						{	description = "Pod powierzchniπ I";					};
	
	TEXT[0]						=	"Zapiski mistrza Neromenesa, maga wody";
	TEXT[1]						=	"z klasztoru Adanosa na Archolos,";
	TEXT[2]						=	"rok 88 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_094()
{
	Npc_AddDocsCounter(94, 1);
	CreateInvItem(self, ItWr_BookXp_094);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_03_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_03_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Pod powierzchniπ");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wystarczy spojrzeÊ na mapÍ úwiata, by zrozumieÊ, øe øyjemy na marginesie. Lπdy - nasze miasta, nasze wojny, nasze úwiπtynie - zajmujπ zaledwie u≥amek powierzchni úwiata. Reszta to woda.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Bezmiar oceanÛw i mÛrz, ktÛre pokrywajπ wszystko, co stworzone, a ktÛrych nie potrafimy nawet nazwaÊ, nie mÛwiπc o zrozumieniu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "A jednak to w≥aúnie tÍ nieznanπ przestrzeÒ nazywamy Ñúwiatemî. Zaskakujπca pewnoúÊ, zwaøywszy, øe nie mamy pojÍcia, co kryje siÍ pod naszymi statkami, pod falami, ktÛre karmiπ i zabijajπ jednoczeúnie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Jako mag wody przez dekady bada≥em strumienie, rzeki, p≥ywy i przyp≥ywy. Widzia≥em, jak øywio≥ ten przekszta≥ca krainy i rzeübi wybrzeøa. Ale z kaødym rokiem coraz silniej czujÍ, øe prawdziwa natura wody - tej najstarszej, najg≥Íbszej - wcale nie objawia siÍ na powierzchni. Jest skryta. Niewidzialna. I byÊ moøe... nieprzyjazna.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zachowa≥y siÍ relacje o istotach, ktÛre wy≥oni≥y siÍ z g≥Íbin tylko raz na ca≥e pokolenie. Øeglarze opowiadajπ o cieniach wiÍkszych niø galeony, o oczach po≥yskujπcych pod powierzchniπ, o mackach, ktÛre niszczπ statki bez ostrzeøenia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kapitan z Argaani twierdzi≥, øe widzia≥ Ñcoú, co poruszy≥o morze, ale nie wodÍî. Inni mÛwiπ o pieúniach s≥yszanych nocπ, gdy morze jest zbyt spokojne, a za≥oga úpi zbyt czujnie.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_095 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_095;
	
	if (Bonus_ItWr_BookXp[95])	{	description = "Pod powierzchniπ II (przeczytane)";	}
	else						{	description = "Pod powierzchniπ II";				};
	
	TEXT[0]						=	"Zapiski mistrza Neromenesa, maga wody";
	TEXT[1]						=	"z klasztoru Adanosa na Archolos,";
	TEXT[2]						=	"rok 88 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_095()
{
	Npc_AddDocsCounter(95, 2);
	CreateInvItem(self, ItWr_BookXp_095);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_03_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_03_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Pod powierzchniπ");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Czy to tylko marynarskie bajania? ByÊ moøe. A jednak te opowieúci powracajπ. Z rÛønych wybrzeøy. W rÛønych jÍzykach. Zawsze te same motywy: ogrom, niepojÍtoúÊ, poczucie, øe coú patrzy z g≥Íbin. Coú, czego nie rozumiemy - nie dlatego, øe nie umiemy, lecz dlatego, øe moøe nie jesteúmy gotowi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gdyby istnia≥a cywilizacja pod powierzchniπ, by≥aby starsza od naszych. Wolna od ognia, od metalu, od kamienia. Ukszta≥towana przez ciemnoúÊ i ciúnienie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "ByÊ moøe ich zmys≥y nie przypominajπ naszych - moøe widzπ fale, s≥yszπ kamieÒ, czujπ ruch ksiÍøyca. Moøe istniejπ w przestrzeni, ktÛrej nie potrafimy sobie wyobraziÊ - pomiÍdzy uderzeniami prπdÛw g≥Íbinowych, tam gdzie úwiat≥o nigdy nie dotar≥o.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Z teologicznego punktu widzenia, úwiat g≥Íbin moøe byÊ dzie≥em Adanosa w jego najczystszej formie: strefπ absolutnej rÛwnowagi miÍdzy øyciem a úmierciπ, ruchem a stagnacjπ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "G≥Íbiny nie znajπ ognia Innosa, nie znajπ gnijπcych cieni Beliara. Sπ poza konfliktem. A wiÍc... czy to w≥aúnie tam kryje siÍ pierwotna intencja stworzenia? A moøe nie jesteúmy goúÊmi na powierzchni, lecz uciekinierami z dna?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie twierdzÍ, øe potrafimy zrozumieÊ istoty g≥Íbin. Ale twierdzÍ, øe one mogπ rozumieÊ nas. Moøe obserwujπ. Moøe pamiÍtajπ. Moøe to one tworzy≥y fale, ktÛre poch≥onÍ≥y staroøytne miasta, zanim spisano pierwszπ runÍ. Moøe to one szepta≥y pierwsze imiona bogÛw do uszu tych, ktÛrzy potem nazwali siÍ prorokami.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Im d≥uøej studiujÍ ocean, tym bardziej mam wraøenie, øe nie jest on øywio≥em. Øe jest organizmem. Øe nie zawiera istot - lecz sam jest istotπ. Oddycha. Cierpi. PamiÍta.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_096 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_04.3ds";
	on_state[0]					=	Use_ItWr_BookXp_096;
	
	if (Bonus_ItWr_BookXp[96])	{	description = "Z cia≥a i py≥u I (przeczytane)";	}
	else						{	description = "Z cia≥a i py≥u I";				};
	
	TEXT[0]						=	"Zapisy mistrza Elendora z Komnaty Transmutacyjnej";
	TEXT[1]						=	"Wieøy WewnÍtrznej, spisane po cyklu badaÒ";
	TEXT[2]						=	"nad przyczynπ ruchu bytÛw nieorganicznych.";
};
func void Use_ItWr_BookXp_096()
{
	Npc_AddDocsCounter(96, 1);
	CreateInvItem(self, ItWr_BookXp_096);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_04_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_04_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Z cia≥a i py≥u");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z kaødym kolejnym rokiem studiowania sztuk magicznych coraz czÍúciej stajÍ wobec zjawisk, ktÛre zadajπ fundamentalne pytania nie o samπ magiÍ - lecz o naturÍ øycia. Jednym z nich jest ruch. A raczej - to, co pozwala istotom siÍ poruszaÊ, gdy nie posiadajπ øadnego widocznego mechanizmu ku temu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Cz≥owiek porusza siÍ za pomocπ miÍúni, úciÍgien, reakcji chemicznych, impulsÛw nerwowych. ZwierzÍta - podobnie. Maszyny - poprzez zÍbatki, t≥oki, sprÍøyny. Ale czym porusza siÍ golem? Co sprawia, øe szkielet pozbawiony miÍúni moøe podnieúÊ broÒ? Dlaczego niektÛre oøywione posπgi potrafiπ chodziÊ, mimo øe sπ monolityczne - bez z≥πczeÒ, bez stawÛw?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Poczπtkowo zak≥ada≥em, øe odpowiedü leøy w magii wiπøπcej - rodzaju si≥y, ktÛra zastÍpuje strukturÍ biologicznπ. Ale im wiÍcej bada≥em te przypadki, tym mniej zadowala≥o mnie to wyjaúnienie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W przypadku nekromantycznych tworÛw takich jak szkielety, nie odnajdujemy øadnych znakÛw magicznego podparcia w koÒczynach. Ich ruch nie wydaje siÍ przekazywany przez øadne pole ani widocznπ niÊ energii. A jednak - dzia≥ajπ. Reagujπ. Czasem wykonujπ gest, zanim padnie rozkaz.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U kamiennych golemÛw rzecz wydaje siÍ jeszcze bardziej paradoksalna: wiele z nich nie posiada wyodrÍbnionych czÍúci cia≥a. Ich struktura jest jednolita, a jednak potrafiπ podnieúÊ ramiÍ, ugiπÊ nogÍ, odwrÛciÊ g≥owÍ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeden z egzemplarzy, ktÛry uda≥o siÍ uwiÍziÊ w magicznej klatce na Archolos, przez kilka dni naúladowa≥ ruchy swojego opiekuna. Kiedy ten przesta≥ przychodziÊ, golem zamar≥. Gdy inny mag podjπ≥ z nim kontakt - nie poruszy≥ siÍ ani razu.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_097 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_04.3ds";
	on_state[0]					=	Use_ItWr_BookXp_097;
	
	if (Bonus_ItWr_BookXp[97])	{	description = "Z cia≥a i py≥u II (przeczytane)";	}
	else						{	description = "Z cia≥a i py≥u II";					};
	
	TEXT[0]						=	"Zapisy mistrza Elendora z Komnaty Transmutacyjnej";
	TEXT[1]						=	"Wieøy WewnÍtrznej, spisane po cyklu badaÒ";
	TEXT[2]						=	"nad przyczynπ ruchu bytÛw nieorganicznych.";
};
func void Use_ItWr_BookXp_097()
{
	Npc_AddDocsCounter(97, 2);
	CreateInvItem(self, ItWr_BookXp_097);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_04_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_04_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Z cia≥a i py≥u");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Stawiam tezÍ: ruch istot nieoøywionych nie pochodzi z ich konstrukcji. Pochodzi z intencji, ktÛra w nich trwa - lub jest im narzucona. Moøe nie sπ to stworzenia w klasycznym rozumieniu, lecz nosiciele woli - od≥amki úwiadomoúci, zawieszone miÍdzy bezruchem a rozkazem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zauwaømy, øe wiele z nich aktywuje siÍ tylko w obecnoúci obserwatora. Inne reagujπ nie na s≥owa, lecz na emocje - strach, gniew, zaskoczenie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Czy zatem ich ruch jest formπ odbicia cudzej obecnoúci? Czy moøe kaøda oøywiona istota tego rodzaju posiada czπstkÍ... nie duszy, lecz przywiπzania? Do celu. Do zadania. Do rozkazu, ktÛry trwa d≥uøej niø úmierÊ?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "To, co nazywamy Ñoøywieniemî - moøe wcale nie oznacza wprowadzenia øycia, lecz przytwierdzenie ruchu. Jakby zamroøona w przestrzeni komenda by≥a wystarczajπcπ si≥π sprawczπ, by kamieÒ siÍ podniÛs≥, a koúÊ poruszy≥a.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Z punktu widzenia teologicznego, budzi to niepokÛj. Jeúli ruch moøna nadaÊ bez duszy - to czy dusza rzeczywiúcie jest konieczna do istnienia? A jeúli nie - to czym wobec tego jesteúmy my sami?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeúli konstrukcja moøe chodziÊ, widzieÊ, walczyÊ i trwaÊ przez wieki, nie posiadajπc ani myúli, ani serca - to czym rÛøni siÍ od cz≥owieka, ktÛry zatraci≥ w≥asnπ wolÍ?");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_098 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_098;
	
	if (Bonus_ItWr_BookXp[98])	{	description = "Flet z kana≥Ûw I (przeczytane)";	}
	else						{	description = "Flet z kana≥Ûw I";				};
	
	TEXT[0]						=	"Sprawozdanie spisane przez kartografa";
	TEXT[1]						=	"i historyka Trymonesa";
	TEXT[2]						=	"z ramienia Straøy Archiwalnej.";
};
func void Use_ItWr_BookXp_098()
{
	Npc_AddDocsCounter(98, 1);
	CreateInvItem(self, ItWr_BookXp_098);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_05_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_05_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Flet z kana≥Ûw");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie wszystkie zagroøenia przychodzπ z lasÛw, pustkowi ani nawet z Cieni. Czasem to, co najgroüniejsze, rodzi siÍ tuø pod naszymi stopami - tam, gdzie nikt nie patrzy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tak by≥o z tzw. Szczuro≥apem z Dolnego Miasta, postaciπ, ktÛra przez wiele lat pozostawa≥a postrachem dzieci i tematem kpin straønikÛw... aø do dnia, gdy prawie uda≥o mu siÍ przejπÊ w≥adzÍ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pierwsze wzmianki o nim pochodzπ sprzed dwÛch dekad. M≥ody cz≥owiek, imienia nikt juø dziú nie pamiÍta, zatrudniony by≥ jako poganiacz do oczyszczania magazynÛw i piwnic.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pracowa≥ z kijem i pochodniπ, jak kaødy. Aø ktÛregoú dnia odmÛwi≥ zabicia szczurÛw. ÑOne tylko s≥uchajπ swoich g≥osÛwî - powiedzia≥ podobno. Od tego momentu zaczπ≥ eksperymentowaÊ z düwiÍkiem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "WúrÛd odzyskanych z jego dawnego schronienia notatek odnaleziono wzmianki o prÛbach konstruowania instrumentu. Flet - wykonany z koúci i srebrnego drutu - stroi≥ przez lata.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale w koÒcu, jak sam zapisa≥, ÑdüwiÍk siÍ zgra≥ z chÍciπî. Od tej chwili szczury, dotπd dzikie i agresywne, zaczÍ≥y zbieraÊ siÍ wokÛ≥ niego. Dotπd by≥y tylko plagπ. Dla niego sta≥y siÍ armiπ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_099 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_099;
	
	if (Bonus_ItWr_BookXp[99])	{	description = "Flet z kana≥Ûw II (przeczytane)";	}
	else						{	description = "Flet z kana≥Ûw II";					};
	
	TEXT[0]						=	"Sprawozdanie spisane przez kartografa";
	TEXT[1]						=	"i historyka Trymonesa";
	TEXT[2]						=	"z ramienia Straøy Archiwalnej.";
};
func void Use_ItWr_BookXp_099()
{
	Npc_AddDocsCounter(99, 2);
	CreateInvItem(self, ItWr_BookXp_099);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_05_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_05_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Flet z kana≥Ûw");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z czasem porzuci≥ øycie wúrÛd ludzi i na sta≥e przeniÛs≥ siÍ do kana≥Ûw. Tam, pod miastem, zbudowa≥ sieÊ korytarzy, zapadni i znakÛw. Szczury uczy≥ porzπdku, reagowania na gesty i düwiÍki. Tworzy≥ im poøywienie z odpadkÛw. Nada≥ im imiona. A niektÛrym - narzÍdzia zÍbowe, metalowe nasadki, nosid≥a.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez lata uwaøano go za mit. Aø do nocy, gdy na centralnym placu pojawi≥a siÍ horda ponad stu szczurÛw. Straønicy zostali zaskoczeni. Bestie atakowa≥y nie dziko, lecz w formacjach - czÍúÊ obiega≥a bokiem, czÍúÊ zajmowa≥a dachy. DwÛch ludzi zginÍ≥o, kilkunastu zosta≥o rannych. MÍøczyzna z fletem sta≥ w cieniu fontanny i prowadzi≥ ich gestami.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Miasto ocali≥a przypadkowoúÊ: zapad≥ siÍ jeden z kana≥Ûw pod naciskiem masy gryzoni. Woda zala≥a tunele. Fletowy düwiÍk urwa≥ siÍ nagle. Cia≥a szczurÛw wyp≥ynÍ≥y na powierzchniÍ - martwe lub rozproszone. Jego samego nie odnaleziono.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiadomo, czy zginπ≥, czy zdo≥a≥ uciec. Nie wiadomo teø, skπd zna≥ nuty, ktÛre dzia≥a≥y. NiektÛrzy twierdzπ, øe to nie magia, lecz czysta obsesja i lata obserwacji.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie pozosta≥y po nim ani cia≥a, ani pomniki. Tylko ten flet - pÍkniÍty na koÒcu, schowany w skrzyni Archiwum Straøy, zapieczÍtowany runπ milczenia.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_100 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_100;
	
	if (Bonus_ItWr_BookXp[100])	{	description = "CieÒ w úwietle I (przeczytane)";	}
	else						{	description = "CieÒ w úwietle I";				};
	
	TEXT[0]						=	"Zapiski mistrza Aronthela z Akademii åwiat≥a,";
	TEXT[1]						=	"spisane po odnalezieniu zw≥ok mrocznego";
	TEXT[2]						=	"czarnoksiÍønika w ruinach KalíAzar.";
};
func void Use_ItWr_BookXp_100()
{
	Npc_AddDocsCounter(100, 1);
	CreateInvItem(self, ItWr_BookXp_100);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_06_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_06_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "CieÒ w úwietle");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Niech Innos mi wybaczy, øe spisa≥em to, co zaraz przeczytasz. Nie dla pokusy wiedzy to uczyni≥em, lecz dla przestrogi - aby ci, ktÛrzy sπdzπ, øe mrok jest jedynie odwrotnoúciπ úwiat≥a, mogli zrozumieÊ, jak bardzo siÍ mylπ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W ruinach KalíAzar, wúrÛd zwÍglonych resztek i pÍkniÍtych pieczÍci, odnaleüliúmy cia≥o.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "CzarnoksiÍønik, jeden z tych, ktÛrych modlitwy nigdy nie by≥y s≥yszane, a jednak pozostawia≥y úlady. Przy nim - gruby tom, spÍtany sznurem ze skÛry, zamkniÍty klamrπ z zÍbÛw. Po d≥ugim wahaniu, po modlitwach i zaklÍciach ochronnych, otworzy≥em go. Przeczyta≥em. I nie zapomnÍ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Almanach nie by≥ ksiÍgπ zaklÍÊ. Przypomina≥ raczej dziennik øycia... lub moøe katalog praktyk dla tych, ktÛrzy postanowili odwrÛciÊ siÍ od porzπdku.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zapisano tam rytua≥y codziennego oczyszczenia, polegajπce nie na myciu cia≥a, lecz jego brudzeniu. Wyznawcy Beliara zanurzali d≥onie w popiele z koúci i wcierali go w skÛrÍ, by ÑukryÊ siÍ przed úwiat≥em úwiataî.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ich modlitwy - jeúli moøna to tak nazwaÊ - nie by≥y b≥aganiami. By≥y rozkazami, wypowiadanymi w tonie rozdraønienia lub szeptanej furii. ÑNie prosimy. Przypominamy, øe jesteúmy.î To jedno ze zdaÒ, ktÛre szczegÛlnie zapad≥o mi w pamiÍÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_101 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_101;
	
	if (Bonus_ItWr_BookXp[101])	{	description = "CieÒ w úwietle II (przeczytane)";	}
	else						{	description = "CieÒ w úwietle II";					};
	
	TEXT[0]						=	"Zapiski mistrza Aronthela z Akademii åwiat≥a,";
	TEXT[1]						=	"spisane po odnalezieniu zw≥ok mrocznego";
	TEXT[2]						=	"czarnoksiÍønika w ruinach KalíAzar.";
};
func void Use_ItWr_BookXp_101()
{
	Npc_AddDocsCounter(101, 2);
	CreateInvItem(self, ItWr_BookXp_101);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_06_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_06_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "CieÒ w úwietle");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nauka magii w ich krÍgu nie opiera≥a siÍ na harmonii, lecz na napiÍciu. Uczyli siÍ magii nie przez medytacjÍ, lecz przez z≥amanie w≥asnej woli. Jeden z rozdzia≥Ûw opisuje Êwiczenia polegajπce na przerywaniu snu co godzinÍ, by wypowiadaÊ jedno zaklÍcie od nowa. Przez szeúÊdziesiπt nocy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Uczono ich nie cierpliwoúci, lecz obsesji. Nie skupienia - lecz nieustannego tarcia z w≥asnym umys≥em, aø ten pÍknie i przepuúci moc.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kaødy dzieÒ wyznawcy Beliara koÒczy≥ siÍ rytua≥em ÑWygaszeniaî, w ktÛrym gaszono wszelkie úwiat≥a w pomieszczeniu i siedzπc poúrÛd zimnych kamieni, opisywano w≥asne lÍki - nie po to, by je pokonaÊ, lecz by je nakarmiÊ. Wierzyli, øe strach to forma mocy, ktÛrπ moøna hodowaÊ niczym ogieÒ w piwnicy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W jednej z notatek wspomniano o Ñbraciach bez jÍzykÛwî - m≥odych akolitach, ktÛrym odbierano zdolnoúÊ mÛwienia, by ich modlitwy by≥y milczeniem, ktÛrego ÑBeliar s≥ucha najchÍtniejî.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Najbardziej przeraøajπce nie by≥y same praktyki, lecz ich spÛjnoúÊ. Almanach ukazywa≥ úwiat uporzπdkowany, logiczny, ale ca≥kowicie odwrÛcony wzglÍdem naszego. Ich z≥o nie by≥o przypadkowe - by≥o systematyczne. Ich ciemnoúÊ nie by≥a chaosem, lecz strukturπ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy inni magowie Innosa powinni przeczytaÊ ten tekst. Ale wiem, øe úwiat, ktÛry zna tylko úwiat≥o, jest naiwny. By stawiÊ czo≥a ciemnoúci, trzeba najpierw wiedzieÊ, øe nie jest ona pustkπ - lecz pe≥niπ. Groünπ, úlepπ, bezlitosnπ pe≥niπ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_102 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_102;
	
	if (Bonus_ItWr_BookXp[102])	{	description = "Kaplice bez bogÛw I (przeczytane)";	}
	else						{	description = "Kaplice bez bogÛw I";				};
	
	TEXT[0]						=	"Zapiski mistrza Eronthala z Gildii Wiedzy,";
	TEXT[1]						=	"spisane podczas badaÒ ruin";
	TEXT[2]						=	"wschodniego wybrzeøa.";
};
func void Use_ItWr_BookXp_102()
{
	Npc_AddDocsCounter(102, 1);
	CreateInvItem(self, ItWr_BookXp_102);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_07_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_07_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Kaplice bez bogÛw");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W naszej historii przywykliúmy sπdziÊ, øe kaøde úwiÍte miejsce przypisane jest bogu. Tam, gdzie p≥onie ogieÒ - Innos. Tam, gdzie cieÒ jest gÍstszy od úwiat≥a - Beliar. Tam, gdzie cisza trwa miÍdzy jednπ falπ a drugπ - Adanos. Lecz w trakcie moich badaÒ natknπ≥em siÍ na miejsca, ktÛre nie pasujπ do tej mapy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sπ to ruiny - stare, zapomniane, czasem ca≥kowicie zaroúniÍte, a czasem wciπø nienaruszone. W ich wnÍtrzu znajdujπ siÍ o≥tarze, krÍgi, relikty.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Czasem symbole, lecz øaden z nich nie odpowiada znanym alfabetom ani doktrynom. Najdziwniejsze jest jednak to, øe te miejsca wciπø wydajπ siÍ czekaÊ. Nie sπ martwe. Nie sπ zrujnowane w duchu. Sπ nieukoÒczone.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W jednej z kaplic na wschodnim wybrzeøu odnalaz≥em tabliczki kamienne - z wyrytymi tekstami rytualnymi. Oto jeden z fragmentÛw:");
				Doc_PrintLines	(nDocID,  1, "ÑZbliø siÍ, ktÛry nie wiesz. Nie mÛw, nie klÍkaj. S≥uchaj, dopÛki nie zostaniesz poznany.î");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie ma tam modlitwy. Nie ma wezwania. Jest milczenie, nakaz obecnoúci bez s≥Ûw. Jakby kult nie zak≥ada≥ oddawania czci - lecz bycie obserwowanym.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_103 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_103;
	
	if (Bonus_ItWr_BookXp[103])	{	description = "Kaplice bez bogÛw II (przeczytane)";	}
	else						{	description = "Kaplice bez bogÛw II";				};
	
	TEXT[0]						=	"Zapiski mistrza Eronthala z Gildii Wiedzy,";
	TEXT[1]						=	"spisane podczas badaÒ ruin";
	TEXT[2]						=	"wschodniego wybrzeøa.";
};
func void Use_ItWr_BookXp_103()
{
	Npc_AddDocsCounter(103, 2);
	CreateInvItem(self, ItWr_BookXp_103);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_07_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_07_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Kaplice bez bogÛw");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W innej strukturze, ukrytej pod ruinami Fortu Silth, znajdowa≥o siÍ miejsce przypominajπce baptysterium. Ale zamiast wody w zbiorniku znajdowa≥ siÍ piasek, gÍsty, czarny, nieparujπcy. Miejscowi mÛwili, øe czasem w nocy s≥ychaÊ z tamtego miejsca bicie. Nie dzwon. Nie echo. Po prostu... rytmiczne, g≥Íbokie uderzenia, jakby czegoú duøego o coú wiÍkszego.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Øaden z rytua≥Ûw spisanych w tych miejscach nie odnosi siÍ do znanych boskich imion. Nie zawierajπ prÛúb, ofiar ani obietnic. Sπ to czynnoúci - powtarzane, bez sensu, bez wyjaúnienia. Na przyk≥ad: ÑDotknij trzeciego kamienia poúrÛd siedmiu, obrÛÊ siÍ w stronÍ, ktÛrej nie czujesz, i poczekaj, aø zapomnisz po co tu jesteú.î");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Czy to wszystko dowÛd na istnienie zaginionych bogÛw? Czy moøe kultÛw nieboskich - rytua≥Ûw odprawianych nie ku komuú, lecz ku czemuú? Albo - i ta myúl nie daje mi spokoju - czy sπ to miejsca stworzone nie do oddawania czci, lecz do bycia obserwowanym przez to, co czczone byÊ nie moøe?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "NiektÛre kaplice wydajπ siÍ zbudowane nie dla ludzi, lecz przeciwko nim. Ich proporcje sπ nieprzyjazne: zbyt wπskie przejúcia, sklepienia, ktÛrych wysokoúci nie sposÛb zmierzyÊ, uk≥ad pomieszczeÒ oparty na geometrii, ktÛra przeczy logice architektonicznej. Jakby ktoú prÛbowa≥ naúladowaÊ budowlÍ úwiπtynnπ, nie rozumiejπc jej celu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Z perspektywy teologicznej jest to bluünierstwo - miejsca bez boga. Ale z perspektywy poznania to jedno z najbardziej niepokojπcych odkryÊ mojego øycia. Bo jeúli istniejπ úwiπtynie bez adresata, to moøe znaczy to, øe ktoú kiedyú prÛbowa≥ siÍ modliÊ, zanim powstali bogowie. Albo - øe ktoú prÛbowa≥ ich stworzyÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Moje badania wciπø trwajπ. Ale coraz czÍúciej budzÍ siÍ z myúlπ, øe jeden z tych kultÛw wcale nie by≥ martwy. Øe ktoú... lub coú... nadal przychodzi tam w ciszy. Nie po to, by byÊ wys≥uchanym. Ale po to, by s≥uchaÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_104 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_104;
	
	if (Bonus_ItWr_BookXp[104])	{	description = "Niewidzialne wiÍzy I (przeczytane)";	}
	else						{	description = "Niewidzialne wiÍzy I";				};
	
	TEXT[0]						=	"Notatki mistrza Iscarniona z Wieøy Syntezy,";
	TEXT[1]						=	"sporzπdzone po analizie przypadkÛw";
	TEXT[2]						=	"spontanicznych powiπzaÒ duchowych.";
};
func void Use_ItWr_BookXp_104()
{
	Npc_AddDocsCounter(104, 1);
	CreateInvItem(self, ItWr_BookXp_104);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_08_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_08_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Niewidzialne wiÍzy");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "NiektÛre zjawiska magiczne rozpoznajemy ≥atwo - ogieÒ, ktÛry p≥onie bez drewna, cieÒ, ktÛry nie potrzebuje cia≥a, g≥os przemawiajπcy z pieczÍci. Ale sπ i takie, ktÛre nie objawiajπ siÍ úwiat≥em ani düwiÍkiem. Zamiast tego wiπøπ siÍ z obecnoúciπ. Z poczuciem obecnoúci tam, gdzie nikogo nie ma - i z wiedzπ, ktÛrej nie powinno siÍ posiadaÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W ciπgu ostatnich dwÛch dekad zarejestrowano ponad tuzin przypadkÛw osÛb, ktÛre twierdzi≥y, øe czujπ innych ludzi - niezaleønie od odleg≥oúci. Nie chodzi tu o wspomnienia, sentymenty ani modlitwy. Mowa o bezpoúrednim odbiorze emocji, bÛlu, snÛw - a w niektÛrych przypadkach nawet myúli.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zjawisko to wystÍpuje rzadko i nieregularnie, ale z pewnπ sta≥π: osoby te sπ ze sobπ powiπzane silnym wspÛlnym doúwiadczeniem.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Jednym z najlepiej udokumentowanych przypadkÛw by≥a para braci z regionu Reth Yamar. Jeden z nich straci≥ d≥oÒ w wypadku gÛrniczym. W tej samej chwili drugi - oddalony o cztery dni drogi - pad≥ nieprzytomny i przez kilka dni odczuwa≥ bÛl w d≥oni, ktÛrej nigdy nie straci≥.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ich sny sta≥y siÍ identyczne, powtarzajπce siÍ. Gdy ich zbadano, nie wykryto ani klπtwy, ani b≥ogos≥awieÒstwa, ani úladÛw zaklÍÊ. A jednak wiÍü nie ustπpi≥a.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W innym przypadku dwoje dzieci, rozdzielonych po upadku karawany i wychowywanych w rÛønych prowincjach, w tym samym wieku zaczÍ≥o mÛwiÊ w jÍzyku, ktÛrego nikt ich nie uczy≥ - ale ktÛry rozumia≥y nawzajem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nazywa≥y go ÑjÍzykiem úrodkaî, i twierdzi≥y, øe s≥yszπ w nim Ñpytania zadawane bez s≥Ûwî. Gdy jedno z nich zmar≥o, drugie zamilk≥o na zawsze.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_105 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_105;
	
	if (Bonus_ItWr_BookXp[105])	{	description = "Niewidzialne wiÍzy II (przeczytane)";	}
	else						{	description = "Niewidzialne wiÍzy II";					};
	
	TEXT[0]						=	"Notatki mistrza Iscarniona z Wieøy Syntezy,";
	TEXT[1]						=	"sporzπdzone po analizie przypadkÛw";
	TEXT[2]						=	"spontanicznych powiπzaÒ duchowych.";
};
func void Use_ItWr_BookXp_105()
{
	Npc_AddDocsCounter(105, 2);
	CreateInvItem(self, ItWr_BookXp_105);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_08_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_08_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Niewidzialne wiÍzy");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "NiektÛre teorie prÛbujπ t≥umaczyÊ te zjawiska przez wspÛlnπ ekspozycjÍ na magiÍ chaosu, inne - przez dziedzictwo krwi. Ale øadna nie t≥umaczy wszystkiego.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Istnieje hipoteza, øe pewne emocje, przeøyte wspÛlnie - szczegÛlnie w chwilach granicznych - potrafiπ trwale zszyÊ dusze. Nie na poziomie úwiadomoúci, lecz g≥Íbiej: w warstwie intencji, tej samej, ktÛra nadaje si≥Í zaklÍciom.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zauwaømy, øe wiÍkszoúÊ przypadkÛw nie daje siÍ wywo≥aÊ celowo. Rytua≥y wiπøπce - nawet te silne, z udzia≥em krwi czy przysiπg - nie tworzπ takich efektÛw.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Moøna wiÍc przypuszczaÊ, øe wiÍzi te nie sπ tworzone przez wolÍ, lecz przez koniecznoúÊ. Jakby úwiat sam uzna≥, øe dane dusze muszπ byÊ po≥πczone - niezaleønie od czasu, przestrzeni i zrozumienia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeúli to prawda, to znaczy, øe istnieje wymiar relacji miÍdzy istotami, ktÛry wymyka siÍ magii, teologii i nauce. WiÍü, ktÛra nie jest kana≥em, lecz stanem. Taka, ktÛra nie wymaga s≥Ûw, dotyku ani spojrzenia. I ktÛrej nie moøna przerwaÊ - nawet úmierciπ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "ByÊ moøe niektÛre dusze rodzπ siÍ juø powiπzane. A moøe niektÛre spotkania sπ tylko przypomnieniem, øe ktoú inny juø dawno zosta≥ w nas zapisany.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_106 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_106;
	
	if (Bonus_ItWr_BookXp[106])	{	description = "Domena snÛw I (przeczytane)";	}
	else						{	description = "Domena snÛw I";					};
	
	TEXT[0]						=	"Zapiski mistrza Aeremona z Komnaty Snu przy";
	TEXT[1]						=	"Wieøy Ciszy, prowadzone przez siedem lat";
	TEXT[2]						=	"eksperymentÛw i obserwacji.";
};
func void Use_ItWr_BookXp_106()
{
	Npc_AddDocsCounter(106, 1);
	CreateInvItem(self, ItWr_BookXp_106);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_09_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_09_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Domena snÛw");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sen. Od wiekÛw uwaøany za domenÍ nieprzeniknionπ, granicÍ miÍdzy úwiadomoúciπ a chaosem, miejsce, w ktÛrym umys≥ zrzuca ciÍøar dnia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "A jednak sπ przypadki, w ktÛrych sen nie znika wraz z porankiem. Przeciwnie - coú z niego pozostaje. Trwa w ciele, pamiÍci, a czasem... w rzeczywistoúci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pierwszy przypadek, ktÛry sk≥oni≥ mnie do badaÒ, dotyczy≥ m≥odego ucznia z klasztoru Adanosa. Twierdzi≥, øe úni≥ o walce z istotπ bez twarzy, w komnacie wykutej z czarnego szk≥a.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Po przebudzeniu na jego ciele widnia≥y rany w miejscach, w ktÛre zosta≥ trafiony w únie. Poczπtkowo sπdzono, øe sam siÍ okaleczy≥ - aø do momentu, gdy podobne úlady pojawi≥y siÍ na dwÛch innych uczniach, ktÛrzy opisywali identyczny sen, choÊ nie rozmawiali ze sobπ od tygodni.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Inny przypadek - kap≥anka z GÛrnego Obozu - opisywa≥a sen o p≥onπcej bibliotece, w ktÛrej szuka≥a ksiÍgi zawierajπcej w≥asne imiÍ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po przebudzeniu potrafi≥a spisaÊ fragmenty tekstu, ktÛrego nie zna≥a. Runy, ktÛre zapisa≥a, okaza≥y siÍ prawdziwe - znane jedynie uczonym ze Wschodnich ArchiwÛw. Nigdy ich wczeúniej nie widzia≥a.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_107 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_107;
	
	if (Bonus_ItWr_BookXp[107])	{	description = "Domena snÛw II (przeczytane)";	}
	else						{	description = "Domena snÛw II";					};
	
	TEXT[0]						=	"Zapiski mistrza Aeremona z Komnaty Snu przy";
	TEXT[1]						=	"Wieøy Ciszy, prowadzone przez siedem lat";
	TEXT[2]						=	"eksperymentÛw i obserwacji.";
};
func void Use_ItWr_BookXp_107()
{
	Npc_AddDocsCounter(107, 2);
	CreateInvItem(self, ItWr_BookXp_107);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_09_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_09_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Domena snÛw");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najbardziej niepokojπce sπ jednak przypadki tzw. obcego snu: úniπcy doznaje wydarzeÒ, wspomnieÒ i lÍkÛw, ktÛre nie sπ jego. Opisuje obce miejsca, ludzi, jÍzyki.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jeden z badanych - prosty cieúla z Tharnis - po przebudzeniu mÛwi≥ p≥ynnie starπ odmianπ jÍzyka Velorn, wymar≥ego przed ponad stuleciem. Gdy pytano go, skπd jπ zna, odpowiada≥: ÑNie ja to úni≥em. Ja tylko siÍ obudzi≥em.î");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "NiektÛrzy sugerujπ, øe sny sπ bramami - nie metaforycznie, lecz dos≥ownie. Øe istnieje przestrzeÒ, do ktÛrej dostÍp mamy wy≥πcznie w stanie snu, ale ktÛra sama nie jest snem. Miejsce, ktÛre nas obserwuje. A moøe miejsce, ktÛre uczy siÍ przez nas.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Z teologicznego punktu widzenia by≥oby to obrazoburcze. åwiat snu zawsze traktowano jako dzie≥o wewnÍtrzne: odbicie duszy, zwierciad≥o myúli. Ale co, jeúli niektÛre sny sπ zewnÍtrzne? Co, jeúli nie my únimy - lecz jesteúmy únieni?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie potrafiÍ odpowiedzieÊ, dlaczego niektÛrzy z tych, ktÛrzy odwiedzili owe sny, przynoszπ z nich rany, jÍzyki, wiedzÍ, a czasem... lÍk, ktÛrego nie potrafiπ nazwaÊ. Ale jestem pewien jednego: nie wszystkie sny sπ nasze. A niektÛre - nie koÒczπ siÍ, gdy otwieramy oczy.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_108 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_108;
	
	if (Bonus_ItWr_BookXp[108])	{	description = "Miasto pod miastem I (przeczytane)";	}
	else						{	description = "Miasto pod miastem I";				};
	
	TEXT[0]						=	"Zapiski mistrza Kalderana z Gildii GeomantÛw,";
	TEXT[1]						=	"sporzπdzone podczas trzeciej ekspedycji";
	TEXT[2]						=	"do podziemi pod Thar Korran.";
};
func void Use_ItWr_BookXp_108()
{
	Npc_AddDocsCounter(108, 1);
	CreateInvItem(self, ItWr_BookXp_108);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_10_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_10_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Miasto pod miastem");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wszyscy wiedzieliúmy, øe fundamenty miasta sπ stare. Budowane na ruinach starszych wiekÛw, jak to bywa niemal wszÍdzie. Ale nikt nie spodziewa≥ siÍ, øe pod warstwπ piaskowca i zgliszczy starych úwiπtyÒ odkryjemy strukturÍ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie gruz, nie jamy - lecz coú, co wyglπda≥o jak miasto. Oko≥o piÍÊdziesiÍciu sπøni pod ziemiπ, za starym szybem, odnaleüliúmy wejúcie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z poczπtku wyglπda≥o jak naturalna szczelina, ale dalsze zejúcie ukaza≥o ciπg schodÛw - regularnych, kamiennych, niezuøytych. Wiod≥y w dÛ≥ pod kπtem, ktÛry przeczy≥ ziemskim proporcjom. Nie mogliúmy ustaliÊ, jak g≥Íboko schodzimy - ani jak d≥ugo. Czas przesta≥ byÊ miarπ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "WnÍtrze, ktÛre ujrzeliúmy, nie przypomina≥o niczego znanego z ludzkiej architektury. Nie by≥o kπtÛw prostych. åciany ≥πczy≥y siÍ ≥agodnie, jakby formowane nie przez d≥uto, lecz przez wyrzeübione ciúnienie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "KamieÒ mia≥ barwÍ ciemnej miedzi i nie nosi≥ úladÛw narzÍdzi. A jednak wszystko by≥o zamierzone.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie by≥o tam drzwi, ale przejúcia. Nie by≥o okien, ale komory, ktÛre rezonowa≥y g≥osem. Kaødy düwiÍk - szept, krok, westchnienie - odbija≥ siÍ niezgodnie z logikπ akustyki. G≥os wypowiedziany w jednej sali pojawia≥ siÍ chwilÍ pÛüniej w drugiej - zmieniony, sp≥aszczony, jakby przeszed≥ przez wspomnienie.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_109 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_109;
	
	if (Bonus_ItWr_BookXp[109])	{	description = "Miasto pod miastem II (przeczytane)";	}
	else						{	description = "Miasto pod miastem II";					};
	
	TEXT[0]						=	"Zapiski mistrza Kalderana z Gildii GeomantÛw,";
	TEXT[1]						=	"sporzπdzone podczas trzeciej ekspedycji";
	TEXT[2]						=	"do podziemi pod Thar Korran.";
};
func void Use_ItWr_BookXp_109()
{
	Npc_AddDocsCounter(109, 2);
	CreateInvItem(self, ItWr_BookXp_109);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_10_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_10_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Miasto pod miastem");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Na úcianach znajdowa≥y siÍ znaki - nie pismo, lecz uk≥ady naciÍÊ i wg≥ÍbieÒ przypominajπce rytm. Powtarza≥y siÍ w rÛwnych odstÍpach. PrÛbowaliúmy je zinterpretowaÊ jako kod matematyczny, ale uk≥ad nie odpowiada≥ øadnemu znanemu systemowi liczbowemu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jeden z uczniÛw, ktÛry spÍdzi≥ noc przy jednej z komÛr, powiedzia≥, øe zaczyna rozumieÊ wzory, mimo øe ich nie czyta≥. Kilka dni pÛüniej poprosi≥ o zamkniÍcie go w samotnej celi. MÛwi≥, øe miasto Ñciπgle do niego mÛwiî.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie znaleüliúmy cia≥. Nie by≥o úladÛw ognia, walki, zniszczenia. Struktura nie zosta≥a opuszczona - ona po prostu... przesta≥a byÊ zamieszkana. Albo nigdy nie by≥a w taki sposÛb, jaki rozumiemy. Skala pomieszczeÒ sugerowa≥a istoty wiÍksze niø ludzie. NiektÛre korytarze mia≥y piÍÊ, szeúÊ sπøni wysokoúci, a sufity wspiera≥y siÍ na kolumnach przypominajπcych skrÍcone koúci.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W sali centralnej odnaleüliúmy coú, co moøna by uznaÊ za o≥tarz - jeúli o≥tarz moøe byÊ zbiornikiem czystego düwiÍku. Z jego wnÍtrza wydobywa≥ siÍ niskotonowy pomruk, nies≥yszalny, a jednak odczuwalny w koúciach. PrÛbowaliúmy go zag≥uszyÊ - nie uda≥o siÍ. Nawet milczenie w tej sali mia≥o kszta≥t.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Z punktu widzenia historii jest to znalezisko bez precedensu. Z punktu widzenia magii - niewyjaúnione ürÛd≥o oddzia≥ywania. Ale z punktu widzenia cz≥owieczeÒstwa... jest to pytanie. Pytanie o to, kto tu by≥ wczeúniej. Co tu robi≥.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "ZamknÍliúmy zejúcie. Oficjalnie - dla bezpieczeÒstwa. Nieoficjalnie... bo pewne miejsca nie powinny byÊ puste. Nie dlatego, øe sπ niebezpieczne. Ale dlatego, øe sπ zbyt gotowe, by znÛw siÍ zape≥niÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_110 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_110;
	
	if (Bonus_ItWr_BookXp[110])	{	description = "O druidach I (przeczytane)";	}
	else						{	description = "O druidach I";				};
	
	TEXT[0]						=	"Zapiski kap≥ana Arveliona";
	TEXT[1]						=	"z klasztoru Adanosa na Archolos,";
	TEXT[2]						=	"spisane po latach pielgrzymek.";
};
func void Use_ItWr_BookXp_110()
{
	Npc_AddDocsCounter(110, 1);
	CreateInvItem(self, ItWr_BookXp_110);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_11_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_11_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "O druidach");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "WúrÛd ludzi úwiata znane sπ trzy imiona boskoúci: Innos, Beliar i Adanos. Z tych trzech tylko jeden nie øπda ani czci, ani ofiar, ani wojen. Adanos - nasz Pan RÛwnowagi - nie objawia siÍ w ogniu ani w krwi. Objawia siÍ w ciszy miÍdzy nimi. I moøe w≥aúnie dlatego jego najwierniejsi s≥udzy sπ tymi, o ktÛrych najmniej wiadomo. MÛwiÍ tu o druidach.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Istnienie druidÛw wielu traktuje jako legendÍ. Ot, bajka o leúnych czarownikach, ktÛrzy gadajπ ze zwierzÍtami i zamieniajπ siÍ w wilki. Lecz ja, s≥uga Adanosa i cz≥onek krÍgu uczonych z klasztoru na Archolos, mogÍ poúwiadczyÊ, øe druidzi istniejπ. ChoÊ niewielu. ChoÊ rozproszeni. ChoÊ obcy wobec úwiata, ktÛry dawno przesta≥ ich rozumieÊ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie naleøπ do øadnego znanego krÍgu magicznego. Nie sπ uczniami ognia, lodu ani ciemnoúci. Ich úwiπtynie to polany, ktÛrych nikt nie odnajdzie dwa razy. Ich kaplice - pnie drzew z wyrytymi znakami, widocznymi tylko w okreúlonym úwietle. Nie noszπ szat. Ich znakiem nie jest symbol - lecz obecnoúÊ wilka, jelenia, czy sowy, ktÛrych towarzystwo zdradza wiÍcej niø tysiπc s≥Ûw.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie modlπ siÍ s≥owami. Nie proszπ Adanosa o przychylnoúÊ. Raczej s≥uchajπ, czekajπ, rÛwnowaøπ. Wierzπ, øe kaøde dzia≥anie wymaga przeciwwagi - i øe kaøde zak≥Ûcenie rÛwnowagi pociπga za sobπ koniecznoúÊ cichego dzia≥ania. Nie po to, by przywrÛciÊ porzπdek. Lecz po to, by zapobiec przechyleniu szali.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_111 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_111;
	
	if (Bonus_ItWr_BookXp[111])	{	description = "O druidach II (przeczytane)";	}
	else						{	description = "O druidach II";					};
	
	TEXT[0]						=	"Zapiski kap≥ana Arveliona";
	TEXT[1]						=	"z klasztoru Adanosa na Archolos,";
	TEXT[2]						=	"spisane po latach pielgrzymek.";
};
func void Use_ItWr_BookXp_111()
{
	Npc_AddDocsCounter(111, 2);
	CreateInvItem(self, ItWr_BookXp_111);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_11_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_11_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "O druidach");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Spotka≥em jednego z nich tylko raz. Nie poda≥ imienia. Nie wyjaúni≥ celu. Po prostu by≥. Rozmawialiúmy nie s≥owami, lecz spojrzeniem, obecnoúciπ, zrozumieniem. Gdy prÛbowa≥em zapytaÊ, dlaczego nie ujawniajπ siÍ úwiatu, odpowiedzia≥ tylko: ÑBo úwiat nas nie potrzebuje, dopÛki nie przekroczy granicy.î A potem odszed≥ w cieÒ paproci, w düwiÍk liúci, w zapach deszczu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "NiektÛrzy magowie wody uwaøajπ ich za prymitywnych. Inni - za zagubionπ ga≥πü naszej w≥asnej tradycji. Ja sπdzÍ, øe sπ innπ odpowiedziπ na to samo pytanie: jak s≥uøyÊ Adanosowi nie przez rytua≥, lecz przez obecnoúÊ?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Druidzi nie zostawiajπ pism. Nie uczπ. Nie przyjmujπ uczniÛw z zewnπtrz. A jednak... pojawiajπ siÍ. Gdy las p≥onie. Gdy bestie schodzπ ze szczytÛw. Gdy ludzie kopiπ zbyt g≥Íboko. Zawsze w milczeniu. Zawsze w odpowiedzi. Jakby czuwali. Jakby las pamiÍta≥.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, ilu ich jest. Moøe dziesiÍciu. Moøe trzech. A moøe w kaødej chwili jest tylko jeden - ale zawsze tam, gdzie byÊ powinien.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_112 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_112;
	
	if (Bonus_ItWr_BookXp[112])	{	description = "O wojnie bez bitwy I (przeczytane)";	}
	else						{	description = "O wojnie bez bitwy I";				};
	
	TEXT[0]						=	"Notatki stratega Marnolda,";
	TEXT[1]						=	"sporzπdzone na zlecenie rady krÛlewskiej";
	TEXT[2]						=	"po upadku twierdzy Vardem.";
};
func void Use_ItWr_BookXp_112()
{
	Npc_AddDocsCounter(112, 1);
	CreateInvItem(self, ItWr_BookXp_112);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_12_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_12_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "O wojnie bez bitwy");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wojna to nie tylko krew i øelazo. Czasem wojna to niewypowiedziane rozkazy, zbyt d≥ugo odwlekane decyzje i sojusze, ktÛre nigdy nie zosta≥y spisane. Tak w≥aúnie utraciliúmy Wschodnie Przejúcie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie by≥o oblÍøenia. Nie by≥o bitwy. Nie by≥o nawet trπbki ostrzegawczej. By≥o tylko milczenie - i potem dym.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wschodnie Przejúcie to teren gÛrski, strategicznie kluczowy - nie z racji bogactw, lecz przejúcia miÍdzy wschodnimi ziemiami a resztπ krÛlestwa. Od dekad sporne, trudne do utrzymania, ale teø zaniedbane.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Garnizon w twierdzy Vardem liczy≥ w ostatnich latach mniej niø dwie setki ludzi - z czego po≥owa to byli ch≥opi zwerbowani poúrÛd lokalnych buntownikÛw. Oficjalnie: Ñresocjalizacja przez s≥uøbÍî. W praktyce: brak lepszego pomys≥u.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Raporty o ruchach najemnikÛw w tamtym rejonie sp≥ywa≥y przez lata. Nikt nie traktowa≥ ich powaønie - za ma≥o konkretÛw, za ma≥o nazw, za duøo Ñrzekomoî.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Gdy wys≥annik z Vardem przys≥a≥ proúbÍ o dodatkowy zapas be≥tÛw i smo≥y, kancelaria opÛüni≥a decyzjÍ o trzy tygodnie z powodu braku pieczÍci na formularzu.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_113 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_113;
	
	if (Bonus_ItWr_BookXp[113])	{	description = "O wojnie bez bitwy II (przeczytane)";	}
	else						{	description = "O wojnie bez bitwy II";					};
	
	TEXT[0]						=	"Notatki stratega Marnolda,";
	TEXT[1]						=	"sporzπdzone na zlecenie rady krÛlewskiej";
	TEXT[2]						=	"po upadku twierdzy Vardem.";
};
func void Use_ItWr_BookXp_113()
{
	Npc_AddDocsCounter(113, 2);
	CreateInvItem(self, ItWr_BookXp_113);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_12_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_12_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "O wojnie bez bitwy");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "DowÛdca twierdzy - rotmistrz Arkan - pisa≥, øe ludnoúÊ cywilna znika nocπ. Nazywano to Ñmigracjπ sezonowπî. Pisa≥ teø o przekupionych straønikach. Odes≥ano go na urlop Ñze wzglÍdu na wyczerpanieî.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W koÒcu przysz≥a wiadomoúÊ: Vardem nie istnieje. Nie zdobyto go. Po prostu... zajÍto. Gdy do miasta dotar≥a ekspedycja zwiadowcza, nie znaleziono úladÛw walki. Bramy by≥y otwarte. Mury nienaruszone. Garnizon zniknπ≥.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "NiektÛrzy mÛwiπ, øe przeszli na stronÍ najemnikÛw. Inni - øe zostali kupieni. Najbardziej pesymistyczni uwaøajπ, øe uciekli, bo nie chcieli umieraÊ za ziemiÍ, ktÛrej nikt od lat nie broni≥ s≥owem, tylko mapπ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Z wojskowego punktu widzenia by≥a to poraøka bez strat. Z politycznego - klÍska pe≥na haÒby. Straciliúmy ziemiÍ nie dlatego, øe wrÛg by≥ silniejszy. Straciliúmy jπ, bo nie potrafiliúmy zdecydowaÊ, czy w ogÛle warto jπ broniÊ. A gdy decyzja nadesz≥a - by≥o juø po wszystkim.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Czasem wojna nie wymaga wrogiej armii. Wystarczy zbyt wiele spotkaÒ, zbyt ma≥o decyzji i kilku ludzi, ktÛrzy wiedzπ, øe nie bÍdπ pociπgniÍci do odpowiedzialnoúci. I wtedy twierdza staje siÍ ruinπ jeszcze przed pierwszym ciosem.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_114 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_114;
	
	if (Bonus_ItWr_BookXp[114])	{	description = "Niezbieralne podatki I (przeczytane)";	}
	else						{	description = "Niezbieralne podatki I";					};
	
	TEXT[0]						=	"Zapiski poborcy krÛlewskiego Yerenwalda,";
	TEXT[1]						=	"oddelegowanego do prowincji Dolna Hartia,";
	TEXT[2]						=	"rok 91 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_114()
{
	Npc_AddDocsCounter(114, 1);
	CreateInvItem(self, ItWr_BookXp_114);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_13_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_13_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Niezbieralne podatki");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zgodnie z dekretami wydanymi przez kancelariÍ krÛlewskπ, kaøda osada zamieszka≥a przez wiÍcej niø dziesiÍÊ rodzin podlega obowiπzkowi rocznego úwiadczenia rzeczowego lub pieniÍønego. W teorii. Bo praktyka zaczyna siÍ tam, gdzie koÒczy siÍ droga brukowana.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gdy po raz pierwszy przyby≥em do Dolnej Hartii, towarzyszy≥ mi konwÛj z≥oøony z dwÛch straønikÛw i jednego pisarza. Zak≥adano, øe to wystarczy. Na miejscu zastaliúmy ludzi, ktÛrzy od trzech lat nie widzieli herbu krÛlewskiego - i nie wyraøali potrzeby, by to siÍ zmieni≥o.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zebrani w karczmie starsi wsi twierdzili, øe Ñpodatki juø zap≥aciliî - wskazujπc na leøπce obok beczki z suszonym miÍsem, koúciami do kleju i czymú, co mia≥o byÊ tkaninπ, ale wyglπda≥o jak wyprana øagielnina. Kiedy zasugerowa≥em monetÍ, spojrzeli na mnie tak, jakbym prosi≥ ich o gwiazdy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nieco dalej, w osadzie gÛrniczej pod Glinowcem, m≥ody mÍøczyzna wrÍczy≥ mi zaúwiadczenie o podatku podpisane przez lokalnego wataøkÍ imieniem ÑHalvenî. PieczÍÊ - odciúniÍta z dna kufla.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Gdy odmÛwi≥em jego przyjÍcia, zagrodzono mi drogÍ powrotu. Nie groøono mi broniπ. Po prostu - nie by≥o juø konia. ÑPewnie wrÛci≥ na pÛ≥nocî, powiedzia≥ jeden z ch≥opÛw, patrzπc mi prosto w oczy.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_115 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_115;
	
	if (Bonus_ItWr_BookXp[115])	{	description = "Niezbieralne podatki II (przeczytane)";	}
	else						{	description = "Niezbieralne podatki II";				};
	
	TEXT[0]						=	"Zapiski poborcy krÛlewskiego Yerenwalda,";
	TEXT[1]						=	"oddelegowanego do prowincji Dolna Hartia,";
	TEXT[2]						=	"rok 91 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_115()
{
	Npc_AddDocsCounter(115, 2);
	CreateInvItem(self, ItWr_BookXp_115);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_13_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_13_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Niezbieralne podatki");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W kolejnych dniach odwiedza≥em osady, ktÛre na mapach figurowa≥y jako Ñprawnie zaleøneî, ale w rzeczywistoúci by≥y samodzielnymi bytami - z w≥asnymi zasadami, wymianπ, sπdami.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "NiektÛre rzπdzone przez milczπcych starszych, inne przez bandytÛw z pretensjami do tytu≥Ûw. W jednej z nich podatek zbierano raz w roku, ale nie dla krÛla - dla úwiÍtego kamienia w lesie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ludzie ci nie byli üli. Nie byli buntownikami. Po prostu nigdy nie zostali w≥πczeni w porzπdek, ktÛry my uznajemy za oczywisty. A gdy pytano ich o koronÍ - mÛwili: ÑA co ona dla nas zrobi≥a?î");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W drodze powrotnej spotka≥em innego poborcÍ. Starszy, doúwiadczony, z g≥osem zmÍczonym i twarzπ pokrytπ py≥em. Zapyta≥em, czy mu siÍ uda≥o. Odpowiedzia≥: ÑUda≥o siÍ zebraÊ tyle, ile mia≥o sens zebraÊ.î");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "NiektÛre podatki sπ realne tylko na papierze. A niektÛre prowincje sπ czÍúciπ krÛlestwa tylko na mapie. I moøe to nie one sπ problemem. Moøe to my zapomnieliúmy, øe zarzπdzaÊ moøna tylko tym, co rzeczywiúcie siÍ zna.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_116 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_116;
	
	if (Bonus_ItWr_BookXp[116])	{	description = "Historia o zielarce I (przeczytane)";	}
	else						{	description = "Historia o zielarce I";					};
	
	TEXT[0]						=	"Zapiski kap≥ana Solimara z Bractwa Ognia,";
	TEXT[1]						=	"klasztor w Geldern,";
	TEXT[2]						=	"rok 94 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_116()
{
	Npc_AddDocsCounter(116, 1);
	CreateInvItem(self, ItWr_BookXp_116);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_14_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_14_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Historia o zielarce");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "WúrÛd wielu zadaÒ s≥ugi Innosa najtrudniejsze nie jest nauczanie, leczenie ani sπdzenie. Najtrudniejsze jest pamiÍtanie - szczegÛlnie o tych sprawach, ktÛre bolπ. A ta boli mnie do dziú.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W Dolinie Riet, przy wschodnim skraju lasu, mieszka≥a zielarka. Nie nosi≥a imienia w ksiÍgach klasztornych, ale ludzie zwali jπ Leana.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "By≥a osobπ cichπ, bez rodziny, bez uczniÛw. Zajmowa≥a siÍ roúlinami. Pomaga≥a przy porodach, gorπczkach, z≥amaniach. Przywozili do niej rannych z trzech okolicznych wiosek. Nie oczekiwa≥a zap≥aty. Bra≥a tylko to, co ofiarowano z wdziÍcznoúciπ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ale by≥a inna. Uøywa≥a ziÛ≥, ktÛrych nazw nie znano. Podgrzewa≥a lekarstwa nie w ogniu, lecz w glinianych kopcach z øarem i parπ. Jej mikstury mia≥y barwy dziwne - b≥Íkitne, szare, niemal czarne. Niekiedy mÛwi≥a do roúlin, zanim je zerwa≥a. I to wystarczy≥o, by zaczÍto szeptaÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Plotki rodzπ siÍ szybko tam, gdzie niewiedza miesza siÍ z lÍkiem. ÑWiedüma.î ÑCzarownica.î ÑOdprawia rytua≥y, gdy ksiÍøyc jest nowy.î");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nikt nie pyta≥, czy to prawda. Wystarczy≥o, øe jedna dziewczyna umar≥a po porodzie, mimo øe jej pomog≥a. Wystarczy≥o, øe dzieci ba≥y siÍ jej twarzy. Wystarczy≥o, øe nie bywa≥a w úwiπtyni.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_117 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_117;
	
	if (Bonus_ItWr_BookXp[117])	{	description = "Historia o zielarce II (przeczytane)";	}
	else						{	description = "Historia o zielarce II";					};
	
	TEXT[0]						=	"Zapiski kap≥ana Solimara z Bractwa Ognia,";
	TEXT[1]						=	"klasztor w Geldern,";
	TEXT[2]						=	"rok 94 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_117()
{
	Npc_AddDocsCounter(117, 2);
	CreateInvItem(self, ItWr_BookXp_117);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_14_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_14_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Historia o zielarce");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Lud zebra≥ siÍ przed klasztorem i wezwa≥ ogieÒ. Dos≥ownie i w przenoúni. Bracia przys≥ali jednego z m≥odszych magÛw - gorliwego, oddanego, z oczyma, ktÛre widzia≥y tylko p≥omieÒ. Uwierzy≥ ludowi. Nie zapyta≥ jej. Nie poprosi≥ o wyjaúnienia. SprawiedliwoúÊ zosta≥a skrÛcona do stosu. A ogieÒ - rzekomo oczyszczajπcy - poch≥onπ≥ coú, czego nawet nie prÛbowa≥ zrozumieÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gdy wieúÊ o tym wydarzeniu dotar≥a do mnie, uda≥em siÍ na miejsce. Nie z polecenia prze≥oøonych. Z obowiπzku sumienia. Zbada≥em jej chatÍ, przeszuka≥em rega≥y, roz≥oøy≥em kaødy napar. Wszystko, co tam by≥o, odpowiada≥o znanym formu≥om leczniczym. Krwawnik, ruta, korzeÒ nocy, suszona jaskÛ≥cza øÛ≥Ê. Ani jednej czaszki. Ani jednej ksiÍgi zakazanej. Ani jednej runy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "WúrÛd notatek znalaz≥em recepturÍ naparu na wrzody skÛrne, ktÛrej sk≥ad by≥ bardziej skuteczny niø cokolwiek, co zna≥em. Straci≥em jπ, bo spali≥a siÍ z jej twÛrczyniπ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie piszÍ tego, by podwaøaÊ decyzje Bractwa. Ale piszÍ to, by przypomnieÊ: nie wszystko, co niezrozumia≥e, jest przeklÍte. Nie kaødy, kto nie modli siÍ naszymi s≥owami, bluüni. I nie kaødy ogieÒ, ktÛry p≥onie w imiÍ Innosa, niesie úwiat≥o.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Sπ tacy, ktÛrzy mÛwiπ, øe prawda zawsze wyp≥ywa. ByÊ moøe. Ale czasem wyp≥ywa tylko popiÛ≥ - a w nim spÛünione pytania, na ktÛre nikt juø nie odpowie.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_118 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_15.3ds";
	on_state[0]					=	Use_ItWr_BookXp_118;
	
	if (Bonus_ItWr_BookXp[118])	{	description = "Z Doliny SzeptÛw I (przeczytane)";	}
	else						{	description = "Z Doliny SzeptÛw I";					};
	
	TEXT[0]						=	"Praca badawcza mistrza Garinosa z Archiwum";
	TEXT[1]						=	"WewnÍtrznego Bractwa Wiedzy w Geldern,";
	TEXT[2]						=	"rok 76 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_118()
{
	Npc_AddDocsCounter(118, 1);
	CreateInvItem(self, ItWr_BookXp_118);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_15_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_15_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Z Doliny SzeptÛw");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sπ w naszym krÛlestwie budowle, ktÛre przetrwa≥y wiÍcej niø jedno pokolenie. Sπ i takie, ktÛre przetrwa≥y wiÍcej niø jedno krÛlestwo. NiektÛre z nich majπ fundamenty tak precyzyjnie dopasowane, øe nawet ostrze noøa nie znajdzie szczeliny. A mimo to nie pochodzπ ani z epoki krÛlewskiej, ani cesarskiej. Ich znaki wskazujπ na DolinÍ SzeptÛw.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To miejsce nie figuruje na wspÛ≥czesnych mapach. Dawniej leøa≥o miÍdzy dawnymi terenami pÛ≥nocnych kopalni a wschodnimi traktami handlowymi. Dziú jest zaros≥e, opuszczone i uwaøane za niebezpieczne. MÛwi siÍ, øe Ñkamienie tam mÛwiπî. Nie w przenoúni - dos≥ownie. PonoÊ kto zanocuje miÍdzy starymi ruinami, us≥yszy szepty spod ziemi. Stπd nazwa.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ale zanim dolina zosta≥a porzucona, by≥a domem dla jednego z najbardziej zagadkowych zawodÛw w historii naszego úwiata: s≥uchaczy kamienia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie byli to zwykli murarze. Nie naleøeli do cechÛw. Nie zapisywali swoich technik.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "MÛwiono, øe potrafili rozpoznaÊ wiek ska≥y po drøeniu palcÛw na jej powierzchni. Øe znali úpiew, ktÛrym moøna by≥o rozdzieliÊ g≥az bez m≥ota. Øe wbudowywali coú wiÍcej niø kamieÒ - rÛwnowagÍ düwiÍku i ciÍøaru. Ich konstrukcje nie potrzebowa≥y zaprawy. Kamienie Ñchcia≥yî do siebie przylegaÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_119 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_15.3ds";
	on_state[0]					=	Use_ItWr_BookXp_119;
	
	if (Bonus_ItWr_BookXp[119])	{	description = "Z Doliny SzeptÛw II (przeczytane)";	}
	else						{	description = "Z Doliny SzeptÛw II";				};
	
	TEXT[0]						=	"Praca badawcza mistrza Garinosa z Archiwum";
	TEXT[1]						=	"WewnÍtrznego Bractwa Wiedzy w Geldern,";
	TEXT[2]						=	"rok 76 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_119()
{
	Npc_AddDocsCounter(119, 2);
	CreateInvItem(self, ItWr_BookXp_119);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_15_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_15_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Z Doliny SzeptÛw");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie zachowa≥ siÍ øaden dziennik ich pracy. Ale ich dzie≥a trwajπ. W ruinach wschodniego obozu widzia≥em úcianÍ z≥oøonπ z 318 blokÛw - kaødy inny, kaødy dopasowany do pozosta≥ych z precyzjπ, ktÛrej nie widujÍ nawet u wspÛ≥czesnych kamieniarzy z Vengardu. Ich ≥uki nie majπ zwornikÛw. Ich schody nie osiadajπ. Ich kamienie nie pÍkajπ na mrozie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dlaczego zniknÍli? Wedle opowieúci, nie zostali wygnani. Odeszli sami. Gdy ostatnia úciana ich úwiπtyni stanÍ≥a, ponoÊ spakowali narzÍdzia - wykonane z kamienia, nie z metalu - i ruszyli dalej. Nie pozostawili uczniÛw. Nie szukali nastÍpcÛw. Jakby uznali, øe ich dzie≥o dobieg≥o koÒca. A moøe - øe úwiat nie jest gotowy na to, co potrafiπ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Byli tacy, ktÛrzy prÛbowali odtworzyÊ ich metody. Sprowadzano zaklinaczy ziemi, alchemikÛw, nawet magÛw krÍgu wody. Nikt nie potrafi≥ zrozumieÊ, jak bez zaprawy powsta≥y mosty, ktÛre stojπ do dziú. Jedna z hipotez mÛwi, øe nie pracowali tylko narzÍdziem - ale teø g≥osem. Øe rozumieli rytm drgaÒ ska≥ lepiej niø my rytm modlitw.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W úwiπtyni w Geldern stoi dziú jeden z ich kamieni - przyniesiony z Doliny, przeniesiony bez ciÍcia. Waøy piÍÊ ton. Ale najdziwniejsze nie jest jego rozmiar. To, øe nigdy nie nagrzewa siÍ w s≥oÒcu. Nawet po po≥udniu moøna po≥oøyÊ na nim d≥oÒ - i bÍdzie ch≥odny. Jakby coú w nim czeka≥o.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kamienie tych ludzi sπ jak ich historia - ciÍøkie, niewzruszone, milczπce. Ale czasem mam wraøenie, øe milczπ nie dlatego, øe nie chcπ mÛwiÊ - tylko dlatego, øe juø wszystko powiedzia≥y.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_120 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_120;
	
	if (Bonus_ItWr_BookXp[120])	{	description = "Zapomniany krÛl I (przeczytane)";	}
	else						{	description = "Zapomniany krÛl I";					};
	
	TEXT[0]						=	"Notatki badawcze Elratha";
	TEXT[1]						=	"z Izby PamiÍci w Setarrif.";
	TEXT[2]						=	"Rok 118 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_120()
{
	Npc_AddDocsCounter(120, 1);
	CreateInvItem(self, ItWr_BookXp_120);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_01_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_01_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Zapomniany krÛl");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W kronikach krÛlewskich, gdzie kaødy rozdzia≥ naznaczony jest zarÛwno krwiπ, jak i pieczÍciπ, znajduje siÍ luka. Nie milczenie - luka. PomiÍdzy panowaniem krÛla Theodrika III a jego synem Leontianem I znajdujπ siÍ trzy lata... ktÛre nie istniejπ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie chodzi o to, øe o nich nie pisano. Chodzi o to, øe pisano za duøo, nie mÛwiπc nic. KsiÍgi urywajπ siÍ, a potem wracajπ z nowym rokiem panowania - z innym pieczÍtnikiem, innπ walutπ, innym stylem dekretÛw.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale nie pada ani jedno imiÍ. Øadnej bitwy. Øadnej klÍski. Ani nawet úladu pogrzebu.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "WúrÛd lokalnych zapiskÛw z tamtych lat - z archiwum cechÛw, ze starych regestÛw celnych, z prywatnych modlitewnikÛw - znalaz≥em fragmenty listÛw podpisanych tytu≥em, ale nigdy imieniem: ÑZ woli tronu, dla dobra wszystkich, KrÛlî.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Brakuje podpisÛw. Brakuje wizerunkÛw. PieczÍcie sπ zdarte, wypalone lub pokryte woskiem tak grubym, øe nie sposÛb odczytaÊ symbolu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Czego siÍ bali?");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_121 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_121;
	
	if (Bonus_ItWr_BookXp[121])	{	description = "Zapomniany krÛl II (przeczytane)";	}
	else						{	description = "Zapomniany krÛl II";					};
	
	TEXT[0]						=	"Notatki badawcze Elratha";
	TEXT[1]						=	"z Izby PamiÍci w Setarrif.";
	TEXT[2]						=	"Rok 118 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_121()
{
	Npc_AddDocsCounter(121, 2);
	CreateInvItem(self, ItWr_BookXp_121);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_01_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_01_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Zapomniany krÛl");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W niektÛrych klasztorach, g≥Íboko w piwnicach, zachowa≥y siÍ wzmianki o cz≥owieku, ktÛry objπ≥ koronÍ bez krwi i jπ odda≥ bez wojny.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O jego dekretach, ktÛre mia≥y zakoÒczyÊ system dziedziczenia. O tym, øe zakaza≥ uøywania herbowych tytu≥Ûw w dokumentach urzÍdowych. O tym, øe prÛbowa≥ powierzyÊ ziemiÍ nie szlachcie, lecz miastom. Rewizjonista. Reformator. WrÛg porzπdku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie zosta≥ pokonany - zosta≥ uniewaøniony. Wymazany z historii nie przez klÍskÍ, lecz przez porozumienie. CiszÍ wiÍkszπ niø wyrok.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W jednym z dokumentÛw - list prywatny do opata w Silden - znalaz≥em fragment: ÑNiechaj pamiÍÊ o nim nie zginie tylko wúrÛd kamienia, ale niech nie powrÛci s≥owem. Bo jego rzπdy by≥y snem, ktÛry nie wolno úniÊ.î");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy by≥ tyranem. Moøe by≥. Moøe jego rzπdy przynios≥y chaos. Ale wiem, øe ktoú postanowi≥, øe lepiej, byúmy nigdy tego nie ocenili. Øe lepiej, by nie zosta≥ zapamiÍtany wcale, niø zapamiÍtany niew≥aúciwie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "A jeúli historia potrafi wymazaÊ krÛla - jakøe ≥atwo moøe wymazaÊ prawdÍ o kaødym z nas.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_122 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_122;
	
	if (Bonus_ItWr_BookXp[122])	{	description = "Niebezpieczna wiedza I (przeczytane)";	}
	else						{	description = "Niebezpieczna wiedza I";					};
	
	TEXT[0]						=	"Rozwaøania starego uczonego";
	TEXT[1]						=	"spisane w opactwie Uthar,";
	TEXT[2]						=	"na rok przed jego úmierciπ.";
};
func void Use_ItWr_BookXp_122()
{
	Npc_AddDocsCounter(122, 1);
	CreateInvItem(self, ItWr_BookXp_122);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_02_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_02_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Niebezpieczna wiedza");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez wiÍkszoúÊ øycia wierzy≥em, øe najwiÍkszym grzechem cz≥owieka wiedzy jest milczenie. Øe kto posiada mπdroúÊ, ten winien jπ szerzyÊ, jak pochodniÍ w mroku. Dziú nie jestem juø tego tak pewien.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "NiektÛrzy z najwiÍkszych mistrzÛw, jakich zna≥em - ludzie, ktÛrzy rozumieli ruchy gwiazd, strukturÍ czasu, wewnÍtrzny puls ziemi - nigdy nie zostawili po sobie uczniÛw.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Mieli pisma. Mieli ksiÍgi. Ale nie przekazali swojej wiedzy nikomu osobiúcie. I to nie dlatego, øe zabrak≥o im czasu. Zabrak≥o im... odwagi? Wiary? A moøe mieli racjÍ?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Znam przypadek maga, ktÛry potrafi≥ odczytywaÊ myúli z krwi. Pisa≥, øe Ñkaøda kropla to list, wystarczy znaÊ alfabetî. Nigdy nikogo tego nie nauczy≥. Zmar≥ samotnie, a jego dziennik sp≥onπ≥ razem z wieøπ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Znam teø runomistrza z gÛrnego klasztoru, ktÛry twierdzi≥, øe potrafi odrÛøniÊ k≥amstwo od prawdy nie s≥yszπc s≥Ûw - a patrzπc na cieÒ cz≥owieka. Gdy zapytano go, czemu nie dzieli siÍ tπ umiejÍtnoúciπ, odpowiedzia≥: ÑNie kaøda prawda powinna byÊ uøywana na zawo≥anie.î");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_123 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_123;
	
	if (Bonus_ItWr_BookXp[123])	{	description = "Niebezpieczna wiedza II (przeczytane)";	}
	else						{	description = "Niebezpieczna wiedza II";				};
	
	TEXT[0]						=	"Rozwaøania starego uczonego";
	TEXT[1]						=	"spisane w opactwie Uthar,";
	TEXT[2]						=	"na rok przed jego úmierciπ.";
};
func void Use_ItWr_BookXp_123()
{
	Npc_AddDocsCounter(123, 2);
	CreateInvItem(self, ItWr_BookXp_123);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_02_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_02_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Niebezpieczna wiedza");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez lata uwaøa≥em ich za tchÛrzy. Za egoistÛw. Za ludzi, ktÛrzy pozwolili umrzeÊ sztuce, ktÛrπ mogli ocaliÊ. Ale teraz... zaczynam rozumieÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Bo widzia≥em uczniÛw, ktÛrzy poznali tylko po≥owÍ nauki i uznali siÍ za mistrzÛw. Widzia≥em czarodziei, ktÛrzy znali zaklÍcie, lecz nie jego cenÍ. Widzia≥em wiedzÍ, ktÛra zosta≥a przekazana nie tym, ktÛrzy chcieli zrozumieÊ - lecz tym, ktÛrzy chcieli mieÊ przewagÍ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Moøe ci mistrzowie nie milczeli z pychy. Moøe milczeli z mi≥oúci. Moøe wiedzieli, øe nie wszystko moøna przekazaÊ s≥owem. Øe niektÛre prawdy dojrzewajπ tylko w ciszy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "A moøe... moøe bali siÍ tego, co stanie siÍ z uczniem, ktÛry nauczy siÍ za duøo - za szybko - za ≥atwo.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy mieli racjÍ. Ale dziú, kiedy ktoú prosi mnie: ÑNaucz mnie tego, co wieszî, czasem odpowiadam: ÑNie potrafiÍî - choÊ wiem, øe potrafiÍ doskonale. Bo moøe najwiÍksza odpowiedzialnoúÊ mistrza to nie nauczyÊ, ale zdecydowaÊ, czego nie uczyÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_124 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_124;
	
	if (Bonus_ItWr_BookXp[124])	{	description = "Mowa bez s≥Ûw I (przeczytane)";	}
	else						{	description = "Mowa bez s≥Ûw I";				};
	
	TEXT[0]						=	"Spisane przez starego oberøystÍ";
	TEXT[1]						=	"z po≥udniowej marchii, na marginesie";
	TEXT[2]						=	"rachmistrzowego pergaminu. Rok nieznany.";
};
func void Use_ItWr_BookXp_124()
{
	Npc_AddDocsCounter(124, 1);
	CreateInvItem(self, ItWr_BookXp_124);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_03_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_03_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Mowa bez s≥Ûw");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie jestem uczonym. Nie umiem pisaÊ ozdobnie, a wielu s≥Ûw, ktÛrych uøywajπ kap≥ani i magowie, nawet nie rozumiem. Ale jedno wiem na pewno: cz≥owieka poznaje siÍ nie po tym, co mÛwi - ale po tym, jak siada.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W karczmie, kiedy ktoú wchodzi, juø po samym spojrzeniu wiem, czy szuka piwa, spokoju, awantury, czy tylko alibi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ci, co rozglπdajπ siÍ za szybko - majπ coú do ukrycia. Ci, co nie patrzπ nikomu w oczy - sπ po stracie albo z czymú, czego siÍ wstydzπ. A ci, co siadajπ plecami do drzwi? Albo sπ g≥upcami, albo majπ za sobπ wiÍcej trupÛw niø lat.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Karczmarz nie ma prawa pytaÊ. Ale ma obowiπzek wiedzieÊ. Kto siedzi z kim. Kto z kim nie siada. Kto zmienia miejsce, gdy przychodzi straønik. Kto k≥adzie sakiewkÍ na stole jak øeton, a kto trzyma jπ pod nogπ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To jÍzyk, ktÛrego uczysz siÍ przez lata - bez nauczyciela, bez podrÍcznika. Ale gdy raz go poznasz, s≥yszysz go wszÍdzie.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_125 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_125;
	
	if (Bonus_ItWr_BookXp[125])	{	description = "Mowa bez s≥Ûw II (przeczytane)";	}
	else						{	description = "Mowa bez s≥Ûw II";				};
	
	TEXT[0]						=	"Spisane przez starego oberøystÍ";
	TEXT[1]						=	"z po≥udniowej marchii, na marginesie";
	TEXT[2]						=	"rachmistrzowego pergaminu. Rok nieznany.";
};
func void Use_ItWr_BookXp_125()
{
	Npc_AddDocsCounter(125, 2);
	CreateInvItem(self, ItWr_BookXp_095);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_03_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_03_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Mowa bez s≥Ûw");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Znam ludzi, ktÛrzy nigdy nie widzieli zamku, nie rozmawiali z krÛlem ani nie czytali edyktÛw. Ale znajπ szepty, spojrzenia i niepokÛj - bo sπ sta≥ymi bywalcami.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To w karczmie najpierw mÛwi siÍ o wojnie, zanim spadnie pierwszy rozkaz. To w karczmie pojawia siÍ wieúÊ o zarazie, zanim kap≥ani przyniosπ kadzid≥a. To w karczmie dochodzi do pojednaÒ, zdrad i znikniÍÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie powiem, øe wszystko wiem. Ale powiem, øe wszystko widaÊ - jeúli siÍ wie, na co patrzeÊ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "S≥ysza≥em kiedyú od jednego ze straønikÛw, øe Ñkarczmarz to tylko pacho≥ek z chochlπî. Moøe i tak. Ale to chochla, ktÛra miesza nie tylko zupÍ, ale i ludzkie dusze. I jeúli ktoú naprawdÍ chce wiedzieÊ, czym øyje miasto - niech zapyta nie arcykap≥ana, nie radcÍ, nie pos≥a - tylko tego, ktÛry nalewa i s≥ucha.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bo mowa w karczmie to nie jÍzyk ust. To jÍzyk oczu, d≥oni, i tych chwil ciszy, kiedy ktoú zamawia jeszcze jedno, choÊ mia≥ juø wyjúÊ. Karczma to nie úwiπtynia. Ale bywa, øe modlitwy sk≥adane przy kuflu sπ prawdziwsze niø te przy o≥tarzu.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_126 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_04.3ds";
	on_state[0]					=	Use_ItWr_BookXp_126;
	
	if (Bonus_ItWr_BookXp[126])	{	description = "Targi przed úwitem I (przeczytane)";	}
	else						{	description = "Targi przed úwitem I";				};
	
	TEXT[0]						=	"Spisane przez obserwatora miejskiego";
	TEXT[1]						=	"handlu w Setarrif, nieoficjalnie,";
	TEXT[2]						=	"na pergaminach ksiπg podatkowych.";
};
func void Use_ItWr_BookXp_126()
{
	Npc_AddDocsCounter(126, 1);
	CreateInvItem(self, ItWr_BookXp_126);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_04_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_04_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Targi przed úwitem");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kto zna wagÍ chleba przed úwitem, zna wagÍ úwiata.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gdy dzwony w úwiπtyni zaczynajπ biÊ na jutrzniÍ, wiÍkszoúÊ mieszkaÒcÛw dopiero siÍ budzi. Ale targ juø øyje. A w≥aúciwie - øy≥ jeszcze zanim siÍ zbudziliúcie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie mÛwiÍ tu o otwarciu straganÛw, o nawo≥ywaniach przekupek, o krzykach Ñúwieøy karp, øywy karp!î i o zapachu gorπcych pasztecikÛw z budki przy murze.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To juø teatr - pokaz dla mieszczan, dla klientÛw, dla przechodniÛw. Prawdziwy targ dzieje siÍ wczeúniej. W mroku. W ciszy. Czasem w b≥ocie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeszcze przed úwitem przychodzπ ci, ktÛrzy wiedzπ, co ma wartoúÊ. Mistrz piekarski odbiera mπkÍ od m≥ynarza, ktÛry nie zostawi≥ jej w oficjalnym magazynie, bo tam trzeba by by≥o p≥aciÊ myto.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Rzeünik bierze tusze prosto z wozu, jeszcze ciep≥e, nim kap≥an ognia zdπøy sprawdziÊ pieczÍcie czystoúci. A handlarz winem kupuje trzy beczki starego cuvÈe, zanim straø miejska przypomni sobie, øe wino z po≥udnia powinno byÊ ob≥oøone c≥em.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_127 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_04.3ds";
	on_state[0]					=	Use_ItWr_BookXp_127;
	
	if (Bonus_ItWr_BookXp[127])	{	description = "Targi przed úwitem II (przeczytane)";	}
	else						{	description = "Targi przed úwitem II";					};
	
	TEXT[0]						=	"Spisane przez obserwatora miejskiego";
	TEXT[1]						=	"handlu w Setarrif, nieoficjalnie,";
	TEXT[2]						=	"na pergaminach ksiπg podatkowych.";
};
func void Use_ItWr_BookXp_127()
{
	Npc_AddDocsCounter(127, 2);
	CreateInvItem(self, ItWr_BookXp_127);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_04_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_04_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Targi przed úwitem");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To wtedy zapadajπ decyzje. Co dziú bÍdzie dostÍpne, co Ñnagle siÍ skoÒczy≥oî, co Ñprzyjecha≥o z dalekaî i dlatego kosztuje trzy razy wiÍcej. To nie magia. To logistyka. To jÍzyk spojrzeÒ i milczπcych porozumieÒ. Uúcisk d≥oni. Skrzynia pod p≥achtπ. DwÛm siÍ powie Ñnie maî, a trzeciemu - Ñdla ciebie siÍ znalaz≥oî.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale sπ teø tacy, ktÛrzy øyjπ obok targu. CieÒ targu ma swoich mieszkaÒcÛw: ch≥opcy, co roznoszπ plotki szybciej niø listy. Stara Lira, co Ñpoøyczaî kobierce i sprzedaje je dwa dni pÛüniej jako Ñnowe z Gothyî. I Marnek, ktÛry nigdy niczego nie sprzedaje, ale zawsze wie, kto ile wziπ≥ i za ile. Nie wiadomo, czy pracuje dla cechu, straøy, czy samego siebie. Ale wiedza teø jest towarem. Czasem najcenniejszym.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "A gdy pierwsze úwiat≥o dotyka kamieni placu, ci, ktÛrzy juø wszystko ustalili, znikajπ. Ich miejsce zajmujπ handlarze z g≥oúnym g≥osem i gotowym uúmiechem. Rozstawiajπ stragany, odliczajπ drobne, modlπ siÍ cicho o pogodÍ. Dla t≥umu to poczπtek. Ale dla targu to juø epilog.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bo prawdziwy rynek koÒczy siÍ wtedy, gdy miasto siÍ budzi.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_128 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_128;
	
	if (Bonus_ItWr_BookXp[128])	{	description = "Niedüwiedü z prze≥Íczy I (przeczytane)";	}
	else						{	description = "Niedüwiedü z prze≥Íczy I";				};
	
	TEXT[0]						=	"Spisana przez skalnego skrybÍ Yorrika";
	TEXT[1]						=	"z klanu M≥ota, w szeúÊdziesiπtπ zimÍ";
	TEXT[2]						=	"po bitwie o PrÛg Krwi.";
};
func void Use_ItWr_BookXp_128()
{
	Npc_AddDocsCounter(128, 1);
	CreateInvItem(self, ItWr_BookXp_128);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_05_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_05_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Niedüwiedü z prze≥Íczy");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W nordmarskiej tradycji pamiÍtamy imiona wojownikÛw, ktÛrzy padli z toporem w rÍku. Ale sπ czyny, ktÛre nie potrzebujπ imienia - bo wyry≥y siÍ w skale i úniegu. Tak jest z nim.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie mia≥ imienia ludzkiego, bo nie by≥ cz≥owiekiem. By≥ niedüwiedziem - sierúÊ jak popiÛ≥ po kowalskim palenisku, ≥apy szerokie jak tarcze klanowe. Znaleüliúmy go jako m≥ode, wyg≥odnia≥e i porzucone, w jednym z lodowych jarÛw nad Jeziorem Cierni. Sierota, jak wielu z nas. A moøe dar, jak rzadko ktÛry.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Najpierw karmiliúmy go mlekiem i suszonym miÍsem, potem sam zaczπ≥ przynosiÊ upolowane zajπce. By≥ silny - nie tylko cia≥em, ale sercem. Nie oswojony jak pies, nie ujarzmiony jak koÒ - rÛwny. Sam wybiera≥, gdzie spaÊ, z kim siedzieÊ przy ogniu, kogo s≥uchaÊ. A jednak, gdy rÛg bojowy rozbrzmiewa≥ w wπwozie, stawa≥ przy nas. Bez pancerza, bez rozkazu. Walczy≥.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kiedy orkowie zeszli z pÛ≥nocnych grani i uderzyli na prze≥Ícz miÍdzy klanem M≥ota a fortecπ Faring, wielu z nas nie wrÛci≥o. LÛd nasiπk≥ krwiπ, a niebo by≥o ciÍøsze niø stal. Ale on - on - zatrzyma≥ ich marsz.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_129 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_129;
	
	if (Bonus_ItWr_BookXp[129])	{	description = "Niedüwiedü z prze≥Íczy II (przeczytane)";	}
	else						{	description = "Niedüwiedü z prze≥Íczy II";					};
	
	TEXT[0]						=	"Spisana przez skalnego skrybÍ Yorrika";
	TEXT[1]						=	"z klanu M≥ota, w szeúÊdziesiπtπ zimÍ";
	TEXT[2]						=	"po bitwie o PrÛg Krwi.";
};
func void Use_ItWr_BookXp_129()
{
	Npc_AddDocsCounter(129, 2);
	CreateInvItem(self, ItWr_BookXp_129);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_05_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_05_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Niedüwiedü z prze≥Íczy");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "NiektÛrzy mÛwiπ, øe widzieli, jak powala≥ jednego orka za drugim, ≥amiπc im broÒ i szczÍki. Inni twierdzπ, øe stanπ≥ w miejscu, gdzie linia siÍ za≥ama≥a, i nie cofnπ≥ siÍ ani o krok, mimo øe dzidy przeszy≥y mu bok. A ja... ja pamiÍtam tylko jedno: øe gdy pad≥ - pad≥ na orka, nie pozwalajπc mu ruszyÊ dalej.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po bitwie pochowaliúmy wojownikÛw z klanu - jak naleøy. Jego teø. Nie pod kamieniem, ale w samym úrodku Prze≥Íczy, tam gdzie ziemia nosi≥a jego úlady. Tam, gdzie jego ≥apy zrobi≥y rÛw g≥Íbszy niø buty wojownikÛw.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie mia≥ imienia? Moøe. Ale kaødy, kto przejdzie tamtÍdy, wie, øe to jego ziemia. Niech runy nie zapomnπ. Niech kaøda opowieúÊ w d≥ugπ noc zaczyna siÍ od niego. Bo choÊ nie mÛwi≥ jÍzykiem ludzi, jego czyn przemÛwi≥ za tysiπc krzykÛw.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "By≥ jednym z nas. I by≥ lepszy niø wielu z nas.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_130 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_130;
	
	if (Bonus_ItWr_BookXp[130])	{	description = "Smoki podziemne I (przeczytane)";	}
	else						{	description = "Smoki podziemne I";					};
	
	TEXT[0]						=	"Urywki z prywatnego dziennika Erasila";
	TEXT[1]						=	"z Gildii Uczonych Myrtany, odnalezione";
	TEXT[2]						=	"po jego zaginiÍciu w okolicach GÛr Cieni.";
};
func void Use_ItWr_BookXp_130()
{
	Npc_AddDocsCounter(130, 1);
	CreateInvItem(self, ItWr_BookXp_130);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_06_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_06_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Smoki podziemne");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Znamy smoki. A przynajmniej sπdzimy, øe je znamy. MÛwiπ o nich pieúni, opowiadajπ o nich starcy, zapisujπ je w kronikach ci, ktÛrzy nigdy ich nie widzieli. Skrzyd≥a jak øagle, oddech jak piek≥o, zbroja ze z≥ota i krwi. Ale w jednym wszyscy siÍ zgadzajπ: smok jest w≥adcπ przestworzy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "A jeúli to nieprawda?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W jednej z najstarszych map GÛr Cieni, tej, ktÛrπ sporzπdzili wiÍüniowie gÛrniczego kolosa jeszcze przed powstaniem barier, znajduje siÍ notatka przy jednym z podziemnych tuneli.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Napisano tam: ÑZiemia dudni. Coú duøego. Nigdy nie przysz≥o z gÛry.î Inna wzmianka - w dzienniku kopacza z Argaan - mÛwi o Ñøarze w kamieniuî i Ñoczach, ktÛre nie zna≥y s≥oÒcaî. W obu przypadkach - zero úladÛw skrzyde≥. Zero úladÛw wyjúcia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Czy moøliwe jest, øe niektÛre smoki - rodzπ siÍ i umierajπ pod ziemiπ? Øe ich øycie nie ma nic wspÛlnego z powietrzem i przestrzeniπ, a wszystko z ciemnoúciπ i ciszπ?");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_131 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_131;
	
	if (Bonus_ItWr_BookXp[131])	{	description = "Smoki podziemne II (przeczytane)";	}
	else						{	description = "Smoki podziemne II";					};
	
	TEXT[0]						=	"Urywki z prywatnego dziennika Erasila";
	TEXT[1]						=	"z Gildii Uczonych Myrtany, odnalezione";
	TEXT[2]						=	"po jego zaginiÍciu w okolicach GÛr Cieni.";
};
func void Use_ItWr_BookXp_131()
{
	Npc_AddDocsCounter(131, 2);
	CreateInvItem(self, ItWr_BookXp_131);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_06_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_06_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Smoki podziemne");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wyobraümy sobie istotÍ wielkoúci domu, wijπcπ siÍ miÍdzy p≥ytami ska≥y, oddychajπcπ przez wπskie gard≥a lawowe, øywiπcπ siÍ minera≥ami i gorπcem. Nie potrzebuje skrzyde≥. Nie chce wzbiÊ siÍ w powietrze. Dla niej niebo to mit. A my - jedynie echo nad jej g≥owπ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jedna z moich hipotez zak≥ada, øe to w≥aúnie takie smoki - nielotne, úlepe, g≥uche na úwiat ludzi - sπ najstarsze. Ich istnienie poprzedza jÍzyk, religiÍ, nawet pojÍcie wojny. Sπ czÍúciπ ska≥y, nie opowieúci.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "I jeszcze coú. W ruinach úwiπtyni Adanosa w pobliøu Mora Sul, na jednej z kolumn odkry≥em ryt mikroskopijnego przedstawienia istoty o d≥ugim, wÍøowym ciele, bez oczu, z szeregiem drobnych kolcÛw na grzbiecie. U jej stÛp leøy symbol bogÛw - roz≥upany.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, co to znaczy. Ale bojÍ siÍ, øe jeúli te smoki istniejπ - nie polujπ. Nie lecπ. One czekajπ. A kiedy ziemia zadrøy... niebo moøe pozostaÊ spokojne. Bo zagroøenie nie spadnie z gÛry. Ono wyjdzie z do≥u.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeúli znajdπ moje cia≥o, niech zostanie spalone. Jeúli nie znajdπ - znaczy, øe znalaz≥o mnie ono.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_132 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_132;
	
	if (Bonus_ItWr_BookXp[132])	{	description = "Sztuka trumien I (przeczytane)";	}
	else						{	description = "Sztuka trumien I";				};
	
	TEXT[0]						=	"Spisane przez miejskiego rejestratora";
	TEXT[1]						=	"z Dol Arelin. Rok nieoznaczony,";
	TEXT[2]						=	"przypuszczalnie za rzπdÛw arcyregenta Velrasa.";
};
func void Use_ItWr_BookXp_132()
{
	Npc_AddDocsCounter(132, 1);
	CreateInvItem(self, ItWr_BookXp_132);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_07_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_07_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Sztuka trumien");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nazywa≥ siÍ Elgor, choÊ ma≥o kto zna≥ jego imiÍ. W Dol Arelin mÛwiono po prostu Ñten od trumienî.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Mieszka≥ na skraju dzielnicy pÛ≥nocnej, przy opuszczonym m≥ynie, gdzie nawet szczury chodzi≥y ostroøniej. Jego warsztat nie mia≥ szyldu, a drzwi zawsze skrzypia≥y, jakby juø zapowiada≥y øa≥obÍ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie robi≥ ≥awek, nie ≥ata≥ dachÛw, nie struga≥ ≥yøek. Tylko trumny. I to wy≥πcznie na zamÛwienie. Nigdy wiÍcej niø jednπ naraz.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Jedni go wyúmiewali, drudzy unikali. Plotkowano, øe przed kaødym ciÍciem drewna przyk≥ada≥ do niego ucho, jakby s≥ucha≥, co ma do powiedzenia. Øe nie mierzy≥, nie szkicowa≥, a mimo to trumna zawsze pasowa≥a - nawet do zmar≥ych, ktÛrych nikt siÍ nie spodziewa≥.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Raz podobno odmÛwi≥ zamÛwienia - a cz≥owiek, ktÛry jπ z≥oøy≥, zginπ≥ tej samej nocy. Przypadek? Moøe.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Cech cieúli prÛbowa≥ go zmusiÊ do podporzπdkowania siÍ pieczÍciom rzemieúlniczym. OdmÛwi≥. Powo≥a≥ siÍ na starπ klauzulÍ z czasÛw regenta Velrasa, ktÛra stanowi≥a, øe ÑtwÛrca rzeczy ostatecznychî nie podlega cechom. I rzeczywiúcie - znaleziono taki dokument w archiwach.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_133 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_133;
	
	if (Bonus_ItWr_BookXp[133])	{	description = "Sztuka trumien II (przeczytane)";	}
	else						{	description = "Sztuka trumien II";					};
	
	TEXT[0]						=	"Spisane przez miejskiego rejestratora";
	TEXT[1]						=	"z Dol Arelin. Rok nieoznaczony,";
	TEXT[2]						=	"przypuszczalnie za rzπdÛw arcyregenta Velrasa.";
};
func void Use_ItWr_BookXp_133()
{
	Npc_AddDocsCounter(133, 2);
	CreateInvItem(self, ItWr_BookXp_133);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_07_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_07_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Sztuka trumien");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale najdziwniejsze wysz≥o na jaw dopiero po jego úmierci. Zmar≥ samotnie. Nikt nie zna≥ dnia ani przyczyny. Straø miejska wesz≥a do jego warsztatu dopiero po miesiπcu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Znaleziono tam dziesiπtki wyrytych szkieletÛw modeli - kaøda zrobiona pod kogoú, kto juø od dawna leøa≥ pod ziemiπ. I kaøda z trumien mia≥a na spodzie wyryty znak. Nie runÍ. Nie litery. Raczej coú... osobistego.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dla straønika - maleÒka tarcza. Dla starej zielarki - liúÊ miÍty. Dla úpiewaka - nuty, roz≥oøone jakby by≥y úpiewane przez drewno. Kaødy symbol by≥ inny. Kaødy - jakby zna≥ zmar≥ego lepiej, niø zna≥a go jego w≥asna rodzina.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie wiemy, skπd wiedzia≥. Moøe widzia≥ rzeczy, ktÛrych inni nie widzπ. Moøe tylko rozumia≥, øe úmierÊ ma swÛj jÍzyk - i prÛbowa≥ go przet≥umaczyÊ na drewno.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Na jego grobie nie ma nagrobka. Tylko stare deski, ktÛre sam tam po≥oøy≥ - na d≥ugo przed swojπ úmierciπ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "A jednak, gdy ktoú umiera dziú w Dol Arelin i rodzina nie wie, gdzie zamÛwiÊ trumnÍ, czasem mÛwi: ÑSzkoda, øe nie ma juø Elgora. On wiedzia≥, jak to zrobiÊ... w≥aúciwie.î");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_134 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_134;
	
	if (Bonus_ItWr_BookXp[134])	{	description = "åwiÍta bez czci I (przeczytane)";	}
	else						{	description = "åwiÍta bez czci I";					};
	
	TEXT[0]						=	"Notatki kap≥ana Emdora z klasztoru Dagnor,";
	TEXT[1]						=	"nieprzeznaczone do publikacji.";
	TEXT[2]						=	"Odnalezione po jego znikniÍciu.";
};
func void Use_ItWr_BookXp_134()
{
	Npc_AddDocsCounter(134, 1);
	CreateInvItem(self, ItWr_BookXp_134);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_08_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_08_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "åwiÍta bez czci");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W archiwach pod klasztorem w Dagnor znajduje siÍ skrzynia, ktÛrej nie wolno otwieraÊ bez zgody Rady Starszych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Widzia≥em jπ tylko raz, w obecnoúci mistrza Ellariona. Zardzewia≥e zawiasy, popÍkany wosk na pieczÍciach, a w úrodku - zbiory zakazanych kultÛw, odpisy starych herezji, rzeczy, ktÛrych nie wolno cytowaÊ. I wúrÛd nich... by≥o imiÍ: Virella.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie wspomina jej øaden wspÛ≥czesny modlitewnik. Øaden úpiew, øadne naboøeÒstwo. A jednak úlady jej obecnoúci sπ wszÍdzie, jeúli wie siÍ, gdzie patrzeÊ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W ruinach starego sanktuarium w gÛrach Larthas znalaz≥em p≥askorzeübÍ - postaÊ kobieca, d≥onie uniesione, a u stÛp woda, nie ogieÒ. Podpisano jπ: ÑTa, ktÛra budzi≥a modlitwÍ, gdy bogowie jeszcze milczeli.î");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W starych kalendarzach z czasÛw panowania Velrasa, dzieÒ 7 KoÒca Lata by≥ oznaczony znakiem spirali i s≥owami: ÑWielka cisza Virelliî. Dziú - to dzieÒ pusty. Wymazany.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_135 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_135;
	
	if (Bonus_ItWr_BookXp[135])	{	description = "åwiÍta bez czci II (przeczytane)";	}
	else						{	description = "åwiÍta bez czci II";					};
	
	TEXT[0]						=	"Notatki kap≥ana Emdora z klasztoru Dagnor,";
	TEXT[1]						=	"nieprzeznaczone do publikacji.";
	TEXT[2]						=	"Odnalezione po jego znikniÍciu.";
};
func void Use_ItWr_BookXp_135()
{
	Npc_AddDocsCounter(135, 2);
	CreateInvItem(self, ItWr_BookXp_135);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_08_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_08_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "åwiÍta bez czci");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Znalezione przeze mnie odpisy wskazujπ, øe Virella by≥a jednπ z pierwszych kap≥anek, byÊ moøe jeszcze z czasÛw przed Drugim Z≥πczeniem. Nie g≥osi≥a ognia ani lodu, nie wzywa≥a imion bÛstw w obecnej formie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zamiast tego uczy≥a, øe bogowie odeszli - øe nas zostawili, a ich echo pozosta≥o tylko w rytua≥ach. Twierdzi≥a, øe prawdziwa úwiÍtoúÊ nie leøy w czci, ale w odwadze mÛwienia prawdy do milczπcego nieba.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To, co kiedyú by≥o naukπ, uznano za bluünierstwo. Nie wiemy, jak zginÍ≥a. Ale nie sp≥onÍ≥a. Nie zosta≥a stracona. Po prostu - zniknÍ≥a z pamiÍci. Jej imiÍ wymazano z ksiπg, jej symbole zeszlifowano z o≥tarzy. A moøe - to nie my jπ zapomnieliúmy. Moøe ona nas opuúci≥a.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ale raz, tylko raz, podczas modlitwy w Dolinie Mg≥y, gdy zapad≥a cisza tak g≥Íboka, øe s≥ysza≥em bicie w≥asnej krwi, us≥ysza≥em coú jeszcze. Nie s≥owa. Coú miÍdzy oddechem a szumem. Coú, co brzmia≥o jak... ÑJeszcze mnie pamiÍtasz.î");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie mam dowodÛw. Tylko wπtpliwoúci. I tylko te wπtpliwoúci prowadzπ mnie dalej.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_136 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_136;
	
	if (Bonus_ItWr_BookXp[136])	{	description = "Czym jest mur I (przeczytane)";	}
	else						{	description = "Czym jest mur I";				};
	
	TEXT[0]						=	"Spisane przez emerytowanego oficera";
	TEXT[1]						=	"Milicji KrÛlewskiej, nieznane nazwisko.";
	TEXT[2]						=	"Odkryte w starych rejestrach w Forn Halem.";
};
func void Use_ItWr_BookXp_136()
{
	Npc_AddDocsCounter(136, 1);
	CreateInvItem(self, ItWr_BookXp_136);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_09_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_09_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Czym jest mur");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kiedy wstÍpowa≥em do milicji, mury miasta mia≥y znaczenie. Ich wysokoúÊ, ich stan, ich symbolika - by≥y wszystkim. Dla obywatela - bezpiecznπ granicπ. Dla wroga - ostrzeøeniem. Dla nas - obowiπzkiem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dziú mijam je codziennie, idπc po wodÍ. Nie strzegπ juø niczego, prÛcz go≥Íbi.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie chodzi tylko o kamieÒ, ktÛry kruszeje, i o wieøe, ktÛre dawno przesta≥y byÊ obsadzane. Chodzi o to, øe ludzie przestali patrzeÊ w gÛrÍ. Kiedyú, gdy wieøa wschodnia zap≥onÍ≥a ogniem ostrzegawczym, ca≥e miasto zamar≥o. Teraz dzieci bawiπ siÍ pod jej cieniem, rzucajπc w niπ pestkami.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ostatni raz us≥ysza≥em rozkaz ÑZamknπÊ bramÍ!î siedemnaúcie lat temu. Zabrzmia≥ wtedy jak wyrok - nie dla wroga, lecz dla nas. Zostaliúmy wewnπtrz, bez rozkazÛw, bez kontaktu, z broniπ, ktÛra rdzewia≥a szybciej niø nasze sumienie. S≥yszeliúmy krzyki poza murami, ale nikt nie otworzy≥. W koÒcu i one ucich≥y.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_137 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_137;
	
	if (Bonus_ItWr_BookXp[137])	{	description = "Czym jest mur II (przeczytane)";	}
	else						{	description = "Czym jest mur II";				};
	
	TEXT[0]						=	"Spisane przez emerytowanego oficera";
	TEXT[1]						=	"Milicji KrÛlewskiej, nieznane nazwisko.";
	TEXT[2]						=	"Odkryte w starych rejestrach w Forn Halem.";
};
func void Use_ItWr_BookXp_137()
{
	Npc_AddDocsCounter(137, 2);
	CreateInvItem(self, ItWr_BookXp_137);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_09_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_09_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Czym jest mur");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Od tamtej pory widzia≥em, jak handlarze wynoszπ towar przez bramy nocπ, jak straønicy úpiπ na posterunkach, jak nawet z≥odzieje przestajπ siÍ úpieszyÊ, bo i tak nikt ich nie goni. Mury sπ tylko t≥em. Rzeübπ. Kulπ w p≥ocie historii. A przecieø niegdyú... By≥y wszystkim.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "PamiÍtam jeszcze, gdy w dzieÒ koronacji krÛla Marevara t≥um wyleg≥ na place, a chorπgwie z herbem zawis≥y na kaødej z wieø. Byliúmy dumni, gotowi oddaÊ øycie, by te mury sta≥y niewzruszone.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nazywano mnie porucznikiem. Teraz jestem tylko starym cz≥owiekiem z bliznπ i pamiÍciπ. Ludzie nie pytajπ mnie o czasy oblÍøenia, o deszcze ognia, o szarøe z zewnπtrz. Pytajπ, gdzie taniej kupiÊ mπkÍ. I majπ racjÍ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie tÍskniÍ za wojnπ. Ale tÍskniÍ za chwilπ, gdy wiedzieliúmy, czym jest mur. Czym jest granica miÍdzy bezpieczeÒstwem a chaosem. Dziú nie ma ani jednego, ani drugiego. Tylko dym, piasek i s≥oÒce.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wiem, øe pewnych rzeczy nie odbuduje siÍ juø nigdy. Ale jeúli kiedyú ktoú postawi tu nowe mury - niech nauczy ludzi, po co one stojπ. Bo kamieÒ bez woli obrony to tylko cieÒ kamienia.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_138 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_138;
	
	if (Bonus_ItWr_BookXp[138])	{	description = "Zmiany w naturze I (przeczytane)";	}
	else						{	description = "Zmiany w naturze I";					};
	
	TEXT[0]						=	"Zapiski mistrza Anthariona";
	TEXT[1]						=	"z Akademii Wiedzy w Setarath,";
	TEXT[2]						=	"spisane w roku 88 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_138()
{
	Npc_AddDocsCounter(138, 1);
	CreateInvItem(self, ItWr_BookXp_138);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_10_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_10_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Zmiany w naturze");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zaczπ≥em te badania z prostym celem: skatalogowaÊ szczπtki zwierzπt i istot, ktÛre øy≥y na tych ziemiach w czasach dawno minionych. Nie spodziewa≥em siÍ, øe przyjdzie mi zakwestionowaÊ wszystko, co o naturze sπdzi≥em do tej pory.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W Dolinie Kamiennych Korzeni natrafiliúmy na warstwÍ ziemi sprzed, jak oceniajπ geomanci, wielu tysiÍcy lat. W niej - koúci kretoszczurÛw, úcierwojadÛw, zÍbaczy. Ale by≥y inne. WiÍksze. Grubsze. Czaszki bardziej wyd≥uøone. ZÍby bardziej prymitywne, nie tak ostro wyspecjalizowane jak u dzisiejszych zÍbaczy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Z poczπtku sπdzi≥em, øe to szczπtki innego gatunku. Ale w kolejnych warstwach widzieliúmy, jak te formy zmieniajπ siÍ z czasem. W m≥odszych osadach - mniejsze, bardziej smuk≥e, lepiej przystosowane do warunkÛw, ktÛre znamy dzisiaj. Jakby natura nie by≥a niezmienna, lecz zmienia≥a siÍ powoli wraz z czasem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Konsultowa≥em siÍ z druidami - ich wiedza o zwierzÍtach przewyøsza naszπ. NiektÛrzy z nich twierdzπ, øe natura dostosowuje stworzenia do krainy, w ktÛrej øyjπ. Ale to, co widzia≥em w tych koúciach, by≥o czymú wiÍcej. To by≥y nie tylko dostosowania. To by≥ ciπg zmian - od form dawnych, przez poúrednie, aø po obecne. NajwiÍkszy wstrzπs czeka≥ mnie jednak pÛüniej.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_139 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_139;
	
	if (Bonus_ItWr_BookXp[139])	{	description = "Zmiany w naturze II (przeczytane)";	}
	else						{	description = "Zmiany w naturze II";				};
	
	TEXT[0]						=	"Zapiski mistrza Anthariona";
	TEXT[1]						=	"z Akademii Wiedzy w Setarath,";
	TEXT[2]						=	"spisane w roku 88 po Drugim Z≥πczeniu.";
};
func void Use_ItWr_BookXp_139()
{
	Npc_AddDocsCounter(139, 2);
	CreateInvItem(self, ItWr_BookXp_139);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_10_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_10_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Zmiany w naturze");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W niøszej warstwie, g≥Íbiej niø ktokolwiek siÍga≥ dotπd, natrafiliúmy na szkielet istoty o proporcjach... dziwnych. Wysoki. PotÍøny. Ale nie zwierzÍcy. Czaszka mia≥a cechy zarÛwno cz≥owiecze, jak i orcze - szerokie ≥uki brwiowe, wysuniÍte szczÍki, a jednak zarys czaszki bardziej zaokrπglony, z miejscem na mÛzg wiÍkszym niø u znanych orkÛw. Koúci rπk by≥y d≥ugie, palce precyzyjne. Nie wojownik. Moøe myúliciel? A moøe po prostu... ktoú inny.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z poczπtku uzna≥em to za oszustwo. Ale badanie warstwy ziemi potwierdzi≥o - koúci by≥y tam od dawna. O wiele dawniej niø jakiekolwiek znane osady ludzkie czy orcze. Co to oznacza?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Moøliwoúci sπ dwie. Albo przed nami istnia≥a rasa, ktÛrej pamiÍÊ zatar≥ czas, a ktÛra by≥a spokrewniona zarÛwno z nami, jak i z orkami. Albo - i ta myúl nie daje mi spokoju - ludzie i orkowie majπ wspÛlnych przodkÛw. Jeúli bowiem zmiana w naturze jest prawem, ktÛre dzia≥a od zawsze, nic nie stoi na przeszkodzie, by dwie odleg≥e dziú istoty pochodzi≥y z jednego pnia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie oúmielam siÍ jeszcze g≥osiÊ tego g≥oúno. Wiara w niezmiennoúÊ úwiata jest zbyt silna. Ale moøe nadejdzie dzieÒ, gdy ktoú odwaøy siÍ powiedzieÊ: nie tylko bestie siÍ zmieniajπ. Ludzie teø. A wtedy pytanie nie bÍdzie juø brzmia≥o, kim jesteúmy dziú, ale kim byliúmy kiedyú. I czy jeszcze mamy odwagÍ to odkryÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_140 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_140;
	
	if (Bonus_ItWr_BookXp[140])	{	description = "O ostrzu i o ciosie I (przeczytane)";	}
	else						{	description = "O ostrzu i o ciosie I";					};
	
	TEXT[0]						=	"Relacja z pojedynku wojownika Po≥udnia";
	TEXT[1]						=	"i wojownika PÛ≥nocy spisana przez";
	TEXT[2]						=	"Arena Gathrosa, podrÛønika z Khorinis.";
};
func void Use_ItWr_BookXp_140()
{
	Npc_AddDocsCounter(140, 1);
	CreateInvItem(self, ItWr_BookXp_140);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_11_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_11_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "O ostrzu i o ciosie");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "By≥em tam. Nie zamierza≥em byÊ úwiadkiem, lecz los postawi≥ mnie na úcieøce tych, ktÛrzy pragnÍli rozstrzygnπÊ stary spÛr nie s≥owem, lecz stalπ. Miejsce wybrano nieprzypadkowo - ruiny starego fortu, po≥oøone na skraju doliny, gdzie úniegi PÛ≥nocy styka≥y siÍ z wilgotnym wiatrem znad Po≥udnia. Dwa úwiaty, dwa style, dwie filozofie walki - i dwaj ludzie, ktÛrzy mieli je uosabiaÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wojownik z Po≥udnia zwa≥ siÍ Sayel. Smuk≥y, o szybkim spojrzeniu i rÍkach, ktÛre nigdy nie by≥y bezczynne. Jego broniπ by≥ miecz jednorÍczny, d≥ugi, lecz lekki, o wywaøeniu idealnym do b≥yskawicznych ciÍÊ i unikÛw. Na sobie mia≥ skÛrzanπ zbrojÍ lamelkowπ, nie krÍpujπcπ ruchÛw. Przez dwa dni przed starciem trenowa≥ na dziedziÒcu - seriach krÛtkich wypadÛw, obrotÛw, fechtunku, ktÛry przypomina≥ taniec drapieønego ptaka.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Jego przeciwnikiem by≥ Thorin z klanu Wilka. PotÍøny mÍøczyzna, z ramionami jak konary starych drzew. Uzbrojony w wielki dwurÍczny topÛr, z klingπ szerokπ jak tarcza. Pancerz - grube skÛry i stalowe obrÍcze, niemal zbroja pÛ≥pe≥na. Jego przygotowania by≥y odmienne - nie szybkie kroki i uniki, lecz ciÍøkie, rytmiczne ciosy w pieÒ drzewa, wzmacnianie uchwytu i Êwiczenie wytrzyma≥oúci. W jego stylu nie by≥o finezji - by≥a w nim nieuchronnoúÊ.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Rankiem trzeciego dnia stanÍli naprzeciw siebie, a zgromadzeni wokÛ≥ widzowie, zarÛwno z PÛ≥nocy, jak i Po≥udnia, zamilkli. Nie by≥o fanfar. Nie by≥o sÍdziÛw. Tylko dwÛch wojownikÛw i jedno pytanie: czy szybkoúÊ pokona si≥Í, czy si≥a zd≥awi szybkoúÊ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_141 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_141;
	
	if (Bonus_ItWr_BookXp[141])	{	description = "O ostrzu i o ciosie II (przeczytane)";	}
	else						{	description = "O ostrzu i o ciosie II";					};
	
	TEXT[0]						=	"Relacja z pojedynku wojownika Po≥udnia";
	TEXT[1]						=	"i wojownika PÛ≥nocy spisana przez";
	TEXT[2]						=	"Arena Gathrosa, podrÛønika z Khorinis.";
};
func void Use_ItWr_BookXp_141()
{
	Npc_AddDocsCounter(141, 2);
	CreateInvItem(self, ItWr_BookXp_141);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_11_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_11_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "O ostrzu i o ciosie");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sayel rozpoczπ≥ pierwszy. B≥yskawiczne serie ciÍÊ, kaødy z nich mierzy≥ w ods≥oniÍte miejsca - pod pachπ, z ty≥u kolana, u szyi. Thorin sta≥ jak ska≥a, blokujπc zamachy ostrzem topora, ktÛre samym ruchem powietrza potrafi≥y zepchnπÊ przeciwnika. Kaødy unik Sayela by≥ sprawdzianem wytrzyma≥oúci - wiedzia≥, øe wystarczy jedno trafienie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Starcie trwa≥o d≥uøej, niø ktokolwiek siÍ spodziewa≥. Sayel os≥abia≥ olbrzyma, tnπc paski pancerza, raniπc ramiÍ. Ale kaødy manewr kosztowa≥ go oddech. Thorin - choÊ spowolniony - nie ustÍpowa≥. Prze≥om nastπpi≥ w chwili, gdy Sayel poúlizgnπ≥ siÍ na kamieniu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To wystarczy≥o. TopÛr przeciπ≥ powietrze w szerokim ≥uku, trafi≥ w p≥ytÍ nagolennika. DüwiÍk by≥ jak uderzenie pioruna. Sayel upad≥ - lecz w tym samym momencie, leøπc, pchnπ≥ mieczem ku nodze przeciwnika, tnπc úciÍgno.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Obaj padli. Obaj krwawili. I wtedy, ku zdumieniu wszystkich, Thorin opar≥ siÍ o topÛr i wyciπgnπ≥ rÍkÍ do Sayela. A ten - mimo bÛlu - jπ uúcisnπ≥. Nie by≥o zwyciÍzcy. Nie by≥o przegranego. By≥a nauka.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Styl Po≥udnia - oparty na zrÍcznoúci, szybkim myúleniu i precyzji - dawa≥ szansÍ unikania ciosÛw i zadawania wielu drobnych ran. Ale wymaga≥ niemal nieustannego ruchu i odpornoúci na zmÍczenie. Styl PÛ≥nocy - zbudowany na brutalnej sile i odpornoúci - pozwala≥ znieúÊ wiele, a kaødy jego cios mÛg≥ zakoÒczyÊ walkÍ. Ale czyni≥ wojownika mniej elastycznym wobec zmiennego tempa.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Oba by≥y drogπ. Oba mia≥y wartoúÊ. Spisa≥em tÍ relacjÍ nie po to, by rozsπdzaÊ, ktÛry styl jest lepszy. Lecz by kaødy, kto bierze broÒ do rÍki, pamiÍta≥: zwyciÍøa nie stal, lecz umys≥, ktÛry niπ w≥ada.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_142 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_142;
	
	if (Bonus_ItWr_BookXp[142])	{	description = "Sztuka zabijania I (przeczytane)";	}
	else						{	description = "Sztuka zabijania I";					};
	
	TEXT[0]						=	"Spisane przez Darion'a z Al Shedim,";
	TEXT[1]						=	"dawnego Mistrza Cieni,";
	TEXT[2]						=	"w roku 38 po Wojnie SmokÛw.";
};
func void Use_ItWr_BookXp_142()
{
	Npc_AddDocsCounter(142, 1);
	CreateInvItem(self, ItWr_BookXp_142);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_12_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_12_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Sztuka zabijania");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie piszÍ tego, by ciÍ nauczyÊ, jak zabijaÊ. Kto pragnie siÍ nauczyÊ, znajdzie nauczyciela. PiszÍ, byú wiedzia≥, co bierzesz na siebie, kroczπc tπ úcieøkπ. Nie jest to droga bohaterÛw, choÊ wielu pragnie siÍ tak widzieÊ. To droga cienia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O pierwszym b≥Ídzie");
				Doc_PrintLines	(nDocID,  0, "M≥odzi adepci sπdzπ, øe w sztuce cichego zabijania chodzi o narzÍdzie - sztylet, truciznÍ, cienkπ garotÍ. To fa≥sz. BroÒ jest najmniej waøna. Najwaøniejsze jest znikniÍcie - przed, w trakcie, po. Nie masz istnieÊ w umyúle ofiary. Nie masz istnieÊ w opowieúci o jej úmierci.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "O obserwacji");
				Doc_PrintLines	(nDocID,  1, "Kaødy cz≥owiek to wzÛr. Porusza siÍ w okreúlony sposÛb, powtarza gesty, ma chwile nieuwagi. SkrytobÛjca jest tkaczem, ktÛry z tych nici tka moment úmierci. Noc bywa sprzymierzeÒcem, lecz jeszcze lepsza jest rutyna ofiary. Zabij wtedy, gdy wszystko zdaje siÍ byÊ jak zawsze.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "O narzÍdziu");
				Doc_PrintLines	(nDocID,  1, "Nie ma idealnej broni. Czasem jest to sztylet w serce. Czasem niewidoczna kropla jadu. Czasem lina nad belkπ stropowπ. Mistrz zna wszystkie metody, ale wybiera najcichszπ, nie najszybszπ. Krzyk ofiary jest poraøkπ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_143 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_143;
	
	if (Bonus_ItWr_BookXp[143])	{	description = "Sztuka zabijania II (przeczytane)";	}
	else						{	description = "Sztuka zabijania II";				};
	
	TEXT[0]						=	"Spisane przez Darion'a z Al Shedim,";
	TEXT[1]						=	"dawnego Mistrza Cieni,";
	TEXT[2]						=	"w roku 38 po Wojnie SmokÛw.";
};
func void Use_ItWr_BookXp_143()
{
	Npc_AddDocsCounter(143, 2);
	CreateInvItem(self, ItWr_BookXp_143);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_12_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_12_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Sztuka zabijania");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O sumieniu");
				Doc_PrintLines	(nDocID,  0, "Nie wierz tym, ktÛrzy mÛwiπ, øe zabÛjstwo staje siÍ ≥atwiejsze z czasem. To nieprawda. Staje siÍ tylko bardziej puste. Kaøda noc przynosi nowe twarze, ktÛre oglπda≥eú tuø przed úmierciπ. Jeúli chcesz øyÊ, musisz pogodziÊ siÍ z tym, øe nikt ciÍ nie op≥acze.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O odejúciu");
				Doc_PrintLines	(nDocID,  0, "Najtrudniejszy jest moment po. Nie úmierÊ. Nie ucieczka. Cisza potem. Naucz siÍ znikaÊ, zanim uczynisz pierwszy krok. W innym mieúcie, pod innym imieniem. Gdy musisz zostaÊ - niech twoja twarz bÍdzie maskπ.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "O cenie");
				Doc_PrintLines	(nDocID,  1, "Zabijanie dla z≥ota wydaje siÍ proste. DopÛki nie zabijesz dla z≥ota kogoú, kto spojrza≥ ci w oczy bez strachu. Wtedy dowiesz siÍ, ile warte sπ twoje monety.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "PiszÍ to jako ten, ktÛry zbyt d≥ugo kroczy≥ úcieøkπ Cieni. Nie po to, byú niπ podπøa≥, ale byú rozumia≥, co za niπ stoi.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeúli po przeczytaniu tej ksiÍgi nadal chcesz iúÊ tπ drogπ - niech twoje kroki bÍdπ lekkie, a sumienie twarde. Inaczej Cienie poørπ ciÍ szybciej, niø ostrze kogokolwiek.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_144 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_144;
	
	if (Bonus_ItWr_BookXp[144])	{	description = "WúrÛd cieniostworÛw I (przeczytane)";	}
	else						{	description = "WúrÛd cieniostworÛw I";					};
	
	TEXT[0]						=	"Spisane przez Werrana,";
	TEXT[1]						=	"myúliwego z GÛrskiego KrÍgu,";
	TEXT[2]						=	"w roku 42 po Wojnie SmokÛw.";
};
func void Use_ItWr_BookXp_144()
{
	Npc_AddDocsCounter(144, 1);
	CreateInvItem(self, ItWr_BookXp_144);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_13_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_13_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "WúrÛd cieniostworÛw");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez wiele lat polowa≥em w lasach na wschÛd od Khorinis. Tam, gdzie nawet straønicy drøπ nocπ, a po≥amane ga≥Ízie znaczπ úcieøki stworzeÒ, ktÛrych úladÛw nikt nie chce úledziÊ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "MÛwiÍ o cieniostworach. Dla wiÍkszoúci to tylko bestie, ktÛre naleøy wytÍpiÊ. Lecz ja przez d≥ugie miesiπce obserwowa≥em je - i choÊ nie twierdzÍ, øe je rozumiem, to wiem wiÍcej niø ten, kto widzi tylko pazury i zÍby.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O siedliskach");
				Doc_PrintLines	(nDocID,  0, "Cieniostwory zamieszkujπ stare lasy, gdzie úwiat≥o rzadko siÍga dna. Ich ulubione miejsca to zagajniki otoczone urwiskami lub mokrad≥a, gdzie düwiÍk krokÛw niknie wúrÛd mchÛw. Rzadko opuszczajπ swe terytorium - chyba øe zmusi je g≥Ûd.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "O hierarchii");
				Doc_PrintLines	(nDocID,  1, "Wbrew pozorom cieniostwory nie sπ samotnikami. ChoÊ zazwyczaj polujπ pojedynczo, moøna zaobserwowaÊ, øe w g≥Íbi lasu gromadzπ siÍ czasem w luüne grupy. Starsze osobniki sπ wyraünie dominujπce. M≥ode cieniostwory uczπ siÍ od nich - widzia≥em, jak naúladujπ sposÛb skradania i reagujπ na sygna≥y düwiÍkowe.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "O polowaniu");
				Doc_PrintLines	(nDocID,  1, "Ich sposÛb polowania jest sztukπ. Nie sπ úlepo brutalne. Potrafiπ godzinami podπøaÊ za ofiarπ, czekajπc na moment s≥aboúci. W nocy polujπ najczÍúciej, wykorzystujπc swÛj niemal bezszelestny chÛd. Us≥yszenie cieniostwora przed atakiem to rzadkoúÊ - wyjπtek stanowiπ momenty, gdy cel jest osaczony i bestia pragnie wzbudziÊ w nim strach.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_145 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_145;
	
	if (Bonus_ItWr_BookXp[145])	{	description = "WúrÛd cieniostworÛw II (przeczytane)";	}
	else						{	description = "WúrÛd cieniostworÛw II";					};
	
	TEXT[0]						=	"Spisane przez Werrana,";
	TEXT[1]						=	"myúliwego z GÛrskiego KrÍgu,";
	TEXT[2]						=	"w roku 42 po Wojnie SmokÛw.";
};
func void Use_ItWr_BookXp_145()
{
	Npc_AddDocsCounter(145, 2);
	CreateInvItem(self, ItWr_BookXp_145);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_13_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_13_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "WúrÛd cieniostworÛw");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O inteligencji");
				Doc_PrintLines	(nDocID,  0, "NiektÛrzy mÛwiπ, øe to tylko instynkt. Lecz ja widzia≥em coú wiÍcej. Jeden z m≥odych cieniostworÛw, ktÛrego obserwowa≥em z kryjÛwki, potrafi≥ wyciπgaÊ ryby z p≥ytkiego strumienia, podrzucajπc kamienie, by je sp≥oszyÊ. Starszy osobnik - zapewne nauczyciel - nie reagowa≥, jakby by≥ obeznany z tπ metodπ.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O relacji z innymi bestiami");
				Doc_PrintLines	(nDocID,  0, "Cieniostwory nie sπ w≥adcami lasu. Unikajπ zÍbaczy czy wargÛw w grupach. Ich naturalnymi wrogami sπ wiÍksze drapieøniki, ale przede wszystkim cz≥owiek. Gdy czujπ, øe sπ úledzone, czÍsto zmieniajπ terytorium. ZnaleüÊ je ponownie wymaga cierpliwoúci.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "O szacunku");
				Doc_PrintLines	(nDocID,  1, "Zabi≥em wiele bestii w swym øyciu. Ale nigdy nie polujÍ na cieniostwora dla sportu. Tylko z potrzeby. Kto nie rozumie ich sprytu, ≥atwo staje siÍ ofiarπ. A kto myúli, øe to tylko g≥upie potwory, ten nie wrÛci z lasu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Niech te s≥owa s≥uøπ przestrodze i nauce. Bo w g≥Íbi kniei sπ cienie, ktÛre øyjπ w≥asnym øyciem - i tylko g≥upiec myúli, øe sπ tylko zwierzynπ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_146 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_146;
	
	if (Bonus_ItWr_BookXp[146])	{	description = "Upadek Z≥otego Liúcia I (przeczytane)";	}
	else						{	description = "Upadek Z≥otego Liúcia I";				};
	
	TEXT[0]						=	"Spisane przez Malviana,";
	TEXT[1]						=	"archiwistÍ klasztoru Innosa w Khorinis,";
	TEXT[2]						=	"rok 49 po Wojnie SmokÛw.";
};
func void Use_ItWr_BookXp_146()
{
	Npc_AddDocsCounter(146, 1);
	CreateInvItem(self, ItWr_BookXp_146);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_14_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_14_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Upadek Z≥otego Liúcia");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sπ rody, ktÛrych imiona noszπ ulice, ktÛrych pieczÍcie zdobiπ bramy miast, ktÛrych potomkowie radzπ dziú na dworach. Ale sπ teø takie, ktÛre przepad≥y w mroku historii, pozostawiajπc jedynie poøÛ≥k≥e pergaminy i zbutwia≥e kamienie. Do takich naleøy Dom Z≥otego Liúcia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z≥oty LiúÊ by≥ jednym z najstarszych rodÛw na ziemiach Myrtany. Jego korzenie siÍga≥y czasÛw jeszcze sprzed pierwszych wojen z orkami. Herb rodu przedstawia≥ dπb o liúciach barwy z≥ota, na tle zieleni - symbol wiecznego wzrostu i dobrobytu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez stulecia rÛd s≥ynπ≥ z mπdrych zarzπdcÛw i hojnych patronÛw sztuki. Mieli w≥asnπ siedzibÍ - zamek Aveldan - po≥oøony na wzgÛrzach u zachodnich granic Myrtany, wúrÛd rozleg≥ych sadÛw i winnic.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "NajwiÍkszy rozkwit rodu przypad≥ na czas panowania lorda Caldrena. By≥ on mÍøem uczonym, mi≥oúnikiem ksiπg i prawa.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Za jego czasÛw Z≥oty LiúÊ utrzymywa≥ w≥asnπ akademiÍ dla skrybÛw, z ktÛrej rÍkopisy rozchodzi≥y siÍ po ca≥ym krÛlestwie. MÛwiono, øe w bibliotece Aveldanu przechowywano tomy starsze niø sama korona krÛla.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_147 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_147;
	
	if (Bonus_ItWr_BookXp[147])	{	description = "Upadek Z≥otego Liúcia II (przeczytane)";	}
	else						{	description = "Upadek Z≥otego Liúcia II";					};
	
	TEXT[0]						=	"Spisane przez Malviana,";
	TEXT[1]						=	"archiwistÍ klasztoru Innosa w Khorinis,";
	TEXT[2]						=	"rok 49 po Wojnie SmokÛw.";
};
func void Use_ItWr_BookXp_147()
{
	Npc_AddDocsCounter(147, 2);
	CreateInvItem(self, ItWr_BookXp_147);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_14_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_14_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Upadek Z≥otego Liúcia");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale kaøda ga≥πü, choÊ silna, moøe ulec, jeúli dotknie jπ robak pychy. Syn Caldrena, Lord Verron, by≥ cz≥owiekiem øπdnym w≥adzy. Zamiast pielÍgnowaÊ sztukÍ i ziemie, zaczπ≥ snuÊ intrygi na dworze krÛlewskim. By zdobyÊ przewagÍ nad innymi rodami, Verron zawar≥ uk≥ady z kupcami z dalekiego po≥udnia i z najemnikami. Z czasem jego øo≥nierze zaczÍli terroryzowaÊ okoliczne wsie. Ci, ktÛrzy oúmielili siÍ sprzeciwiÊ, znikali bez úladu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To úciπgnÍ≥o na rÛd gniew. Po úmierci krÛla Rhobara I, w czasach chaosu, Dom Z≥otego Liúcia stanπ≥ po stronie samozwaÒcÛw, liczπc na zyski. Gdy wreszcie nowy porzπdek zosta≥ przywrÛcony, rÛd uznano za zdrajcÛw.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie by≥o wojny, nie by≥o szturmu na zamek. Wystarczy≥o, øe w≥adca og≥osi≥ wyrok i odebra≥ prawa lennika. Kupcy odwrÛcili siÍ. Wojsko odesz≥o. W ciπgu roku Aveldan opustosza≥. Ostatnia dziedziczka rodu, Lady Illewen, podobno opuúci≥a mury zamku w noc bez ksiÍøyca. Nigdy jej nie odnaleziono. Odtπd mury Aveldanu niszcza≥y, a z≥ote liúcie herbu odpada≥y jeden po drugim.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dziú tylko w starych ksiÍgach moøna znaleüÊ wzmianki o Domu Z≥otego Liúcia. Ci, ktÛrzy b≥πdzπ po ruinach zamku, mÛwiπ o g≥osach w ciemnych salach - byÊ moøe to tylko wiatr, a moøe duchy pychy i zdrady. Niech ta opowieúÊ s≥uøy jako przestroga. Bo kaødy rÛd, kaødy cz≥owiek - moøe siÍ wznieúÊ, ale i upaúÊ. A z≥oto, choÊ piÍkne, ≥atwo przyciπga cieÒ.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_148 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_15.3ds";
	on_state[0]					=	Use_ItWr_BookXp_148;
	
	if (Bonus_ItWr_BookXp[148])	{	description = "Honor i jego cenie I (przeczytane)";	}
	else						{	description = "Honor i jego cenie I";				};
	
	TEXT[0]						=	"Spisane przez Eryka z Geldern,";
	TEXT[1]						=	"dawnego dowÛdcÍ wojskowego, w samotnoúci,";
	TEXT[2]						=	"rok 51 po Wojnie SmokÛw.";
};
func void Use_ItWr_BookXp_148()
{
	Npc_AddDocsCounter(148, 1);
	CreateInvItem(self, ItWr_BookXp_148);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_15_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_15_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Honor i jego cenie");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W m≥odoúci myúla≥em, øe honor to miecz. Czysty, b≥yszczπcy, trzymany wysoko. Øe kto ma honor, ten zwyciÍøa. Øe kto go splami, ten jest zgubiony. Ale øycie jest bardziej mÍtne niø stal. A honor - bardziej kruchy, niø ci siÍ zdaje.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z≥oøy≥em przysiÍgÍ - jak wielu. S≥uøyÊ krÛlowi. Strzec prawa. Nie wahaÊ siÍ przed ofiarπ. Przez lata nosi≥em tÍ przysiÍgÍ jak zbrojÍ. Chroni≥a mnie. Ale i wiÍzi≥a. Aø nadszed≥ dzieÒ, gdy kazano mi spaliÊ wioskÍ, w ktÛrej skrywali siÍ buntownicy. Wiedzia≥em, øe nie wszyscy w niej winni. Kobiety. Dzieci. Starcy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Rozkaz by≥ jasny. Honor nakazywa≥ wykonaÊ go. Ale czyø wiÍkszym honorem nie jest ocaliÊ niewinnych?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Stanπ≥em przed swoimi ludümi. Powiedzia≥em: ÑNie bÍdziemy katami.î Z≥ama≥em przysiÍgÍ. Straci≥em tytu≥. Uciek≥em z miasta. Do dziú wielu nazywa mnie zdrajcπ. Ale tamtej nocy spojrza≥em w oczy dzieci, ktÛre øy≥y dziÍki temu, co uczyni≥em. I zrozumia≥em: czasem honor nie tkwi w wierze w s≥owa, lecz w czynach.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_149 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_15.3ds";
	on_state[0]					=	Use_ItWr_BookXp_149;
	
	if (Bonus_ItWr_BookXp[149])	{	description = "Honor i jego cenie II (przeczytane)";	}
	else						{	description = "Honor i jego cenie II";					};
	
	TEXT[0]						=	"Spisane przez Eryka z Geldern,";
	TEXT[1]						=	"dawnego dowÛdcÍ wojskowego, w samotnoúci,";
	TEXT[2]						=	"rok 51 po Wojnie SmokÛw.";
};
func void Use_ItWr_BookXp_149()
{
	Npc_AddDocsCounter(149, 2);
	CreateInvItem(self, ItWr_BookXp_149);
	
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  2);
				Doc_SetPage		(nDocID,  0, "Book_15_L.tga", false);
				Doc_SetPage		(nDocID,  1, "Book_15_R.tga", false);
				
				Doc_SetMargins	(nDocID,  0, 135, 15, 35, 15, 1);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				Doc_PrintLines	(nDocID,  0, "Honor i jego cenie");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Honor ma cenÍ. Czasem zap≥acisz jπ z≥otem, czasem krwiπ. NajczÍúciej - samotnoúciπ. Nie licz, øe úwiat ciÍ zrozumie. Ci, ktÛrzy ho≥dujπ bezwzglÍdnym regu≥om, bÍdπ ciÍ nienawidziÊ. Ci, ktÛrym pomog≥eú - zapomnπ. Zostaniesz sam, z w≥asnym sumieniem. Ale jeúli potrafisz rano spojrzeÊ w lustro i nie odwrÛciÊ wzroku - moøe w≥aúnie to jest honor.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Honor nie jest s≥owem na pergaminie. Nie jest pieczÍciπ, medalem, pochwa≥π. Jest wyborem - najtrudniejszym z moøliwych. I nigdy nie ma jednej drogi.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ucz siÍ, m≥ody wojowniku. Nie úpiesz siÍ z sπdem. Nie myúl, øe kaødy kto z≥ama≥ przysiÍgÍ, jest zdrajcπ. I nie myúl, øe kaødy kto jej dotrzyma≥, jest bohaterem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bo czasem honor kosztuje wiÍcej, niø haÒba.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
/// Maps
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
instance ItWr_Map_AddonWorld (ItemPR_Map)
{
	value						=	200;
	visual						=	"ItWr_Map_01.3ds";
	on_state[0]					=	Use_ItWr_Map_AddonWorld;
	
	description					=	"Zapomniana dolina budowniczych";
	COUNT[5]					=	value;
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
instance ItWr_Map_NewWorld (ItemPR_Map)
{
	value						=	200;
	visual						=	"ItWr_Map_01.3ds";
	on_state[0]					=	Use_ItWr_Map_NewWorld;
	
	description					=	"Mapa terenÛw Khorinis";
	COUNT[5]					=	value;
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
	value						=	50;
	visual						=	"ItWr_Map_01.3ds";
	on_state[0]					=	Use_ItWr_Map_NewWorld_City;
	
	description					=	"Mapa miasta Khorinis";
	COUNT[5]					=	value;
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
	value						=	200;
	visual						=	"ItWr_Map_01.3ds";
	on_state[0]					=	Use_ItWr_Map_OldWorld;
	
	description					=	"Mapa GÛrniczej Doliny";
	COUNT[5]					=	value;
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
