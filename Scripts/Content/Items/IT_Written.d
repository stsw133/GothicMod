///******************************************************************************************
prototype ItemPR_BookLp (C_Item)
{
	name						=	"Ksi��ka";
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
	name						=	"Ksi��ka";
	mainflag					=	ITEM_KAT_DOCS;
	flags						=	ITEM_MULTI;
	
	value						=	50;
	material					=	MAT_LEATHER;
	scemeName					=	"MAPSEALED";
	
	TEXT[4]						=	"Zapewnia premi� do�wiadczenia.";
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
	
	if (Bonus_ItWr_BookLp[0])	{	description = "Kunszt obronny po�udniowc�w (przeczytane)";	}
	else						{	description = "Kunszt obronny po�udniowc�w";				};
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
instance ItWr_BookLp_Fight2H (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_03.3ds";
	on_state[0]					=	Use_ItWr_BookLp_Fight2H;
	
	if (Bonus_ItWr_BookLp[1])	{	description = "Bloki dwur�czne (przeczytane)";	}
	else						{	description = "Bloki dwur�czne";				};
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
instance ItWr_BookLp_GodsGift (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_01.3ds";
	on_state[0]					=	Use_ItWr_BookLp_GodsGift;
	
	if (Bonus_ItWr_BookLp[3])	{	description = "Dar od bog�w (przeczytane)";	}
	else						{	description = "Dar od bog�w";				};
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
instance ItWr_BookLp_PowerfulArt (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_03.3ds";
	on_state[0]					=	Use_ItWr_BookLp_PowerfulArt;
	
	if (Bonus_ItWr_BookLp[5])	{	description = "Wszechpot�na sztuka (przeczytane)";	}
	else						{	description = "Wszechpot�na sztuka";				};
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
instance ItWr_BookLp_Elementare (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_04.3ds";
	on_state[0]					=	Use_ItWr_BookLp_Elementare;
	
	if (Bonus_ItWr_BookLp[6])	{	description = "Arcanum �ywio��w (przeczytane)";	}
	else						{	description = "Arcanum �ywio��w";				};
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
				Doc_PrintLines	(nDocID,  0, "Najlepsz� rud� do wyrobu wszelkiego rodzaju or�a znale�� mo�na w kopalniach w dolinie Khorinis. Wykut� z niej bro� cechuje niebywa�a wytrzyma�o��. Pok�ady rudy wyst�puj� zwykle g��boko pod ziemi�, lecz g�upcem ten, kto nie podejmie trudu wydobycia jej na �wiat�o dzienne. Niewiele jest takich skarb�w na �wiecie...");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Magiczna bro� przebije ka�dy pancerz i pogruchocze ka�d� tarcz�. Zaiste, kr�lewski to or� i kr�lewsk� cen� trzeba zap�aci� za cho�by sztylet wykuty z tego szlachetnego kruszcu. Tako� surow� cen� p�ac� g�rnicy pracuj�cy w kopalniach. Rud� nie�atwo oddzieli� od skalnych pok�ad�w, tak jakby z ca�ych si� walczy�a, by pozosta� w �onie matki Ziemi.");
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
				Doc_PrintLines	(nDocID,  0, "Wojna by�a sko�czona. Varant straci�o swe morskie porty, tak potrzebne dla zaopatrywania armii. Kr�l Rhobar nie traci� wi�cej czasu na polu bitwy, lecz zostawi� swych genera��w, by ci rozprawili si� z niedobitkami nieprzyjaciela. Varrantczycy posiadali ju� tylko jedno ognisko oporu, zgromadzone wok� Lukkora, najpot�niejszego genera�a ca�ego narodu, kt�ry umiej�tnie zamieni� pora�k� w zwyci�stwo.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale teraz jego armia znalaz�a si� w potrzasku. Sytuacja zda�a si� by� beznadziejna, cho� jego wojska przewy�sza�y si�y kr�lewskie liczb� i wyposa�eniem. Oto jeden z Myrta�skich bohater�w, m�ny genera� imieniem Lee, zwabi� przeciwnika w pu�apk�. Na podmok�ej, bagnistej ziemi ci�ka kawaleria Lukkora nie mia�a szans w starciu ze zwinnymi �o�nierzami Lee. Zdziesi�tkowane oddzia�y Varantu wkr�tce musia�y uzna� wy�szo�� przeciwnika. Lukkor zosta� pokonany.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_MyrthanianPoetry (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_02.3ds";
	on_state[0]					=	Use_ItWr_BookLp_MyrthanianPoetry;
	
	if (Bonus_ItWr_BookLp[11])	{	description = "Poezja myrta�ska (przeczytane)";	}
	else						{	description = "Poezja myrta�ska";				};
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
instance ItWr_BookLp_GodsWisdom1 (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_01.3ds";
	on_state[0]					=	Use_ItWr_BookLp_GodsWisdom1;
	
	if (Bonus_ItWr_BookLp[12])	{	description = "M�dro�� bog�w Tom 1 (przeczytane)";	}
	else						{	description = "M�dro�� bog�w Tom 1";				};
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
instance ItWr_BookLp_GodsWisdom2 (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_02.3ds";
	on_state[0]					=	Use_ItWr_BookLp_GodsWisdom2;
	
	if (Bonus_ItWr_BookLp[13])	{	description = "M�dro�� bog�w Tom 2 (przeczytane)";	}
	else						{	description = "M�dro�� bog�w Tom 2";				};
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
				Doc_PrintLines	(nDocID,  0, "O zaraniu dziej�w: Na pocz�tku nie by�o dnia ani nocy, i �adne �ywe stworzenie nie przemierza�o �wiata. Wtedy pojawi� si� Innos, a jego blask pada� na Ziemi�. Innos obdarzy� �wiat darem �ycia. Ale �adne stworzenie nie �mia�o spojrze� w twarz Innosa, wi�c dobry b�g stworzy� S�o�ce. Lecz mimo to, jasno�� by�a zbyt wielka, tote� Innos podzieli� si� na dwoje i tak powsta� Beliar. Beliar stworzy� noc. Teraz cz�owiek m�g� wreszcie �y�, lecz nie wiedzia� jak. Dlatego Innos podzieli� si� po raz wt�ry i tak powsta� Adanos. Adanos przyni�s� ludziom pomys�owo�� i m�dro��, kt�rej tak bardzo potrzebowali.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dlatego Innos postanowi� zostawi� ludzko�� pod opiek� Adanosa i uda� si� na spoczynek. Lecz Beliar p�on�� z zazdro�ci, gdy� ludzie bali si� go i nie oddawali mu czci. Tedy postanowi� Beliar stworzy� cz�owieka, kt�ry modli�by si� tylko do niego. Ale cz�owiek �w by� jako wszyscy inni, i ba� si� Beliara i nie oddawa� mu czci. B�g nocy rozz�o�ci� si� i zabi� cz�owieka krzycz�c: Dobrze! B�jcie si� mnie zatem, ale cze�� oddacie mi, cho�by po �mierci. Tymi s�owy ustanowi� Beliar �mier� - kres �ywota ludzkiego."	);
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_GodsWisdom3 (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_03.3ds";
	on_state[0]					=	Use_ItWr_BookLp_GodsWisdom3;
	
	if (Bonus_ItWr_BookLp[14])	{	description = "M�dro�� bog�w Tom 3 (przeczytane)";	}
	else						{	description = "M�dro�� bog�w Tom 3";				};
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
				Doc_PrintLines	(nDocID,  0, "Innos pozwoli�, by ludzie mogli go us�ysze� i przemawia� do niego. Pozwoli� im r�wnie� czyni� cuda i nazwa� je magi�. Dzi�ki magii, ludzie zacz�li zmienia� �wiat wedle swego upodobania, jedni m�drze, inni g�upio. Widz�c to, Innos zabra� dar magii ludziom g�upim i pozostawi� go w r�kach ludzi �wiat�ych. Obdarzy� ich r�wnie� innymi �askami, czyni�c swoimi kap�anami i nadaj�c im miano mag�w.");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ludzie czcili kap�an�w Innosa i oddawali im cze��, ale wielu mag�w odwr�ci�o si� od Innosa i uciek�o si� pod opiek� jego boskiego brata - Adanosa. Kasta mag�w uleg�a rozbiciu. Ci, kt�rzy pod��ali za bogiem m�dro�ci nazwali siebie magami Kr�gu Wody. Wyznawcy Innosa nazywani za� byli Magami Ognia.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookLp_Hunting (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_02.3ds";
	on_state[0]					=	Use_ItWr_BookLp_Hunting;
	
	if (Bonus_ItWr_BookLp[15])	{	description = "�owy i zwierzyna (przeczytane)";	}
	else						{	description = "�owy i zwierzyna";				};
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
				Doc_PrintLines	(nDocID,  0, "Jego zapiski przetrwa�y ca�e wieki i po dzi� dzie� uznawane s� za najznakomitsze kompendium wiedzy o polowaniu. Po d�ugich latach star� na p�nocnym pograniczu, niemal ka�dy obywatel potrafi pos�ugiwa� si� �ukiem. Jednak sztuka polowania daleko wykracza poza podstawowe zasady strzelania z �uku! Zwierzyna jest wszak p�ocha i nieprzewidywalna!");
				
				Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Polowanie z �ukiem ma swe pocz�tki w czasach staro�ytnych. W ci�gu ca�ych tysi�cleci nie zasz�y w technikach �owieckich wi�ksze zmiany i tak ju� najprawdopodobniej pozostanie. Jakie czynniki wp�ywaj� tak naprawd� na skuteczno�� pos�ugiwania si� �ukiem? To w�a�nie rozpoznanie tych czynnik�w czyni prawdziwego mistrza �ucznictwa.");
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
instance ItWr_BookLp_Focus (ItemPR_BookLp)
{
	visual						=	"ItWr_Book_02_05.3ds";
	on_state[0]					=	Use_ItWr_BookLp_Focus;
	
	if (Bonus_ItWr_BookLp[18])	{	description = "Kamienie ogniskuj�ce (przeczytane)";	}
	else						{	description = "Kamienie ogniskuj�ce";				};
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
				Print_ExtPrcnt (-1, YPOS_ExpGained, ConcatStrings(IntToString(1000 - (RandAtrDocsCounter%1000)), " pozosta�o do bonusu!"), FONT_ScreenSmall, COL_White, TIME_Print);
			};
		};
	};
};

///******************************************************************************************
instance ItWr_BookXp_000 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_000;
	
	if (Bonus_ItWr_BookXp[0])	{	description = "Na granicy �wiat�a I (przeczytane)";	}
	else						{	description = "Na granicy �wiat�a I";				};
	
	TEXT[0]						=	"Zapiski mistrza Telariona z Uniwersytetu Arkan�w,";
	TEXT[1]						=	"sporz�dzone podczas podr�y badawczej";
	TEXT[2]						=	"do Doliny Mgie�, roku 37 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Na granicy �wiat�a");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "�mier� nie stanowi ko�ca, jak g�osz� kap�ani prostego ludu. Stanowi raczej pr�g, kt�rego natura nie jest jeszcze w pe�ni poznana. Dla niekt�rych - koniec, dla innych - pocz�tek.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W Dolinie Mgie�, gdzie wiatr nie milknie nawet na chwil�, gdzie cienie drzew przypominaj� wychudzone d�onie zmar�ych, spotka�em ludzi, kt�rych relacje ka�� podda� w w�tpliwo�� wiele nauk z Akademii.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najbardziej znamienna by�a opowie�� my�liwego o imieniu Beran, cz�owieka prostego, lecz spogl�daj�cego na �wiat z niepokoj�c� przenikliwo�ci�. Podczas samotnych �ow�w zosta� ci�ko zraniony przez rozjuszonego dzika. Przez ca�� noc le�a� bez przytomno�ci w�r�d traw, bliski �mierci.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Twierdzi�, �e przez ten czas �unosi� si� nad sob��, widz�c w�asne cia�o od g�ry, jakby by� jedynie obserwatorem cudzego losu. S�ysza� g�osy � ciche, znajome, przemawiaj�ce bez s��w, a jednak zrozumiale. Widzia� postacie bez twarzy, o�wietlone zimnym blaskiem, czekaj�ce.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W rozmowie z nim uderzy�a mnie nie tyle tre��, co spos�b m�wienia � nie by�a to opowie�� szale�ca, lecz cz�owieka g��boko poruszonego, kt�ry co� prze�y� i sam nie potrafi� tego nazwa�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Inni mieszka�cy doliny, cho� bardziej niech�tni do rozm�w, przyznawali si� do podobnych dozna�. Zw�aszcza ci, kt�rzy balansowali na kraw�dzi �ycia: ofiary upadk�w, oparze�, topielcy, starcy w gor�czkowych majakach. Opisywa�y one zawsze ten sam stan � cisz�, �wiat�o, obecno��, zawieszenie.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_001 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_001;
	
	if (Bonus_ItWr_BookXp[1])	{	description = "Na granicy �wiat�a II (przeczytane)";	}
	else						{	description = "Na granicy �wiat�a II";					};
	
	TEXT[0]						=	"Zapiski mistrza Telariona z Uniwersytetu Arkan�w,";
	TEXT[1]						=	"sporz�dzone podczas podr�y badawczej";
	TEXT[2]						=	"do Doliny Mgie�, roku 37 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Na granicy �wiat�a");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z punktu widzenia arkanistycznego, zjawiska te mog� wskazywa� na istnienie przestrzeni po�redniej � liminalnego miejsca mi�dzy �yciem a tym, co za nim. W niekt�rych traktatach wspomina si� o istnieniu sfery Przej�cia � lustrzanym odbiciu �wiata �ywych, z kt�rego dusza mo�e jeszcze zawr�ci�, je�li tylko wola lub przeznaczenie jej na to pozwol�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kap�ani odrzucaj� takie pogl�dy, uznaj�c je za blu�niercze, lecz alchemicy i magowie snuj� w�asne teorie. Rytua�y przej�cia stosowane przez plemiona wschodnich bagien � podczas kt�rych cia�a s� smarowane mieszankami spowalniaj�cymi bicie serca i pogr��aj�cymi umys� w transie � mog� mie� na celu w�a�nie dotkni�cie tej granicy, bez jej przekraczania.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W jednym z moich eksperyment�w zastosowa�em podobn� mieszank� zio�ow� na ochotniku � m�odym adepcie, imieniem Narvius. Po podaniu wyci�gu z czarnego g�ogu i korzenia Lethe, zapad� on w g��boki letarg, z kt�rego wybudzi� si� dopiero po trzech dniach.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Podczas transkrypcji jego relacji okaza�o si�, �e r�wnie� widzia� �wiat�o, otaczaj�ce go zewsz�d, lecz niespalaj�ce. Us�ysza� imi� w�asne, wypowiadane przez g�os matki, kt�ra zmar�a wiele lat wcze�niej. Odczuwa� spok�j, ale te� niepok�j � jakby ka�da decyzja mia�a zawa�y� na czym� wi�kszym, ni� jego w�asny los.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Czy dusza mo�e si� zagubi�, zawisn�� mi�dzy �wiatami? Czy to, co my uznajemy za sen i majaki, nie jest w rzeczywisto�ci u�amkiem innego porz�dku? Nie mam jeszcze odpowiedzi, lecz jedno wiem na pewno � �mier� nie jest milczeniem, lecz echem.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_002 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_002;
	
	if (Bonus_ItWr_BookXp[2])	{	description = "Cisza po�r�d wzg�rz I (przeczytane)";	}
	else						{	description = "Cisza po�r�d wzg�rz I";					};
	
	TEXT[0]						=	"Fragment dziennik�w badawczych brata Envalda,";
	TEXT[1]						=	"klasztor w Treomarze. Rok 22 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Cisza po�r�d wzg�rz");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie ma nic bardziej przera�aj�cego ni� cisza, kt�ra powinna by� przerwana ludzkim g�osem. Cisza w miejscu, gdzie jeszcze wczoraj kto� piek� chleb, poi� byd�o, zmywa� krew z r�k po rzezi �wini.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Taka cisza czeka�a mnie w dolinie Arbel, gdzie dotar�em w ramach badania przypadk�w nag�ego opuszczania osad przez ca�e spo�eczno�ci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dolina ta nie jest odosobnionym przypadkiem. W ostatnich trzech dekadach podobne zjawiska mia�y miejsce na granicach Marchii P�nocnej, wschodnich stepach Cerdanu oraz w pobli�u dawnych ruin Wergil.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "We wszystkich przypadkach znika�y ca�e wioski � nie tylko ludzie, ale i ich �lady. Sto�y by�y zastawione, zwierz�ta porzucone, ogie� jeszcze tli� si� w paleniskach. Nie znajdowano cia�, nie toczy�y si� bitwy. �adnych znak�w walki, rabunku, paniki.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W Arbel zostawi�em stra�nik�w i sp�dzi�em noc sam, w chacie cie�li. Notowa�em temperatur� powietrza, wilgotno��, znaki magiczne � nic nadzwyczajnego.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jednak noc� s�ysza�em co�, czego nie potrafi� wyja�ni�. Chrapliwy oddech. Szelest krok�w na suchych li�ciach, zbyt r�wny i �wiadomy, by przypisa� go zwierzynie. Gdy wyszed�em na zewn�trz, nie by�o nikogo.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_003 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_003;
	
	if (Bonus_ItWr_BookXp[3])	{	description = "Cisza po�r�d wzg�rz II (przeczytane)";	}
	else						{	description = "Cisza po�r�d wzg�rz II";					};
	
	TEXT[0]						=	"Fragment dziennik�w badawczych brata Envalda,";
	TEXT[1]						=	"klasztor w Treomarze. Rok 22 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Cisza po�r�d wzg�rz");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dalsze badania ujawni�y jedynie subtelne anomalie: lekkie odchylenia pola many, kt�re ledwie rejestrowa�y moje przyrz�dy. W jednym z domostw, w�r�d dzieci�cych zabawek, znalaz�em co�, co wprawi�o mnie w dreszcz � drewnian� figurk�, przedstawiaj�c� humanoidaln� posta� bez twarzy, z d�ugimi r�kami i bez st�p. By�a starannie ustawiona na progu, jakby mia�a kogo� zatrzyma�... lub zaprosi�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Miejscowi, z kt�rymi rozmawia�em w okolicznych osadach, nie chcieli m�wi� o Arbel. Niekt�rzy twierdzili, �e mieszka�cy �zostali wezwani� - przez g�os, kt�ry s�yszy si� we �nie. Inni, �e zostali �wzi�ci pod ziemi�, �e noc otwar�a swoje usta i po�kn�a ich bez �ladu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Teorie? Mn�stwo. Przekle�stwo? Mo�liwe, ale brak �lad�w rytualnych. Dzia�anie kultycznych sekt? Tak�e nieprawdopodobne przy takiej skali i braku przemocy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Osobi�cie sk�aniam si� ku tezie o dzia�aniu sfery przenikaj�cej � tak zwanej Trzeciej Warstwy, o kt�rej pisz� magowie z Elturi: �wiata r�wnoleg�ego, stycznego, kt�ry w wyj�tkowych okoliczno�ciach mo�e �nak�ada� si� na nasz.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jedno jest pewne � osady nie znikaj� bez powodu. Kto� lub co� zbiera tych ludzi. Czy dla jakiego� celu? Czy z kaprysu? Czy s� jeszcze tam, gdzie stali? Czy patrz� na nas zza cienkiej zas�ony?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dla bezpiecze�stwa nakaza�em spalenie chat w Arbel, ale nie wiem, czy ogie� zniszczy co�, czego nie mo�na dotkn��. Nie spa�em od tamtej nocy. Czasem wydaje mi si�, �e s�ysz� ich kroki za �cian� klasztoru. Ale przecie� to niemo�liwe. Prawda?");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_004 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_004;
	
	if (Bonus_ItWr_BookXp[4])	{	description = "Uwi�ziony g�os I (przeczytane)";	}
	else						{	description = "Uwi�ziony g�os I";				};
	
	TEXT[0]						=	"Esej autorstwa Arcymaga Relmira,";
	TEXT[1]						=	"sporz�dzony na polecenie Rady Pi�ciu.";
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
				Doc_PrintLines	(nDocID,  0, "Uwi�ziony g�os");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie ma nic prostszego ni� z�ama� cz�owieka. Czasem wystarczy g��d. Czasem strach. Ale najskuteczniejszy jest dotyk magii - tej cichej, bez koloru, bez b�ysku. Tej, kt�ra nie podpala, lecz szepcze.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zakl�cia kontroli umys�u, cho� rzadko nauczane otwarcie, stanowi� jedne z najstarszych i najpot�niejszych form wp�ywu arkanicznego. W nich kryje si� nie tylko w�adza nad cia�em, ale nad sam� istot� cz�owiecze�stwa.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W trakcie bada� w Wie�y Szronu mia�em okazj� testowa� prost� wersj� Dominare Mentem na wi�niach, kt�rych zgodzi� si� odda� Zakon Inkwizycji.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W teorii zakl�cie mia�o jedynie �uspokoi� skazanego, lecz jego oczy gas�y po pierwszym inkantacie. Nie odpowiada� na pytania. Nie reagowa� na imi�. Gdy kazano mu zabi� szczura, zrobi� to bez dr�enia r�ki. Gdy kazano mu zje�� w�asne palce - pr�bowa�, dop�ki nie powstrzymali�my go zakl�ciem ochronnym.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Problem nie le�y w dzia�aniu samej magii. Ona wykonuje to, czego si� od niej ��da. Problem tkwi w pytaniu: czy nadal mo�emy m�wi� o cz�owieku, je�li decyzje nie nale�� ju� do niego?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pisa�em do mistrza Ardevala z Vengaru, specjalisty od umys��w zakl�tych, pytaj�c o natur� �ja� w kontek�cie trwa�ego zniewolenia. Odpisa� mi w spos�b ch�odny: �Wola jest funkcj� z�o�enia impuls�w. Magia tylko zmienia impuls. A czy alchemik zmienia istot� cz�owieka, lej�c mu eliksir odwagi?� G��boko si� z nim nie zgadzam.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_005 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_005;
	
	if (Bonus_ItWr_BookXp[5])	{	description = "Uwi�ziony g�os II (przeczytane)";	}
	else						{	description = "Uwi�ziony g�os II";					};
	
	TEXT[0]						=	"Esej autorstwa Arcymaga Relmira,";
	TEXT[1]						=	"sporz�dzony na polecenie Rady Pi�ciu.";
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
				Doc_PrintLines	(nDocID,  0, "Uwi�ziony g�os");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "R�nica mi�dzy eliksirem a zakl�ciem zniewolenia le�y w namy�le. Cz�owiek, wypijaj�c eliksir, nadal my�li � inaczej, mo�e szybciej lub odwa�niej, ale samodzielnie. Magia umys�u nie wzmacnia decyzji � ona usuwa wyb�r.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W najgorszym przypadku, zakl�cia te potrafi� wykorzeni� ca�e wspomnienia, przekszta�caj�c ofiar� w puste naczynie. Kto� mo�e argumentowa�, �e to lepsze ni� �mier�. Ale czym�e jest �ycie, je�li nie mo�na go uzna� za w�asne?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W ruinach Lothamar odnalaz�em glif, kt�rego znaczenia d�ugo nie potrafi�em rozszyfrowa�. Dzi� wierz�, �e by� to symbol: po��czenie oka i zamkni�tych ust.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Patrzysz, ale nie mo�esz m�wi�. Widzisz, ale nie mo�esz dzia�a�. To idealna metafora tego, co czyni� czary zniewolenia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dop�ki magia s�u�y uzdrowieniu, ochronie, tworzeniu - nie protestuj�. Ale zniewolenie umys�u powinno by� traktowane jak trucizna duszy. Nie przez wzgl�d na ofiar�, lecz na maga. Kto raz posmakuje absolutnej kontroli, ten rzadko potrafi wr�ci� do dialogu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zamkn��em swoje notatki, zapiecz�towa�em formu�y, zniszczy�em runy. Nie dlatego, �e ba�em si� tego, co stworzy�em. Ale dlatego, �e nie ba�em si� ju� niczego.");
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
				Doc_PrintLines	(nDocID,  0, "Gdy m�odzi adepci pytaj� mnie, dlaczego sp�dzi�em sze��dziesi�t dwa lata �ycia na roztrz�saniu skamienia�ych symboli wykutych w mokrych korytarzach pod g�rami Sarr-Mereth, odpowiadam zawsze tak samo: bo tylko kamienie nigdy nie k�ami�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ludzie k�ami�. Kap�ani zmy�laj�. Kronikarze upi�kszaj�. Ale rysa na obelisku nie zmienia kszta�tu, cho�by nie wiem ilu wojownik�w przelewa�o krew za jej znaczenie. Runy, kt�re odnajdujemy w ruinach, s� j�zykiem tych, kt�rzy nie zostawili potomk�w. Ale pozostawili my�l.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W ruinach Kars-Turai, po�o�onych na pograniczu pustkowi, natrafi�em niegdy� na kamienn� bram� z�o�on� z czternastu segment�w.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ka�dy pokryty by� identycznym znakiem przypominaj�cym spiral� zamkni�t� przez trzy kreski. Wi�kszo�� uzna�a to za dekoracj�. Ja uzna�em za intencj�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po latach por�wna� ze znaleziskami z G�r Mgielnych zrozumia�em: znak ten oznacza �pami��, kt�ra nie chce by� zapomniana�. Subtelna r�nica. Nie �pami��, ale w�a�nie taka � kt�ra si� opiera, kt�ra trwa.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Te cywilizacje, kt�re znamy tylko z run, nie mia�y kr�l�w, kt�rych imiona przetrwa�y. Nie mia�y bog�w, kt�rzy przeszli pr�b� wiary. Ale mia�y j�zyk � pozbawiony gramatyki, lecz nie sensu. J�zyk, kt�ry nie opowiada, tylko wskazuje.");
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
				Doc_PrintLines	(nDocID,  0, "Podczas bada� w dolnych warstwach ruin Elkh-Yar natrafili�my na zesp� glif�w przypominaj�cych dzisiejsze znaki ostrzegawcze. Wielu uzna�o je za rytualne. Ale w zestawieniu z rozk�adem pomieszcze�, ilo�ci� ko�ci w okolicy i obecno�ci� pradawnej pu�apki z gazem uzna�em je za proste znaki informacyjne � �nie wchod�, umierasz�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pomy�lcie o tym: kto�, tysi�ce lat temu, zada� sobie trud, by zostawi� ostrze�enie. I wiedzia�, �e nikt nie b�dzie zna� jego mowy. Wi�c u�y� obrazu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "J�zyk ruin jest j�zykiem metafory. To, �e nie rozumiemy, nie znaczy, �e nie zostali�my ostrze�eni.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ale najg��bszy wstrz�s prze�y�em w ruinach Varn-Tel. Tam, po�r�d zupe�nie nieznanych symboli, jeden z moich uczni�w odnalaz� wz�r identyczny z run� z naszego w�asnego archiwum. Nie by� to b��d. Symbol by� dok�adnie taki sam � a oznacza� w naszej runice �milczenie�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Czy to dow�d na wsp�lne �r�d�o j�zyka? Czy echo dawnej katastrofy, po kt�rej cywilizacje musia�y zacz�� od nowa, zostawiaj�c tylko jedno s�owo? Czy mo�e znak, �e kto� tam, po drugiej stronie czasu, ju� nas s�ysza�?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem. Ale je�li mia�bym przem�wi� do przysz�o�ci, maj�c do dyspozycji tylko jedn� run�, wybra�bym t� sam�. Bo czasem cisza m�wi najwi�cej.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_008 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_008;
	
	if (Bonus_ItWr_BookXp[8])	{	description = "Prze�amanie wzoru I (przeczytane)";	}
	else						{	description = "Prze�amanie wzoru I";				};
	
	TEXT[0]						=	"Fragmenty dziennika mistrza Albrechtusa,";
	TEXT[1]						=	"wykl�tego alchemika z Martwego Kr�gu.";
	TEXT[2]						=	"Spisane potajemnie w roku 16 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Prze�amanie wzoru");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka�de stworzenie nosi w sobie wz�r � schemat, kt�ry powtarza si� od urodzenia a� po �mier�. Nie jest to wz�r widoczny go�ym okiem, lecz co� ukrytego w g��bi mi�sa, pod �y��, za ko�ci�. Nazwa�em to nici� �ywej formy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z pocz�tku wierzy�em, �e jest ona niezmienna � boski rys, nienaruszalny. Ale gdy po raz pierwszy skrzy�owa�em krew jaszczura skalnego z krwi� psa stra�niczego, a nast�pnie wprowadzi�em j� do m�odego kozio�ka przy pomocy tkanek zarodkowych i eliksiru rozwarcia kom�rek, co� si� zmieni�o.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zwierz� �y�o. Na pierwszy rzut oka nic szczeg�lnego. Ale jego sk�ra pokry�a si� szorstk� �usk�, a �renice wyd�u�y�y si� jak u gad�w. Biega� szybciej, skaka� wy�ej, nie spa�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Czwartego dnia rozszarpa� swoje rodze�stwo. Pi�tego zdech� - nie z g�odu, nie z rany, lecz z wewn�trznego rozk�adu. Tak jakby cia�o pr�bowa�o by� dwoma rzeczami naraz i rozerwa�o samo siebie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W kolejnych pr�bach u�y�em zi� harmonizuj�cych: senna z doliny Dorthil, wyci�g z larwy mglistego chrz�szcza, krwi z martwego wi�nia. Wyniki by�y... bardziej trwa�e, lecz mniej przewidywalne.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wyniki by�y... bardziej trwa�e, lecz mniej przewidywalne. Jedno z ciel�t urodzi�o si� z trzema oczami, kt�re zamyka�y si� osobno. Inne ros�o zbyt szybko i zmar�o po dw�ch tygodniach pod ci�arem w�asnych ko�ci.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_009 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_009;
	
	if (Bonus_ItWr_BookXp[9])	{	description = "Prze�amanie wzoru II (przeczytane)";	}
	else						{	description = "Prze�amanie wzoru II";				};
	
	TEXT[0]						=	"Fragmenty dziennika mistrza Albrechtusa,";
	TEXT[1]						=	"wykl�tego alchemika z Martwego Kr�gu.";
	TEXT[2]						=	"Spisane potajemnie w roku 16 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Prze�amanie wzoru");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Moi asystenci zacz�li szepta�. Jeden uciek�. Drugi otru� si�, pisz�c na �cianie laboratorium jedno s�owo: �odwr��. Nie pos�ucha�em.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie szukam potwor�w. Szukam zmiany. Prze�amania ogranicze� formy, kt�r� narzuci� �wiat. Je�li ziele potrafi rosn�� w �niegu, je�li ogie� mo�e pali� pod wod� � dlaczego cz�owiek nie mia�by by� silniejszy, m�drzejszy, mniej kruchy?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zacz��em pr�bowa� na ludziach. Wi�niowie. Heretycy. Skaza�cy. Na�o�nice. U�omni. Nikt nie p�aka� za nimi.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zmieniali si�. Jeden straci� g�os, ale s�ysza� bicie serc w promieniu sze�ciu st�p. Inny wytrzymywa� wrz�tek na sk�rze, ale �ni� tylko krzyk. Jeden z nich znikn��. Dos�ownie � zostawi� tylko cie� na �cianie, kt�ry nie znika do dzi�. A mo�e po prostu znikn�a jego forma. Mo�e przeszed� gdzie� dalej. Nie wiem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzi� moje r�ce si� trz�s�. Krew, kt�r� pobra�em z w�asnego palca, da�a reakcj� nieprzewidzian�. Od tygodnia nie czuj� b�lu. Od trzech dni nie �pi�. Od wczoraj widz� rzeczy, kt�re nie maj� �wiat�a, a mimo to rzucaj� cie�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zamykam ten dziennik. Nie dlatego, �e ko�cz�. Ale dlatego, �e mo�e ju� nie jestem sob�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_010 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_010;
	
	if (Bonus_ItWr_BookXp[10])	{	description = "W cieniu Prze��czy I (przeczytane)";	}
	else						{	description = "W cieniu Prze��czy I";				};
	
	TEXT[0]						=	"Zapiski Harlena Gorretha, podr�nika";
	TEXT[1]						=	"i kartografa z kr�lestwa Ilvar.";
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
				Doc_PrintLines	(nDocID,  0, "W cieniu Prze��czy");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "M�wi�, �e Przekl�ta Prze��cz nigdy nie przebacza drugiego kroku. �e pierwszy stawia si� z odwag�, ale drugi z w�tpliwo�ci� - a to w�a�nie ona �ci�ga na ciebie to, co tam czyha. M�wi� te�, �e kto przejdzie ca�y trakt, ju� nigdy nie wr�ci taki sam. Albo nie wr�ci wcale.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wyruszy�em wczesn� wiosn�. Mia�em trzy cele: sporz�dzi� dok�adn� map� prze��czy, odnale�� ruiny wie�y zwiadowczej z czas�w wojny z Ur-Mazarem, oraz... przesta� ucieka� przed w�asnym cieniem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To ostatnie nie by�o w planie, ale Prze��cz to miejsce, kt�re wyci�ga z cz�owieka wi�cej, ni� sam jest got�w zobaczy�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pierwsze dni by�y spokojne. �nieg topnia� powoli, rzeki jeszcze nie wezbra�y. Puste szlaki, g�uche echo, zwalone mosty. Niepok�j przyszed� dopiero p�niej, gdy d�wi�ki zacz�y brzmie�... znajomo. Krok, kt�ry nie by� m�j. Oddech, kt�ry nie by� z wiatru.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Trzeciego dnia natrafi�em na kamienny obelisk - g�adki, z pojedynczym znakiem wyrytym jakby pazurem: spiralny kr�g z rozdarciem po �rodku. Nie zna�em jego znaczenia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W nocy po jego zobaczeniu przy�ni�o mi si�, �e �pi� pod ziemi�, w�r�d ko�ci, i �e kto� mnie wo�a, ale nie g�osem - pami�ci�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_011 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_011;
	
	if (Bonus_ItWr_BookXp[11])	{	description = "W cieniu Prze��czy II (przeczytane)";	}
	else						{	description = "W cieniu Prze��czy II";					};
	
	TEXT[0]						=	"Zapiski Harlena Gorretha, podr�nika";
	TEXT[1]						=	"i kartografa z kr�lestwa Ilvar.";
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
				Doc_PrintLines	(nDocID,  0, "W cieniu Prze��czy");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kolejne dni by�y jak marsz przez wspomnienie. Napotyka�em miejsca, kt�rych nie zna�em, ale kt�re wydawa�y si� znajome. Kamie�, kt�ry przypomina� dom mojej matki. Zbocze, jak to z m�odo�ci w g�rach Orven. D�wi�ki przypomina�y �miech, kt�rego nikt nie wyda�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W po�owie drogi zacz��em widzie� postacie. Zawsze za daleko, by rozpozna�. Zawsze nieruchome, gdy patrzy�em. Gdy przystawa�em, znika�y.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Na sz�sty dzie� znalaz�em ruin� wie�y. Tam nie by�o czasu. Mchy nie ros�y, ogie� nie chcia� si� tli�. W �rodku sta� st�, a na nim mapa - moja mapa. Taka sama, jak� nosi�em przy pasie, ale oznaczona innymi szlakami. Kiedy por�wna�em j� z moj�, drogi si� zgadza�y - ale miejsca ju� nie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To nie by�a mapa tego, co widzia�em. To by�a mapa tego, co pami�ta�em.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Si�dmego dnia wr�ci�em. Nikt nie wierzy�. Tylko moja d�o� - od tej pory pokryta cienk�, czarn� siatk� �y� - przypomina mi, �e tam by�em. �e Prze��cz istnieje nie tylko w �wiecie, ale i w nas.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Je�li tam ruszysz, nie pytaj o drog�. Pytaj, czy to naprawd� ty chcesz i�� - czy mo�e co� innego w tobie ju� ruszy�o przodem.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_012 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_012;
	
	if (Bonus_ItWr_BookXp[12])	{	description = "Oko w szafirze I (przeczytane)";	}
	else						{	description = "Oko w szafirze I";				};
	
	TEXT[0]						=	"R�kopis brata Melverena,";
	TEXT[1]						=	"przechowywany w Ksi�dze Zakaz�w.";
	TEXT[2]						=	"Przed lektur� wymagana zgoda Arcyopata.";
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
				Doc_PrintLines	(nDocID,  0, "Nie ka�dy dar jest b�ogos�awie�stwem. Nie ka�da relikwia zosta�a dana nam przez Boga. Nie ka�dy, kto m�wi, �e widzi prawd� - naprawd� j� widzi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pisz� to w tajemnicy, w nocy, przy �wietle jednej �wiecy, z pergaminu wyci�tego ze starej homilii. To, co spisuj�, nie jest przeznaczone dla uczni�w.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ani dla kap�an�w. Ani dla nikogo, kto nadal wierzy, �e �wiat dzieli si� tylko na �wiat�o i cie�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Relikwia Proroka trafi�a do klasztoru trzydzie�ci dwa lata temu. By�a to ozdobna szkatu�a, zamkni�ta na trzy piecz�cie i otwierana tylko raz do roku, w czasie najd�u�szej nocy. Wewn�trz: oko - niegnij�ce, osadzone w szafirze, przezroczyste jak woda.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "M�wiono, �e to pozosta�o�� po Proroku Ymelasie, kt�ry widzia� przysz�o��, zanim j� wym�wiono. Pocz�tkowo traktowali�my j� z nabo�e�stwem. Modlili�my si� przy niej. Spisali�my sze��dziesi�t dwie homilie na jej temat. Ale potem... co� si� zmieni�o.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "PBrat Theorin przesta� spa�. M�wi�, �e oko �patrzy nawet zamkni�te�. Brat Alrik, milcz�cy jak ska�a przez trzy dekady, zacz�� m�wi� - ale w j�zyku, kt�rego nikt nie zna�. Brat Mareld o�lep�, chocia� jego oczy by�y zdrowe. M�wi� tylko: �nie chc� ju� widzie�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_013 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_013;
	
	if (Bonus_ItWr_BookXp[13])	{	description = "Oko w szafirze II (przeczytane)";	}
	else						{	description = "Oko w szafirze II";					};
	
	TEXT[0]						=	"R�kopis brata Melverena,";
	TEXT[1]						=	"przechowywany w Ksi�dze Zakaz�w.";
	TEXT[2]						=	"Przed lektur� wymagana zgoda Arcyopata.";
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
				Doc_PrintLines	(nDocID,  0, "Kiedy przyszed� m�j czas, by pe�ni� nocny doz�r przy relikwii, nie ba�em si�. By�em jeszcze wtedy pewien, �e to tylko szept starych m�czyzn. Przes�dy. L�ki.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale w �rodku nocy us�ysza�em w�asne imi�. Nie g�osem, lecz odczuciem. Wtedy zrozumia�em, �e to oko nie patrzy�o w przysz�o��. Ono j� tworzy�o.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez kolejne miesi�ce zauwa�a�em zmiany. Ci, kt�rzy d�u�ej przebywali przy relikwii, zaczynali podejmowa� decyzje, kt�re wcze�niej wydawa�y si� im obce. Kap�ani �amali �luby. Bracia spisywali rzeczy, kt�rych nie rozumieli.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ja sam znalaz�em pod poduszk� tekst, kt�ry rzekomo napisa�em - lecz pismo nie by�o moje. I nie zna�em �adnego z opisanych w nim imion.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Poprosi�em o zamkni�cie relikwii na sta�e. Rada odm�wi�a. Wierzyli, �e to dow�d dzia�ania boskiego planu. Ale czy plan, kt�ry odbiera wolno�� woli, nie jest w�a�nie tym, przed czym przestrzegali nas �wi�ci?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W ko�cu ukrad�em oko. Chcia�em je zakopa�. Zniszczy�. Rzuci� w ogie�. Ale nie mog�em. Trzyma�em je w d�oni i czu�em, �e ono mnie zna. Zna ka�d� moj� decyzj�, zanim j� podj��em. Ka�de dr�enie palc�w. Ka�de s�owo, kt�rego nie wypowiedzia�em. To nie by�o oko �wi�tego. To by� klucz.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy otwiera niebo, czy piek�o. Wiem tylko, �e otwiera co�. I �e nie powinni�my ju� patrze�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_014 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_014;
	
	if (Bonus_ItWr_BookXp[14])	{	description = "Kult rozumu I (przeczytane)";	}
	else						{	description = "Kult rozumu I";				};
	
	TEXT[0]						=	"Fragment zapisk�w Dorella z Imroth,";
	TEXT[1]						=	"ostatniego �yj�cego cz�onka Rady Dziewi�ciu.";
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
				Doc_PrintLines	(nDocID,  0, "Imroth nie upad�o z g�odu. Nie pad�o pod mieczem, nie obr�ci�o si� w ruin� od ognia. Mury nadal sta�y, gdy wyje�d�a�em. Fontanny jeszcze bi�y wod�, a dzwony wie� milcza�y z powag�, jakby czeka�y na znak. Ale ludzi ju� nie by�o.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Miasto umar�o, bo uwierzy�o, �e rozum wystarczy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wszystko zacz�o si� od Wprowadzenia Prawa - nowego kodeksu, kt�ry mia� zast�pi� stary porz�dek. Spisano go w dziewi�� dni i dziewi�� nocy, w Radzie, gdzie zasiadali najwi�ksi logicy, arytmicy, m�drcy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zakazano modlitw - nie z nienawi�ci, lecz z przekonania, �e prawda nie potrzebuje rytua��w. Zakazano poezji - nie z pogardy, lecz z my�li, �e �wiat nie potrzebuje metafory, je�li zna si� przyczyn� i skutek.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Potem przysz�a kolej na �wi�ta. Zlikwidowano je, bo zak��ca�y rytm pracy. Imroth mia�o by� czyste. Harmonijne. Doskona�e.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Z pocz�tku efekty by�y imponuj�ce. Plony ros�y jak nigdy, kanalizacja dzia�a�a bez zarzutu, archiwa porz�dkowano do ostatniego �wistka.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzieci uczono, �e uczucia s� tylko zak��ceniem biologicznego uk�adu. �e nadzieja to b��d poznawczy. �e strach nale�y wymaza�. M�wiono, �e wyjechali. Ale nikt nie widzia�, by wyje�d�ali. Po prostu � z dnia na dzie� � przestawali istnie�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_015 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_015;
	
	if (Bonus_ItWr_BookXp[15])	{	description = "Kult rozumu II (przeczytane)";	}
	else						{	description = "Kult rozumu II";					};
	
	TEXT[0]						=	"Fragment zapisk�w Dorella z Imroth,";
	TEXT[1]						=	"ostatniego �yj�cego cz�onka Rady Dziewi�ciu.";
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
				Doc_PrintLines	(nDocID,  0, "Rada to bagatelizowa�a. �Nieprzystosowani.� �Element niestabilny.� �Oczyszczenie systemu.� Ale nawet najwi�ksi z nas zacz�li m�wi� ciszej. Unika� spojrze�. Czu�... co�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To �co�� nie pasowa�o do r�wna�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pewnej nocy obudzi�em si� i us�ysza�em �piew. Cichy. P�yn�cy z dolnych poziom�w miasta. Pie�� w j�zyku, kt�ry zna�em z dzieci�stwa, cho� nie by� ju� u�ywany. Pie�� o gwie�dzie, kt�ra nigdy nie wschodzi, ale zawsze �wieci. Poszed�em za ni�. Znalaz�em tylko pustk�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nast�pnego dnia wszyscy �piewaj�cy znikn�li. W ko�cu odszed�em. Nie dlatego, �e si� ba�em. Ale dlatego, �e zacz��em rozumie�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Imroth nie zosta�o zniszczone. Ono samo si� z siebie wymaza�o. Znikn�o, jak r�wnanie, w kt�rym wszystkie sk�adniki zosta�y uproszczone � a� zosta� tylko jeden wynik: zero.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Je�li kto� znajdzie kiedy� mury tego miasta, niech nie pyta, co si� tam sta�o. Niech zapyta, czego tam nie by�o.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie by�o �miechu. Nie by�o �ez. Nie by�o modlitw. Nie by�o l�ku. Nie by�o sensu. I to w�a�nie nas zabi�o.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_016 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_016;
	
	if (Bonus_ItWr_BookXp[16])	{	description = "Z wn�trza bestii I (przeczytane)";	}
	else						{	description = "Z wn�trza bestii I";					};
	
	TEXT[0]						=	"Zapiski Ebrama z Harn,";
	TEXT[1]						=	"by�ego uzdrowiciela, skryby i pustelnika.";
	TEXT[2]						=	"Odrzucone przez wszystkie szko�y uczone.";
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
				Doc_PrintLines	(nDocID,  0, "Z wn�trza bestii");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez trzydzie�ci dwa lata rozcina�em cia�a - zwierz�t, ludzi, i tych, kt�rych nie spos�b zaklasyfikowa�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dla innych by�em op�tanym szale�cem, dla nielicznych - �r�d�em wiedzy, kt�rego bali si� pyta�. Ale dla siebie by�em tylko tym, kt�ry chcia� zrozumie�: co czyni istot� potworem?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Cia�a potwor�w nie s� przypadkiem. W �adnym z tych stworze� - od cienistych w�y po trupie ogary - nie znalaz�em chaosu. Ich organy s� uporz�dkowane. Ich uk�ad krwiono�ny, cho� inny, dzia�a. Ich struktura jest logiczna. Nawet u istot bez oczu, kt�re widz�. Nawet u tych, kt�re nie maj� ust, a krzycz�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "To nie s� b��dy natury. To nie s� pomy�ki. To projekty.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zacz��em wi�c bada� miejsca ich pojawie�. Pradawne lasy. Zapomniane ruiny. Miejsca bitew. Ale najwi�cej �lad�w znalaz�em wok� ludzi. Nie w dziczy. Nie w jaskiniach. Lecz tam, gdzie cz�owiek cierpia�. Gdzie zdradzi�. Gdzie zabija� bez powodu. Gdzie b�aga� o �ycie, ale nikt go nie s�ysza�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W ruinach Berr Murr, gdzie niegdy� palono czarownice, widzia�em stworzenie bez twarzy, kt�re powtarza�o s�owa w j�zyku dzieci. W lochach Kastriel, gdzie umierali g�odni wi�niowie, znalaz�em truch�o istoty o trzech �o��dkach - pustych, ale krzycz�cych jak usta.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_017 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_017;
	
	if (Bonus_ItWr_BookXp[17])	{	description = "Z wn�trza bestii II (przeczytane)";	}
	else						{	description = "Z wn�trza bestii II";				};
	
	TEXT[0]						=	"Zapiski Ebrama z Harn,";
	TEXT[1]						=	"by�ego uzdrowiciela, skryby i pustelnika.";
	TEXT[2]						=	"Odrzucone przez wszystkie szko�y uczone.";
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
				Doc_PrintLines	(nDocID,  0, "Z wn�trza bestii");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gdyby potwory rodzi�y si� tylko z bagien i krwi, mo�e by�bym spokojny. Ale one rodz� si� z cierpienia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Czasem pytam siebie: czy cz�owiek tworzy potwora? Czy mo�e potw�r to tylko odbicie, echo jego w�asnych czyn�w?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W jednym z moich eksperyment�w - by� mo�e najgorszym - zamkn��em si� na cztery tygodnie w ruinach �wi�tyni, gdzie wedle relacji �co�� mia�o pojawia� si� w nocy. Po trzeciej dobie przesta�em spa�. Po sz�stej zacz��em m�wi� do �cian. Po dziesi�tej s�ysza�em j�ki z w�asnego cienia. A czternastego dnia zobaczy�em siebie � ale nie siebie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Sta�o przede mn� co�, co zna�o ka�d� moj� ran�, ka�de moje k�amstwo, ka�de s�owo, kt�re wypowiedzia�em w gniewie. Nie zaatakowa�o mnie. Tylko patrzy�o, a� zrozumia�em. Nie przyci�gn��em potwora. By�em nim.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Od tamtej pory nie m�wi� ju� �one�. M�wi� �my�. Bo potworno�� nie rodzi si� z mi�sa. Rodzi si� z pami�ci. Z rzeczy, kt�rych nie da si� wybaczy�. Z win, kt�rych nie da si� pogrzeba�. Z kszta�t�w, kt�re �wiat pr�buje wyrzuci� poza margines, a kt�re wracaj� - bardziej prawdziwe ni� my sami.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie b�j si� ich. B�j si�, �e je rozpoznasz.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_018 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_018;
	
	if (Bonus_ItWr_BookXp[18])	{	description = "Ko�� ponad dusz� I (przeczytane)";	}
	else						{	description = "Ko�� ponad dusz� I";					};
	
	TEXT[0]						=	"Notatki archiwisty Elmarina z Wydzia�u";
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
				Doc_PrintLines	(nDocID,  0, "Ko�� ponad dusz�");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kult znany jako Dzieci Szpiku zosta� po raz pierwszy udokumentowany 37 lat temu, gdy w osadzie przy granicy z Pogorzeliskiem natrafiono na opuszczony klasztor pe�en wyciszonych, lecz �yj�cych ludzi � pozbawionych j�zyk�w, owini�tych w szare banda�e, �pi�cych w pozycji embrionalnej na zimnym kamieniu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie znaleziono �adnego cia�a. Nie by�o �lad�w przemocy, g�odu, ani szale�stwa. Ale w jednym z pomieszcze� � pierwotnie kaplicy � odkryto rze�biony monolit przedstawiaj�cy istot� pozbawion� twarzy, z pustym oczodo�em w miejscu serca. U jego st�p z�o�one by�y ludzkie �ebra � oczyszczone i u�o�one w kszta�t krzy�a.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Dzieci Szpiku � jak p�niej ich nazwano � nie wyznaj� �adnego konkretnego b�stwa. Ich doktryna opiera si� na przekonaniu, �e prawdziwe ja cz�owieka nie znajduje si� w duszy, lecz w szpiku ko�ci. S�owa, my�li, czyny � wszystko to uznaj� za iluzj�. Tylko to, co cierpi wewn�trznie, jest rzeczywiste.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zachowane zapisy rytualne sugeruj�, �e cz�onkowie wsp�lnoty przechodzili inicjacj� zwan� Obna�eniem. Polega�a ona na �wiadomym z�amaniu jednej z w�asnych ko�ci � zazwyczaj r�ki � przy zachowaniu pe�nej �wiadomo�ci. Nie czyniono tego z sadystycznych pobudek, lecz jako akt prawdy: �Ko��, kt�ra �amie si� z wyboru, nigdy wi�cej nie k�amie� � jak g�osi jeden z inskrybowanych tekst�w znalezionych w ich celach.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_019 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_019;
	
	if (Bonus_ItWr_BookXp[19])	{	description = "Ko�� ponad dusz� II (przeczytane)";	}
	else						{	description = "Ko�� ponad dusz� II";				};
	
	TEXT[0]						=	"Notatki archiwisty Elmarina z Wydzia�u";
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
				Doc_PrintLines	(nDocID,  0, "Ko�� ponad dusz�");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Niekt�re dokumenty wskazuj� na istnienie wy�szych rytua��w: Wewn�trznego Kamienia, Daru Cierpienia, a nawet rytua�u zwanego Przesuni�ciem, kt�rego znaczenia nie uda�o si� ustali� � ale kt�rego symbolem by� cz�owiek bez �eber, stoj�cy z pustym spojrzeniem w otwartym grobie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wbrew obiegowym opiniom, Dzieci Szpiku nie praktykowa�y kanibalizmu ani nie prowadzi�y ekspansji. Ich wp�yw r�s� jednak subtelnie � wsz�dzie tam, gdzie spo�eczno�� cierpia�a, gdzie zawiod�y prawa, wiara, i logika. Kiedy Inkwizycja spali�a ich drug� wsp�lnot� w G��bokiej Dolinie, nie znaleziono ani cia�, ani buntownik�w. Tylko jedno zdanie wyryto w kamieniu pod ziemi�: �Szpik nie p�onie.�");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Obecnie kult uznaje si� za wymar�y. Ale w trzech r�nych miastach � bez zwi�zku z sob� � odkryto samookaleczenia identyczne z rytua�ami Dzieci. W ka�dym z tych przypadk�w ofiary milcza�y. Nie z dumy. Nie z l�ku. Z g��bokiego, niewyt�umaczalnego spokoju.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie jestem wyznawc�. Jestem badaczem. Ale czasem, gdy czuj� b�l w kolanie, powtarzam ich modlitw�: �Niech ko�� przem�wi, gdy g�os nie wystarczy.�");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "I czuj�, jak co� odpowiada.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_020 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_020;
	
	if (Bonus_ItWr_BookXp[20])	{	description = "Ziemia nie zapomina I (przeczytane)";	}
	else						{	description = "Ziemia nie zapomina I";					};
	
	TEXT[0]						=	"Zapiski oficjalne sporz�dzone przez kartografa";
	TEXT[1]						=	"Gorthena Lestvala na zlecenie Rady Miejskiej Vael.";
	TEXT[2]						=	"Rok 48 po Drugim Roz�amie.";
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
				Doc_PrintLines	(nDocID,  0, "W dniu 4. miesi�ca Przymrozu uda�em si� wraz z eskort� do doliny za Prze��cz� Rekk, by potwierdzi� zgodno�� nowo wykonanych map z terenem rzeczywistym. Obszar ten, cho� od lat niezamieszkany, wci�� jest przedmiotem sporu granicznego pomi�dzy domen� Vael a marchi� Enren.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ju� pierwsze pomiary wykaza�y rozbie�no�ci. Wg��bienie oznaczone na wcze�niejszych mapach jako Stara Niecka Kurhanowa (lokacja 14B) znikn�o ca�kowicie, zast�pione p�askim, ubitym gruntem bez ro�linno�ci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W miejscu tym nasi towarzysze donosili o dziwnym uczuciu ci�ko�ci oraz sporadycznym krwawieniu z nosa. Sprz�t metalowy rdzewia� nadzwyczaj szybko.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W punkcie 19C - nieopodal dawnego obozu wojsk kr�lewskich - ziemia by�a twardsza ni� powinna, a odg�os krok�w zdawa� si� odbija� wielokrotnie, mimo braku naturalnych przeszk�d.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po rozkopaniu wierzchniej warstwy natrafili�my na wypalon� kamienn� siatk�, jakby podziemn� pod�og� lub fundament o nienaturalnie regularnych kraw�dziach. Nie znale�li�my tam szcz�tk�w, ale zapach spalenizny utrzymywa� si� d�ugo po zasypaniu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Mieszka�cy pobliskich wsi twierdz�, �e w nocy �co� �wieci� nad dawn� lini� frontu, a dzieciom �ni� si� �g�osy w ziemi�. Brak dowod�w. Mo�liwe lokalne przes�dy.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_021 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_021;
	
	if (Bonus_ItWr_BookXp[21])	{	description = "Ziemia nie zapomina II (przeczytane)";	}
	else						{	description = "Ziemia nie zapomina II";					};
	
	TEXT[0]						=	"Zapiski oficjalne sporz�dzone przez kartografa";
	TEXT[1]						=	"Gorthena Lestvala na zlecenie Rady Miejskiej Vael.";
	TEXT[2]						=	"Rok 48 po Drugim Roz�amie.";
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
				Doc_PrintLines	(nDocID,  0, "W miejscu oznaczonym 21D, na zachodnim zboczu, znajduj� si� drzewa wyra�nie wykrzywione w jednym kierunku - ku wschodowi - mimo braku wiatru. Zjawisko to, cho� dziwne, nie wydaje si� by� magiczne, ale po�o�one centralnie wg��bienie o �rednicy pi�ciu krok�w nie przyjmuje wody � deszcz wsi�ka momentalnie, a �nieg topnieje zanim dotknie ziemi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Niekt�re zjawiska sugeruj� trwa�� obecno�� resztek energii magicznej, prawdopodobnie z czas�w Bitwy o Prze��cz Rekk, gdzie wed�ug kronik wykorzystano zakazane czary skupiaj�ce ogie� na du�ym obszarze.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Brak jednoznacznych dowod�w, jednak zalecam, by nie wydawa� pozwole� na osiedlenia, ani tym bardziej uprawy w obr�bie co najmniej pi�ciuset krok�w od dawnych linii frontu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dodatkowo: metalowe narz�dzia u�ywane przez nasz� grup� po trzech dniach by�y ca�kowicie skorodowane, mimo �e pogoda by�a sucha, a opakowania szczelne. Dwa konie odm�wi�y dalszego marszu w punkcie 18E i pad�y po kilku godzinach, bez oznak choroby.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie jestem magiem. Ale co� w tej ziemi nie chce by� ruszane.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_022 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_022;
	
	if (Bonus_ItWr_BookXp[22])	{	description = "Kl�twa �ycia I (przeczytane)";	}
	else						{	description = "Kl�twa �ycia I";					};
	
	TEXT[0]						=	"Zapiski medyka kr�lewskiego Raltana Vossara.";
	TEXT[1]						=	"Spisano w roku 73 po Wojnie Trzech Bram.";
	TEXT[2]						=	"Zbi�r zdeponowany w archiwum medycznym Therelis.";
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
				Doc_PrintLines	(nDocID,  0, "Kl�twa �ycia");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z pocz�tku uzna�em to za oszustwo. W�drowiec, kt�ry doni�s� o cz�owieku �martwym, lecz �wiadomym�, mia� poszarpan� d�o� i trz�s� si� z gor�czki. My�la�em, �e to urojenia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale potem przyszli kolejni. Trzej rolnicy, jeden stra�nik, jeden mag uczniowski. Wszyscy opowiadali to samo: o ludziach, kt�rzy nie m�wi�, nie ruszaj� si�, ale patrz�. I rozumiej�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zgodzi�em si� zbada� jedno z cia�, kt�re przyniesiono z podg�rskiej osady Tarnveil.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "By�o ca�kowicie odwodnione, bez mi�ni w udach, �ebra wystawa�y jak zbroja, oczy zapadni�te. Sk�ra jak pergamin. Ale �renice reagowa�y. Gdy zbli�y�em d�o� do jego twarzy - p�aka�. Tyle �e bez �ez. To nie by� trup. To by� kto�, kto nie m�g� umrze�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Przez nast�pne tygodnie przebadali�my czterna�cie takich przypadk�w. Wszystkie identyczne. Skrajna martwica tkanek. Brak pulsu. Brak g�osu (krta� zanik�a). Czasem pozosta�o�ci szmer�w w p�ucach. Ale reakcje oczu, �ledzenie ruchu, czasem nawet pojedyncze �zy. Jeden z pacjent�w dr�a� przez ca�� noc, gdy przez przypadek wbito mu szpilk� w opuszki palc�w - opuszki, kt�re by�y tylko ko�ci� i resztk� sk�ry.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_023 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_023;
	
	if (Bonus_ItWr_BookXp[23])	{	description = "Kl�twa �ycia II (przeczytane)";	}
	else						{	description = "Kl�twa �ycia II";				};
	
	TEXT[0]						=	"Zapiski medyka kr�lewskiego Raltana Vossara.";
	TEXT[1]						=	"Spisano w roku 73 po Wojnie Trzech Bram.";
	TEXT[2]						=	"Zbi�r zdeponowany w archiwum medycznym Therelis.";
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
				Doc_PrintLines	(nDocID,  0, "Kl�twa �ycia");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pr�bowali�my eliksir�w rewitalizuj�cych, magii przywracania, bod�c�w b�lowych. Nic nie dzia�a�o. Cia�a nie przyjmowa�y �adnej substancji. Ale te� nie ulega�y rozk�adowi ca�kowitemu. Jakby �mier� zatrzyma�a si� w po�owie - a �wiadomo�� zosta�a uwi�ziona.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po rozmowach z lokalnymi zielarkami dowiedzieli�my si� o starym micie - o ludziach, kt�rzy przekl�li siebie sami, pr�buj�c osi�gn�� nie�miertelno�� �czystym pragnieniem trwania�. Mieli modli� si� nie do bog�w, lecz do samych siebie. Nie chcieli umiera�. I nie umarli. Ale zapomnieli poprosi� o �ycie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie znale�li�my �adnych znak�w magicznych, �adnych run, kl�tw, zakl��. Ale ka�de z cia� mia�o na mostku pionowe naci�cie - niechirurgiczne, zbyt r�wne, by by�o przypadkowe. Jakby kto� �otworzy�� ich intencj� i zostawi� ran�, przez kt�r� mia�o wp�yn�� co� wi�kszego.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dwa z tych cia� znikn�y. Jedno podczas transportu do miasta. Drugie znikn�o z zamkni�tej izby, pozostawiaj�c tylko bia�y �lad na pod�odze i wg��bienie w miejscu, gdzie le�a�a g�owa. Od tej pory badania przerwano.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zabraniam dalszych pr�b. To nie jest choroba. To nie jest magia. To wo�anie, kt�re zosta�o wys�uchane - ale nie zrozumiane. Niech ten tekst pozostanie zamkni�ty. Je�li kto� go czyta - nie pr�buj �y� wiecznie. Bo mo�esz przesta� �y�. Ale nie przestaniesz by�.");
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
	TEXT[2]						=	"Kopia sporz�dzona z zachowanych zwoj�w.";
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
				Doc_PrintLines	(nDocID,  0, "Nie ka�de imi� jest darem. Nie ka�de imi� chroni. Czasem imi� staje si� kl�tw�, a pami�� - przekle�stwem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sztuka uniewa�niania imienia, znana w�r�d pustelnik�w z G�r Iglistych jako Trzecie Milczenie, by�a praktykowana nie jako forma zapomnienia, lecz jako �rodek ochronny i s�d zarazem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Cz�owiek, kt�remu uniewa�niono imi�, nie by� ju� �cigany. Nie by� te� czczony. Po prostu przestawa� istnie� w �wiadomo�ci �wiata.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie chodzi tu o zab�jstwo. Cia�o nadal �y�o. Ale wszelki zapis o tej osobie musia� by� usuni�ty: dokumenty spalono, nazwiska wykuto z kamienia, wspomnienia �wiadk�w zak��cano rytua�em opartym na powtarzaniu pustych form. Sam winny, je�li jeszcze �y�, musia� z�o�y� swoje imi� do naczynia z popio�u i roztrzaska� je na o�tarzu milczenia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Niekt�rzy czynili to dobrowolnie. Wierzyli, �e uniewa�niaj�c w�asne imi�, mog� uwolni� si� od przeznaczenia. Inni - zostali do tego zmuszeni.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W starych rejestrach klasztoru Arven wspomina si� o siedmiu takich przypadkach. Sze�ciu z nich zmar�o w ci�gu miesi�ca. Si�dmy... znikn��. Ale nie w sensie fizycznym.");
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
	TEXT[2]						=	"Kopia sporz�dzona z zachowanych zwoj�w.";
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
				Doc_PrintLines	(nDocID,  0, "Znikn�� z opowie�ci, z kronik, z wspomnie� �wiadk�w. Pozosta� po nim tylko b��d w indeksie i martwe miejsce w modlitwach - puste imi� mi�dzy dwoma innymi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wierzono, �e �wiat sam odrzuca istnienie kogo�, kto nie ma imienia. Jakby rzeczywisto�� potrzebowa�a s�owa, by rozpozna� kszta�t. Bez s�owa - kszta�t rozmywa si�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Znaleziono ludzi, kt�rzy podobno znali kogo� �bez twarzy�, �bez przesz�o�ci�, �kogo nikt nie wo�a� po imieniu�. Ale czym naprawd� jest taka osoba? Czy nadal jest sob�?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie wiadomo, czy uniewa�nienie imienia rani dusz� - ale rani pami��. A cz�owiek, kt�ry nie jest pami�tany, nie nale�y ju� do �wiata �ywych.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Niekt�re starsze teksty sugeruj�, �e mo�na si� tak �ukry� przed istotami, kt�re rozpoznaj� tylko po imieniu. �e to nie ludzie wymy�lili rytua� uniewa�niania. �e to od nich go przej�li�my.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Je�li kiedykolwiek odnajdziesz miejsce, w kt�rym kto� pr�bowa� zetrze� swoje imi� - nie wypowiadaj go, cho�by� je rozpozna�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Imi�, raz uniewa�nione, nie powinno wraca�. A je�li wr�ci - nie pozna ci� ju� jako przyjaciela.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_026 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_026;
	
	if (Bonus_ItWr_BookXp[26])	{	description = "O sk�rze I (przeczytane)";	}
	else						{	description = "O sk�rze I";					};
	
	TEXT[0]						=	"Fragment podr�cznika mistrza Edgara";
	TEXT[1]						=	"z warsztatu przy wschodnim targu w Karthil.";
	TEXT[2]						=	"Zakazany przez cech za �zbyt dosadny ton�.";
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
				Doc_PrintLines	(nDocID,  0, "O sk�rze");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Je�li chcesz robi� ze sk�r co� wi�cej ni� brudn� szmat�, kt�rej nie powstydzi�by si� nawet �mieciarz z Ursel, musisz zapami�ta� trzy rzeczy: sk�ra �mierdzi, sk�ra k�amie, sk�ra pami�ta. Zacznijmy od pocz�tku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie ka�da sk�ra nadaje si� do garbowania. Najlepsze: jelenie, dziki, m�ode wilki. Z�e: kozy (zbyt cienkie), starzy wilcy (zbyt pok�ute), cokolwiek z bagien (pachnie tak, �e nie pomo�e ani ogie�, ani modlitwa).");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nigdy nie bierz sk�ry ze zwierz�cia, kt�re pad�o z choroby - b�dzie si� �uszczy� i nie trzyma� barwnika. �ci�gaj sk�r� no�em zakrzywionym. Nie pr�buj ci�� prosto - oderwiesz mi�so razem z w��knem.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Sk�ra, kt�rej nie odseparujesz jak trzeba, to sk�ra zmarnowana. A mistrz, kt�ry widzi zmarnowan� sk�r�, to mistrz, kt�ry wyrzuca czeladnika za drzwi. S� dwa sposoby: na wapnie i na m�zgu. Oba skuteczne, oba obrzydliwe.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Garbowanie na wapnie trwa d�u�ej, ale mniej �mierdzi. Wrzucasz sk�r� do beczki z wod� i wapnem, czekasz a� w�osy zaczn� odpada� same. Potem skrobiesz, p�uczesz i wk�adasz do bejcy z kory d�bu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Garbowanie na m�zgu jest szybsze, ale... wymaga m�zgu. Dos�ownie. M�zg zwierz�cia mieszasz z wod� i ugniatasz sk�r� a� nasi�knie. Potem wieszasz i suszysz nad ogniskiem. Sk�ra tak przygotowana jest mi�kka, elastyczna i ciep�a. Ale je�li si� nie domyjesz - wszyscy b�d� wiedzie�, �e wczoraj garbowa�e�. B�dzie ci� czu� przez dwa dni.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_027 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_027;
	
	if (Bonus_ItWr_BookXp[27])	{	description = "O sk�rze II (przeczytane)";	}
	else						{	description = "O sk�rze II";				};
	
	TEXT[0]						=	"Fragment podr�cznika mistrza Edgara";
	TEXT[1]						=	"z warsztatu przy wschodnim targu w Karthil.";
	TEXT[2]						=	"Zakazany przez cech za �zbyt dosadny ton�.";
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
				Doc_PrintLines	(nDocID,  0, "O sk�rze");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dobrze przygotowana sk�ra ma lekko chropowat� powierzchni�, pachnie dymem albo ziemi�, nie strz�pi si� i nie faluje. Je�li faluje - spieprzy�e� suszenie. Je�li si� klei - zostawi�e� t�uszcz. Je�li p�ka - garbowa�e� za kr�tko. Je�li wszystko na raz - mo�e zosta� drwalem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z takiej sk�ry zrobisz: buty (twarda cz�� z karku), r�kawice (brzuch, mi�kki), pasy (cz�� l�d�wiowa), pochwy (je�li nie masz metalu), lub przekle�stwa (je�li co� pominiesz i klient wr�ci).");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ka�da sk�ra by�a kiedy� czym� �ywym. Nie zapominaj o tym. �le przygotowana sk�ra potrafi �pami�ta�: kurczy� si�, p�ka�, skr�ca� si� w nocy przy cieple ognia. To nie magia. To ty by�e� idiot�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale s� tacy, co m�wi�, �e sk�ra z bestii zabitej z nienawi�ci kurczy si� na karku, jakby chcia�a wr�ci� do swego pana. Nie wiem. Nie pr�bowa�em. Ale raz robi�em r�kawic� z wilka, kt�ry zjad� cz�owieka.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Prawa r�ka zgubi�a si� po tygodniu. Klientowi zosta�o tylko lewa. I z�e sny.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_028 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_15.3ds";
	on_state[0]					=	Use_ItWr_BookXp_028;
	
	if (Bonus_ItWr_BookXp[28])	{	description = "Bitwa w cie�ninie I (przeczytane)";	}
	else						{	description = "Bitwa w cie�ninie I";				};
	
	TEXT[0]						=	"Spisane przez kapitana Arvonna Vel Tern,";
	TEXT[1]						=	"by�ego dow�dc� �aglowca �Gniew Po�udnia�.";
	TEXT[2]						=	"Fragment pami�tnika odnalezionego w Myrth.";
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
				Doc_PrintLines	(nDocID,  0, "Bitwa w cie�ninie");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nigdy nie wierzy�em w potwory.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zanim wyp�yn��em przez cie�nin� Gror, my�la�em, �e ork to tylko inny cz�owiek - z wi�kszym toporem i mniejsz� cierpliwo�ci�. Bandyta, tyle �e z innym akcentem. Ale to, co przysz�o wtedy zza mg�y, nie mia�o w sobie nic z cz�owieka.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wyp�yn�li�my w siedem jednostek. Trzy �aglowce, dwie �odzie my�liwskie, dwa transportowce. By�em dow�dc� �Gniewu Po�udnia� - czternastu ludzi, dwa balisty, smolna beczka i modlitwa do Ylry.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Wiatr by� dobry. �agle napi�te. Szum fal jak zawsze. Ale ptaki - ptaki znikn�y po po�udniu. I morze zacz�o oddycha� ci�ej. Jakby co� czeka�o pod spodem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "O zmierzchu mg�a spad�a jak zas�ona. Gruba, t�usta. Zgubili�my kontakt z �Bia�ym Jeleniem�. Potem z �Sz�st� Fal��. Krzyki us�yszeli�my zanim zobaczyli�my �wiat�a.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ogniste kule - nie z katapult, ale z r�k. Rzucane jak kamienie. Przebi�y burt� �W�a P�nocy� jednym uderzeniem. Ich �odzie by�y mniejsze, ale pancerne, z dziobem w kszta�cie szcz�ki. Rzuca�y si� bokiem, �ama�y maszty, a potem z ich wn�trza wychodzi�y.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie jak �o�nierze. Jak co�, co czeka�o na okazj�, by si� poruszy�. Nie�li topory, kt�re tn� drewno jak papier. Wchodzili na pok�ad po linach, go�ymi r�kami, bez krzyku. Tylko oczy - ��te, matowe.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_029 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_15.3ds";
	on_state[0]					=	Use_ItWr_BookXp_029;
	
	if (Bonus_ItWr_BookXp[29])	{	description = "Bitwa w cie�ninie II (przeczytane)";	}
	else						{	description = "Bitwa w cie�ninie II";				};
	
	TEXT[0]						=	"Spisane przez kapitana Arvonna Vel Tern,";
	TEXT[1]						=	"by�ego dow�dc� �aglowca �Gniew Po�udnia�.";
	TEXT[2]						=	"Fragment pami�tnika odnalezionego w Myrth.";
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
				Doc_PrintLines	(nDocID,  0, "Bitwa w cie�ninie");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jeden z moich ludzi wpad� do wody i krzycza� jeszcze d�ugo. Potem przesta�. Ale nie by�o chlupotu. Jakby co� go wci�gn�o pod sp�d.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Walka trwa�a... nie wiem, ile. Tyle, co potrzeba, �eby zapami�ta� ka�dy d�wi�k. Drewno p�kaj�ce pod stal�. Ogie� trzeszcz�cy na �aglach. Oddech cz�owieka obok, kt�ry wie, �e nie zd��y.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "�Gniew Po�udnia� zosta� ostatni. Zd��yli�my odpali� smoln� beczk�, rozla� ogie� i przeci�� cumy napastnika. Zaton�li razem z nami. Ale wiatr nas uni�s�. Dryfowali�my trzy dni. Bez wody. Bez steru. Bez g�osu.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Prze�y�em ja i dw�ch ch�opc�w. Jeden o�lep�. Drugi straci� r�k�. Powiedz� wam, �e to by�a bitwa. �e obronili�my szlak handlowy. �e flota ork�w zosta�a zatrzymana. Nie wierzcie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To nie by�a bitwa. To by�a pr�ba, z kt�rej nikt nie wraca tak samo. Orkowie nie przyszli po ziemi�. Ani po z�oto. Przyszli sprawdzi�, jak bardzo chcemy jeszcze �y�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "I nie wiem, czy nasza odpowied� im wystarczy�a.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_030 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_030;
	
	if (Bonus_ItWr_BookXp[30])	{	description = "Milczenie bog�w I (przeczytane)";	}
	else						{	description = "Milczenie bog�w I";					};
	
	TEXT[0]						=	"Fragment pokutnej ksi�gi brata Alinora,";
	TEXT[1]						=	"spisany w klasztorze na Wzg�rzach Kruka.";
	TEXT[2]						=	"Nigdy nie w��czony do oficjalnego kanonu.";
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
				Doc_PrintLines	(nDocID,  0, "Milczenie bog�w");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nauczyli mnie, �e bogowie m�wi� przez ogie�, przez cuda, przez znaki. �e wystarczy modlitwa, pokora i cisza, by ich us�ysze�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sp�dzi�em trzydzie�ci dwa lata w murach �wi�tyni Innosa, ucz�c dzieci prostych modlitw i t�umacz�c starcom, dlaczego cierpienie jest pr�b�. A potem przysz�o to, czego nie przewidzia� �aden traktat.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Plaga dotkn�a trzy wsie. Dzieci umiera�y jako pierwsze. Mleko kwa�nia�o jeszcze w udoju. Cienie ros�y w domach nawet przy otwartym ogniu. Ludzie b�agali - o lito��, o znak, o cokolwiek.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Modli�em si� dniem i noc�. Z krwi� na kolanach, z g�osem zdartym do pustki. Ale nie przysz�o nic. Ani �wiat�o. Ani g�os. Ani nawet sen. Tylko milczenie. Nie takie zwyk�e, nocne.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To by�o milczenie, kt�re przyciska�o do ziemi. Jakby kto� patrzy�, ale nic nie m�wi�. Jakby czeka�, a� przestan� pyta�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wtedy po raz pierwszy pomy�la�em: a je�li to jest odpowied�?");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_031 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_031;
	
	if (Bonus_ItWr_BookXp[31])	{	description = "Milczenie bog�w II (przeczytane)";	}
	else						{	description = "Milczenie bog�w II";					};
	
	TEXT[0]						=	"Fragment pokutnej ksi�gi brata Alinora,";
	TEXT[1]						=	"spisany w klasztorze na Wzg�rzach Kruka.";
	TEXT[2]						=	"Nigdy nie w��czony do oficjalnego kanonu.";
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
				Doc_PrintLines	(nDocID,  0, "Milczenie bog�w");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Mo�e bogowie nie s� tacy, jakimi chcieli�my ich widzie�. Mo�e nie walcz� ze z�em ani o dobro, nie uk�adaj� naszych �cie�ek. Mo�e s�... poza tym. Obok. Albo w og�le bez s��w, bez emocji, jak rzeka, kt�ra p�ynie i nie obchodzi jej, kto si� w niej topi. Ale je�li tak - to gdzie miejsce na wiar�?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zacz��em pyta� inaczej. Nie: �Dlaczego nas opu�cili?�, ale: �Czy kiedykolwiek nas s�yszeli?�. Czy nasze �wi�tynie, nasze pie�ni, nasze pochody - to nie tylko g�os w studni?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie twierdz�, �e bog�w nie ma. Twierdz� tylko, �e ich spos�b istnienia mo�e by� obcy rozumowi cz�owieka.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Mo�e nie chc� naszego czczenia, tylko naszego zrozumienia. Albo odwrotnie - mo�e nie chc� niczego. Mo�e ich obecno�� to stan, nie zamiar.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po dzi� dzie� nosz� kaptur pokutnika i milcz� w dzie� �wi�teczny. Nie w ge�cie niewiary. Lecz w uznaniu, �e niewiedza mo�e by� jedyn� form� prawdy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Je�li kiedy� bogowie przem�wi�, mo�e nie zrobi� tego j�zykiem. Mo�e b�dzie to kamie�, kt�ry si� nie kruszy. Dziecko, kt�re milczy, ale patrzy za d�ugo. Albo tylko wiatr, kt�ry nagle staje si� zimniejszy, cho� nie powinien.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Je�li przyjdzie taki dzie� - nie pytaj ich, dlaczego nie przyszli wcze�niej. Zamiast tego zapytaj siebie: czy na pewno chcia�e� ich us�ysze�?");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_032 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_032;
	
	if (Bonus_ItWr_BookXp[32])	{	description = "Z popio��w nocy I (przeczytane)";	}
	else						{	description = "Z popio��w nocy I";					};
	
	TEXT[0]						=	"Spisane przez rycerza Edricha,";
	TEXT[1]						=	"jednego ze �wiadk�w Bitwy pod Bramant.";
	TEXT[2]						=	"Przechowywane w kaplicy �wi�tego P�omienia.";
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
				Doc_PrintLines	(nDocID,  0, "Z popio��w nocy");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kiedy �wiat by� jeszcze podzielony nie kr�lestwami, lecz cisz� mi�dzy ogniskami, a imi� Innosa szeptano bardziej ze strachu ni� z czci - nie istnia�o co� takiego jak zakon.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Istnieli tylko wojownicy. A w�r�d nich, czasem, ludzie �wiat�a. By�em jednym z nich.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie nazwali�my si� paladynami. Jeszcze nie. W�drowali�my od osady do osady, gasz�c zarzewia ciemno�ci, nie w imi� doktryny, lecz wbrew ciemno�ci, kt�ra nie znosi �wiat�a.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Bitwa pod Bramant - cho� dzi� uczona jako zwyci�stwo - nie by�a niczym wi�cej jak rzezi�. Nie z liczby wrog�w, ale z ich natury. To, co wysz�o z rozpadliny pod starym cmentarzyskiem, nie mia�o oczu, ale widzia�o. Nie mia�o j�zyka, ale szepta�o.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Cia�a, kt�re nie powinny si� rusza�. Kruki bez pi�r, ale z ludzkimi twarzami. Stworzenia sk�adaj�ce si� z ran, nie z mi�sa. Pomioty Beliara - tak ich wtedy nie nazwali�my.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dopiero p�niej magowie rozpoznali znaki: p�kni�t� gwiazd�, kr�g bez �rodka, cienie, kt�re p�on�y ogniem czarnym jak g��d.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "By�o nas siedmiu. Z �ywych wr�ci�o czterech. Jeden straci� j�zyk. Drugi - wzrok. Trzeci �ni� ju� tylko o ogniu.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_033 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_033;
	
	if (Bonus_ItWr_BookXp[33])	{	description = "Z popio��w nocy II (przeczytane)";	}
	else						{	description = "Z popio��w nocy II";					};
	
	TEXT[0]						=	"Spisane przez rycerza Edricha,";
	TEXT[1]						=	"jednego ze �wiadk�w Bitwy pod Bramant.";
	TEXT[2]						=	"Przechowywane w kaplicy �wi�tego P�omienia.";
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
				Doc_PrintLines	(nDocID,  0, "Z popio��w nocy");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ja... do dzi� s�ysz� d�wi�k, jaki wydaje sk�ra, gdy schodzi z �ywego cia�a.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale co� si� wtedy wydarzy�o. W samym �rodku bitwy - gdy modlitwy nie dzia�a�y, a ostrza si� �ama�y - nagle powia� wiatr, kt�ry nie by� z tego �wiata.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ciep�y, lecz bez ognia. I g�os - nie w uszach, lecz w sercu. Kr�tki. Jedno s�owo: �Sta�. I stali�my. Nie z odwagi. Z pos�usze�stwa. Co� - kto� - da� nam si��, by przetrwa� do rana.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Kiedy zapad�a cisza, nie zostali�my ju� tymi samymi wojownikami. Przestali�my by� lud�mi, kt�rzy szukaj� bitew. Zacz�li�my szuka� czysto�ci. Postanowili�my, �e to, co si� wydarzy�o w Bramant, nie powt�rzy si� nigdy wi�cej.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zacz�li�my od przysi�gi: miecz nigdy nie zostanie wzniesiony z gniewu, tylko z potrzeby. �aden ogie� nie zostanie rozpalony po zmroku bez modlitwy. �adne imi� Beliara nie zostanie wypowiedziane pod dachem �wiat�a.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Tak powsta� Zakon Paladyn�w Innosa. Nie ze zwyci�stwa. Ze strachu i wiedzy, �e Innos mo�e nie interweniowa� - ale daje p�omie�, kt�ry musimy nosi� sami.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Paladyn to nie wojownik. To cz�owiek, kt�ry patrzy� w ciemno�� i nie odwr�ci� wzroku. Nie dlatego, �e nie ba� si� - tylko dlatego, �e nikt inny nie patrzy�. A ciemno��, bracia... ona nie �pi.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_034 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_034;
	
	if (Bonus_ItWr_BookXp[34])	{	description = "Bez piecz�ci I (przeczytane)";	}
	else						{	description = "Bez piecz�ci I";					};
	
	TEXT[0]						=	"Testament spisany przez Sirela Doventa,";
	TEXT[1]						=	"by�ego skryby wojskowego,";
	TEXT[2]						=	"wi�zionego w Podziemiach Wr�t Zachodnich.";
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
				Doc_PrintLines	(nDocID,  0, "Bez piecz�ci");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Je�li czytasz te s�owa, znaczy �e moja cela zosta�a otwarta. A skoro zosta�a otwarta, to znaczy, �e kto� nie wyci�gn�� wniosk�w. Bo nie powinno tu by� nikogo. Ani ludzi. Ani �wiat�a. Ani przebaczenia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nazywam si� Sirel Dovent. Przez dziewi�� lat by�em pisarzem wojskowym przy forcie Dharn. Spisywa�em rozkazy, przelicza�em zapasy, wysy�a�em meldunki. Nic wielkiego. Papier, tusz, piecz��. Tak wygl�da wojna z biurka.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zawsze m�wili, �e skryba nie nosi miecza, ale jego s�owa mog� zabi�. Nie zrozumia�em, co to znaczy, dop�ki naprawd� kogo� nie zabi�em.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zacz�o si� niewinnie. Pewien porucznik, Nerron, mia� wtyki. M�g� dostarczy� �ywno�� do fortu bez op�at celnych, je�li dokument wygl�da�... �w�a�ciwie�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zmienia�em wi�c daty, podpisa�em nieistniej�ce osoby, przestawia�em kolumny. Kilka sakiewek trafia�o do mojej szuflady. Wydawa�o si� uczciwe. Nikogo nie bi�em. Nikogo nie g�odzi�em. Tylko pisa�em inaczej.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Potem by� rozkaz o rotacji warty. Stara zmiana mia�a wr�ci�, nowa przej�� nocn� s�u�b�. Ale by� problem: dow�dca nie zd��y� podpisa� dokumentu. Czeka�, a� wr�ci zwiad. M�wi�, �eby nie robi� nic, p�ki nie wr�ci.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_035 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_035;
	
	if (Bonus_ItWr_BookXp[35])	{	description = "Bez piecz�ci II (przeczytane)";	}
	else						{	description = "Bez piecz�ci II";				};
	
	TEXT[0]						=	"Testament spisany przez Sirela Doventa,";
	TEXT[1]						=	"by�ego skryby wojskowego,";
	TEXT[2]						=	"wi�zionego w Podziemiach Wr�t Zachodnich.";
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
				Doc_PrintLines	(nDocID,  0, "Bez piecz�ci");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Znudzi�o mi si� czekanie. �To tylko zmiana warty� - pomy�la�em. Przecie� wiadomo, kto ma i��, gdzie, kiedy. Wzi��em pergamin. Przepisa�em polecenie. Podrobi�em piecz��. Warta zmieni�a si� zgodnie z rozkazem, kt�rego nie by�o.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W nocy przyszli. Nie wiem, co to by�o. Nikt nie wr�ci�. Ani z jednej, ani z drugiej zmiany. Zosta�y tylko �lady but�w na b�ocie, niedopite kubki i brama otwarta na o�cie�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kiedy dow�dca wr�ci� i zobaczy�, co si� sta�o, nie krzycza�. Nie z�orzeczy�. Po prostu wyj�� sw�j miecz, po�o�y� go na moim biurku i powiedzia�: �Podpisz to.�");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "To by� wyrok. M�j w�asny. Spisa�em go sam - ze szczeg�ami, ze �wiadkami, z dat�. Tym razem ju� naprawd�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Od tamtej pory tu siedz�. Nie boj� si� �mierci. Boj� si�, �e zn�w uznam co� za �drobne�. �e zn�w uwierz�, i� pi�ro nic nie wa�y. A ono wa�y wi�cej ni� miecz.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, ilu ludzi zabi�em tuszem. Ale wiem, �e pierwszy z nich mia� imi�. I ja je wymaza�em.");
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
	TEXT[1]						=	"Cz�� stron by�a mokra, cz�� nadpalona.";
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
				Doc_PrintLines	(nDocID,  0, "Dzie� 1");
				Doc_PrintLines	(nDocID,  0, "Nakry�em ich wieczorem, w naszej izbie. Miecz wisia� nad drzwiami, zawsze tam by�. Nie my�la�em - zrobi�em, co musia�em. Oboje.");
				Doc_PrintLines	(nDocID,  0, "Zaci�gn��em cia�a nad rzek�, tam gdzie si� ��czy z bagnem. Nie s�ycha� tam nic pr�cz �ab. Zakopa�em ich pod starym drzewem, g��boko, w jednej mogile.");
				Doc_PrintLines	(nDocID,  0, "Rano powiedzia�em w wiosce, �e uciek�a z kochankiem. Ludzie pokiwali g�owami. I tyle.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Dzie� 5");
				Doc_PrintLines	(nDocID,  1, "Tej nocy nie spa�em. Obudzi� mnie d�wi�k przypominaj�cy oddech - g��boki, �wiszcz�cy, pe�en b�lu i w�ciek�o�ci. Tu� nad moj� g�ow�.");
				Doc_PrintLines	(nDocID,  1, "Ale tej nocy pada�o - d�ugo i mocno. Uzna�em, �e to tylko szum deszczu i przes�yszenia, ale nie mia�em odwagi si� odwr�ci�. Le�a�em sparali�owany, jak dziecko we �nie.");
				Doc_PrintLines	(nDocID,  1, "Rano wm�wi�em sobie, �e to by� tylko koszmar. A wod�, kt�r� zauwa�y�em pod ��kiem i na deskach uzna�em za przeciek z dachu.");
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
	TEXT[1]						=	"Cz�� stron by�a mokra, cz�� nadpalona.";
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
				Doc_PrintLines	(nDocID,  0, "Dzie� 6");
				Doc_PrintLines	(nDocID,  0, "To wr�ci�o. Tym razem nie pada�o. Cisza by�a tak g�sta, �e s�ysza�em w�asne dr�enie. Oddech by� d�u�szy. Ci�szy. Jakby... co� p�aka�o przez dziur� w p�ucach.");
				Doc_PrintLines	(nDocID,  0, "Siedz� i nas�uchuj�, ale wci�� boj� si� spojrze�. Rano zn�w ta woda - tym razem nawet na stole. Nie �pi�. Nie jem. Zaczynam si� sypa�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Dzie� 7");
				Doc_PrintLines	(nDocID,  1, "Dzi� po�o�y�em si� z mieczem. �wieca si� pali�a. Gdy �to� przysz�o - s�ysza�em ju� nie tylko oddech, ale te� chlupot, jakby st�pa�o po b�ocie. Z�apa�em miecz i odwr�ci�em si�.");
				Doc_PrintLines	(nDocID,  1, "Sta�a nade mn�. Kobieca sylwetka, ca�a czarna, pokryta mokrym w�osiem i wodorostami. Nie mia�a twarzy - tylko ciemn� mas�, z kt�rej kapa�a woda. Wydobywaj�cy si� z niej zapach brudu i zgnilizny by� nie do zniesienia. Pr�bowa�em krzykn��, ale nic nie wysz�o. Nie mog�em si� ruszy�.");
				Doc_PrintLines	(nDocID,  1, "I wtedy... ona upad�a. Jakby co� j� z�ama�o. Szarpa�a si� po ziemi jak ryba poza wod�, wij�c si� bezg�o�nie, a� wreszcie uciek�a pe�zn�c, jak w��. Przez drzwi, kt�re by�y otwarte. Ca�� noc przesiedzia�em z mieczem i �wiec� w dr��cych d�oniach. I z bij�cym sercem, kt�re wali�o mi jak m�otem o czaszk�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� 8");
				Doc_PrintLines	(nDocID,  1, "Gr�b by� rozkopany - z wewn�trz. Ziemia wypchni�ta, korzenie po�amane. Zrozumia�em, �e ona wr�ci�a.");
				Doc_PrintLines	(nDocID,  1, "Wr�ci�em i zacz��em pisa�. Mo�e to ostatnie, co robi�, maj�c jeszcze rozum.");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, jak d�ugo jeszcze wytrzymam. Mo�e wariuj�. Ale nie mam zamiaru si� podda�. Zrobi� co�, co j� zatrzyma. Cokolwiek.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_038 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_038;
	
	if (Bonus_ItWr_BookXp[38])	{	description = "Niepos�uszne ostrza I (przeczytane)";	}
	else						{	description = "Niepos�uszne ostrza I";					};
	
	TEXT[0]						=	"Zapiski mistrza Olbrechta,";
	TEXT[1]						=	"dawniej kowala przy kr�lewskim dworze.";
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
				Doc_PrintLines	(nDocID,  0, "Niepos�uszne ostrza");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z �elazem sp�dzi�em wi�cej lat ni� z lud�mi. Ono nie zdradza, nie milknie, nie starzeje si� tak jak cz�owiek. Ale kto m�wi, �e �elazo nie pami�ta?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez czterdzie�ci trzy lata wykona�em przesz�o tysi�c ostrzy. Wi�kszo�� to by�a zwyczajna stal - �o�nierskie miecze, ch�opskie no�e, ceremonialne sztylety. Wszystkie dobre, solidne rzemios�o. Ale czasem... trafia� si� wyj�tek.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zam�wienie przysz�o od mo�nego z po�udnia. Sam przyni�s� rud� - czarna, ci�ka, matowa jak wypalona ko��.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Twierdzi�, �e pochodzi z g��bokiego roz�amu w g�rach, gdzie niegdy� sta�a �wi�tynia dawno zapomnianego ludu. Z pocz�tku chcia�em odm�wi� - nie lubi� materia�u o nieznanym pochodzeniu. Ale zap�aci� z g�ry, i to suto, a surowiec, cho� dziwny, ku� si� jak marzenie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Uformowa�em kling� zgodnie z �yczeniem: prosta, ale doskonale wywa�ona. Jednak ju� po zahartowaniu poczu�em ch��d - nie fizyczny, tylko... obecny. Jakby co� przylgn�o do ostrza. Nie odwa�y�em si� wtedy powiedzie� tego g�o�no.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_039 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_039;
	
	if (Bonus_ItWr_BookXp[39])	{	description = "Niepos�uszne ostrza II (przeczytane)";	}
	else						{	description = "Niepos�uszne ostrza II";					};
	
	TEXT[0]						=	"Zapiski mistrza Olbrechta,";
	TEXT[1]						=	"dawniej kowala przy kr�lewskim dworze.";
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
				Doc_PrintLines	(nDocID,  0, "Niepos�uszne ostrza");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tydzie� p�niej wie�niak przyszed� z ran� - p�kni�ta r�koje�� i rozci�te palce. Powiedzia�, �e gdy tylko z�apa� bro�, poczu�, �e co� �go mierzy�. Miecz odrzuci�. M�wi�, �e ostrze... pulsowa�o. Sprawdzi�em je - nic szczeg�lnego. Ale nie potrafi�em ju� dotkn�� go bez r�kawic.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Inny przypadek: miecz rycerza z G�rniczej Doliny. Mia� przezwisko Po�ykacz Zdrajc�w. Twierdzi�, �e �elazo p�ka zawsze, gdy zabije niewinnego. Kiedy� walczy� z ch�opem, kt�ry pono� zgwa�ci� dziewczyn� z wioski - ostrze si� rozpad�o po pierwszym uderzeniu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "P�niej okaza�o si�, �e to by� jego brat, niewinny. Sam rycerz powiesi� si� dwa dni p�niej. Przys�a� mi po �mierci resztki miecza z dopiskiem: �To nie ja decydowa�em�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ale najmocniej zapami�ta�em ostrze bez imienia. Wyku�em je w m�odo�ci, a potem zagin�o. Po latach wr�ci�o - kto� zostawi� je przy moich drzwiach. Klinga by�a nieco st�piona, r�koje�� przetarta, ale nie zardzewia�a. Mimo braku piel�gnacji - zero �lad�w czasu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Od tego dnia... zacz�y si� dziwne sny. �ni�o mi si�, �e miecz wraca, zawsze wraca, do tej samej d�oni. �e odcina r�ce tym, kt�rzy pr�buj� go zatrzyma�. �e sam si� unosi. �e kr��y - nie szukaj�c w�a�ciciela, ale ofiary.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zamurowa�em go. Zamurowa�em i przesta�em ku�. Nie dlatego, �e si� ba�em. Ale dlatego, �e zrozumia�em - �elazo nie zapomina. Ono pami�ta krew. Pami�ta d�onie. Pami�ta szept.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Je�li znajdziesz ostrze, kt�rego nikt nie chce, nie pytaj, czemu jest bez w�a�ciciela. Mo�e to nie cz�owiek trzyma miecz, tylko miecz trzyma cz�owieka.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_040 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_040;
	
	if (Bonus_ItWr_BookXp[40])	{	description = "Dziennik z Szybu VII I (przeczytane)";	}
	else						{	description = "Dziennik z Szybu VII I";					};
	
	TEXT[0]						=	"Zapiski znalezione przy ciele g�rnika";
	TEXT[1]						=	"w zawa�ach kopalni kr�lewskiej pod Rendor.";
	TEXT[2]						=	"Brak dalszych wpis�w po dniu dziewi�tym.";
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
				Doc_PrintLines	(nDocID,  0, "Dzie� 1");
				Doc_PrintLines	(nDocID,  0, "Zapisali mnie do Szybu VII. Powiedzieli, �e tu nie pytaj� o win�, tylko o r�ce. Mam dwie. Kopi�. Dosta�em m�ot, koc, wod� i chleb z suszonym czym�. Pono� mi�so. Wchodz�c, zsun�o mi si� �wiat�o z he�mu. Jeden ze starych powiedzia�: to znak. Nie wiem, czego.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dzie� 2");
				Doc_PrintLines	(nDocID,  0, "Rano trzy uderzenia dzwona. Kopa� od razu. Ciche g�osy. Nikt tu nie m�wi, chyba �e trzeba. �ciany mokre. Woda kapie ca�y czas. Kto� powiedzia�, �e im g��biej, tym cieplej. Prawda. Duszno tam ni�ej. Ale lepiej tam ni� przy wej�ciu - tam stra�nicy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Dzie� 3");
				Doc_PrintLines	(nDocID,  1, "W nocy s�ysza�em d�wi�k. Nie stukanie. Nie kroki. Co� jak skrobanie po kamieniu. Mo�e szczury. Jeden z g�rnik�w - bez oka, m�wi ma�o - tylko splun�� i wycofa� si� wy�ej. Stra�nik go odes�a� z powrotem. Nie wr�ci�. Powiedzieli, �e uciek�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� 4");
				Doc_PrintLines	(nDocID,  1, "Kto� znalaz� dziwn� rud�. Czarna, jakby porowata. Krucha. Stra�nik kaza� zostawi�. M�wili co� o �g��binowej skale�. Ale jeden m�ody wzi�� kawa�ek do kieszeni. Wieczorem mia� gor�czk�. Oczy przekrwione. Z�bami zgrzyta�, jakby �ni� co� z�ego. Rano by� martwy. Zabrali go i kazali nie m�wi�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_041 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_041;
	
	if (Bonus_ItWr_BookXp[41])	{	description = "Dziennik z Szybu VII II (przeczytane)";	}
	else						{	description = "Dziennik z Szybu VII II";				};
	
	TEXT[0]						=	"Zapiski znalezione przy ciele g�rnika";
	TEXT[1]						=	"w zawa�ach kopalni kr�lewskiej pod Rendor.";
	TEXT[2]						=	"Brak dalszych wpis�w po dniu dziewi�tym.";
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
				Doc_PrintLines	(nDocID,  0, "Dzie� 5");
				Doc_PrintLines	(nDocID,  0, "Zacz�li�my nowy tunel. �ciana by�a dziwnie mi�kka. Jakby nie kamie�, tylko co� mi�dzy. Uderzy�em raz i p�k�o g��boko. Zrobi�a si� szczelina. Nie ma prawa tak si� kruszy�. Za �cian� - cisza. Za bardzo cisza. Jakby �wiat si� ko�czy� zaraz za t� warstw�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dzie� 6");
				Doc_PrintLines	(nDocID,  0, "Nikt nie chce tam kopa�. Ale nikt te� nie m�wi. Ka�dy wie. Zmienili stra�nik�w. Nowi milcz� jeszcze bardziej. Dali nam wi�cej �wiat�a. Dlaczego? Nikt nie pyta. W nocy zn�w by�o skrobanie. D�u�sze. Jakby po suficie. Ale nikt tam nie by�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Dzie� 7");
				Doc_PrintLines	(nDocID,  1, "Zacz�o �mierdzie�. Nie zgni�e. Jakby rdzewiej�ce mi�so. Powiedzieli, �e to od wody. Jeden stary g�rnik wyj�� z sakwy co�, co wygl�da�o jak ko��. Ale cienka, jakby nie z cz�owieka. Upu�ci� j� i rozpad�a si� na proszek. Nikt nic nie powiedzia�. Tylko szybciej jedli.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� 8");
				Doc_PrintLines	(nDocID,  1, "Zerwa�o si� rusztowanie przy szczelinie. Dw�ch spad�o. Nie wr�cili. Jeden krzycza�, ale potem ucich�. Nie jakby zemdla�. Jakby kto� go uciszy�. Znale�li tylko jeden but. Stra�nik powiedzia�, �e maj� si� zg�osi� ochotnicy do dalszego kopania. Nie by�o ochotnik�w. Wyznaczyli losowo. Pad�o na mnie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� 9");
				Doc_PrintLines	(nDocID,  1, "Kopa�em. Czuj�, �e co� mnie obserwuje. Nie s�ysz� ju� kapania. Tylko oddech. G��boki. Nieregularny. Czasem co� jak chrobotanie - nie ziemi, tylko czego� po ziemi. W �cianie jest szczelina. Wiem, �e ona patrzy. Je�li kto� to znajdzie, nie schod�cie g��biej. Niech to, co tam jest, zostanie w ciemno�ci.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_042 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_042;
	
	if (Bonus_ItWr_BookXp[42])	{	description = "Spod fundament�w I (przeczytane)";	}
	else						{	description = "Spod fundament�w I";					};
	
	TEXT[0]						=	"Spisane przez mistrza murarskiego";
	TEXT[1]						=	"Ervona Halda, odnalezione w ruinach";
	TEXT[2]						=	"klasztoru Arnem. Tekst cz�ciowo przepalony.";
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
				Doc_PrintLines	(nDocID,  0, "Spod fundament�w");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie wiem, kto zleci� budow�. Przyszli z po�udnia, z dokumentami i z�otem. Mieli plan, piecz�cie, zapas wapna i milcz�cego kap�ana, kt�ry nie m�wi� ani s�owa, ale pokazywa�, gdzie mamy kopa�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie pyta�em. Nie po raz pierwszy budowa�em co� bez tablicy i patrona. Praca to praca. Dali mi ludzi, dali mi czas, dali mi ziemi�. Gdybym wiedzia�, co w niej siedzi, nie podj��bym si� roboty.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Fundamenty stawiali�my d�ugo. Grunt by� mi�kki, mimo �e ska�a pod spodem powinna by� twarda. Woda wlewa�a si� noc�, ale tylko noc�. W dzie� nie by�o ani kropli. Zaprawa wi�za�a, ale odparowywa�a zapach - dziwny, metaliczny, jakby gnij�cy kamie�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pierwsze rysy pojawi�y si� na �cianie p�nocnej. Naturalna sprawa przy osiadaniu muru. Ale potem zacz�y si� uk�ada� w wzory - p�uki, spirale, co� jak ludzkie twarze w grymasie snu. M�j czeladnik Fenn pr�bowa� to zamalowa� wapnem, ale rano zn�w by�y. I zn�w troch� inne.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wierz� w duchy. Ale jak wchodzili�my na rusztowanie, mieli�my wra�enie, �e ceg�y oddychaj�. Jakby by�y lekko ciep�e. Jakby ros�y, milimetr po milimetrze, bez naszej pomocy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zostawiali�my jedn� warstw� - rano by�y dwie. M�wili�my sobie, �e to sen, �e zm�czenie, �e opary wapna. Ale nikt ju� nie spa� pod �cianami.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_043 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_043;
	
	if (Bonus_ItWr_BookXp[43])	{	description = "Spod fundament�w II (przeczytane)";	}
	else						{	description = "Spod fundament�w II";				};
	
	TEXT[0]						=	"Spisane przez mistrza murarskiego";
	TEXT[1]						=	"Ervona Halda, odnalezione w ruinach";
	TEXT[2]						=	"klasztoru Arnem. Tekst cz�ciowo przepalony.";
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
				Doc_PrintLines	(nDocID,  0, "Spod fundament�w");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Na dziedzi�cu co� przesi�ka�o spod ziemi. Nie woda. Co� g�stszego. Rudy �luz. Kap�ani powiedzieli, �eby nie dotyka� - �e to �b�ogos�awie�stwo kamienia�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "M�j brat, kamieniarz, zbiera� to na szpachelk� i wyla� za mur. Nazajutrz mia� r�k� spuchni�t� jak buk�ak i paznokcie czarne jak w�giel. Dwa dni p�niej znikn��. Nikt nie widzia�, jak wyszed�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gdy sko�czyli�my mury, przyjechali nowi kap�ani, �eby odprawi� po�wi�cenie. Obejrzeli �ciany. Weszli do �rodka. Wyszli biali jak kreda. Nie odezwali si� ani s�owem.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nast�pnego dnia budynek zosta� zapiecz�towany. Nikt nie doko�czy� dachu. Nikt nie wni�s� o�tarza. Nikt nie z�o�y� modlitwy. Op�acono nas z g�ry i kazano wyjecha� bez dnia zw�oki.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nazwy klasztoru nie wpisano do rejestr�w. A my, kt�rzy go stawiali�my, mieli�my nie m�wi�, co tam widzieli�my. Ale czasem, kiedy budz� si� w nocy, mam przeczucie, �e tamto �co�� dalej ro�nie.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_044 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_044;
	
	if (Bonus_ItWr_BookXp[44])	{	description = "Niezmienne niebo I (przeczytane)";	}
	else						{	description = "Niezmienne niebo I";					};
	
	TEXT[0]						=	"Dziennik latarnika z przyl�dka Rauenstein,";
	TEXT[1]						=	"rok 18 po trzecim wielkim przyp�ywie.";
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
				Doc_PrintLines	(nDocID,  0, "Dzie� 1");
				Doc_PrintLines	(nDocID,  0, "Nowa zmiana. Przyl�dek jak zawsze: s�l w powietrzu, cisza poza wiatrem. Gdy pisz� te s�owa, s�o�ce wisi dok�adnie nad ska�� p�nocn�. Jutro sprawdz�, czy to przypadek.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dzie� 5");
				Doc_PrintLines	(nDocID,  0, "To nie przypadek. Zaznaczy�em cie� o tej samej porze dnia. Zawsze w tym samym miejscu. Mo�e zbieg okoliczno�ci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dzie� 12");
				Doc_PrintLines	(nDocID,  0, "Dzi� po raz czwarty z rz�du widzia�em, jak mewy przelatuj� t� sam� tras�, w tej samej formacji. Jedna kulawa, jedna bez jednego lotki - zawsze w tej samej pozycji. Ka�dego ranka. Nie zmieniaj� kierunku. To nie mo�e by� przypadek.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Dzie� 16");
				Doc_PrintLines	(nDocID,  1, "Skrzynie z prowiantem przyniesione �odzi�. Ten sam marynarz, co zwykle. Ta sama broda, to samo utykanie. Przywita� si� dok�adnie tymi samymi s�owami co miesi�c temu: �Morze dzi� spokojne, ale nie ufam mu.� Zapyta�em o pogod�. Odpowiedzia� identycznie: �Jak nie dmucha, to si� czai.� To nie powt�rzenie. To powielenie. Powt�rzy� te� gest d�oni�, ten sam uk�ad palc�w. Jakby scena odgrywa�a si� wed�ug wcze�niej napisanego scenariusza.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� 21");
				Doc_PrintLines	(nDocID,  1, "W nocy �ni�o mi si�, �e umieram z g�odu. Obudzi�em si� zlany potem. Na stole le�a� ciep�y bochen chleba. Jeszcze go nie by�o wczoraj. Nie pami�tam, �ebym go piek�. Nie pami�tam, �ebym w og�le mia� m�k�. Ale smakowa� jak zawsze. Tak samo jak poprzedni, kt�rego przecie� ju� zjad�em.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_045 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_045;
	
	if (Bonus_ItWr_BookXp[45])	{	description = "Niezmienne niebo II (przeczytane)";	}
	else						{	description = "Niezmienne niebo II";				};
	
	TEXT[0]						=	"Dziennik latarnika z przyl�dka Rauenstein,";
	TEXT[1]						=	"rok 18 po trzecim wielkim przyp�ywie.";
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
				Doc_PrintLines	(nDocID,  0, "Dzie� 24");
				Doc_PrintLines	(nDocID,  0, "Codziennie sprawdzam poziom przyp�ywu - ska�a przy boi ma znacznik. Woda zatrzyma�a si� dok�adnie na tej samej wysoko�ci. Cztery dni z rz�du. Zegarek chodzi. �wieca si� wypala. W�osy rosn�. Ale morze nie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dzie� 27");
				Doc_PrintLines	(nDocID,  0, "Napisa�em list. Nie wiem, komu. Schowa�em go do butelki i wrzuci�em do wody. Nast�pnego ranka znalaz�em go na brzegu. Nie otwart� butelk� - list. Suchy. M�j charakter pisma. M�j podpis. Ale nie m�j papier. Jakby... kto� mi go odes�a�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Dzie� 30");
				Doc_PrintLines	(nDocID,  1, "Niebo si� nie zmienia. Chmury s� zawsze w tym samym miejscu. Cie� od latarni - ten sam k�t. Ptaki, fale, wiatr - wszystko powtarzalne. Nie starzej� si� jak reszta. Mam siwe w�osy, ale nie pami�tam, kiedy przesta�y rosn��. Paznokcie s� takie same od tygodni. Nie czuj�, �eby m�j g��d r�s�. Czuj� tylko... ci�ar powt�rze�. Jakby czas kr��y� wok� mnie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� 31?");
				Doc_PrintLines	(nDocID,  1, "Dzisiaj zegar si� zatrzyma�. Nie wiem, o kt�rej. I nie wiem, kt�ry to dzie�. Liczy�em je, ale mo�e pomyli�em si� gdzie� po drodze. Mo�e by�o ich wi�cej. Mo�e mniej.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� ?");
				Doc_PrintLines	(nDocID,  1, "Niebo si� nie zmienia. Ale wczoraj, kiedy od�o�y�em pi�ro, zauwa�y�em co� dziwnego. W rogu stronicy... atrament ju� tam by�. Jakby te s�owa czeka�y, a� je napisz�. Nie pami�tam, kiedy ostatni raz co� zapisa�em sam z siebie. Mo�e ju� tylko udaj�, �e wybieram s�owa.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_046 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_046;
	
	if (Bonus_ItWr_BookXp[46])	{	description = "W cieniu stodo�y I (przeczytane)";	}
	else						{	description = "W cieniu stodo�y I";					};
	
	TEXT[0]						=	"Zanotowane przez Edrena Halma,";
	TEXT[1]						=	"pisarza podr�nego, w okolicach";
	TEXT[2]						=	"G�rnego Wergolu, roku 43 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "W cieniu stodo�y");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie s�dzi�em, �e dzie�, w kt�rym zatrzyma�em si� w tej przekl�tej osadzie, przyniesie mi co� wi�cej ni� b�oto na butach i spalon� owsiank� w gospodzie. A jednak.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zna�em ich wielu - filozof�w, pisarzy, my�licieli. Jedni przemawiali z pulpit�w, inni ze ska�, jeszcze inni milczeli ca�e �ycie, tylko po to, by wypowiedzie� jedno, wiekopomne zdanie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale nikt z nich nie m�wi� tak, jak m�wi� Derun. Imi� zwyk�e. Cz�owiek - z pozoru te�. Stary, pochylony, z lewym okiem jakby przygas�ym.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "M�wili, �e kiedy� dosta� od konia w g�ow� i od tamtej pory �gada jak szalony�. Unikali go. �miali si� z niego. Jedna baba w karczmie powiedzia�a, �e �ju� od dziesi�ciu lat to on bardziej z chmur� gada ni� z cz�owiekiem�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, co mnie tkn�o. Mo�e deszcz. Mo�e nuda. Zatrzyma�em si� przy nim, gdy siedzia� na pniu pod stodo�� i co� mrucza�. Zacz�li�my rozmow� - a raczej: ja zacz��em. On odpowiedzia� pytaniem.");
				Doc_PrintLines	(nDocID,  1, "�Czy cz�owiek ma nogi, �eby i�� do przodu, czy �eby nie uciec do ty�u?�");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_047 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_047;
	
	if (Bonus_ItWr_BookXp[47])	{	description = "W cieniu stodo�y II (przeczytane)";	}
	else						{	description = "W cieniu stodo�y II";				};
	
	TEXT[0]						=	"Zanotowane przez Edrena Halma,";
	TEXT[1]						=	"pisarza podr�nego, w okolicach";
	TEXT[2]						=	"G�rnego Wergolu, roku 43 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "W cieniu stodo�y");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zdziwiony, spyta�em, o co mu chodzi. Odpowiedzia�:");
				Doc_PrintLines	(nDocID,  0, "�A o co ci chodzi, kiedy idziesz? Wiesz, czy tylko udajesz, �e wiesz?�");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zrazu uzna�em to za be�kot. Ale potem zapyta� mnie:");
				Doc_PrintLines	(nDocID,  0, "�Ile rzeczy robisz, bo chcesz - a ile, bo ci si� tylko wydaje, �e chcesz?�");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przyznam: zamilk�em. A on m�wi� dalej, powoli, spokojnie, jakby wa�y� ka�de s�owo:");
				Doc_PrintLines	(nDocID,  0, "�Mia�em kiedy� koz�. G�upia by�a. My�la�a, �e jak j� ci�gn� na sznurze, to znaczy, �e prowadzi. I tak samo ja - ca�e �ycie my�la�em, �e id� gdzie chc�. A sznur by� tylko d�u�szy.�");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zacz��em notowa�. Nie dla ksi��ki, nie dla pieni�dzy. Po prostu... musia�em. Zapyta�em go, co s�dzi o �mierci. Odpowiedzia�:");
				Doc_PrintLines	(nDocID,  1, "�A co s�dzisz o trzeciej drzemce? To i tak si� stanie. Lepiej si� nie zbudzi� za wcze�nie.�");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "O sens �ycia?");
				Doc_PrintLines	(nDocID,  1, "�Sens? A po co ci sens? Owca nie ma sensu. A �yje.�");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "I jeszcze to, kt�re chyba zapami�tam do ko�ca swoich dni:");
				Doc_PrintLines	(nDocID,  1, "�Ziemia si� kr�ci, bo nikt jej nie powiedzia�, �e mo�e przesta�. A ludzie kr�c� si� razem z ni�, bo boj� si� stan�� i zapyta�: dlaczego?.�");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy Derun by� szalony. Ale wiem, �e gdy odchodzi�em, nie mia�em ju� pewno�ci co do wielu rzeczy, kt�re wydawa�y si� wcze�niej oczywiste. I chyba o to chodzi�o.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_048 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_048;
	
	if (Bonus_ItWr_BookXp[48])	{	description = "Na s�owie go mam I (przeczytane)";	}
	else						{	description = "Na s�owie go mam I";					};
	
	TEXT[0]						=	"Dokument spisany przez Egdara,";
	TEXT[1]						=	"by�ego �ledczego garnizonu G�rnego Wergolu.";
	TEXT[2]						=	"Przechowywany w archiwum stra�y.";
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
				Doc_PrintLines	(nDocID,  0, "Na s�owie go mam");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ludzie my�l�, �e winni si� przyznaj�, bo maj� skrupu�y.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie maj�. Przyznaj� si�, bo pope�niaj� b��d. I ja jestem od tego, by na ten b��d cierpliwie czeka�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z�amanie cz�owieka to nie kwestia si�y, lecz rytmu. Musisz wej�� w jego tempo - nie burzy� go, nie przyt�acza�. Wystarczy, �e dasz mu si� wygada�, a sam zbuduje sobie szubienic� z w�asnych s��w.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "1. Nigdy nie pytaj wprost.");
				Doc_PrintLines	(nDocID,  1, "Je�li zapytasz: �Czy zabi�e� tego cz�owieka?�, to dostaniesz �nie�. I nie dowiesz si� niczego. Zamiast tego pytaj: �Co zrobi�e� po tym, jak odszed� z twojej zagrody?� i �Zanim znalaz�e� ten n�, gdzie by�e�?�");
				Doc_PrintLines	(nDocID,  1, "Zmuszasz go do opowie�ci. A opowie�ci zawsze maj� luki. A ka�da luka - to okno, przez kt�re wchodzi prawda.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "2. Daj mu co� wygra�.");
				Doc_PrintLines	(nDocID,  1, "Cz�owiek, kt�ry czuje si� sprytny, m�wi wi�cej. Daj mu si� poprawi�: �To by�o ko�o wie�y m�ynarza, tak? � Nie, nie, raczej przy starym mo�cie.�");
				Doc_PrintLines	(nDocID,  1, "Gratulacje. W�a�nie ustali�e� miejsce zbrodni, chocia� jeszcze przed chwil� zarzeka� si�, �e nie by� w okolicy.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_049 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_049;
	
	if (Bonus_ItWr_BookXp[49])	{	description = "Na s�owie go mam II (przeczytane)";	}
	else						{	description = "Na s�owie go mam II";				};
	
	TEXT[0]						=	"Dokument spisany przez Egdara,";
	TEXT[1]						=	"by�ego �ledczego garnizonu G�rnego Wergolu.";
	TEXT[2]						=	"Przechowywany w archiwum stra�y.";
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
				Doc_PrintLines	(nDocID,  0, "Na s�owie go mam");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "3. Wiedza pozorna");
				Doc_PrintLines	(nDocID,  0, "Czasem wystarczy powiedzie�: �Ju� wiemy, �e to ty. Potrzebujemy tylko szczeg��w, �eby zamkn�� spraw�.�");
				Doc_PrintLines	(nDocID,  0, "Nie wiesz nic. Ale on nie wie, �e nie wiesz. I dlatego zacznie m�wi� - nie z �alu, ale �eby �zmniejszy� kar�, kt�rej si� boi. To dzia�a. Cz�ciej, ni� by si� chcia�o przyzna�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "4. Powtarzaj. A� powie inaczej.");
				Doc_PrintLines	(nDocID,  0, "Ka�dy k�amca zapomina w�asne k�amstwa. Pytaj dwa, trzy razy o to samo - ale w odst�pie czasu, w innym kontek�cie. Niech sam zapl�cze si� w zeznaniach.");
				Doc_PrintLines	(nDocID,  0, "Jak si� zapl�cze - przestaje broni� prawdy, a zaczyna broni� historii. Wtedy wystarczy jedno pytanie za du�o.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "5. Obserwuj przerwy.");
				Doc_PrintLines	(nDocID,  1, "Nie s�owa s� wa�ne. Wa�ne jest, co dzieje si� mi�dzy s�owami. Gdy milknie - nie przerywaj.");
				Doc_PrintLines	(nDocID,  1, "Cisza to najci�szy miecz. Ludzie boj� si� ciszy, bo tam w�a�nie czai si� ich sumienie. Czasem wystarczy patrze� i czeka�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "6. Fa�szywe pytanie");
				Doc_PrintLines	(nDocID,  1, "�Czemu nie powiedzia�e� wcze�niej, �e zna�e� ofiar�?�");
				Doc_PrintLines	(nDocID,  1, "On nie powiedzia�, �e zna�. Ale teraz musi si� t�umaczy� - bo pod�wiadomo�� ju� z�apa�a haczyk.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie walcz z podejrzanym. Daj mu walczy� z w�asnym obrazem siebie. I nigdy, przenigdy nie zapominaj: Najgorsze rzeczy m�wi si� szeptem. Najmocniejsze wyznania � przypadkiem. A najwi�ksze b��dy � wtedy, gdy cz�owiek czuje si� bezpieczny.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_050 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_050;
	
	if (Bonus_ItWr_BookXp[50])	{	description = "Z drugiej strony szk�a I (przeczytane)";	}
	else						{	description = "Z drugiej strony szk�a I";				};
	
	TEXT[0]						=	"Spisano z notatek uczonego Eirena Halbricha,";
	TEXT[1]						=	"badaj�cego zjawiska optyczne w klasztorze";
	TEXT[2]						=	"Porthalm. Rok 17 po Drugim Trz�sieniu.";
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
				Doc_PrintLines	(nDocID,  0, "Z drugiej strony szk�a");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie wiem, kto pierwszy zauwa�y�, �e to lustro nie dzia�a jak inne. By�o stare, oprawione w ram� z czarnego drewna, z delikatnym wzorem przypominaj�cym wij�ce si� pn�cza. Sta�o w zakamarku biblioteki klasztornej, gdzie �wiat�o rzadko dociera�o.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pocz�tkowo my�la�em, �e to tylko z�udzenie. Odbicie wydawa�o si� nieco op�nione, jakby �wiat�o potrzebowa�o wi�cej czasu, by si� odbi�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale z czasem zauwa�y�em, �e niekt�re rzeczy w odbiciu s� inne. Ksi��ki na p�kach mia�y inne tytu�y, �wiece pali�y si�, cho� w rzeczywisto�ci by�y zgaszone.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pewnego dnia postanowi�em przeprowadzi� eksperyment. Ustawi�em przed lustrem krzes�o i usiad�em na nim, trzymaj�c w d�oni �wiec�. W odbiciu by�a zgaszona � dop�ki nie pr�bowa�em jej zapali�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wtedy, zanim jeszcze ogie� dotkn�� knota, p�omie� ju� pojawi� si� w odbiciu. Ruch wyprzedzony, jakby tamten �wiat przewidywa� m�j zamiar.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Z czasem zacz��em dostrzega� w odbiciu posta�. Sta�a za mn�, nieruchoma, z twarz� skryt� w cieniu. Gdy odwraca�em si�, nikogo nie by�o. Ale w lustrze � zawsze tam by�a.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_051 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_051;
	
	if (Bonus_ItWr_BookXp[51])	{	description = "Z drugiej strony szk�a II (przeczytane)";	}
	else						{	description = "Z drugiej strony szk�a II";					};
	
	TEXT[0]						=	"Spisano z notatek uczonego Eirena Halbricha,";
	TEXT[1]						=	"badaj�cego zjawiska optyczne w klasztorze";
	TEXT[2]						=	"Porthalm. Rok 17 po Drugim Trz�sieniu.";
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
				Doc_PrintLines	(nDocID,  0, "Z drugiej strony szk�a");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Postanowi�em dotkn�� powierzchni lustra. By�o zimne, ale pod palcami poczu�em delikatne pulsowanie, jakby serce bij�ce w g��bi szk�a. Nacisn��em mocniej � i wtedy poczu�em, jak co� chwyta moj� d�o� od drugiej strony. Szarpn��em si� i cofn��em, serce wali�o mi jak m�ot.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Od tamtej pory unika�em lustra. Ale ono mnie przyci�ga�o. Czu�em jego obecno��, jakby obserwowa�o mnie przez �ciany. Sny sta�y si� koszmarami � �ni�em o �wiecie po drugiej stronie, ciemnym, zimnym, pe�nym cieni bez twarzy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pewnej nocy obudzi�em si� i zobaczy�em, �e lustro stoi naprzeciw mojego ��ka. Nie pami�tam, bym je tam przyni�s�. W odbiciu nie by�o mnie � tylko pusty pok�j i posta� stoj�ca tam, gdzie powinienem by� ja.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zrozumia�em, �e lustro nie odbija rzeczywisto�ci. Ono pokazuje inny �wiat, r�wnoleg�y, ale nie identyczny. �wiat, w kt�rym co� lub kto� pr�buje si� przedosta�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzi� rano lustro znikn�o. Zosta�a po nim tylko pusta �ciana. Ale w odbiciu okna widz�, �e stoi tam nadal. I posta� w nim jest coraz bli�ej.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_052 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_052;
	
	if (Bonus_ItWr_BookXp[52])	{	description = "Na granicy sacrum I (przeczytane)";	}
	else						{	description = "Na granicy sacrum I";				};
	
	TEXT[0]						=	"Autor: mistrz Maglan z Archiwum �witu,";
	TEXT[1]						=	"by�y cz�onek Kr�gu �wiat�a.";
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
				Doc_PrintLines	(nDocID,  0, "Przez ca�e �ycie nauczano mnie, �e moc pochodzi od bog�w. �wiat�o Innosa � czyste i prawe. Cie� Beliara � mroczny, lecz r�wnie realny. R�wnowaga Adanosa � milcz�ca, lecz wszechobecna.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "A magia? Magia by�a zawsze ��cznikiem mi�dzy nami a nimi. Kap�ani g�osz�, �e to dar. Zaklinacze m�wi�, �e to �aska. Kr�g Ognia - �e to obowi�zek. Kr�g Wody - �e to narz�dzie r�wnowagi. I przez lata w to wierzy�em.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "A� do momentu, gdy przesta�em rozumie�, dlaczego niekt�re rytua�y dzia�aj� r�wnie skutecznie - niezale�nie od tego, do kt�rego boga s� skierowane.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W ruinach na wschodnich pustkowiach odnalaz�em piecz�cie starsze ni� nasze �wi�tynie, runy starsze ni� alfabet. Ich wzory uk�ada�y si� w znane nam zakl�cia - ale �aden z tych symboli nie mia� powi�zania z kultem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "A jednak dzia�a�y. Rzuca�y ogie�. Leczy�y rany. Wi�za�y dusze.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zacz��em por�wnywa� modlitwy kap�an�w z inkantacjami mag�w. I nie mog�em nie zauwa�y�, �e r�nice s� tylko powierzchowne - melodie inne, s�owa inne, ale schemat i struktura niemal identyczne. Jakby wszyscy uczyli si� z tego samego, zapomnianego �r�d�a.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_053 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_053;
	
	if (Bonus_ItWr_BookXp[53])	{	description = "Na granicy sacrum II (przeczytane)";	}
	else						{	description = "Na granicy sacrum II";				};
	
	TEXT[0]						=	"Autor: mistrz Maglan z Archiwum �witu,";
	TEXT[1]						=	"by�y cz�onek Kr�gu �wiat�a.";
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
				Doc_PrintLines	(nDocID,  0, "Nie o�mielam si� m�wi� tego g�o�no, lecz coraz bardziej wierz�, �e magia nie pochodzi od bog�w. �e to oni nauczyli si� z niej korzysta� � a my, przez wieki, pomylili�my skutek z przyczyn�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "S� tacy, kt�rzy twierdz�, �e magia �s�yszy�, �e �co�� odpowiada. Niekt�rzy m�wi� o g�osach przywo�ywanych przez z�o�one runy - g�osach, kt�re nie s� ani ludzkie, ani boskie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W staro�ytnych tekstach znalaz�em frazy opisuj�ce moc jako wyp�ywaj�c� z g��bin �wiata, ze szczelin mi�dzy bytami, z nie-miejsc, gdzie nie ma �ycia ani �mierci.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "To by t�umaczy�o, dlaczego magia tak cz�sto wymaga ceny. Dlaczego zbyt wielka jej ilo�� kala dusz�. Dlaczego niekt�re zakl�cia s� z natury zepsute, jakby ich fundament by� obcy naszemu �wiatu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "By� mo�e bogowie nie s� �r�d�em mocy, lecz tylko jej stra�nikami. Albo paso�ytami. By� mo�e najwi�ksz� herezj� nie jest pos�ugiwanie si� moc�, lecz wierzenie, �e to �wi�to��.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Je�li tak jest - to wszystko, co zbudowali�my, opiera si� na k�amstwie. A to, co naprawd� �yje pod naszymi stopami, w krwi ziemi i cieniu umys�u - jeszcze nie przem�wi�o.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale kiedy to zrobi... by� mo�e nikt nie b�dzie w stanie tego powstrzyma�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_054 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_054;
	
	if (Bonus_ItWr_BookXp[54])	{	description = "Cienie bez imienia I (przeczytane)";	}
	else						{	description = "Cienie bez imienia I";				};
	
	TEXT[0]						=	"Spisano z zapisk�w mistrza nekromancji";
	TEXT[1]						=	"Ralkara Morna, niegdy� ucznia Kr�gu Wody,";
	TEXT[2]						=	"p�niej wygnanego. Odnaleziono w ruinach Yrras.";
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
				Doc_PrintLines	(nDocID,  0, "Nie ka�da dusza, kt�r� wzywamy, odpowiada. Nie ka�da przyzywana istota przychodzi z miejsca, kt�re da si� opisa�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez lata studiowa�em rytua�y nekromantyczne - te zachowane w ruinach, zakazane przez kr�gi mag�w, przepisywane w szeptach z jednego martwego j�zyka na inny.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pocz�tkowo s�dzi�em, �e przywo�uj�c szkielet, o�ywiam zw�oki - nic wi�cej. Ale w kt�rym� momencie zrozumia�em: to nie s� po prostu zw�oki. To nie jest tylko cia�o. Jest w nim co� jeszcze.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Kiedy przyzywamy szkielet - nie pytamy, czyj on by�. Nie prosimy duszy o zgod�. A jednak istota wstaje i wykonuje rozkazy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dlaczego? Je�li to tylko magia o�ywiaj�ca materi� - sk�d pos�usze�stwo? Je�li to duch, czemu si� nie buntuje?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Najbardziej niepokoj�ce s� demony. Pojawiaj� si� znik�d - nie z ognia, nie z ziemi, ale jakby przesi�ka�y przez rzeczywisto��.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nikt ich nie widzia�, zanim je przyzwa�, a mimo to istniej� w formach, kt�rych nigdy nie zapomn�. Maj� struktur�, cel, z g�ry okre�lony spos�b dzia�ania - jakby by�y cz�ci� wi�kszego porz�dku, do kt�rego nie mamy dost�pu.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_055 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_055;
	
	if (Bonus_ItWr_BookXp[55])	{	description = "Cienie bez imienia II (przeczytane)";	}
	else						{	description = "Cienie bez imienia II";					};
	
	TEXT[0]						=	"Spisano z zapisk�w mistrza nekromancji";
	TEXT[1]						=	"Ralkara Morna, niegdy� ucznia Kr�gu Wody,";
	TEXT[2]						=	"p�niej wygnanego. Odnaleziono w ruinach Yrras.";
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
				Doc_PrintLines	(nDocID,  0, "Wiem, co m�wi� kap�ani Beliara. �e te istoty pochodz� z jego wymiaru. Ale czym on jest? Krain� �mierci? Otch�ani� dusz? A mo�e magazynem pos�usznych form, z kt�rych korzystaj� ci, kt�rzy znaj� odpowiednie znaki?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pewnego razu przyzwa�em istot� - nieznan�, ogromn�, bez imienia. Gdy tylko si� pojawi�a, us�ysza�em co�. Nie s�owami. W g�owie. Pytanie: �Czy ty te� �nisz?�. Nic wi�cej. Nigdy p�niej �adne stworzenie przyzwane nie powiedzia�o ani s�owa.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Od tamtej pory wierz�, �e nie wszystkie te byty s� pozbawione �wiadomo�ci. �e niekt�re s� przebudzone. �e po drugiej stronie nie ma raju, nieba ani piek�a, tylko co� niesko�czonego, zimnego, czekaj�cego.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Niekt�re z tych istot to nie zmarli. To ci, kt�rzy nigdy si� nie narodzili. Pocz�tkowo my�la�em, �e to tylko metafora. Ale teraz wierz� inaczej.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "By� mo�e to szcz�tki dusz, kt�rych nigdy nie tchn�o �ycie. By� mo�e to pragnienia - tak silne, �e nie zgas�y nawet w niebycie. Gdy ich przyzywamy, nie budzimy zmar�ych. Budzimy pami�� �ycia, kt�re nigdy nie mia�o pocz�tku.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie s� duchami - nie maj� wspomnie�, nie znaj� j�zyka. Ale pragn� istnie� - i by� mo�e to pragnienie przyci�ga ich do naszych zakl��. Nie buntuj� si�, bo nie znaj� wolno�ci. Nie m�wi�, bo nigdy nie m�wili.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_056 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_056;
	
	if (Bonus_ItWr_BookXp[56])	{	description = "Cia�o bez g�osu I (przeczytane)";	}
	else						{	description = "Cia�o bez g�osu I";					};
	
	TEXT[0]						=	"Spisane przez Adepta Nemerana,";
	TEXT[1]						=	"ostatniego ucznia mistrza Allirema,";
	TEXT[2]						=	"rok 41 po Ciszy Wewn�trznej Bramy.";
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
				Doc_PrintLines	(nDocID,  0, "Cia�o bez g�osu");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie wszystkie zbrodnie zaczynaj� si� od krzyku. Niekt�re od milczenia. Tak by�o w przypadku mojego mistrza - alchemika Allirema, cz�owieka, kt�rego imienia nie ma ju� w kronikach, a kt�rego dom odwiedzili stra�nicy dopiero po jego �mierci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Znaleziono go martwego przy stole destylacyjnym, z kapturem nasuni�tym na oczy. Obok le�a� dziennik - zamkni�ty na prosty zatrzask, ale zapisany szyfrem, kt�ry rozumia� tylko on. Tylko ja.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Allirem mia� w zwyczaju zapisywa� najwa�niejsze notatki od ko�ca, w odbiciu lustrzanym i ze zmienionym uk�adem symboli. Wiedzia�em, jak je czyta�. I zrozumia�em, co pr�bowa� ukry�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W piwnicy - pod warsztatem, kt�rego drzwi by�y zabezpieczone jedynie prostym ryglem - odkryto sze�� os�b. Nagi tors, posiniaczone ko�czyny, oczy szeroko otwarte, nie spuszczaj�ce wzroku z nikogo, kto si� zbli�y�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "�yli. Ale nie reagowali na s�owa, krzyki, b�agania. Tylko na dotyk. Wtedy dr�eli. Patrzyli prosto w oczy. I czekali.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Stra� poprosi�a o pomoc kogo�, kto m�g�by ich zrozumie� - lekarza miejskiego, znachora imieniem Tarven. Cz�owieka uczciwego, lecz nadto ufnego.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_057 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_057;
	
	if (Bonus_ItWr_BookXp[57])	{	description = "Cia�o bez g�osu II (przeczytane)";	}
	else						{	description = "Cia�o bez g�osu II";					};
	
	TEXT[0]						=	"Spisane przez Adepta Nemerana,";
	TEXT[1]						=	"ostatniego ucznia mistrza Allirema,";
	TEXT[2]						=	"rok 41 po Ciszy Wewn�trznej Bramy.";
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
				Doc_PrintLines	(nDocID,  0, "Cia�o bez g�osu");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLines	(nDocID,  0, "Uzna�, �e to objaw traumy, by� mo�e d�ugotrwa�ego uwi�zienia. Przeni�s� ich do szpitala i - to jego najwi�kszy b��d - nie umie�ci� w izolatkach, lecz w zwyk�ych pokojach. �Niech zaznaj� przestrzeni. Niech zaczn� oddycha�,� m�wi�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nazajutrz byli ju� poza budynkiem. Tego samego dnia w r�nych cz�ciach miasta dosz�o do siedmiu zab�jstw.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "�adnego �wiadectwa walki. Cia�a wykrwawione, najcz�ciej bez ko�czyn - oderwanych, nie odci�tych. Jeden z patroluj�cych �o�nierzy zosta� znaleziony z wyrwanym mostkiem. U Tarvena nie znaleziono nikogo. Tylko otwarte drzwi i przewr�cony stolik.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W rozszyfrowanym dzienniku Allirema nie by�o receptury. Ale by�a teoria. Pisa� o oddzieleniu �wiadomo�ci od reakcji. O stworzeniu istoty, kt�ra �reaguje zawsze, lecz nie decyduje nigdy�. Kt�ra nie s�yszy, lecz wyczuwa obecno��. Nie rozumie j�zyka, lecz rozpoznaje bicie serca.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To nie byli szale�cy. To nie by�y bestie. To byli ludzie, z kt�rych wydobyto rozum, pozostawiaj�c tylko mi�nie, zmys�y, instynkt.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W laboratorium znalaz�em zasuszone zio�a, oznaczone star� notacj� chemiczn�. Ich zapach przypomina� popi� po deszczu. Uda�o mi si� je zidentyfikowa�. I odtworzy� wywar.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Formu�a jest gotowa. Dzie�o prawie uko�czone. Postanawiam je doko�czy�.");
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
	TEXT[1]						=	"o popularnych formach rozrywki r�nych";
	TEXT[2]						=	"warstw spo�ecznych Archolos i kontynentu.";
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
				Doc_PrintLines	(nDocID,  0, "Ludzie, odk�d tylko zeszli z drzew (a by� mo�e nawet wcze�niej), wymy�lali gry. Gdy nie �cigaj� si� o chleb, �cigaj� si� o punkty, monety lub dum�. Gra to ma�y �wiat, w kt�rym obowi�zuj� inne prawa - i by� mo�e w�a�nie dlatego tak bardzo nas do niej ci�gnie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gra w ko�ci � gra prostych r�k i szybkich decyzji");
				Doc_PrintLines	(nDocID,  0, "Najstarsza ze znanych form hazardu, grana wsz�dzie tam, gdzie ziemia twarda, a st� zb�dny. Ulubiona rozrywka wie�niak�w, bandyt�w, pasterzy i pijak�w. Jej zasady s� proste: rzucasz - wygrywasz albo przeklinasz.");
				Doc_PrintLines	(nDocID,  0, "Uczeni sugeruj�, �e pierwsze ko�ci nie zosta�y stworzone przez ludzi. Niekt�re podania przypisuj� ich wynalezienie goblinom, kt�re w czasach dawnych wojennych niewoli mia�y bawi� si� rzucaniem zwierz�cych z�b�w w przerwach od �up�w i krzyk�w. Gdy ludzie poznali t� gr�, upro�cili regu�y i nadali jej znaczenie - niekt�rzy twierdz�, �e nawet religijne: w ko�cu to los decyduje.");
				Doc_PrintLines	(nDocID,  0, "Do dzi�, w karczmach i norach, ko�ci uderzaj� o drewno, tocz�c si� z d�wi�kiem decyzji przeznaczenia. Wiele b�jek zacz�o si� od przegranej rundy. Jeszcze wi�cej przyja�ni - od wsp�lnego rzutu, kt�ry obu graczy zostawi� w n�dzy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Gra w karty � sztuka blefu i pami�ci");
				Doc_PrintLines	(nDocID,  1, "Karty s� gr� ludzi, kt�rzy maj� zbyt wiele do stracenia, by polega� na samym szcz�ciu. Rozpowszechnione w�r�d mieszczan, stra�y, pirat�w i najemnik�w, s� czym� wi�cej ni� zabaw� - to �wiczenie spostrzegawczo�ci, zapami�tywania, oceny charakteru i... k�amstwa.");
				Doc_PrintLines	(nDocID,  1, "Najbardziej znan� odmian� jest Czarny Jack, stworzony - jak g�osi legenda - przez pirata imieniem Czarny Jack Marron, kt�ry gra� nim z za�og� o prawo dowodzenia. Twierdzi�, �e ta gra uczy wszystkiego, co wa�ne na morzu: �Kiedy bra�, kiedy czeka� i kiedy k�ama� z u�miechem.�");
				Doc_PrintLines	(nDocID,  1, "Karty szybko trafi�y do miast i garnizon�w, gdzie w godzinach wolnych od patroli i pracy rozgrywano ca�e wieczory. Stra�nicy m�wi�, �e po trzech rundach poznasz cz�owieka lepiej ni� po trzech dniach rozmowy.");
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
	TEXT[1]						=	"o popularnych formach rozrywki r�nych";
	TEXT[2]						=	"warstw spo�ecznych Archolos i kontynentu.";
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
				Doc_PrintLines	(nDocID,  0, "Gra w szachy � zderzenie umys��w");
				Doc_PrintLines	(nDocID,  0, "Szachy to gra arystokrat�w, uczonych i mag�w. Stworzone - wed�ug tradycji - przez nadwornego stratega Aranthyela z Avenord, kt�ry chcia� szkoli� ksi�cia nie tylko w bitwie, ale i w przewidywaniu. Ka�da figura symbolizuje element w�adzy: kr�la, rad�, rycerzy, duchowie�stwo i lud. A ka�dy ruch - skutek decyzji.");
				Doc_PrintLines	(nDocID,  0, "Szachy nie ucz� szybkiej reakcji, lecz cierpliwo�ci. W zamkach i pa�acach graj� w nie w milczeniu, popijaj�c wino, patrz�c przeciwnikowi w oczy i my�l�c trzy ruchy naprz�d. Magowie, kt�rzy grywaj� w szachy, uwa�aj� t� gr� za form� magii mentalnej, bo kto przewidzi przysz�o�� planszy, ten mo�e zrozumie� przysz�o�� �wiata.");
				Doc_PrintLines	(nDocID,  0, "To r�wnie� jedyna gra, w kt�rej zwyk�y pionek mo�e sta� si� kr�low�. I by� mo�e dlatego niekt�rych przera�a najbardziej.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Powiedz mi, w co grasz � a powiem ci, kim jeste�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ka�da warstwa spo�eczna ma swoj� gr� - bo ka�da ma swoje l�ki i pragnienia.");
				Doc_PrintLines	(nDocID,  1, "* Wie�niak ufa losowi, wi�c rzuca ko��mi.");
				Doc_PrintLines	(nDocID,  1, "* Najemnik ufa swojej pami�ci i os�dowi, wi�c gra w karty.");
				Doc_PrintLines	(nDocID,  1, "* Szlachcic ufa planowi i hierarchii, wi�c przesuwa figury po planszy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale ka�dy z nich - cho� inny - gra z tego samego powodu: by przez chwil� zapomnie�, �e �wiat poza sto�em nie daje tylu regu�. Ani tylu zwyci�stw.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_060 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_060;
	
	if (Bonus_ItWr_BookXp[60])	{	description = "Godzina �mierci I (przeczytane)";	}
	else						{	description = "Godzina �mierci I";					};
	
	TEXT[0]						=	"Ostatnie zapiski mistrza Deirama,";
	TEXT[1]						=	"zegarmistrza z p�nocnego";
	TEXT[2]						=	"kwarta�u Gildenvy, rok nieznany.";
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
				Doc_PrintLines	(nDocID,  0, "Godzina �mierci");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez czterna�cie lat prowadzi�em warsztat przy Bruku P�nocnym. Wszyscy wiedzieli, �e by� wcze�niej w�asno�ci� starego mistrza Argosa - mojego nauczyciela i przyjaciela. Po jego �mierci, do�� nag�ej, przej��em sklep i ca�� zawarto��, jak sam mi wcze�niej zaleci�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W�r�d wielu zegar�w, z kt�rych wi�kszo�� zna�em od dawna, jeden budzi� moje zaciekawienie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "By� nietypowy: wykonany z ciemnego drewna bez zdobie�, z jedn� tylko, grub� wskaz�wk�. Nie reagowa� na naci�g, nie otwiera� si�, nie dawa� si� rozebra�. Wskaz�wka zawsze sta�a w tym samym miejscu - 2:11.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pr�b naprawy nie podejmowa�em od razu. Zegar wydawa� si� martwy, jakby by� atrap�. Dopiero po �mierci mojej �ony - nag�ej, bez b�lu, bez przyczyny - przypomnia�em sobie, �e spojrza�em wtedy na ten zegar. Wskazywa� dok�adnie 2:11.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "My�la�em, �e to przypadek. Ale dwa dni p�niej zauwa�y�em, �e wskaz�wka zmieni�a pozycj�. Teraz sta�a nieruchomo na 5:37.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zacz��em sprawdza� mechanizm - nie znalaz�em �adnego. Ani spr�yny, ani przek�adni. Nie powinien dzia�a�. A jednak, kiedy wybi�a godzina 5:37, zmar� m�j starszy syn. Po prostu osun�� si� z krzes�a przy �niadaniu. Bez krzyku. Bez ostrze�enia.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_061 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_061;
	
	if (Bonus_ItWr_BookXp[61])	{	description = "Godzina �mierci II (przeczytane)";	}
	else						{	description = "Godzina �mierci II";					};
	
	TEXT[0]						=	"Ostatnie zapiski mistrza Deirama,";
	TEXT[1]						=	"zegarmistrza z p�nocnego";
	TEXT[2]						=	"kwarta�u Gildenvy, rok nieznany.";
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
				Doc_PrintLines	(nDocID,  0, "Godzina �mierci");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zegar zn�w zmieni� godzin�. Spr�bowa�em go zniszczy� - siekier�, potem m�otem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Znikn�� z warsztatu, a kiedy wr�ci�em po godzinie, sta� zn�w tam, gdzie wcze�niej. W nienaruszonym stanie. Ze wskaz�wk� przesuni�t� dalej. Wtedy zmar� m�j m�odszy syn.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie pr�bowa�em ju� go dotyka�. Ale zacz��em go obserwowa�. I zrozumia�em: zawsze wskazuje kolejn� godzin� �mierci - ale nigdy nie m�wi, kogo ona dotyczy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Od tamtej pory codziennie, tu� przed wybiciem godziny, kt�r� pokazuje, podchodz� do tarczy i r�cznie przesuwam wskaz�wk� o jeden dzie� do przodu. Nie gwa�townie. Powoli. Cicho.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy to co� zmienia. Mo�e nie. Mo�e tylko op�niam to, co nieuniknione. Ale dop�ki zegar mnie s�ucha, b�d� to robi�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzi� wskazuje 6:42. Zaraz b�dzie 6:41. Musz� ko�czy�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_062 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_062;
	
	if (Bonus_ItWr_BookXp[62])	{	description = "Jak rodz� si� potwory I (przeczytane)";	}
	else						{	description = "Jak rodz� si� potwory I";				};
	
	TEXT[0]						=	"Zapisy kap�ana Enratha z Domu R�wnowagi,";
	TEXT[1]						=	"sporz�dzone w �wi�tyni Adanosa w Setarze,";
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
				Doc_PrintLines	(nDocID,  0, "Jak rodz� si� potwory");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Cz�owiek od zawsze odr�nia� istoty znane od nieznanych. Te pierwsze nazwa� zwierz�tami. Te drugie - potworami.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Niekt�rzy pr�buj� wprowadza� dodatkowe podzia�y, m�wi�c o bestiach, monstrum czy demonach. Ale w istocie wszystko sprowadza si� do jednej granicy: mi�dzy tym, co pochodzi z naturalnego porz�dku �wiata, a tym, co nie powinno istnie�, a jednak istnieje.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wilk, jele�, �cierwojad, pe�zacz - wszystkie te istoty, jakkolwiek gro�ne, maj� krew, ko�ci, zmys�y, potrzeby. Poluj�, broni� si�, rozmna�aj�. Mo�na je zrozumie�. Mo�na je nawet oswoi�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ale czym s� potwory?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie m�wi� tu o nazwie, jak� posp�lstwo nadaje ka�demu, czego si� boi. M�wi� o istotach, kt�rych natura nie wynika z narodzin, lecz z przemiany.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W�r�d nich znajdziemy topielce - ludzi, kt�rzy uton�li samotnie, w b�lu, cz�sto niesprawiedliwie. Wisielce - cia�a tych, kt�rzy zgin�li zdradzeni lub oskar�eni fa�szywie. �agwie - kobiety, kt�re sp�on�y na stosie, cho� nie zna�y �adnych czar�w. I wiele innych, kt�rym �mier� przysz�a nie za grzechy, lecz za cudze winy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie s� to duchy, cho� pami�taj�. Nie s� to cia�a, cho� poruszaj� si� i atakuj�. Nie s� te� w pe�ni �wiadome - ale ich istnienie opiera si� na jednym wsp�lnym elemencie: �alu.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_063 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_063;
	
	if (Bonus_ItWr_BookXp[63])	{	description = "Jak rodz� si� potwory II (przeczytane)";	}
	else						{	description = "Jak rodz� si� potwory II";				};
	
	TEXT[0]						=	"Zapisy kap�ana Enratha z Domu R�wnowagi,";
	TEXT[1]						=	"sporz�dzone w �wi�tyni Adanosa w Setarze,";
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
				Doc_PrintLines	(nDocID,  0, "Jak rodz� si� potwory");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To w�a�nie �al zdaje si� by� kluczem. Nie ten cichy, zamkni�ty w sercu, lecz ten, kt�ry nie mo�e znale�� uj�cia. �al zrodzony z niesprawiedliwo�ci, kt�ry nie mo�e zosta� zapomniany. �al, kt�ry nie ko�czy si� wraz ze �mierci�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To prowadzi mnie do innego pytania: czym s� demony?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zapisano w wielu traktatach, �e Innos stworzy� ludzi, a Beliar - demony. Ale je�li potwory, jak pokazuj� przyk�ady, nie zosta�y stworzone - tylko sta�y si� - czy nie mog�oby to samo dotyczy� demon�w?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Skoro potwory powstaj� z ludzi przez �al, zdrad� i niesprawiedliwo��, to z czego powsta�y demony? Czy Beliar naprawd� je stworzy�, czy mo�e one te� z czego� wyros�y?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Je�li Innos obdarzy� ludzi wol� i �wiat�em, a Beliar zosta� odrzucony, zapomniany, znienawidzony - to mo�e demony s� nie jego dzie�em, lecz jego odpowiedzi�. Mo�e tak, jak potwory rodz� si� z �alu jednostek, demony zrodzi�y si� z �alu samego boga.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wtedy �atwiej zrozumie�, dlaczego demony domagaj� si� czci. Dlaczego zak�adaj� sekty, m�wi� j�zykiem ludzi, pragn� �wi�ty�, ofiar, imion. Nie jak bogowie - ale jak ci, kt�rzy kiedy� nimi chcieli by�. Jakby te� mia�y w sobie echo tego, co zosta�o nies�usznie odrzucone.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Mo�na by w�wczas powiedzie�, �e mi�dzy lud�mi a bogami jest mniej r�nic, ni� chcieliby�my przyzna�. Ale potwory? One nadal nie pasuj� do �adnego porz�dku. Nie s�u�� ani Innosowi, ani Beliarowi, ani Adanosowi. Nie maj� celu. Nie maj� przysz�o�ci. A jednak istniej�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "I to w�a�nie ich istnienie niepokoi mnie najbardziej.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_064 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_064;
	
	if (Bonus_ItWr_BookXp[64])	{	description = "Zeznanie Gorina I (przeczytane)";	}
	else						{	description = "Zeznanie Gorina I";					};
	
	TEXT[0]						=	"Spisane przez skryb� miejskiego garnizonu,";
	TEXT[1]						=	"w obecno�ci porucznika Ervana.";
	TEXT[2]						=	"Zeznaje niejaki Gorin zwany �Szybkim�.";
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
				Doc_PrintLines	(nDocID,  0, "Ja... ja wiem, �e to wygl�da �le. Ale to nie tak mia�o by�. My nie jeste�my a� tak g�upi, jak to wygl�da�o. To wszystko przez niego. Przez tego, co si� zowie... Ethelard.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tak, tak si� przedstawi�. Ethelard. Ju� wtedy trzeba by�o si� zorientowa�, �e co� nie gra.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Bandyta nie ma na imi� Ethelard. Bandyta to masz, no, �Szczur�, �Cichy Brum�, �Kocio��, co� normalnego. A on od razu - Ethelard, mi�o mi was pozna�, panowie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pojawi� si� kt�rego� wieczora w karczmie u Maura. Siedzia� sam, w czystej koszuli (czystej!), popija� wino (wino!), a jak Trask do niego zagada�, to powiedzia�: �Z przyjemno�ci� do��cz�, je�li wasze dzia�ania nie naruszaj� moich zasad etycznych.�");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "No i co mieli�my zrobi�? Trzeba ludzi, jeden nasz le�a� po ci�ciu, wi�c go przyj�li�my. A on... no, niby pomaga�. Ale jako� tak... dziwnie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Na napadzie na w�z z winem zamiast po prostu rzuci� si� z krzak�w, on wyszed� przed zaprz�g, rozpostar� r�ce i zacz�� przemow�. �Wybaczcie przemoc, kt�r� jeste�cie zmuszeni za chwil� prze�y� - to powiedzia�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "A potem si�gn�� po n� i machn�� nim w powietrze... w powietrze, panie! Nawet nie trafi� nikogo!");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_065 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_065;
	
	if (Bonus_ItWr_BookXp[65])	{	description = "Zeznanie Gorina II (przeczytane)";	}
	else						{	description = "Zeznanie Gorina II";					};
	
	TEXT[0]						=	"Spisane przez skryb� miejskiego garnizonu,";
	TEXT[1]						=	"w obecno�ci porucznika Ervana.";
	TEXT[2]						=	"Zeznaje niejaki Gorin zwany �Szybkim�.";
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
				Doc_PrintLines	(nDocID,  0, "Ale dobra, wino ukradli�my.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najgorzej by�o z t� ostatni� akcj� - przez kt�r� tu siedz�. Mieli�my zakosi� kasetk� z podatkami z domu urz�dnika. Zwyk�a robota: wej��, zabra�, wyj��. A Ethelard? Ethelard mia� plan.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Napisa� list. LIST. Do urz�dnika. Podpisany: �Wasz z�odziej z sumieniem�. Kaza� go pod�o�y� pod drzwi. Napisa� tam, �e �przyjdziemy dzi� w nocy zabra�, co wasze pa�stwo zabra�o pierwsze�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "No i co zrobi� urz�dnik? Oczywi�cie wezwa� stra�. Pi�tnastu ludzi w �rodku, panie. Z psami.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jak nas z�apali, Ethelard tylko poprawi� mankiet i powiedzia�: �Pora�ka, ale czysta moralnie.� A potem si� uk�oni�!");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, co to by� za cz�owiek. M�wi�, �e studiowa� retoryk� w Setarze i �e by� kiedy� wyk�adowc�. Ale nikt nie wiedzia�, czemu odszed�. Mo�e dlatego, �e m�wi� jak ksi��ka, ale �y� jak idiota.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To wszystko. M�wi�, jak by�o.");
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
	TEXT[2]						=	"w 12 roku po ustanowieniu Rady Pi�ciu.";
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
				Doc_PrintLines	(nDocID,  0, "W pocz�tkach ludzkiego zg��biania sztuk magicznych, zanim jeszcze ustanowiono kr�gi wtajemniczenia, zanim nadano imiona runom i zacz�to katalogowa� w�a�ciwo�ci pierwiastk�w, magia by�a domen� elit.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tylko uczniowie �wi�ty�, adepci �yj�cy w cieniu wie� i bibliotek, mieli do niej dost�p - i tylko w celach, kt�re uznawano za wznios�e.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dlatego tak zaskakuj�cy by� przypadek cz�owieka imieniem Siran - prostego my�liwego z pogranicza G�r P�nocnych, kt�ry nie tylko poj�� magi� bez mistrza, ale uczyni� z niej narz�dzie codziennego u�ytku.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Z opowie�ci miejscowej ludno�ci wynika, �e Siran nie d��y� do pot�gi. Pragn�� jedynie... wygody. Polowa� na istoty, kt�re wychodzi�y z nor tylko noc� - istoty czu�e na �wiat�o, a zarazem zbyt niebezpieczne, by zbli�a� si� do nich z pochodni� w r�ce.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Tak wi�c, z pomoc� instynktu i eksperyment�w, nauczy� si� przywo�ywa� iskr� �wiat�a, kt�ra unosi�a si� nad jego ramieniem. Dzi� to zakl�cie ucz� si� pocz�tkuj�cy magowie w ni�szych kr�gach, ale w�wczas by�o czym� nowym.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To �wiat�o nie spala�o, nie ogrzewa�o, nie b�yska�o - po prostu by�o. A Siran dzi�ki niemu m�g� celnie strzela� z �uku nawet w �rodku nocy.");
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
	TEXT[2]						=	"w 12 roku po ustanowieniu Rady Pi�ciu.";
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
				Doc_PrintLines	(nDocID,  0, "Z czasem, jak sam przyzna� jednemu z braci z klasztoru na Trzeciej Prze��czy, zacz�� si�ga� po magi� do innych rzeczy: podgrzewa� wod� w misce, by wypra� ubranie; przyci�ga� wod� z oddalonych strumieni; oczyszcza� �le wyprawione mi�so.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dla wi�kszo�ci mag�w jego dzia�ania uchodzi�yby za bezczeszczenie daru boskiego - dla niego by�y tylko pomoc� w �yciu. Ale to, co mia�o nast�pi� p�niej, przeros�o nawet nasze poj�cie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pewnej nocy Siran stan�� oko w oko z czym�, czego nie spodziewa� si� spotka� - potworem znanym miejscowym jako �kamienny kark�, rodzajem g�rskiego trolla. W obliczu �mierci, zamiast ucieka�, wyci�gn�� r�k� i wypowiedzia� zakl�cie, kt�re - jak twierdzi� - mia�o �zmusi� besti�, by sta�a si� mniej straszna�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "I sta�a si�. Skurczy�a si� do rozmiar�w du�ego psa. Oszo�omiona, uciek�a. Zakl�cie to, kt�re nazwali�my p�niej Zmniejszeniem, zosta�o dok�adnie przebadane przez nasz zakon.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wkr�tce przesz�o do arsena�u mag�w bitewnych, a potem do ka�dego najwy�szego kr�gu. Sta�o si� narz�dziem o wielkiej sile - a tak�e broni�, kt�ra zapocz�tkowa�a wygini�cie wielu smok�w. Tak bowiem dzia�a magia: nie w krzyku i ogniu, ale w prostocie geniuszu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Siran nie zbudowa� wie�y. Nie otworzy� szko�y. Nie napisa� �adnego traktatu. Ale to on pierwszy udowodni�, �e magia nie musi by� domen� wojen i kaplic, lecz mo�e by� obecna w myciu r�k i rozpalaniu ogniska.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wszyscy to poj�li. Wielu z nas potrzebowa�o lat, by zrozumie�, �e wielko�� zakl�cia nie zale�y od tego, jak g�o�no je wypowiesz - tylko od tego, jak dobrze rozumiesz, po co je tworzysz.");
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
	TEXT[1]						=	"stra�nika miejskiego. Przej�ty po jego znikni�ciu,";
	TEXT[3]						=	"obecnie przechowywany w archiwum stra�y.";
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
				Doc_PrintLines	(nDocID,  0, "Pocz�tkowo my�la�em, �e to sen. Zm�czenie po nocnej zmianie, mo�e nie do ko�ca przespane poranki. Ale sny nie maj� zapachu. Nie zostawiaj� odcisk�w.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pierwszy raz zdarzy�o si� to, gdy patrolowa�em portowe nabrze�a. Nagle... zapach smo�y, cho� nie by�o jej nigdzie w pobli�u.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Potem krzyk dziecka. Niewyra�ny, odleg�y. I obraz: kobieta w czerwonym fartuchu wci�gaj�ca co� w cie� pod pomostem. Nie zna�em jej, nigdy jej nie widzia�em. A jednak wiedzia�em, jak si� nazywa�a. Alvra. Wiedzia�em to z ca�� pewno�ci� � tak jakbym to ja tam wtedy by�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pocz�tkowo my�la�em: mo�e historia, kt�r� kiedy� us�ysza�em i zapomnia�em. Ale to si� powtarza�o. Z ka�d� kolejn� zmian� widzia�em wi�cej. Ale nie z moich w�asnych dni. Z przesz�o�ci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Widzia�em m�czyzn� grzebi�cego co� za karczm� �Pod Lutni��.");
				Doc_PrintLines	(nDocID,  1, "Widzia�em m�od� s�u�k� podsypuj�c� co� do kubka swojego pana.");
				Doc_PrintLines	(nDocID,  1, "Widzia�em ch�opca... ci�gn�cego trupa do studni.");
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
	TEXT[1]						=	"stra�nika miejskiego. Przej�ty po jego znikni�ciu,";
	TEXT[3]						=	"obecnie przechowywany w archiwum stra�y.";
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
				Doc_PrintLines	(nDocID,  0, "Niekt�re z tych zdarze� rozpozna�em. W kartotekach - sprawy niewyja�nione. Zamkni�te z braku dowod�w. Zapomniane. A teraz: obecne w mojej g�owie jakby to by�y moje w�asne wspomnienia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wszystkie wizje maj� wsp�ln� cech�. Zawsze ko�cz� si� cisz�. Nie d�wi�kow�. Cisz� decyzji. Jakby ten, kto to prze�y�... przesta� m�wi�. Przesta� istnie�. Albo zosta� zmuszony, by zapomnie�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pytanie, kt�re mnie prze�laduje, brzmi: czyje to wspomnienia? I dlaczego w�a�nie ja?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie powiedzia�em nikomu. Komendant uzna�by, �e si� wypali�em. Ale ka�dego dnia zapisuj� kolejne strz�py.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "I za ka�dym razem odnajduj� miejsce ze snu � i ono istnieje. Z�amana lampa. Krwawy �lad pod deszczem. Cienka szrama na drzwiach stajni. To nie halucynacje. To kto�... lub co�... pokazuje mi to, co zosta�o ukryte.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem jeszcze, czy to dar, czy przekle�stwo. Ale przysi�gam, �e je�li kiedy� rozwi��� te sprawy, wr�c� i opisz� je wszystkie. A je�li nie wr�c� - niech kto� przeczyta te s�owa i zrozumie, �e czasem prawda nie umiera. Tylko czeka, a� kto� sobie j� przypomni.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_070 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_070;
	
	if (Bonus_ItWr_BookXp[70])	{	description = "Lud rz�dz�cy I (przeczytane)";	}
	else						{	description = "Lud rz�dz�cy I";					};
	
	TEXT[0]						=	"Spisane przez lorda Emerika z rodu Langvenn,";
	TEXT[1]						=	"po wieczerzy z panem Aldorem z Warthall,";
	TEXT[2]						=	"roku 214 po Koronacji Rodu Wewn�trznego.";
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
				Doc_PrintLines	(nDocID,  0, "Lud rz�dz�cy samym sob�");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie s�dzi�em, �e doczekam dnia, w kt�rym przyjdzie mi usi��� i rozwa�a� pomys� r�wnie ob��ka�czy, co ten, kt�ry wczoraj pad� przy moim stole.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "M�j stary znajomy, pan Aldor - sk�din�d cz�ek wykszta�cony i z pewno�ci� trze�wo my�l�cy w sprawach gospodarki i fortyfikacji - odwa�y� si� zasugerowa�, �e przysz�o�ci� kr�lestw jest... w�adza ludu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tak, dobrze zapisuj� - nie rodu, nie krwi, nie prawa dziedzicznego, lecz ludu. Ludu, kt�ry mia�by �wybiera� swoich przyw�dc�w�, jak to uj��, z �po�r�d siebie�. Rozumiem przez to, �e rybak z nabrze�a mia�by g�os r�wny mojemu? A pastuch z przedg�rza m�g�by wskaza�, kto ma zasiada� na tronie?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Trudno mi by�o nie parskn�� �miechem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Oto bowiem koncepcja, w kt�rej tytu� kr�lewski - �wi�ty, nadany z woli samego Innosa, przekazywany przez krew i nauk� od pokole� - mia�by by� podwa�ony przez g�osy gminu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jakby ci, co nigdy nie trzymali pi�ra, mogli oceni� m�dro�� edykt�w. Jakby ci, co ledwie znaj� w�asne imi�, rozumieli, czym jest zarz�dzanie ziemiami, prawem, armi�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_071 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_071;
	
	if (Bonus_ItWr_BookXp[71])	{	description = "Lud rz�dz�cy II (przeczytane)";	}
	else						{	description = "Lud rz�dz�cy II";				};
	
	TEXT[0]						=	"Spisane przez lorda Emerika z rodu Langvenn,";
	TEXT[1]						=	"po wieczerzy z panem Aldorem z Warthall,";
	TEXT[2]						=	"roku 214 po Koronacji Rodu Wewn�trznego.";
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
				Doc_PrintLines	(nDocID,  0, "Lud rz�dz�cy samym sob�");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pan Aldor, z b�yskiem w oku, twierdzi�, �e �lud najlepiej wie, czego potrzebuje�. Rzek�bym raczej: �lud najlepiej wie, czego pragnie� - a to nie to samo. Dziecko pragnie s�odyczy, ale ojciec daje mu chleb. T�um pragnie zemsty, ha�asu, zmian - ale kraj potrzebuje porz�dku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zapyta�em go wi�c: a co, je�li lud wybierze g�upca? Albo �otra, kt�ry dobrze m�wi, ale �le rz�dzi? Odpowiedzia�: �w�wczas lud go odsunie�. Tak lekko to rzek�, jakby odsun�� w�adc� by�o r�wnie �atwe, co zmieni� piekarza.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wszak historia pe�na jest w�adc�w, kt�rych nie spos�b by�o ruszy�, cho� wszyscy chcieli. I pe�na jest lud�w, kt�re milcza�y, cho� wiedzia�y, �e powinni.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zapyta�em go te�, czy to nie oznacza, �e ka�dy m�g�by zosta� w�adc� - nawet syn kowala? Powiedzia�: �Je�li jest m�dry, czemu nie?� - i w tej chwili wiedzia�em ju�, �e nie jest to rozmowa o pa�stwie, ale o urojeniach.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W�adza bowiem to nie umiej�tno�� liczenia monet czy przemawiania z krzes�a na placu. W�adza to odpowiedzialno�� przekazywana przez krew, wsparta wychowaniem, honorem, i przyj�ta z b�ogos�awie�stwem Innosa. To nie gra. To nie targ. To brzemi�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "�wiat, w kt�rym mot�och wybiera swoich pan�w, nie b�dzie rz�dzony - tylko rzucany na wiatr. A wiatr nie zna lito�ci.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_072 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_072;
	
	if (Bonus_ItWr_BookXp[72])	{	description = "Rozwa�ania kata I (przeczytane)";	}
	else						{	description = "Rozwa�ania kata I";					};
	
	TEXT[0]						=	"Spisane przez Lewarka z Dareth,";
	TEXT[1]						=	"urz�dowego wykonawc� wyrok�w";
	TEXT[2]						=	"Kr�lewskiej Marchii P�nocnej.";
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
				Doc_PrintLines	(nDocID,  0, "Rozwa�ania kata");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kiedy by�em m�ody, my�la�em, �e zadaniem kata jest przecina� g�owy, a nie my�li. �e moje r�ce s�u�� kr�lowi, a nie sumieniu. Myli�em si�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Egzekucja nie zaczyna si� od podniesienia ostrza. Zaczyna si� od spojrzenia. Tego kr�tkiego, przed zawi�zaniem oczu - je�li je w og�le wi���.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Spojrzenie m�wi wszystko. Winni patrz� z dum� lub w�ciek�o�ci�. Niewinni... patrz� w milczeniu. Jakby pytali, czy na pewno mam prawo.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Widzia�em r�ne oczy. Zrezygnowane, trz�s�ce si� ze strachu, pijane, pe�ne nienawi�ci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale najtrudniejsze by�y te, kt�re m�wi�y: �Wiem, �e nie powinienem tu by�.� I to nie chodzi o win� - chodzi o pora�k� �wiata, kt�ry zamiast ocali�, wola� uciszy�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "M�wi�, �e kat nie powinien zadawa� pyta�. Ale ja zacz��em zadawa� je po trzydziestym wykonanym wyroku.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_073 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_073;
	
	if (Bonus_ItWr_BookXp[73])	{	description = "Rozwa�ania kata II (przeczytane)";	}
	else						{	description = "Rozwa�ania kata II";					};
	
	TEXT[0]						=	"Spisane przez Lewarka z Dareth,";
	TEXT[1]						=	"urz�dowego wykonawc� wyrok�w";
	TEXT[2]						=	"Kr�lewskiej Marchii P�nocnej.";
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
				Doc_PrintLines	(nDocID,  0, "Rozwa�ania kata");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dlaczego najciszej umierali ci, kt�rzy pope�nili najgorsze zbrodnie, a najg�o�niej ci, kt�rzy ukradli chleb?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dlaczego miecz dr�a� mi w d�oni nie przy mordercy, ale przy m�odej kobiecie, kt�ra oszuka�a podatnika? Dlaczego kap�ani b�ogos�awi� moj� r�k�, a nie modl� si� o serce?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po czterdziestej egzekucji zacz��em prowadzi� notatki. Nie o ofiarach. O sobie. O tym, czy ostrze wesz�o g�adko. Czy cia�o upad�o w ciszy. Czy by�o to sprawiedliwe. Widzisz, prawdziwa egzekucja nie dotyczy tylko g�owy skaza�ca. Ona dotyczy r�wnowagi, jaka po niej zostaje w �wiecie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie ma nic ci�szego od miecza, kt�ry �cina cz�owieka nie maj�cego czym si� obroni�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Czasem kto� z t�umu szepta�: �Dobrze mu tak.� Czasem rzucano zgni�e warzywa. Ale raz - tylko raz - stara kobieta ukl�k�a i modli�a si� za mnie. Powiedzia�a: �To ty zap�acisz p�niej, nie on.� D�ugo �mia�em si� z tej g�upoty.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Teraz ju� nie. Z wiekiem odkry�em, �e pami�� kata jest gorsza ni� miecz. Bo miecz si� t�pi. Pami�� nie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie jestem filozofem. Nie jestem kap�anem. Ale wiem jedno: sprawiedliwo�� jest �lepa, tylko wtedy, gdy zbyt d�ugo patrzy�a. A kiedy zamykam oczy, widz� nie te g�owy, kt�re spad�y - tylko te, kt�re nie powinny by�y.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Je�li Innos naprawd� jest �wiat�em, niech spojrzy tak�e na nas, kt�rzy gasili cudze �wiece. Nie z powo�ania. Z obowi�zku.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_074 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_074;
	
	if (Bonus_ItWr_BookXp[74])	{	description = "U�miech z porcelany I (przeczytane)";	}
	else						{	description = "U�miech z porcelany I";					};
	
	TEXT[0]						=	"Fragmenty prywatnych zapisk�w kr�lewskiego";
	TEXT[1]						=	"b�azna znanego jako �Pstryczek�. Orygina�";
	TEXT[2]						=	"znaleziono schowany pod pod�og� w starej komnacie.";
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
				Doc_PrintLines	(nDocID,  0, "U�miech z porcelany");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ludzie lubi� mnie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Albo raczej: lubi� si� �mia�, gdy ja jestem. To nie to samo - ale i nie szkodzi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Robi� miny, pokazuj� j�zyk, przewracam si�, m�wi� jak wie�niak po piwie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Kiedy kr�l ma z�y dzie�, ka�e mnie zawo�a�. Gdy go�� z innego kr�lestwa kr�ci nosem - jestem �poprawiaczem atmosfery�. �miej� si�. To dobrze. �miech koi. Nawet je�li nie m�j.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pytaj� czasem, jak to jest by� b�aznem. M�wi�: �Lepiej ni� by� nieszcz�liwym!� I �miej� si�. Nie wiedz�, �e odpowied� by�a szczera.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie pami�tam ju� matki. Ojca troch�. Pami�tam jedynie dzie�, kiedy wszyscy zamilkli. Kiedy p�on�a wioska, a ja - dziecko jeszcze - sta�em w�r�d popio��w i nie p�aka�em, bo nikt nie zosta�, by mnie pocieszy�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_075 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_075;
	
	if (Bonus_ItWr_BookXp[75])	{	description = "U�miech z porcelany II (przeczytane)";	}
	else						{	description = "U�miech z porcelany II";					};
	
	TEXT[0]						=	"Fragmenty prywatnych zapisk�w kr�lewskiego";
	TEXT[1]						=	"b�azna znanego jako �Pstryczek�. Orygina�";
	TEXT[2]						=	"znaleziono schowany pod pod�og� w starej komnacie.";
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
				Doc_PrintLines	(nDocID,  0, "U�miech z porcelany");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "P�niej przygarn�a mnie trupa kuglarzy. Powiedzieli: ��miech to �ycie. Naucz si� �mia�, to ci� nie zabije.� Wi�c si� nauczy�em. Najpierw robi�em miny sam przed sob�. Potem przed innymi. Potem ju� nie wiedzia�em, czy to twarz, czy maska.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Byli tacy, co chcieli si� ze mn� zaprzyja�ni�. Ale wtedy zawsze milkn�. Bo co im powiem? �e czasem, kiedy �pi�, �ni mi si�, �e dalej gram, cho� nie ma ju� nikogo na widowni? �e najbardziej przera�a mnie cisza mi�dzy salwami �miechu?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie. Lepiej nie m�wi�. Nie chc� dawa� innym mojego ci�aru. Wystarczy, �e �miej� si� dzi�ki mnie. Wystarczy, �e cho� raz dziennie kto� dzi�ki mojej g�upocie zapomni o w�asnym smutku.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Kiedy jestem sam, zdejmuj� dzwonki z czapki. Cisza wtedy d�wi�czy bardziej ni� �miech. Ale nie p�acz�. Nie umiem ju�. Twarz si� nauczy�a u�miecha� - nawet w samotno�ci.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Mo�e to dobrze. Mo�e trzeba mie� kogo�, kto si� �mieje, nawet je�li nie ma ku temu powodu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "A je�li kiedy� zgin� - niech nie p�acz�. Niech si� �miej�. To by�by najlepszy pogrzeb dla kogo� takiego jak ja.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_076 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_076;
	
	if (Bonus_ItWr_BookXp[76])	{	description = "Era bez sn�w I (przeczytane)";	}
	else						{	description = "Era bez sn�w I";					};
	
	TEXT[0]						=	"Fragmenty dziennika alchemika";
	TEXT[1]						=	"Wernarda z Farrin, odnalezione";
	TEXT[2]						=	"w zrujnowanej wie�y badawczej.";
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
				Doc_PrintLines	(nDocID,  0, "Era bez sn�w");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dzie� 1");
				Doc_PrintLines	(nDocID,  0, "Oto pocz�tek nowego etapu w historii alchemii. Je�li moje obliczenia s� poprawne, a sk�adniki w�a�ciwie dobrane - dzi� wypi�em pierwsz� w dziejach mikstur� snob�jcz�.");
				Doc_PrintLines	(nDocID,  0, "Tak j� roboczo nazw�. Nie usypiaj�c�. Nie pobudzaj�c�. Po prostu - eliminuj�c� potrzeb� snu. P�ki co - czuj� si� �wietnie. Umys� jasny. Palce zr�czne. �adnych objaw�w zm�czenia.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Dzie� 2");
				Doc_PrintLines	(nDocID,  1, "Zyska�em siedem dodatkowych godzin na badania. Siedem! Czy mo�na przeceni� warto�� dodatkowego czasu? Tyle przecie� marnujemy, zamkni�ci w ciemno�ci w�asnych powiek. Mikstura dzia�a doskonale. Zapisuj� jej sk�ad w osobnym tomie - na wypadek, gdybym naprawd� zosta� odkrywc� stulecia.");
				Doc_PrintLines	(nDocID,  1, "Nie czuj� g�odu, nie czuj� senno�ci. Tylko... lekki niepok�j, gdy patrz� w ciemno��. Jakby co� poruszy�o si� za rega�em. M�g�bym przysi�c, �e ksi��ki przestawi�y si� same.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_077 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_077;
	
	if (Bonus_ItWr_BookXp[77])	{	description = "Era bez sn�w II (przeczytane)";	}
	else						{	description = "Era bez sn�w II";				};
	
	TEXT[0]						=	"Fragmenty dziennika alchemika";
	TEXT[1]						=	"Wernarda z Farrin, odnalezione";
	TEXT[2]						=	"w zrujnowanej wie�y badawczej.";
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
				Doc_PrintLines	(nDocID,  0, "Era bez sn�w");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dzie� 4");
				Doc_PrintLines	(nDocID,  1, "Zaczynam s�ysze� szepty. Tylko noc�. Nie s� uporczywe, nie przeszkadzaj� w pracy. Ale s�. Ciche, jakby kto� szepta� tu� przy uchu, cho� nikogo nie ma.");
				Doc_PrintLines	(nDocID,  1, "Raz widzia�em co�... cie�. W k�cie laboratorium. Pomy�la�em: cie� w�asnych l�k�w. Ale cie� nie powinien zostawia� �lad�w. A ten zostawi�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Dzie� 6");
				Doc_PrintLines	(nDocID,  1, "Zjawiaj� si� co noc. Najpierw tylko jako kontury. Potem oczy. Potem kszta�ty przypominaj�ce ludzi, ale jakby z�amanych. Skr�conych. Krzywych. Poruszaj� si� powoli. I nie patrz� mi w oczy. Tylko na d�onie.");
				Doc_PrintLines	(nDocID,  1, "Pisz� to o czwartej nad ranem. Cia�o dr�y, ale nie ze zm�czenia. Mikstura dzia�a - o tak. Nie �pi�. Nigdy. Nie �pi� ju� sz�sta noc z rz�du. Ale to nie ja jestem tym, kto si� budzi.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� 7?");
				Doc_PrintLines	(nDocID,  1, "Straci�em rachub�. Mikstura ko�czy si�. Ale nie mog� spa�. Nawet bez niej. Oni czekaj�. Czaj� si� w zgi�ciach �cian. Kiedy zamykam oczy, s� bli�ej. Nie zasn� ju� nigdy.");
				Doc_PrintLines	(nDocID,  1, "Pisz�, �eby pami�ta�. Bo ju� nie wiem, czy to moje my�li, czy ich. Nie wiem, czy te s�owa b�d� mia�y sens dla kogokolwiek. Ale je�li to czytasz - nie pr�buj zatrzyma� snu. Sen nie jest zmarnowanym czasem.");
				Doc_PrintLines	(nDocID,  1, "To bariera. I ja j� zburzy�em.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_078 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_078;
	
	if (Bonus_ItWr_BookXp[78])	{	description = "Na �a�cuchu wolno�ci I (przeczytane)";	}
	else						{	description = "Na �a�cuchu wolno�ci I";					};
	
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
				Doc_PrintLines	(nDocID,  0, "Na �a�cuchu wolno�ci");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kiedy stra�nik wr�czy� mi dokument, nie rozumia�em jego s��w. �Jeste� wolny�, powiedzia�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale ja nigdy nie zna�em tego s�owa. M�wi� je tak, jakby mia�o smak w ustach, jakby nios�o ci�ar z�ota. A dla mnie by�o puste. Brzmia�o jak �art. Jak zakl�cie bez znaczenia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wychowa�em si� w cieniu winnic, w kt�rych nie ros�a dla mnie ani jedna ki��. Spa�em w ziemiankach, jada�em resztki. Nie zna�em matki. Ojciec by� narz�dziem - tak jak ja. Nie nauczy�em si� my�le�, tylko reagowa�. Nie pyta�, tylko czeka�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "I nagle... wolno��?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dano mi dom. Ma�y, ale m�j. Dano mi ziemi�, chud�, ale moj�. Dano mi narz�dzia, od kt�rych nikt nie wymaga� krwi. Ale nie dano mi instrukcji. Co robi� o �wicie, kiedy nikt nie budzi? Co m�wi�, gdy nikt nie pyta?");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_079 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_079;
	
	if (Bonus_ItWr_BookXp[79])	{	description = "Na �a�cuchu wolno�ci II (przeczytane)";	}
	else						{	description = "Na �a�cuchu wolno�ci II";				};
	
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
				Doc_PrintLines	(nDocID,  0, "Na �a�cuchu wolno�ci");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie mia�em �a�cucha. Ale wci�� czu�em ci�ar na karku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ludzie wolni maj� swoje rytua�y. Modl� si�, przeklinaj�, �miej�, wybieraj�. Ja patrzy�em na nich jak na stworzenia z innego �wiata.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie ufa�em wolno�ci. Bo z wolno�ci� przychodzi odpowiedzialno��, a z ni� - wina. A ja zna�em tylko kar�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pr�bowa�em wr�ci�. Do maj�tku. Do dawnych pan�w. Powiedzieli: �Nie jeste� ju� nasz�. Nawet �a�cucha nie chcieli przyj�� z powrotem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "I wtedy zrozumia�em: nie jestem ju� nikim. Ale nie jestem te� kim�. Jestem p�kni�ciem mi�dzy dwoma �wiatami. Zbyt �wiadomy, by by� pos�usznym. Zbyt uformowany, by by� wolnym.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Je�li kiedy� spotkasz wyzwole�ca - nie pytaj go, jak mu jest na wolno�ci. Zapytaj: czy si� jej nauczy�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bo wolno�� to j�zyk, kt�rego nie ka�dy chce s�ucha�. A jeszcze mniej potrafi nim m�wi�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_080 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_080;
	
	if (Bonus_ItWr_BookXp[80])	{	description = "Kazania bez s�uchaczy I (przeczytane)";	}
	else						{	description = "Kazania bez s�uchaczy I";				};
	
	TEXT[0]						=	"Fragmenty dziennika kap�ana Meriona";
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
				Doc_PrintLines	(nDocID,  0, "Kazania bez s�uchaczy");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dzie� 1 po ciszy");
				Doc_PrintLines	(nDocID,  0, "Dzi� rano jak zwykle uderzy�em w dzwon na wezwanie. Echo by�o dziwne - jakby co� poch�ania�o d�wi�k. Wn�trze kaplicy te� jakby ch�odniejsze, cho� �wiece pali�y si� spokojnie. Bracia nie przyszli. Pomy�la�em, �e mo�e zaspa�em. Odprawi�em msz� sam.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dzie� 2 po ciszy");
				Doc_PrintLines	(nDocID,  0, "Brat Halven nie przyszed� na poranne modlitwy, co dziwne, bo zawsze zjawia� si� pierwszy. Odprawi�em kazanie o wytrwa�o�ci i roztropno�ci. Usiad�em w �awce i s�ucha�em w�asnego g�osu odbijaj�cego si� od kamieni.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Dzie� 4 po ciszy");
				Doc_PrintLines	(nDocID,  1, "Na �awkach kurz. Zacz��em wyciera�. �ciany nasi�kaj� cisz� jak wod�. Wczoraj m�wi�em o wsp�czuciu. Dzi� - o pustce. Nie wiem, do kogo. Ale kiedy wypowiadam s�owa, czuj� jak co� drga w powietrzu. Jakby s�ucha�o.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� 7 po ciszy");
				Doc_PrintLines	(nDocID,  1, "Woda w dzbanie nie zm�tnia�a mimo up�ywu dni. �wiece pal� si� r�wno. Nawet bez podcinania knot�w. Przysi�g�bym, �e kto� s�ucha zza drzwi zakrystii - s�ysz� tam oddech. Ale gdy zajrz� - nic.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� 12 po ciszy");
				Doc_PrintLines	(nDocID,  1, "Zacz��em m�wi� inne kazania. Nie te z ksi�gi. M�wi� o rzeczach, kt�re sam chcia�bym us�ysze�. Dzi� m�wi�em: �Nie jeste� sam, nawet je�li twoje s�owa nie maj� odpowiedzi. Bo sam fakt, �e m�wisz, znaczy, �e jeszcze kto� mo�e us�ysze�.�");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_081 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_081;
	
	if (Bonus_ItWr_BookXp[81])	{	description = "Kazania bez s�uchaczy II (przeczytane)";	}
	else						{	description = "Kazania bez s�uchaczy II";				};
	
	TEXT[0]						=	"Fragmenty dziennika kap�ana Meriona";
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
				Doc_PrintLines	(nDocID,  0, "Kazania bez s�uchaczy");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dzie� 19 po ciszy");
				Doc_PrintLines	(nDocID,  0, "W �nie przy�ni� mi si� ch�opiec w habicie. Mia� twarz, kt�rej nie zna�em, ale oczy jak brat Halven. Pyta�, czy jeszcze wierz�. Odpowiedzia�em mu w kazaniu: �Wiara to nie �wiat�o - to ch�� trwania w ciemno�ci, zanim �wiat�o zn�w si� pojawi.�");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dzie� 27 po ciszy");
				Doc_PrintLines	(nDocID,  0, "Kto� dzi� zapali� �wiec�, kt�rej nie dotyka�em. I po�o�y� chleb na o�tarzu. Nie wiem, czy to znak Innosa, czy �art. Ale podzi�kowa�em. Dzi�kowa� - to forma modlitwy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Dzie� 34 po ciszy");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy kto� jeszcze �yje w Kar Belfir. Ale wiem, �e co� mnie s�ucha. Mo�e nie ludzie. Mo�e nie B�g. Mo�e po prostu pami�� kamieni. Ale moje s�owa maj� wag�. Czuj� to po powietrzu, kt�re g�stnieje.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� 42 po ciszy");
				Doc_PrintLines	(nDocID,  1, "M�wi�em dzi� o �mierci, ale nie jak kap�an - jak cz�owiek. ��mier� to nie koniec. To przerwana rozmowa. A ka�da rozmowa mo�e by� wznowiona, je�li kto� zapami�ta� ostatnie s�owo.�");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� 50 po ciszy");
				Doc_PrintLines	(nDocID,  1, "Jestem sam. Ale nie samotny.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� 51 po ciszy");
				Doc_PrintLines	(nDocID,  1, "Je�li kto� kiedy� znajdzie te zapiski - niech pami�ta: g�os kap�ana nie zawsze trafia do uszu. Czasem trafia w przestrze�. I je�li tam co� jest... to ono s�ucha uwa�niej ni� ludzie.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_082 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_082;
	
	if (Bonus_ItWr_BookXp[82])	{	description = "Stra� w cieniu g�odu I (przeczytane)";	}
	else						{	description = "Stra� w cieniu g�odu I";					};
	
	TEXT[0]						=	"Fragmenty notatnika kapitana Werrana";
	TEXT[1]						=	"w czasie wielkiego g�odu w Roku Ognia.";
	TEXT[2]						=	"Zapiski ujawniono dopiero po jego �mierci.";
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
				Doc_PrintLines	(nDocID,  0, "Stra� w cieniu g�odu");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dzie� 12 od og�oszenia stanu niedoboru");
				Doc_PrintLines	(nDocID,  0, "Ograniczono racje do po�owy. Rozkazy m�wi� jasno: utrzyma� porz�dek, zabezpieczy� magazyny, zapobiec panice. Ale na ulicach ju� czai si� szept g�odu. Dzieci patrz� na stra�nik�w nie ze strachem - z nadziej�. My�l�, �e co� im damy. Nie rozumiej�, �e bronimy nie tylko porz�dku, ale te� chleba.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Dzie� 18");
				Doc_PrintLines	(nDocID,  1, "Z�apali�my trzech ch�opc�w, kt�rzy pr�bowali dosta� si� do magazynu. Najstarszy mia� mo�e dwana�cie lat. Twierdzili, �e chcieli tylko m�ki �dla chorej matki�. Nie ukradli niczego. Rozkaz by� jasny: przyk�ad. Publiczne wych�ostanie. Lud patrzy�. Matki zas�ania�y dzieciom oczy. Ale nie odwracali wzroku. Najgorsze by�o to, �e ja te� nie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� 22");
				Doc_PrintLines	(nDocID,  1, "Zabito piekarza. Nie przez nas - przez t�um. Zacz�y si� samos�dy. Od dzi� patrolujemy nie tylko ulice, ale i piekarnie, studnie, karczmy. Mamy by� wsz�dzie. Jeden z moich ludzi - Rehan - powiedzia�, �e �ni� mu si� chleb. Zwyk�y chleb, jeszcze ciep�y. I �e po przebudzeniu p�aka�. Nie wiedzia�em, co mu odpowiedzie�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_083 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_12.3ds";
	on_state[0]					=	Use_ItWr_BookXp_083;
	
	if (Bonus_ItWr_BookXp[83])	{	description = "Stra� w cieniu g�odu II (przeczytane)";	}
	else						{	description = "Stra� w cieniu g�odu II";				};
	
	TEXT[0]						=	"Fragmenty notatnika kapitana Werrana";
	TEXT[1]						=	"w czasie wielkiego g�odu w Roku Ognia.";
	TEXT[2]						=	"Zapiski ujawniono dopiero po jego �mierci.";
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
				Doc_PrintLines	(nDocID,  0, "Stra� w cieniu g�odu");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dzie� 27");
				Doc_PrintLines	(nDocID,  1, "Rada nakaza�a sporz�dzi� listy uprzywilejowanych. Szlachty, duchownych, urz�dnik�w. Ich racje maj� by� nietkni�te. Mieli�my wydzieli� zapas z magazynu i zabezpieczy� transport. Kiedy przyszli po niego mieszka�cy dzielnicy portowej, odm�wili�my. Wtedy pierwszy raz pad�y kamienie. Nie z�amali szyku, ale z�amali co� innego. W nas.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Dzie� 31");
				Doc_PrintLines	(nDocID,  1, "Zatrzymali�my kobiet�, kt�ra krad�a z przydzia�u dla kapitu�y. W jej worku by�a tylko sk�rka. Pytali�my: dlaczego? Powiedzia�a: �Bo moje dziecko zjada drewno.� M�j sier�ant nie zdo�a� wym�wi� wyroku. Ja go doko�czy�em. Zabrali�my j� do lochu. Po powrocie rzuci� he�m i odszed�. Powiedzia�, �e nie b�dzie d�u�ej chroni� chleba, kt�ry go nie dotyczy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� 34");
				Doc_PrintLines	(nDocID,  1, "Dzi� zastrzelili�my m�czyzn�. Pr�bowa� wedrze� si� do kuchni zamkowej. Zanim dobieg�, zd��y� krzykn��: �G��d nie zna praw!� Nie wiem, czy to krzyk rozpaczy, czy oskar�enie. Ale mia� racj�. G��d nie zna praw. Tylko ludzie pr�buj� je narzuci�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzie� 36");
				Doc_PrintLines	(nDocID,  1, "Nie �pi�. S�ysz� ich w nocy - nie tych z zewn�trz. Tych, kt�rych imion nie znam, a kt�rych skaza�em. Widz� ich twarze, cho� nigdy nie spojrzeli mi w oczy. Nie wiem, ilu jeszcze dni trzeba, by zrozumie�, czy post�powa�em s�usznie. Ale wiem, �e praworz�dno�� nie r�wna si� sprawiedliwo�ci. I �e nikt nie m�wi �o�nierzowi, co ma zrobi� z sumieniem po wszystkim.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_084 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_084;
	
	if (Bonus_ItWr_BookXp[84])	{	description = "Zanim zrozumia�em I (przeczytane)";	}
	else						{	description = "Zanim zrozumia�em I";				};
	
	TEXT[0]						=	"Spisane przez Emerona z Daranthor,";
	TEXT[1]						=	"w ostatnim roku jego �ycia. R�kopis";
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
				Doc_PrintLines	(nDocID,  0, "Zanim zrozumia�em dzie�");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Mia�em dwadzie�cia lat i uwa�a�em, �e �wiat jest zepsuty.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie wierzy�em w �adne prawa, nie ufa�em �adnym ludziom. W�adcy byli tyranami, kupcy z�odziejami, a nawet dzieci - c�, by�em przekonany, �e i one z czasem stan� si� cz�ci� tej machiny k�amstwa i przemocy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Mia�em w sobie ogie�, kt�ry chcia� wszystko spali�. Ka�da rana zadana �wiatu wydawa�a mi si� usprawiedliwiona, bo przecie� ��wiat sam pierwszy zrani� mnie�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pisa�em manifesty, wyg�asza�em tyrady, burzy�em si� przeciw ka�dej strukturze, ka�demu systemowi, ka�demu cz�owiekowi, kt�ry �mia� si� u�miecha�, jakby nic si� nie dzia�o. W moich oczach ka�dy u�miech by� ignorancj�, a ka�da zgoda - zdrad� rozumu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "A� kt�rego� dnia... po prostu usiad�em na kamieniu przy potoku.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wydarzy�o si� nic. Nikt mnie nie przekona�. �adna ksi�ga nie spad�a z nieba, �adna prawda nie zosta�a wypisana ogniem na �cianie. Po prostu usiad�em i patrzy�em, jak woda p�ynie mi�dzy kamieniami. I po raz pierwszy... niczego nie os�dzi�em.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_085 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_085;
	
	if (Bonus_ItWr_BookXp[85])	{	description = "Zanim zrozumia�em II (przeczytane)";	}
	else						{	description = "Zanim zrozumia�em II";				};
	
	TEXT[0]						=	"Spisane przez Emerona z Daranthor,";
	TEXT[1]						=	"w ostatnim roku jego �ycia. R�kopis";
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
				Doc_PrintLines	(nDocID,  0, "Zanim zrozumia�em dzie�");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie powiedzia�em, �e nurt jest zbyt s�aby. Nie oskar�y�em ga��zi, �e si� z�ama�a. Nie skarci�em ptaka, �e �piewa. Siedzia�em. I by�em. I... by�o dobrze. Od tamtej chwili wszystko zacz�o si� zmienia�. Nie od razu. Ale stopniowo.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zacz��em je�� wolniej. Przesta�em szuka� winnych, gdy chleb by� za twardy. Smakowa�. Tylko tyle. Zacz��em i��, gdzie mnie nogi nios�y - nie po to, by uciec od czego�, ani by co� udowodni�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po prostu szed�em. Patrzy�em na twarze ludzi. Przesta�em ich szuka� w nich oznak winy. Zobaczy�em zm�czenie. I czu�o��. I wstyd. I nadziej�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zacz��em rozumie�, �e �wiat nie jest ani z�y, ani dobry. On po prostu jest. I �e moje gniewne oczy by�y tylko kolejn� par� zniekszta�caj�cych szkie�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzi� mam ponad sze��dziesi�t lat. I czasem pytam siebie: czy zm�drza�em, czy po prostu zm�czy�em si� walk�? Nie wiem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale wiem, �e teraz, gdy s�o�ce zachodzi, nie pytam: dlaczego zachodzi? Nie krzycz�: czemu zn�w si� ko�czy dzie�? Patrz�. I my�l�: by�o pi�knie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "I jutro te� b�dzie. Bo jutro - to tylko kolejna okazja, by usi��� przy potoku.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_086 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_086;
	
	if (Bonus_ItWr_BookXp[86])	{	description = "Cud narz�dzi I (przeczytane)";	}
	else						{	description = "Cud narz�dzi I";					};
	
	TEXT[0]						=	"Notatki wynalazcy Seldrana z Warsztatu";
	TEXT[1]						=	"P�nocnego Kr�gu, sporz�dzone";
	TEXT[2]						=	"w latach 9�14 po Trzecim Przesileniu.";
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
				Doc_PrintLines	(nDocID,  0, "Cud narz�dzi");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Od czas�w najdawniejszych przypisywano magii wiele r�l: ogrzewania, ochrony, wskazywania drogi, przybli�ania rzeczy oddalonych. Lecz czym�e jest magia, je�li nie sposobem oddzia�ywania na �wiat - tak samo, jak r�ka, m�ot czy s�owo?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pragn� w niniejszym dokumencie przedstawi� niekt�re z moich do�wiadcze� i wynalazk�w, kt�re - jak s�dz� - stanowi� alternatyw� dla prostych zakl��.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie w duchu rywalizacji z magami, lecz jako dow�d, �e nie ka�da niezwyk�o�� musi pochodzi� z energii runicznej.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "O zjawisku zwanym �deszczochronem�");
				Doc_PrintLines	(nDocID,  1, "W dzieci�stwie nauczono mnie, i� aur� ochronn� mo�e przyzwa� tylko kap�an lub mag �ywio��w. D�ugo w to wierzy�em, dop�ki nie przysz�a burza, a ja, w po�owie drogi mi�dzy ku�ni� a domem, przem�k�em do ko�ci.");
				Doc_PrintLines	(nDocID,  1, "Tak narodzi� si� koncept deszczochronu - konstrukcji z drewna i gi�tych �eber, pokrytej impregnowanym p��tnem, rozpinanej nad g�ow�. Chroni przed deszczem nie si�� magiczn�, lecz przez fizyczn� przeszkod�.");
				Doc_PrintLines	(nDocID,  1, "Co osobliwe, niekt�rzy wie�niacy, widz�c mnie suchym po ulewie, oskar�yli mnie o u�ycie zakl�cia ukrycia. Paradoksalnie - urz�dzenie niemagiczne, uznane zosta�o za magiczne.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_087 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_087;
	
	if (Bonus_ItWr_BookXp[87])	{	description = "Cud narz�dzi II (przeczytane)";	}
	else						{	description = "Cud narz�dzi II";				};
	
	TEXT[0]						=	"Notatki wynalazcy Seldrana z Warsztatu";
	TEXT[1]						=	"P�nocnego Kr�gu, sporz�dzone";
	TEXT[2]						=	"w latach 9�14 po Trzecim Przesileniu.";
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
				Doc_PrintLines	(nDocID,  0, "Cud narz�dzi");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O oku z�o�onym, czyli przyrz�dzie powi�kszaj�cym");
				Doc_PrintLines	(nDocID,  0, "Niekt�re zakl�cia pozwalaj� widzie� daleko, inne - dostrzega� to, co ukryte. Ja postanowi�em zbada�, czy nie da si� osi�gn�� podobnego efektu przez soczewki.");
				Doc_PrintLines	(nDocID,  0, "Okaza�o si�, i� szk�o, odpowiednio szlifowane i na�o�one warstwami, mo�e znacz�co zmienia� spos�b, w jaki postrzegamy kszta�ty.");
				Doc_PrintLines	(nDocID,  0, "Uda�o mi si� stworzy� zestaw szkie� przybli�aj�cych, kt�ry pozwala dostrzec szczeg�y li�cia, w��kna tkaniny, a nawet niewidoczne go�ym okiem stworzenia �yj�ce w ka�u�ach. Z czasem urz�dzenie to zacz�li�my nazywa� wielookiem - cho� jego konstrukcja przypomina raczej pojedyncz�, wyd�u�on� tub�.");
				Doc_PrintLines	(nDocID,  0, "Niekt�rzy magowie uznali to za gro�ne - �widzie� zbyt wiele to zuchwa�o��, powiedzia� mi pewien starzec z Wie�y Cienia. Lecz czy� nie dlatego powsta�a magia, by dostrzega� wi�cej?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "O urz�dzeniu zapalaj�cym bez p�omienia");
				Doc_PrintLines	(nDocID,  1, "Zapalanie ognia, cho� banalne dla maga, bywa uci��liwe dla zwyk�ych rzemie�lnik�w. D�ugo szuka�em metody, by wywo�a� iskr� w spos�b natychmiastowy.");
				Doc_PrintLines	(nDocID,  1, "Po dziesi�tkach pr�b uda�o mi si� skonstruowa� tzw. zapalnik trzaskowy - niewielkie narz�dzie oparte na napr�onej spr�ynie, kt�ra przy naci�ni�ciu uderza stal� o krzemie�.");
				Doc_PrintLines	(nDocID,  1, "Cho� technika wydaje si� trywialna, efekt - ogie� na ��danie - sprawia, �e dla wielu wygl�da to jak zakl�cie. Zreszt�, jeden ze stra�nik�w miejskich poprosi� mnie, by przerobi� mu go na pier�cie�, by m�c �rzuca� iskr� z d�oni�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Uwagi ko�cowe");
				Doc_PrintLines	(nDocID,  1, "Nie twierdz�, �e moje urz�dzenia s� lepsze od magii. Twierdz� tylko, �e s� mo�liwe. I �e by� mo�e - tylko by� mo�e - istnieje �cie�ka poznania r�wnoleg�a wobec tej, kt�r� obrali arkani�ci. �cie�ka, w kt�rej nie potrzeba many, lecz cierpliwo�ci, nie r�d�ki, lecz klucza, i nie kapliczki, lecz warsztatu.");
				Doc_PrintLines	(nDocID,  1, "Niech przysz�o�� rozs�dzi, kt�re cuda przetrwaj� pr�b� czasu: te wyryte w kr�gu run, czy te zakute w stali i szkle.");
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
	TEXT[1]						=	"z Wie�y Zachodniej,";
	TEXT[2]						=	"rok 42 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Dusza. S�owo obecne w pie�niach kap�an�w, w zakl�ciach nekromant�w, w modlitwach konaj�cych. Od dziecka uczono mnie, �e istnieje - lecz nigdy nie pokazano jej dowodu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z czasem przesta�o mnie to zadowala�. Je�li dusza rzeczywi�cie stanowi esencj� �ycia, to dlaczego nie pozostawia po sobie �ladu w �wiecie, kt�ry potrafimy zmierzy�, zwa�y�, zbada�?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Moje badania rozpocz��em od najprostszych �rodk�w. Waga precyzyjna, stworzona wed�ug modelu z Khorinis, pozwoli�a mi zbada� cia�o w chwili �mierci.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zauwa�y�em, �e w niekt�rych przypadkach masa cia�a zmniejsza�a si� o u�amek uncji natychmiast po ostatnim oddechu. W innych - przeciwnie, jakby co� przez chwil� ci��y�o bardziej, zanim znikn�o bez �ladu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "T�umaczenie tego zjawiska wy��cznie odparowaniem lub skurczem mi�ni wydaje si� niewystarczaj�ce. Szczeg�lnie jeden przypadek, gdy cia�o wa�y�o wi�cej po �mierci ni� za �ycia, nie daje mi spokoju.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jakby co� si� do niego przysun�o... a nie odesz�o.");
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
	TEXT[1]						=	"z Wie�y Zachodniej,";
	TEXT[2]						=	"rok 42 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Kolejne pr�by przeprowadza�em przy u�yciu kryszta��w mocy, znanych z czu�o�ci na obecno�� �ywej istoty. Trzymane przy osobie konaj�cej, zmienia�y barw� - zazwyczaj przyciemnia�y, jakby co� je zas�ania�o.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po �mierci barwa ta przez kilka oddech�w pozostawa�a niezmienna, po czym nast�powa� nag�y rozb�ysk i kryszta� wraca� do swej pierwotnej jasno�ci. Zjawisko to powtarza�o si� zbyt regularnie, by uzna� je za przypadek. Czy�by dusza opuszczaj�c cia�o wp�ywa�a na kryszta�? A mo�e kryszta� nie reagowa� na �ycie... lecz na jego oddzielenie?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wsp�praca z wynalazc� z Dolnego Zau�ka umo�liwi�a mi jeszcze jedno do�wiadczenie. Zbudowali�my urz�dzenie rejestruj�ce drgania powietrza - co� na kszta�t mechanicznego ucha. Zainstalowane przy �o�u �mierci jednego z ochotnik�w (starego skryby z Gildii Wiedzy), zarejestrowa�o sze�� cichych, regularnych uderze� kilkana�cie chwil po �mierci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie przypomina�y one ani odg�osu spadaj�cych przedmiot�w, ani bicia serca. Bardziej... kroki. Oddalaj�ce si�, rytmiczne, niemal bezd�wi�czne. Nie potrafi� tego wyja�ni�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Im wi�cej pr�bowa�em, tym wi�cej napotyka�em w�tpliwo�ci. Je�li dusza istnieje, dlaczego tylko czasem udaje si� j� zarejestrowa�? Je�li za� nie istnieje, sk�d te anomalie, niemo�liwe do powt�rzenia czysto fizycznymi �rodkami?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Mo�e dusza nie przebywa w �wiecie materii, lecz przecieka przez niego jak woda przez zbutwia�e drewno. Mo�e nie chodzi o to, by j� z�apa�, lecz by dostrzec jej cie�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy przyszli badacze uznaj� moje zapiski za przejaw odwagi, czy g�upoty. Wiem tylko, �e nie zdo�a�em dowie�� niczego ponad w�tpliwo�� - a mimo to nie potrafi� porzuci� tego tematu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bo je�li istnieje co�, co wa�y mniej ni� ziarnko popio�u, a potrafi nada� sens �yciu... to czy� nie warto go szuka�?");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_090 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_090;
	
	if (Bonus_ItWr_BookXp[90])	{	description = "Anomalnie g��binowe I (przeczytane)";	}
	else						{	description = "Anomalnie g��binowe I";					};
	
	TEXT[0]						=	"Zapisy mistrza Geolitha z Kr�gu";
	TEXT[1]						=	"Kartograf�w, spisane podczas wyprawy";
	TEXT[2]						=	"do podziemnych warstw G�r Starych.";
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
				Doc_PrintLines	(nDocID,  0, "Anomalnie g��binowe");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie wszystko, co znajduje si� pod naszymi stopami, jest martwe.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Cho� zwyk�o si� s�dzi�, �e ziemia jest biernym no�nikiem metalu, ska�y i ciszy, s� miejsca, w kt�rych zdaje si� ona �y� - nie w sensie metaforycznym, lecz rzeczywistym, organicznym, niemal �wiadomym.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Podczas ekspedycji prowadzonej przez Kartograf�w, wspieranej przez Gildi� In�ynier�w i jednego z Mag�w Przestrzeni, natrafili�my na kompleks jaski� znajduj�cy si� na g��boko�ci ponad dziewi��dziesi�ciu s��ni pod dolin� Argoth.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ich uk�ad nie by� naturalny - brak�o nieregularno�ci charakterystycznych dla jam krasowych, a liczne tunele tworzy�y niemal geometryczne figury, jakby ca�o�� zosta�a wy��obiona przez zamys�, nie przez czas.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pierwsze anomalie dotyczy�y echa. W miejscach, w kt�rych powinno rozchodzi� si� swobodnie, zanika�o w jednej chwili, jakby d�wi�k by� poch�aniany, nie odbijany.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W innych punktach - zw�aszcza przy po�udniowej odnodze g��wnej komory - echo powtarza�o s�owa z op�nieniem kilku oddech�w, zmienione, jakby prze�ute przez co�, co je usi�owa�o zrozumie�. Jeden z towarzyszy przysi�g�, �e g�os, kt�ry wr�ci� do niego, nie by� jego w�asny.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_091 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_091;
	
	if (Bonus_ItWr_BookXp[91])	{	description = "Anomalnie g��binowe II (przeczytane)";	}
	else						{	description = "Anomalnie g��binowe II";					};
	
	TEXT[0]						=	"Zapisy mistrza Geolitha z Kr�gu";
	TEXT[1]						=	"Kartograf�w, spisane podczas wyprawy";
	TEXT[2]						=	"do podziemnych warstw G�r Starych.";
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
				Doc_PrintLines	(nDocID,  0, "Anomalnie g��binowe");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zauwa�yli�my te� ruchy powietrza - delikatne, ale rytmiczne, przypominaj�ce wdech i wydech. Nie by�y one powi�zane z �adnym znanym ci�giem wentylacyjnym, a ich si�a zdawa�a si� zmienia� w zale�no�ci od obecno�ci ludzi. W chwilach milczenia - zanika�y. Gdy m�wili�my lub poruszali�my si� - nasila�y si�. Jakby co� nas s�ucha�o.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Struktura ska� r�wnie� wykazywa�a nietypowe w�a�ciwo�ci. �ciany niekt�rych tuneli by�y g�adkie i ciep�e w dotyku, pomimo braku jakiegokolwiek �r�d�a ciep�a. Inne - porowate, ale reaguj�ce na nacisk, ugina�y si� lekko, jakby podszyte elastyczn� warstw�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jeden z uczni�w, nie zachowawszy ostro�no�ci, wbi� grot laski w �cian�, kt�ra chwil� p�niej zacz�a si� zamyka�. Nie ucierpia�, ale miejsce to ju� wi�cej si� nie otworzy�o.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Najbardziej niepokoj�ca by�a tzw. Komora Czwarta - obszerna przestrze� na ko�cu �cie�ki zachodniej, ca�kowicie pozbawiona d�wi�ku. Ani kroki, ani g�os, ani skrzypienie zawias�w nie mia�y tam brzmienia. M�j notariusz zapisa�, �e pr�bowa� wyda� z siebie krzyk - lecz nie s�ysza� nic, nawet bicia w�asnego serca. Sp�dzili�my tam dok�adnie dziewi�� chwil, po czym wszyscy, niezale�nie od siebie, odczuli nag�y niepok�j - uczucie obserwacji, jakby z wn�trza samej ska�y.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po powrocie na powierzchni� i przegl�dzie zapis�w, niekt�re z map - tworzone na bie��co przez automatyczne pi�ra reaguj�ce na pozycj� - uleg�y zniekszta�ceniom. Linie falowa�y, krzy�owa�y si� w spos�b niemo�liwy do wykonania ludzk� r�k�. Na jednej z nich pojawi� si� symbol, kt�rego nie rysowa� �aden z cz�onk�w wyprawy. Owal przecinany poziomo trzema �ukami. �aden znany j�zyk nie zawiera takiego znaku. Po spaleniu tej mapy, atrament z pozosta�ych zacz�� blakn��.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie potrafi� wyja�ni�, czym s� te g��bie. Mo�e to pozosta�o�� po starszym �wiecie, zakopanym pod warstwami czasu. A mo�e to cia�o - lub fragment cia�a - czego�, co nigdy nie umar�o, bo nigdy w pe�ni si� nie narodzi�o.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_092 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_092;
	
	if (Bonus_ItWr_BookXp[92])	{	description = "Sny proroka I (przeczytane)";	}
	else						{	description = "Sny proroka I";					};
	
	TEXT[0]						=	"Odpis fragment�w pergaminu";
	TEXT[1]						=	"odnalezionego w ruinach �wi�tyni Ylath,";
	TEXT[2]						=	"wed�ug zapisu kustosza Gildii Wiedzy.";
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
				Doc_PrintLines	(nDocID,  0, "Nie wiadomo, kim by� autor tych s��w. Znaleziono je w krypcie zawalonej �wi�tyni, zapisane dr��c� r�k� na zaschni�tym pergaminie, nieopatrzone imieniem. J�zyk wskazuje na wiek przedruniczny, a same tre�ci... c�. Czytaj�cy ostrzegani s� przed dos�ownym pojmowaniem wizji. Prorocy nie pisz� dla rozumu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pierwszy sen: o ogniu bez ciep�a");
				Doc_PrintLines	(nDocID,  0, "Widzia�em p�omie�, kt�ry nie dawa� ciep�a. P�on�� nad wod�, nie odbijaj�c si� w niej. Ludzie stali wok� niego i ogrzewali d�onie, lecz nie z powodu ciep�a - lecz z l�ku. Ka�dy, kto spojrza� prosto w ogie�, widzia� swoj� twarz, ale starsz� o sto lat.");
				Doc_PrintLines	(nDocID,  0, "Niekt�rzy �miali si�, widz�c, �e nie maj� ju� w�os�w. Inni p�akali, bo poznali dzie� w�asnej �mierci. Jeden odszed� i nigdy nie wr�ci�. S�ysza�em tylko jego kroki oddalaj�ce si� w suchym, martwym lesie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Drugi sen: o mie�cie bez cieni");
				Doc_PrintLines	(nDocID,  1, "Spacerowa�em po mie�cie zbudowanym z bia�ego kamienia. Wszystkie budowle by�y idealne, ka�dy k�t prosty. Ale s�o�ce �wieci�o zewsz�d - a cieni nie by�o. Nawet ludzie ich nie mieli.");
				Doc_PrintLines	(nDocID,  1, "Pyta�em jednego z nich, czy wie, dlaczego jego cie� odszed�. Odpowiedzia�: �Zgubi�em go w momencie, gdy przesta�em zadawa� pytania.� I u�miechn�� si�. Ale jego u�miech by� zbyt szeroki. Przekroczy� usta.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Trzeci sen: o drzewie z g�osami");
				Doc_PrintLines	(nDocID,  1, "W �rodku nocy znalaz�em si� w lesie, kt�rego drzewa nie mia�y li�ci. Jedno z nich szepta�o do mnie. Jego korona porusza�a si�, cho� nie by�o wiatru. M�wi�o g�osami dzieci, starc�w i tych, kt�rzy zamilkli dawno temu.");
				Doc_PrintLines	(nDocID,  1, "�Nie nale�ymy ju� do �wiata� - rzek�o - �ale on wci�� nas pami�ta. Jeste�my korzeniem snu, kt�ry �nisz ka�dej nocy, cho� tego nie wiesz.� Gdy si� obudzi�em, mia�em pod paznokciami ziemi�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_093 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_093;
	
	if (Bonus_ItWr_BookXp[93])	{	description = "Sny proroka II (przeczytane)";	}
	else						{	description = "Sny proroka II";					};
	
	TEXT[0]						=	"Odpis fragment�w pergaminu";
	TEXT[1]						=	"odnalezionego w ruinach �wi�tyni Ylath,";
	TEXT[2]						=	"wed�ug zapisu kustosza Gildii Wiedzy.";
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
				Doc_PrintLines	(nDocID,  0, "Szuka�em brzegu, lecz fale nie by�y z wody, lecz z kurzu. Statek sun�� przez ten ocean bez steru, a za�oga patrzy�a w niebo, kt�rego nie by�o. Tam, gdzie powinna by� gwiazda p�nocna, widnia�o puste miejsce, czarne jak rana. Kapitan m�wi�: �Tylko ci, kt�rzy nie wiedz�, dok�d p�yn�, mog� dop�yn�� tam, gdzie trzeba.�");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pi�ty sen: o s�o�cu, kt�re przemawia");
				Doc_PrintLines	(nDocID,  0, "Na niebie nie by�o chmur, ale s�o�ce mia�o usta. M�wi�o j�zykiem zbyt starym, bym go poj��, ale czu�em s�owa pod sk�r�. Gdy zamyka�em oczy, widzia�em litery wyryte na powiekach. Ka�de zdanie bola�o. Wszystkie ro�liny wok� ros�y w kierunku przeciwnym ni� s�o�ce - jakby ucieka�y.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Sz�sty sen: o cz�owieku z oczami innych");
				Doc_PrintLines	(nDocID,  1, "Spotka�em cz�owieka, kt�ry mia� dwana�cie par oczu. Wszystkie patrzy�y jednocze�nie, ka�de z innego miejsca i czasu. Jedno oko p�aka�o, inne �mia�o si�, trzecie by�o zamkni�te, cho� on by� przytomny.");
				Doc_PrintLines	(nDocID,  1, "Zapyta�em: �Kt�re z nich widzi prawdziwie?� Odrzek�: ��adne. Ale dopiero razem zaczynaj� widzie�.�");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Si�dmy sen: o �nie, kt�ry nie by� m�j");
				Doc_PrintLines	(nDocID,  1, "Ostatni sen �ni�em oczami kogo� innego. Czu�em obce cia�o, inne wspomnienia, strach nie m�j. Ucieka�em przez korytarz wykuty w ko�ci, a co� za mn� porusza�o si� w milczeniu. Obejrza�em si� - i zobaczy�em siebie. Spa�em. Ale to nie by�o moje cia�o.");
				Doc_PrintLines	(nDocID,  1, "Obudzi�em si� z uczuciem, �e od tego momentu dziel� swoje �ycie z kim� jeszcze. Nie wiem, kim jest. Ale czasem, gdy zasypiam, mam wra�enie, �e to on mnie �ni.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiadomo, czy te sny s� zapisem wizji, choroby, czy przekle�stwa. Ale jedno jest pewne - ktokolwiek je spisa�, nie prze�y� ich bez zmiany. A mo�e... nie prze�y� ich wcale.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_094 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_094;
	
	if (Bonus_ItWr_BookXp[94])	{	description = "Pod powierzchni� I (przeczytane)";	}
	else						{	description = "Pod powierzchni� I";					};
	
	TEXT[0]						=	"Zapiski mistrza Neromenesa, maga wody";
	TEXT[1]						=	"z klasztoru Adanosa na Archolos,";
	TEXT[2]						=	"rok 88 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Pod powierzchni�");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wystarczy spojrze� na map� �wiata, by zrozumie�, �e �yjemy na marginesie. L�dy - nasze miasta, nasze wojny, nasze �wi�tynie - zajmuj� zaledwie u�amek powierzchni �wiata. Reszta to woda.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Bezmiar ocean�w i m�rz, kt�re pokrywaj� wszystko, co stworzone, a kt�rych nie potrafimy nawet nazwa�, nie m�wi�c o zrozumieniu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "A jednak to w�a�nie t� nieznan� przestrze� nazywamy ��wiatem�. Zaskakuj�ca pewno��, zwa�ywszy, �e nie mamy poj�cia, co kryje si� pod naszymi statkami, pod falami, kt�re karmi� i zabijaj� jednocze�nie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Jako mag wody przez dekady bada�em strumienie, rzeki, p�ywy i przyp�ywy. Widzia�em, jak �ywio� ten przekszta�ca krainy i rze�bi wybrze�a. Ale z ka�dym rokiem coraz silniej czuj�, �e prawdziwa natura wody - tej najstarszej, najg��bszej - wcale nie objawia si� na powierzchni. Jest skryta. Niewidzialna. I by� mo�e... nieprzyjazna.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zachowa�y si� relacje o istotach, kt�re wy�oni�y si� z g��bin tylko raz na ca�e pokolenie. �eglarze opowiadaj� o cieniach wi�kszych ni� galeony, o oczach po�yskuj�cych pod powierzchni�, o mackach, kt�re niszcz� statki bez ostrze�enia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kapitan z Argaani twierdzi�, �e widzia� �co�, co poruszy�o morze, ale nie wod�. Inni m�wi� o pie�niach s�yszanych noc�, gdy morze jest zbyt spokojne, a za�oga �pi zbyt czujnie.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_095 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_095;
	
	if (Bonus_ItWr_BookXp[95])	{	description = "Pod powierzchni� II (przeczytane)";	}
	else						{	description = "Pod powierzchni� II";				};
	
	TEXT[0]						=	"Zapiski mistrza Neromenesa, maga wody";
	TEXT[1]						=	"z klasztoru Adanosa na Archolos,";
	TEXT[2]						=	"rok 88 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Pod powierzchni�");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Czy to tylko marynarskie bajania? By� mo�e. A jednak te opowie�ci powracaj�. Z r�nych wybrze�y. W r�nych j�zykach. Zawsze te same motywy: ogrom, niepoj�to��, poczucie, �e co� patrzy z g��bin. Co�, czego nie rozumiemy - nie dlatego, �e nie umiemy, lecz dlatego, �e mo�e nie jeste�my gotowi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gdyby istnia�a cywilizacja pod powierzchni�, by�aby starsza od naszych. Wolna od ognia, od metalu, od kamienia. Ukszta�towana przez ciemno�� i ci�nienie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "By� mo�e ich zmys�y nie przypominaj� naszych - mo�e widz� fale, s�ysz� kamie�, czuj� ruch ksi�yca. Mo�e istniej� w przestrzeni, kt�rej nie potrafimy sobie wyobrazi� - pomi�dzy uderzeniami pr�d�w g��binowych, tam gdzie �wiat�o nigdy nie dotar�o.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Z teologicznego punktu widzenia, �wiat g��bin mo�e by� dzie�em Adanosa w jego najczystszej formie: stref� absolutnej r�wnowagi mi�dzy �yciem a �mierci�, ruchem a stagnacj�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "G��biny nie znaj� ognia Innosa, nie znaj� gnij�cych cieni Beliara. S� poza konfliktem. A wi�c... czy to w�a�nie tam kryje si� pierwotna intencja stworzenia? A mo�e nie jeste�my go��mi na powierzchni, lecz uciekinierami z dna?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie twierdz�, �e potrafimy zrozumie� istoty g��bin. Ale twierdz�, �e one mog� rozumie� nas. Mo�e obserwuj�. Mo�e pami�taj�. Mo�e to one tworzy�y fale, kt�re poch�on�y staro�ytne miasta, zanim spisano pierwsz� run�. Mo�e to one szepta�y pierwsze imiona bog�w do uszu tych, kt�rzy potem nazwali si� prorokami.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Im d�u�ej studiuj� ocean, tym bardziej mam wra�enie, �e nie jest on �ywio�em. �e jest organizmem. �e nie zawiera istot - lecz sam jest istot�. Oddycha. Cierpi. Pami�ta.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_096 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_04.3ds";
	on_state[0]					=	Use_ItWr_BookXp_096;
	
	if (Bonus_ItWr_BookXp[96])	{	description = "Z cia�a i py�u I (przeczytane)";	}
	else						{	description = "Z cia�a i py�u I";				};
	
	TEXT[0]						=	"Zapisy mistrza Elendora z Komnaty Transmutacyjnej";
	TEXT[1]						=	"Wie�y Wewn�trznej, spisane po cyklu bada�";
	TEXT[2]						=	"nad przyczyn� ruchu byt�w nieorganicznych.";
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
				Doc_PrintLines	(nDocID,  0, "Z cia�a i py�u");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z ka�dym kolejnym rokiem studiowania sztuk magicznych coraz cz�ciej staj� wobec zjawisk, kt�re zadaj� fundamentalne pytania nie o sam� magi� - lecz o natur� �ycia. Jednym z nich jest ruch. A raczej - to, co pozwala istotom si� porusza�, gdy nie posiadaj� �adnego widocznego mechanizmu ku temu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Cz�owiek porusza si� za pomoc� mi�ni, �ci�gien, reakcji chemicznych, impuls�w nerwowych. Zwierz�ta - podobnie. Maszyny - poprzez z�batki, t�oki, spr�yny. Ale czym porusza si� golem? Co sprawia, �e szkielet pozbawiony mi�ni mo�e podnie�� bro�? Dlaczego niekt�re o�ywione pos�gi potrafi� chodzi�, mimo �e s� monolityczne - bez z��cze�, bez staw�w?");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pocz�tkowo zak�ada�em, �e odpowied� le�y w magii wi���cej - rodzaju si�y, kt�ra zast�puje struktur� biologiczn�. Ale im wi�cej bada�em te przypadki, tym mniej zadowala�o mnie to wyja�nienie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W przypadku nekromantycznych twor�w takich jak szkielety, nie odnajdujemy �adnych znak�w magicznego podparcia w ko�czynach. Ich ruch nie wydaje si� przekazywany przez �adne pole ani widoczn� ni� energii. A jednak - dzia�aj�. Reaguj�. Czasem wykonuj� gest, zanim padnie rozkaz.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "U kamiennych golem�w rzecz wydaje si� jeszcze bardziej paradoksalna: wiele z nich nie posiada wyodr�bnionych cz�ci cia�a. Ich struktura jest jednolita, a jednak potrafi� podnie�� rami�, ugi�� nog�, odwr�ci� g�ow�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeden z egzemplarzy, kt�ry uda�o si� uwi�zi� w magicznej klatce na Archolos, przez kilka dni na�ladowa� ruchy swojego opiekuna. Kiedy ten przesta� przychodzi�, golem zamar�. Gdy inny mag podj�� z nim kontakt - nie poruszy� si� ani razu.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_097 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_04.3ds";
	on_state[0]					=	Use_ItWr_BookXp_097;
	
	if (Bonus_ItWr_BookXp[97])	{	description = "Z cia�a i py�u II (przeczytane)";	}
	else						{	description = "Z cia�a i py�u II";					};
	
	TEXT[0]						=	"Zapisy mistrza Elendora z Komnaty Transmutacyjnej";
	TEXT[1]						=	"Wie�y Wewn�trznej, spisane po cyklu bada�";
	TEXT[2]						=	"nad przyczyn� ruchu byt�w nieorganicznych.";
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
				Doc_PrintLines	(nDocID,  0, "Z cia�a i py�u");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Stawiam tez�: ruch istot nieo�ywionych nie pochodzi z ich konstrukcji. Pochodzi z intencji, kt�ra w nich trwa - lub jest im narzucona. Mo�e nie s� to stworzenia w klasycznym rozumieniu, lecz nosiciele woli - od�amki �wiadomo�ci, zawieszone mi�dzy bezruchem a rozkazem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zauwa�my, �e wiele z nich aktywuje si� tylko w obecno�ci obserwatora. Inne reaguj� nie na s�owa, lecz na emocje - strach, gniew, zaskoczenie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Czy zatem ich ruch jest form� odbicia cudzej obecno�ci? Czy mo�e ka�da o�ywiona istota tego rodzaju posiada cz�stk�... nie duszy, lecz przywi�zania? Do celu. Do zadania. Do rozkazu, kt�ry trwa d�u�ej ni� �mier�?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "To, co nazywamy �o�ywieniem� - mo�e wcale nie oznacza wprowadzenia �ycia, lecz przytwierdzenie ruchu. Jakby zamro�ona w przestrzeni komenda by�a wystarczaj�c� si�� sprawcz�, by kamie� si� podni�s�, a ko�� poruszy�a.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Z punktu widzenia teologicznego, budzi to niepok�j. Je�li ruch mo�na nada� bez duszy - to czy dusza rzeczywi�cie jest konieczna do istnienia? A je�li nie - to czym wobec tego jeste�my my sami?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Je�li konstrukcja mo�e chodzi�, widzie�, walczy� i trwa� przez wieki, nie posiadaj�c ani my�li, ani serca - to czym r�ni si� od cz�owieka, kt�ry zatraci� w�asn� wol�?");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_098 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_098;
	
	if (Bonus_ItWr_BookXp[98])	{	description = "Flet z kana��w I (przeczytane)";	}
	else						{	description = "Flet z kana��w I";				};
	
	TEXT[0]						=	"Sprawozdanie spisane przez kartografa";
	TEXT[1]						=	"i historyka Trymonesa";
	TEXT[2]						=	"z ramienia Stra�y Archiwalnej.";
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
				Doc_PrintLines	(nDocID,  0, "Flet z kana��w");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie wszystkie zagro�enia przychodz� z las�w, pustkowi ani nawet z Cieni. Czasem to, co najgro�niejsze, rodzi si� tu� pod naszymi stopami - tam, gdzie nikt nie patrzy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Tak by�o z tzw. Szczuro�apem z Dolnego Miasta, postaci�, kt�ra przez wiele lat pozostawa�a postrachem dzieci i tematem kpin stra�nik�w... a� do dnia, gdy prawie uda�o mu si� przej�� w�adz�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pierwsze wzmianki o nim pochodz� sprzed dw�ch dekad. M�ody cz�owiek, imienia nikt ju� dzi� nie pami�ta, zatrudniony by� jako poganiacz do oczyszczania magazyn�w i piwnic.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Pracowa� z kijem i pochodni�, jak ka�dy. A� kt�rego� dnia odm�wi� zabicia szczur�w. �One tylko s�uchaj� swoich g�os�w� - powiedzia� podobno. Od tego momentu zacz�� eksperymentowa� z d�wi�kiem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W�r�d odzyskanych z jego dawnego schronienia notatek odnaleziono wzmianki o pr�bach konstruowania instrumentu. Flet - wykonany z ko�ci i srebrnego drutu - stroi� przez lata.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ale w ko�cu, jak sam zapisa�, �d�wi�k si� zgra� z ch�ci��. Od tej chwili szczury, dot�d dzikie i agresywne, zacz�y zbiera� si� wok� niego. Dot�d by�y tylko plag�. Dla niego sta�y si� armi�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_099 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_099;
	
	if (Bonus_ItWr_BookXp[99])	{	description = "Flet z kana��w II (przeczytane)";	}
	else						{	description = "Flet z kana��w II";					};
	
	TEXT[0]						=	"Sprawozdanie spisane przez kartografa";
	TEXT[1]						=	"i historyka Trymonesa";
	TEXT[2]						=	"z ramienia Stra�y Archiwalnej.";
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
				Doc_PrintLines	(nDocID,  0, "Flet z kana��w");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z czasem porzuci� �ycie w�r�d ludzi i na sta�e przeni�s� si� do kana��w. Tam, pod miastem, zbudowa� sie� korytarzy, zapadni i znak�w. Szczury uczy� porz�dku, reagowania na gesty i d�wi�ki. Tworzy� im po�ywienie z odpadk�w. Nada� im imiona. A niekt�rym - narz�dzia z�bowe, metalowe nasadki, nosid�a.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez lata uwa�ano go za mit. A� do nocy, gdy na centralnym placu pojawi�a si� horda ponad stu szczur�w. Stra�nicy zostali zaskoczeni. Bestie atakowa�y nie dziko, lecz w formacjach - cz�� obiega�a bokiem, cz�� zajmowa�a dachy. Dw�ch ludzi zgin�o, kilkunastu zosta�o rannych. M�czyzna z fletem sta� w cieniu fontanny i prowadzi� ich gestami.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Miasto ocali�a przypadkowo��: zapad� si� jeden z kana��w pod naciskiem masy gryzoni. Woda zala�a tunele. Fletowy d�wi�k urwa� si� nagle. Cia�a szczur�w wyp�yn�y na powierzchni� - martwe lub rozproszone. Jego samego nie odnaleziono.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiadomo, czy zgin��, czy zdo�a� uciec. Nie wiadomo te�, sk�d zna� nuty, kt�re dzia�a�y. Niekt�rzy twierdz�, �e to nie magia, lecz czysta obsesja i lata obserwacji.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie pozosta�y po nim ani cia�a, ani pomniki. Tylko ten flet - p�kni�ty na ko�cu, schowany w skrzyni Archiwum Stra�y, zapiecz�towany run� milczenia.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_100 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_100;
	
	if (Bonus_ItWr_BookXp[100])	{	description = "Cie� w �wietle I (przeczytane)";	}
	else						{	description = "Cie� w �wietle I";				};
	
	TEXT[0]						=	"Zapiski mistrza Aronthela z Akademii �wiat�a,";
	TEXT[1]						=	"spisane po odnalezieniu zw�ok mrocznego";
	TEXT[2]						=	"czarnoksi�nika w ruinach Kal�Azar.";
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
				Doc_PrintLines	(nDocID,  0, "Cie� w �wietle");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Niech Innos mi wybaczy, �e spisa�em to, co zaraz przeczytasz. Nie dla pokusy wiedzy to uczyni�em, lecz dla przestrogi - aby ci, kt�rzy s�dz�, �e mrok jest jedynie odwrotno�ci� �wiat�a, mogli zrozumie�, jak bardzo si� myl�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W ruinach Kal�Azar, w�r�d zw�glonych resztek i p�kni�tych piecz�ci, odnale�li�my cia�o.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Czarnoksi�nik, jeden z tych, kt�rych modlitwy nigdy nie by�y s�yszane, a jednak pozostawia�y �lady. Przy nim - gruby tom, sp�tany sznurem ze sk�ry, zamkni�ty klamr� z z�b�w. Po d�ugim wahaniu, po modlitwach i zakl�ciach ochronnych, otworzy�em go. Przeczyta�em. I nie zapomn�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Almanach nie by� ksi�g� zakl��. Przypomina� raczej dziennik �ycia... lub mo�e katalog praktyk dla tych, kt�rzy postanowili odwr�ci� si� od porz�dku.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zapisano tam rytua�y codziennego oczyszczenia, polegaj�ce nie na myciu cia�a, lecz jego brudzeniu. Wyznawcy Beliara zanurzali d�onie w popiele z ko�ci i wcierali go w sk�r�, by �ukry� si� przed �wiat�em �wiata�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ich modlitwy - je�li mo�na to tak nazwa� - nie by�y b�aganiami. By�y rozkazami, wypowiadanymi w tonie rozdra�nienia lub szeptanej furii. �Nie prosimy. Przypominamy, �e jeste�my.� To jedno ze zda�, kt�re szczeg�lnie zapad�o mi w pami��.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_101 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_06.3ds";
	on_state[0]					=	Use_ItWr_BookXp_101;
	
	if (Bonus_ItWr_BookXp[101])	{	description = "Cie� w �wietle II (przeczytane)";	}
	else						{	description = "Cie� w �wietle II";					};
	
	TEXT[0]						=	"Zapiski mistrza Aronthela z Akademii �wiat�a,";
	TEXT[1]						=	"spisane po odnalezieniu zw�ok mrocznego";
	TEXT[2]						=	"czarnoksi�nika w ruinach Kal�Azar.";
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
				Doc_PrintLines	(nDocID,  0, "Cie� w �wietle");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nauka magii w ich kr�gu nie opiera�a si� na harmonii, lecz na napi�ciu. Uczyli si� magii nie przez medytacj�, lecz przez z�amanie w�asnej woli. Jeden z rozdzia��w opisuje �wiczenia polegaj�ce na przerywaniu snu co godzin�, by wypowiada� jedno zakl�cie od nowa. Przez sze��dziesi�t nocy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Uczono ich nie cierpliwo�ci, lecz obsesji. Nie skupienia - lecz nieustannego tarcia z w�asnym umys�em, a� ten p�knie i przepu�ci moc.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ka�dy dzie� wyznawcy Beliara ko�czy� si� rytua�em �Wygaszenia�, w kt�rym gaszono wszelkie �wiat�a w pomieszczeniu i siedz�c po�r�d zimnych kamieni, opisywano w�asne l�ki - nie po to, by je pokona�, lecz by je nakarmi�. Wierzyli, �e strach to forma mocy, kt�r� mo�na hodowa� niczym ogie� w piwnicy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W jednej z notatek wspomniano o �braciach bez j�zyk�w� - m�odych akolitach, kt�rym odbierano zdolno�� m�wienia, by ich modlitwy by�y milczeniem, kt�rego �Beliar s�ucha najch�tniej�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Najbardziej przera�aj�ce nie by�y same praktyki, lecz ich sp�jno��. Almanach ukazywa� �wiat uporz�dkowany, logiczny, ale ca�kowicie odwr�cony wzgl�dem naszego. Ich z�o nie by�o przypadkowe - by�o systematyczne. Ich ciemno�� nie by�a chaosem, lecz struktur�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy inni magowie Innosa powinni przeczyta� ten tekst. Ale wiem, �e �wiat, kt�ry zna tylko �wiat�o, jest naiwny. By stawi� czo�a ciemno�ci, trzeba najpierw wiedzie�, �e nie jest ona pustk� - lecz pe�ni�. Gro�n�, �lep�, bezlitosn� pe�ni�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_102 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_102;
	
	if (Bonus_ItWr_BookXp[102])	{	description = "Kaplice bez bog�w I (przeczytane)";	}
	else						{	description = "Kaplice bez bog�w I";				};
	
	TEXT[0]						=	"Zapiski mistrza Eronthala z Gildii Wiedzy,";
	TEXT[1]						=	"spisane podczas bada� ruin";
	TEXT[2]						=	"wschodniego wybrze�a.";
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
				Doc_PrintLines	(nDocID,  0, "Kaplice bez bog�w");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W naszej historii przywykli�my s�dzi�, �e ka�de �wi�te miejsce przypisane jest bogu. Tam, gdzie p�onie ogie� - Innos. Tam, gdzie cie� jest g�stszy od �wiat�a - Beliar. Tam, gdzie cisza trwa mi�dzy jedn� fal� a drug� - Adanos. Lecz w trakcie moich bada� natkn��em si� na miejsca, kt�re nie pasuj� do tej mapy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "S� to ruiny - stare, zapomniane, czasem ca�kowicie zaro�ni�te, a czasem wci�� nienaruszone. W ich wn�trzu znajduj� si� o�tarze, kr�gi, relikty.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Czasem symbole, lecz �aden z nich nie odpowiada znanym alfabetom ani doktrynom. Najdziwniejsze jest jednak to, �e te miejsca wci�� wydaj� si� czeka�. Nie s� martwe. Nie s� zrujnowane w duchu. S� nieuko�czone.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W jednej z kaplic na wschodnim wybrze�u odnalaz�em tabliczki kamienne - z wyrytymi tekstami rytualnymi. Oto jeden z fragment�w:");
				Doc_PrintLines	(nDocID,  1, "�Zbli� si�, kt�ry nie wiesz. Nie m�w, nie kl�kaj. S�uchaj, dop�ki nie zostaniesz poznany.�");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie ma tam modlitwy. Nie ma wezwania. Jest milczenie, nakaz obecno�ci bez s��w. Jakby kult nie zak�ada� oddawania czci - lecz bycie obserwowanym.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_103 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_07.3ds";
	on_state[0]					=	Use_ItWr_BookXp_103;
	
	if (Bonus_ItWr_BookXp[103])	{	description = "Kaplice bez bog�w II (przeczytane)";	}
	else						{	description = "Kaplice bez bog�w II";				};
	
	TEXT[0]						=	"Zapiski mistrza Eronthala z Gildii Wiedzy,";
	TEXT[1]						=	"spisane podczas bada� ruin";
	TEXT[2]						=	"wschodniego wybrze�a.";
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
				Doc_PrintLines	(nDocID,  0, "Kaplice bez bog�w");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W innej strukturze, ukrytej pod ruinami Fortu Silth, znajdowa�o si� miejsce przypominaj�ce baptysterium. Ale zamiast wody w zbiorniku znajdowa� si� piasek, g�sty, czarny, nieparuj�cy. Miejscowi m�wili, �e czasem w nocy s�ycha� z tamtego miejsca bicie. Nie dzwon. Nie echo. Po prostu... rytmiczne, g��bokie uderzenia, jakby czego� du�ego o co� wi�kszego.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "�aden z rytua��w spisanych w tych miejscach nie odnosi si� do znanych boskich imion. Nie zawieraj� pr�b, ofiar ani obietnic. S� to czynno�ci - powtarzane, bez sensu, bez wyja�nienia. Na przyk�ad: �Dotknij trzeciego kamienia po�r�d siedmiu, obr�� si� w stron�, kt�rej nie czujesz, i poczekaj, a� zapomnisz po co tu jeste�.�");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Czy to wszystko dow�d na istnienie zaginionych bog�w? Czy mo�e kult�w nieboskich - rytua��w odprawianych nie ku komu�, lecz ku czemu�? Albo - i ta my�l nie daje mi spokoju - czy s� to miejsca stworzone nie do oddawania czci, lecz do bycia obserwowanym przez to, co czczone by� nie mo�e?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Niekt�re kaplice wydaj� si� zbudowane nie dla ludzi, lecz przeciwko nim. Ich proporcje s� nieprzyjazne: zbyt w�skie przej�cia, sklepienia, kt�rych wysoko�ci nie spos�b zmierzy�, uk�ad pomieszcze� oparty na geometrii, kt�ra przeczy logice architektonicznej. Jakby kto� pr�bowa� na�ladowa� budowl� �wi�tynn�, nie rozumiej�c jej celu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Z perspektywy teologicznej jest to blu�nierstwo - miejsca bez boga. Ale z perspektywy poznania to jedno z najbardziej niepokoj�cych odkry� mojego �ycia. Bo je�li istniej� �wi�tynie bez adresata, to mo�e znaczy to, �e kto� kiedy� pr�bowa� si� modli�, zanim powstali bogowie. Albo - �e kto� pr�bowa� ich stworzy�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Moje badania wci�� trwaj�. Ale coraz cz�ciej budz� si� z my�l�, �e jeden z tych kult�w wcale nie by� martwy. �e kto�... lub co�... nadal przychodzi tam w ciszy. Nie po to, by by� wys�uchanym. Ale po to, by s�ucha�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_104 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_104;
	
	if (Bonus_ItWr_BookXp[104])	{	description = "Niewidzialne wi�zy I (przeczytane)";	}
	else						{	description = "Niewidzialne wi�zy I";				};
	
	TEXT[0]						=	"Notatki mistrza Iscarniona z Wie�y Syntezy,";
	TEXT[1]						=	"sporz�dzone po analizie przypadk�w";
	TEXT[2]						=	"spontanicznych powi�za� duchowych.";
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
				Doc_PrintLines	(nDocID,  0, "Niewidzialne wi�zy");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Niekt�re zjawiska magiczne rozpoznajemy �atwo - ogie�, kt�ry p�onie bez drewna, cie�, kt�ry nie potrzebuje cia�a, g�os przemawiaj�cy z piecz�ci. Ale s� i takie, kt�re nie objawiaj� si� �wiat�em ani d�wi�kiem. Zamiast tego wi��� si� z obecno�ci�. Z poczuciem obecno�ci tam, gdzie nikogo nie ma - i z wiedz�, kt�rej nie powinno si� posiada�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W ci�gu ostatnich dw�ch dekad zarejestrowano ponad tuzin przypadk�w os�b, kt�re twierdzi�y, �e czuj� innych ludzi - niezale�nie od odleg�o�ci. Nie chodzi tu o wspomnienia, sentymenty ani modlitwy. Mowa o bezpo�rednim odbiorze emocji, b�lu, sn�w - a w niekt�rych przypadkach nawet my�li.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zjawisko to wyst�puje rzadko i nieregularnie, ale z pewn� sta��: osoby te s� ze sob� powi�zane silnym wsp�lnym do�wiadczeniem.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Jednym z najlepiej udokumentowanych przypadk�w by�a para braci z regionu Reth Yamar. Jeden z nich straci� d�o� w wypadku g�rniczym. W tej samej chwili drugi - oddalony o cztery dni drogi - pad� nieprzytomny i przez kilka dni odczuwa� b�l w d�oni, kt�rej nigdy nie straci�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ich sny sta�y si� identyczne, powtarzaj�ce si�. Gdy ich zbadano, nie wykryto ani kl�twy, ani b�ogos�awie�stwa, ani �lad�w zakl��. A jednak wi� nie ust�pi�a.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W innym przypadku dwoje dzieci, rozdzielonych po upadku karawany i wychowywanych w r�nych prowincjach, w tym samym wieku zacz�o m�wi� w j�zyku, kt�rego nikt ich nie uczy� - ale kt�ry rozumia�y nawzajem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nazywa�y go �j�zykiem �rodka�, i twierdzi�y, �e s�ysz� w nim �pytania zadawane bez s��w�. Gdy jedno z nich zmar�o, drugie zamilk�o na zawsze.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_105 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_105;
	
	if (Bonus_ItWr_BookXp[105])	{	description = "Niewidzialne wi�zy II (przeczytane)";	}
	else						{	description = "Niewidzialne wi�zy II";					};
	
	TEXT[0]						=	"Notatki mistrza Iscarniona z Wie�y Syntezy,";
	TEXT[1]						=	"sporz�dzone po analizie przypadk�w";
	TEXT[2]						=	"spontanicznych powi�za� duchowych.";
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
				Doc_PrintLines	(nDocID,  0, "Niewidzialne wi�zy");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Niekt�re teorie pr�buj� t�umaczy� te zjawiska przez wsp�ln� ekspozycj� na magi� chaosu, inne - przez dziedzictwo krwi. Ale �adna nie t�umaczy wszystkiego.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Istnieje hipoteza, �e pewne emocje, prze�yte wsp�lnie - szczeg�lnie w chwilach granicznych - potrafi� trwale zszy� dusze. Nie na poziomie �wiadomo�ci, lecz g��biej: w warstwie intencji, tej samej, kt�ra nadaje si�� zakl�ciom.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zauwa�my, �e wi�kszo�� przypadk�w nie daje si� wywo�a� celowo. Rytua�y wi���ce - nawet te silne, z udzia�em krwi czy przysi�g - nie tworz� takich efekt�w.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Mo�na wi�c przypuszcza�, �e wi�zi te nie s� tworzone przez wol�, lecz przez konieczno��. Jakby �wiat sam uzna�, �e dane dusze musz� by� po��czone - niezale�nie od czasu, przestrzeni i zrozumienia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Je�li to prawda, to znaczy, �e istnieje wymiar relacji mi�dzy istotami, kt�ry wymyka si� magii, teologii i nauce. Wi�, kt�ra nie jest kana�em, lecz stanem. Taka, kt�ra nie wymaga s��w, dotyku ani spojrzenia. I kt�rej nie mo�na przerwa� - nawet �mierci�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "By� mo�e niekt�re dusze rodz� si� ju� powi�zane. A mo�e niekt�re spotkania s� tylko przypomnieniem, �e kto� inny ju� dawno zosta� w nas zapisany.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_106 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_106;
	
	if (Bonus_ItWr_BookXp[106])	{	description = "Domena sn�w I (przeczytane)";	}
	else						{	description = "Domena sn�w I";					};
	
	TEXT[0]						=	"Zapiski mistrza Aeremona z Komnaty Snu przy";
	TEXT[1]						=	"Wie�y Ciszy, prowadzone przez siedem lat";
	TEXT[2]						=	"eksperyment�w i obserwacji.";
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
				Doc_PrintLines	(nDocID,  0, "Domena sn�w");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Sen. Od wiek�w uwa�any za domen� nieprzeniknion�, granic� mi�dzy �wiadomo�ci� a chaosem, miejsce, w kt�rym umys� zrzuca ci�ar dnia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "A jednak s� przypadki, w kt�rych sen nie znika wraz z porankiem. Przeciwnie - co� z niego pozostaje. Trwa w ciele, pami�ci, a czasem... w rzeczywisto�ci.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pierwszy przypadek, kt�ry sk�oni� mnie do bada�, dotyczy� m�odego ucznia z klasztoru Adanosa. Twierdzi�, �e �ni� o walce z istot� bez twarzy, w komnacie wykutej z czarnego szk�a.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Po przebudzeniu na jego ciele widnia�y rany w miejscach, w kt�re zosta� trafiony w �nie. Pocz�tkowo s�dzono, �e sam si� okaleczy� - a� do momentu, gdy podobne �lady pojawi�y si� na dw�ch innych uczniach, kt�rzy opisywali identyczny sen, cho� nie rozmawiali ze sob� od tygodni.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Inny przypadek - kap�anka z G�rnego Obozu - opisywa�a sen o p�on�cej bibliotece, w kt�rej szuka�a ksi�gi zawieraj�cej w�asne imi�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Po przebudzeniu potrafi�a spisa� fragmenty tekstu, kt�rego nie zna�a. Runy, kt�re zapisa�a, okaza�y si� prawdziwe - znane jedynie uczonym ze Wschodnich Archiw�w. Nigdy ich wcze�niej nie widzia�a.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_107 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_09.3ds";
	on_state[0]					=	Use_ItWr_BookXp_107;
	
	if (Bonus_ItWr_BookXp[107])	{	description = "Domena sn�w II (przeczytane)";	}
	else						{	description = "Domena sn�w II";					};
	
	TEXT[0]						=	"Zapiski mistrza Aeremona z Komnaty Snu przy";
	TEXT[1]						=	"Wie�y Ciszy, prowadzone przez siedem lat";
	TEXT[2]						=	"eksperyment�w i obserwacji.";
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
				Doc_PrintLines	(nDocID,  0, "Domena sn�w");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Najbardziej niepokoj�ce s� jednak przypadki tzw. obcego snu: �ni�cy doznaje wydarze�, wspomnie� i l�k�w, kt�re nie s� jego. Opisuje obce miejsca, ludzi, j�zyki.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jeden z badanych - prosty cie�la z Tharnis - po przebudzeniu m�wi� p�ynnie star� odmian� j�zyka Velorn, wymar�ego przed ponad stuleciem. Gdy pytano go, sk�d j� zna, odpowiada�: �Nie ja to �ni�em. Ja tylko si� obudzi�em.�");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Niekt�rzy sugeruj�, �e sny s� bramami - nie metaforycznie, lecz dos�ownie. �e istnieje przestrze�, do kt�rej dost�p mamy wy��cznie w stanie snu, ale kt�ra sama nie jest snem. Miejsce, kt�re nas obserwuje. A mo�e miejsce, kt�re uczy si� przez nas.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Z teologicznego punktu widzenia by�oby to obrazoburcze. �wiat snu zawsze traktowano jako dzie�o wewn�trzne: odbicie duszy, zwierciad�o my�li. Ale co, je�li niekt�re sny s� zewn�trzne? Co, je�li nie my �nimy - lecz jeste�my �nieni?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie potrafi� odpowiedzie�, dlaczego niekt�rzy z tych, kt�rzy odwiedzili owe sny, przynosz� z nich rany, j�zyki, wiedz�, a czasem... l�k, kt�rego nie potrafi� nazwa�. Ale jestem pewien jednego: nie wszystkie sny s� nasze. A niekt�re - nie ko�cz� si�, gdy otwieramy oczy.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_108 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_108;
	
	if (Bonus_ItWr_BookXp[108])	{	description = "Miasto pod miastem I (przeczytane)";	}
	else						{	description = "Miasto pod miastem I";				};
	
	TEXT[0]						=	"Zapiski mistrza Kalderana z Gildii Geomant�w,";
	TEXT[1]						=	"sporz�dzone podczas trzeciej ekspedycji";
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
				Doc_PrintLines	(nDocID,  0, "Wszyscy wiedzieli�my, �e fundamenty miasta s� stare. Budowane na ruinach starszych wiek�w, jak to bywa niemal wsz�dzie. Ale nikt nie spodziewa� si�, �e pod warstw� piaskowca i zgliszczy starych �wi�ty� odkryjemy struktur�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie gruz, nie jamy - lecz co�, co wygl�da�o jak miasto. Oko�o pi��dziesi�ciu s��ni pod ziemi�, za starym szybem, odnale�li�my wej�cie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z pocz�tku wygl�da�o jak naturalna szczelina, ale dalsze zej�cie ukaza�o ci�g schod�w - regularnych, kamiennych, niezu�ytych. Wiod�y w d� pod k�tem, kt�ry przeczy� ziemskim proporcjom. Nie mogli�my ustali�, jak g��boko schodzimy - ani jak d�ugo. Czas przesta� by� miar�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Wn�trze, kt�re ujrzeli�my, nie przypomina�o niczego znanego z ludzkiej architektury. Nie by�o k�t�w prostych. �ciany ��czy�y si� �agodnie, jakby formowane nie przez d�uto, lecz przez wyrze�bione ci�nienie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kamie� mia� barw� ciemnej miedzi i nie nosi� �lad�w narz�dzi. A jednak wszystko by�o zamierzone.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie by�o tam drzwi, ale przej�cia. Nie by�o okien, ale komory, kt�re rezonowa�y g�osem. Ka�dy d�wi�k - szept, krok, westchnienie - odbija� si� niezgodnie z logik� akustyki. G�os wypowiedziany w jednej sali pojawia� si� chwil� p�niej w drugiej - zmieniony, sp�aszczony, jakby przeszed� przez wspomnienie.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_109 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_10.3ds";
	on_state[0]					=	Use_ItWr_BookXp_109;
	
	if (Bonus_ItWr_BookXp[109])	{	description = "Miasto pod miastem II (przeczytane)";	}
	else						{	description = "Miasto pod miastem II";					};
	
	TEXT[0]						=	"Zapiski mistrza Kalderana z Gildii Geomant�w,";
	TEXT[1]						=	"sporz�dzone podczas trzeciej ekspedycji";
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
				Doc_PrintLines	(nDocID,  0, "Na �cianach znajdowa�y si� znaki - nie pismo, lecz uk�ady naci�� i wg��bie� przypominaj�ce rytm. Powtarza�y si� w r�wnych odst�pach. Pr�bowali�my je zinterpretowa� jako kod matematyczny, ale uk�ad nie odpowiada� �adnemu znanemu systemowi liczbowemu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jeden z uczni�w, kt�ry sp�dzi� noc przy jednej z kom�r, powiedzia�, �e zaczyna rozumie� wzory, mimo �e ich nie czyta�. Kilka dni p�niej poprosi� o zamkni�cie go w samotnej celi. M�wi�, �e miasto �ci�gle do niego m�wi�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie znale�li�my cia�. Nie by�o �lad�w ognia, walki, zniszczenia. Struktura nie zosta�a opuszczona - ona po prostu... przesta�a by� zamieszkana. Albo nigdy nie by�a w taki spos�b, jaki rozumiemy. Skala pomieszcze� sugerowa�a istoty wi�ksze ni� ludzie. Niekt�re korytarze mia�y pi��, sze�� s��ni wysoko�ci, a sufity wspiera�y si� na kolumnach przypominaj�cych skr�cone ko�ci.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W sali centralnej odnale�li�my co�, co mo�na by uzna� za o�tarz - je�li o�tarz mo�e by� zbiornikiem czystego d�wi�ku. Z jego wn�trza wydobywa� si� niskotonowy pomruk, nies�yszalny, a jednak odczuwalny w ko�ciach. Pr�bowali�my go zag�uszy� - nie uda�o si�. Nawet milczenie w tej sali mia�o kszta�t.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Z punktu widzenia historii jest to znalezisko bez precedensu. Z punktu widzenia magii - niewyja�nione �r�d�o oddzia�ywania. Ale z punktu widzenia cz�owiecze�stwa... jest to pytanie. Pytanie o to, kto tu by� wcze�niej. Co tu robi�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Zamkn�li�my zej�cie. Oficjalnie - dla bezpiecze�stwa. Nieoficjalnie... bo pewne miejsca nie powinny by� puste. Nie dlatego, �e s� niebezpieczne. Ale dlatego, �e s� zbyt gotowe, by zn�w si� zape�ni�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_110 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_110;
	
	if (Bonus_ItWr_BookXp[110])	{	description = "O druidach I (przeczytane)";	}
	else						{	description = "O druidach I";				};
	
	TEXT[0]						=	"Zapiski kap�ana Arveliona";
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
				Doc_PrintLines	(nDocID,  0, "W�r�d ludzi �wiata znane s� trzy imiona bosko�ci: Innos, Beliar i Adanos. Z tych trzech tylko jeden nie ��da ani czci, ani ofiar, ani wojen. Adanos - nasz Pan R�wnowagi - nie objawia si� w ogniu ani w krwi. Objawia si� w ciszy mi�dzy nimi. I mo�e w�a�nie dlatego jego najwierniejsi s�udzy s� tymi, o kt�rych najmniej wiadomo. M�wi� tu o druidach.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Istnienie druid�w wielu traktuje jako legend�. Ot, bajka o le�nych czarownikach, kt�rzy gadaj� ze zwierz�tami i zamieniaj� si� w wilki. Lecz ja, s�uga Adanosa i cz�onek kr�gu uczonych z klasztoru na Archolos, mog� po�wiadczy�, �e druidzi istniej�. Cho� niewielu. Cho� rozproszeni. Cho� obcy wobec �wiata, kt�ry dawno przesta� ich rozumie�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie nale�� do �adnego znanego kr�gu magicznego. Nie s� uczniami ognia, lodu ani ciemno�ci. Ich �wi�tynie to polany, kt�rych nikt nie odnajdzie dwa razy. Ich kaplice - pnie drzew z wyrytymi znakami, widocznymi tylko w okre�lonym �wietle. Nie nosz� szat. Ich znakiem nie jest symbol - lecz obecno�� wilka, jelenia, czy sowy, kt�rych towarzystwo zdradza wi�cej ni� tysi�c s��w.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie modl� si� s�owami. Nie prosz� Adanosa o przychylno��. Raczej s�uchaj�, czekaj�, r�wnowa��. Wierz�, �e ka�de dzia�anie wymaga przeciwwagi - i �e ka�de zak��cenie r�wnowagi poci�ga za sob� konieczno�� cichego dzia�ania. Nie po to, by przywr�ci� porz�dek. Lecz po to, by zapobiec przechyleniu szali.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_111 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_111;
	
	if (Bonus_ItWr_BookXp[111])	{	description = "O druidach II (przeczytane)";	}
	else						{	description = "O druidach II";					};
	
	TEXT[0]						=	"Zapiski kap�ana Arveliona";
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
				Doc_PrintLines	(nDocID,  0, "Spotka�em jednego z nich tylko raz. Nie poda� imienia. Nie wyja�ni� celu. Po prostu by�. Rozmawiali�my nie s�owami, lecz spojrzeniem, obecno�ci�, zrozumieniem. Gdy pr�bowa�em zapyta�, dlaczego nie ujawniaj� si� �wiatu, odpowiedzia� tylko: �Bo �wiat nas nie potrzebuje, dop�ki nie przekroczy granicy.� A potem odszed� w cie� paproci, w d�wi�k li�ci, w zapach deszczu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Niekt�rzy magowie wody uwa�aj� ich za prymitywnych. Inni - za zagubion� ga��� naszej w�asnej tradycji. Ja s�dz�, �e s� inn� odpowiedzi� na to samo pytanie: jak s�u�y� Adanosowi nie przez rytua�, lecz przez obecno��?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Druidzi nie zostawiaj� pism. Nie ucz�. Nie przyjmuj� uczni�w z zewn�trz. A jednak... pojawiaj� si�. Gdy las p�onie. Gdy bestie schodz� ze szczyt�w. Gdy ludzie kopi� zbyt g��boko. Zawsze w milczeniu. Zawsze w odpowiedzi. Jakby czuwali. Jakby las pami�ta�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, ilu ich jest. Mo�e dziesi�ciu. Mo�e trzech. A mo�e w ka�dej chwili jest tylko jeden - ale zawsze tam, gdzie by� powinien.");
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
	TEXT[1]						=	"sporz�dzone na zlecenie rady kr�lewskiej";
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
				Doc_PrintLines	(nDocID,  0, "Wojna to nie tylko krew i �elazo. Czasem wojna to niewypowiedziane rozkazy, zbyt d�ugo odwlekane decyzje i sojusze, kt�re nigdy nie zosta�y spisane. Tak w�a�nie utracili�my Wschodnie Przej�cie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie by�o obl�enia. Nie by�o bitwy. Nie by�o nawet tr�bki ostrzegawczej. By�o tylko milczenie - i potem dym.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wschodnie Przej�cie to teren g�rski, strategicznie kluczowy - nie z racji bogactw, lecz przej�cia mi�dzy wschodnimi ziemiami a reszt� kr�lestwa. Od dekad sporne, trudne do utrzymania, ale te� zaniedbane.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Garnizon w twierdzy Vardem liczy� w ostatnich latach mniej ni� dwie setki ludzi - z czego po�owa to byli ch�opi zwerbowani po�r�d lokalnych buntownik�w. Oficjalnie: �resocjalizacja przez s�u�b�. W praktyce: brak lepszego pomys�u.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Raporty o ruchach najemnik�w w tamtym rejonie sp�ywa�y przez lata. Nikt nie traktowa� ich powa�nie - za ma�o konkret�w, za ma�o nazw, za du�o �rzekomo�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Gdy wys�annik z Vardem przys�a� pro�b� o dodatkowy zapas be�t�w i smo�y, kancelaria op�ni�a decyzj� o trzy tygodnie z powodu braku piecz�ci na formularzu.");
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
	TEXT[1]						=	"sporz�dzone na zlecenie rady kr�lewskiej";
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
				Doc_PrintLines	(nDocID,  0, "Dow�dca twierdzy - rotmistrz Arkan - pisa�, �e ludno�� cywilna znika noc�. Nazywano to �migracj� sezonow��. Pisa� te� o przekupionych stra�nikach. Odes�ano go na urlop �ze wzgl�du na wyczerpanie�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W ko�cu przysz�a wiadomo��: Vardem nie istnieje. Nie zdobyto go. Po prostu... zaj�to. Gdy do miasta dotar�a ekspedycja zwiadowcza, nie znaleziono �lad�w walki. Bramy by�y otwarte. Mury nienaruszone. Garnizon znikn��.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Niekt�rzy m�wi�, �e przeszli na stron� najemnik�w. Inni - �e zostali kupieni. Najbardziej pesymistyczni uwa�aj�, �e uciekli, bo nie chcieli umiera� za ziemi�, kt�rej nikt od lat nie broni� s�owem, tylko map�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Z wojskowego punktu widzenia by�a to pora�ka bez strat. Z politycznego - kl�ska pe�na ha�by. Stracili�my ziemi� nie dlatego, �e wr�g by� silniejszy. Stracili�my j�, bo nie potrafili�my zdecydowa�, czy w og�le warto j� broni�. A gdy decyzja nadesz�a - by�o ju� po wszystkim.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Czasem wojna nie wymaga wrogiej armii. Wystarczy zbyt wiele spotka�, zbyt ma�o decyzji i kilku ludzi, kt�rzy wiedz�, �e nie b�d� poci�gni�ci do odpowiedzialno�ci. I wtedy twierdza staje si� ruin� jeszcze przed pierwszym ciosem.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_114 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_114;
	
	if (Bonus_ItWr_BookXp[114])	{	description = "Niezbieralne podatki I (przeczytane)";	}
	else						{	description = "Niezbieralne podatki I";					};
	
	TEXT[0]						=	"Zapiski poborcy kr�lewskiego Yerenwalda,";
	TEXT[1]						=	"oddelegowanego do prowincji Dolna Hartia,";
	TEXT[2]						=	"rok 91 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Zgodnie z dekretami wydanymi przez kancelari� kr�lewsk�, ka�da osada zamieszka�a przez wi�cej ni� dziesi�� rodzin podlega obowi�zkowi rocznego �wiadczenia rzeczowego lub pieni�nego. W teorii. Bo praktyka zaczyna si� tam, gdzie ko�czy si� droga brukowana.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gdy po raz pierwszy przyby�em do Dolnej Hartii, towarzyszy� mi konw�j z�o�ony z dw�ch stra�nik�w i jednego pisarza. Zak�adano, �e to wystarczy. Na miejscu zastali�my ludzi, kt�rzy od trzech lat nie widzieli herbu kr�lewskiego - i nie wyra�ali potrzeby, by to si� zmieni�o.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Zebrani w karczmie starsi wsi twierdzili, �e �podatki ju� zap�acili� - wskazuj�c na le��ce obok beczki z suszonym mi�sem, ko�ciami do kleju i czym�, co mia�o by� tkanin�, ale wygl�da�o jak wyprana �agielnina. Kiedy zasugerowa�em monet�, spojrzeli na mnie tak, jakbym prosi� ich o gwiazdy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nieco dalej, w osadzie g�rniczej pod Glinowcem, m�ody m�czyzna wr�czy� mi za�wiadczenie o podatku podpisane przez lokalnego wata�k� imieniem �Halven�. Piecz�� - odci�ni�ta z dna kufla.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Gdy odm�wi�em jego przyj�cia, zagrodzono mi drog� powrotu. Nie gro�ono mi broni�. Po prostu - nie by�o ju� konia. �Pewnie wr�ci� na p�noc�, powiedzia� jeden z ch�op�w, patrz�c mi prosto w oczy.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_115 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_115;
	
	if (Bonus_ItWr_BookXp[115])	{	description = "Niezbieralne podatki II (przeczytane)";	}
	else						{	description = "Niezbieralne podatki II";				};
	
	TEXT[0]						=	"Zapiski poborcy kr�lewskiego Yerenwalda,";
	TEXT[1]						=	"oddelegowanego do prowincji Dolna Hartia,";
	TEXT[2]						=	"rok 91 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "W kolejnych dniach odwiedza�em osady, kt�re na mapach figurowa�y jako �prawnie zale�ne�, ale w rzeczywisto�ci by�y samodzielnymi bytami - z w�asnymi zasadami, wymian�, s�dami.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Niekt�re rz�dzone przez milcz�cych starszych, inne przez bandyt�w z pretensjami do tytu��w. W jednej z nich podatek zbierano raz w roku, ale nie dla kr�la - dla �wi�tego kamienia w lesie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ludzie ci nie byli �li. Nie byli buntownikami. Po prostu nigdy nie zostali w��czeni w porz�dek, kt�ry my uznajemy za oczywisty. A gdy pytano ich o koron� - m�wili: �A co ona dla nas zrobi�a?�");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W drodze powrotnej spotka�em innego poborc�. Starszy, do�wiadczony, z g�osem zm�czonym i twarz� pokryt� py�em. Zapyta�em, czy mu si� uda�o. Odpowiedzia�: �Uda�o si� zebra� tyle, ile mia�o sens zebra�.�");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Niekt�re podatki s� realne tylko na papierze. A niekt�re prowincje s� cz�ci� kr�lestwa tylko na mapie. I mo�e to nie one s� problemem. Mo�e to my zapomnieli�my, �e zarz�dza� mo�na tylko tym, co rzeczywi�cie si� zna.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_116 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_116;
	
	if (Bonus_ItWr_BookXp[116])	{	description = "Historia o zielarce I (przeczytane)";	}
	else						{	description = "Historia o zielarce I";					};
	
	TEXT[0]						=	"Zapiski kap�ana Solimara z Bractwa Ognia,";
	TEXT[1]						=	"klasztor w Geldern,";
	TEXT[2]						=	"rok 94 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "W�r�d wielu zada� s�ugi Innosa najtrudniejsze nie jest nauczanie, leczenie ani s�dzenie. Najtrudniejsze jest pami�tanie - szczeg�lnie o tych sprawach, kt�re bol�. A ta boli mnie do dzi�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W Dolinie Riet, przy wschodnim skraju lasu, mieszka�a zielarka. Nie nosi�a imienia w ksi�gach klasztornych, ale ludzie zwali j� Leana.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "By�a osob� cich�, bez rodziny, bez uczni�w. Zajmowa�a si� ro�linami. Pomaga�a przy porodach, gor�czkach, z�amaniach. Przywozili do niej rannych z trzech okolicznych wiosek. Nie oczekiwa�a zap�aty. Bra�a tylko to, co ofiarowano z wdzi�czno�ci�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ale by�a inna. U�ywa�a zi�, kt�rych nazw nie znano. Podgrzewa�a lekarstwa nie w ogniu, lecz w glinianych kopcach z �arem i par�. Jej mikstury mia�y barwy dziwne - b��kitne, szare, niemal czarne. Niekiedy m�wi�a do ro�lin, zanim je zerwa�a. I to wystarczy�o, by zacz�to szepta�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Plotki rodz� si� szybko tam, gdzie niewiedza miesza si� z l�kiem. �Wied�ma.� �Czarownica.� �Odprawia rytua�y, gdy ksi�yc jest nowy.�");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nikt nie pyta�, czy to prawda. Wystarczy�o, �e jedna dziewczyna umar�a po porodzie, mimo �e jej pomog�a. Wystarczy�o, �e dzieci ba�y si� jej twarzy. Wystarczy�o, �e nie bywa�a w �wi�tyni.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_117 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_117;
	
	if (Bonus_ItWr_BookXp[117])	{	description = "Historia o zielarce II (przeczytane)";	}
	else						{	description = "Historia o zielarce II";					};
	
	TEXT[0]						=	"Zapiski kap�ana Solimara z Bractwa Ognia,";
	TEXT[1]						=	"klasztor w Geldern,";
	TEXT[2]						=	"rok 94 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Lud zebra� si� przed klasztorem i wezwa� ogie�. Dos�ownie i w przeno�ni. Bracia przys�ali jednego z m�odszych mag�w - gorliwego, oddanego, z oczyma, kt�re widzia�y tylko p�omie�. Uwierzy� ludowi. Nie zapyta� jej. Nie poprosi� o wyja�nienia. Sprawiedliwo�� zosta�a skr�cona do stosu. A ogie� - rzekomo oczyszczaj�cy - poch�on�� co�, czego nawet nie pr�bowa� zrozumie�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gdy wie�� o tym wydarzeniu dotar�a do mnie, uda�em si� na miejsce. Nie z polecenia prze�o�onych. Z obowi�zku sumienia. Zbada�em jej chat�, przeszuka�em rega�y, roz�o�y�em ka�dy napar. Wszystko, co tam by�o, odpowiada�o znanym formu�om leczniczym. Krwawnik, ruta, korze� nocy, suszona jask�cza ���. Ani jednej czaszki. Ani jednej ksi�gi zakazanej. Ani jednej runy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W�r�d notatek znalaz�em receptur� naparu na wrzody sk�rne, kt�rej sk�ad by� bardziej skuteczny ni� cokolwiek, co zna�em. Straci�em j�, bo spali�a si� z jej tw�rczyni�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie pisz� tego, by podwa�a� decyzje Bractwa. Ale pisz� to, by przypomnie�: nie wszystko, co niezrozumia�e, jest przekl�te. Nie ka�dy, kto nie modli si� naszymi s�owami, blu�ni. I nie ka�dy ogie�, kt�ry p�onie w imi� Innosa, niesie �wiat�o.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "S� tacy, kt�rzy m�wi�, �e prawda zawsze wyp�ywa. By� mo�e. Ale czasem wyp�ywa tylko popi� - a w nim sp�nione pytania, na kt�re nikt ju� nie odpowie.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_118 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_15.3ds";
	on_state[0]					=	Use_ItWr_BookXp_118;
	
	if (Bonus_ItWr_BookXp[118])	{	description = "Z Doliny Szept�w I (przeczytane)";	}
	else						{	description = "Z Doliny Szept�w I";					};
	
	TEXT[0]						=	"Praca badawcza mistrza Garinosa z Archiwum";
	TEXT[1]						=	"Wewn�trznego Bractwa Wiedzy w Geldern,";
	TEXT[2]						=	"rok 76 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Z Doliny Szept�w");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "S� w naszym kr�lestwie budowle, kt�re przetrwa�y wi�cej ni� jedno pokolenie. S� i takie, kt�re przetrwa�y wi�cej ni� jedno kr�lestwo. Niekt�re z nich maj� fundamenty tak precyzyjnie dopasowane, �e nawet ostrze no�a nie znajdzie szczeliny. A mimo to nie pochodz� ani z epoki kr�lewskiej, ani cesarskiej. Ich znaki wskazuj� na Dolin� Szept�w.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To miejsce nie figuruje na wsp�czesnych mapach. Dawniej le�a�o mi�dzy dawnymi terenami p�nocnych kopalni a wschodnimi traktami handlowymi. Dzi� jest zaros�e, opuszczone i uwa�ane za niebezpieczne. M�wi si�, �e �kamienie tam m�wi��. Nie w przeno�ni - dos�ownie. Pono� kto zanocuje mi�dzy starymi ruinami, us�yszy szepty spod ziemi. St�d nazwa.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ale zanim dolina zosta�a porzucona, by�a domem dla jednego z najbardziej zagadkowych zawod�w w historii naszego �wiata: s�uchaczy kamienia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie byli to zwykli murarze. Nie nale�eli do cech�w. Nie zapisywali swoich technik.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "M�wiono, �e potrafili rozpozna� wiek ska�y po dr�eniu palc�w na jej powierzchni. �e znali �piew, kt�rym mo�na by�o rozdzieli� g�az bez m�ota. �e wbudowywali co� wi�cej ni� kamie� - r�wnowag� d�wi�ku i ci�aru. Ich konstrukcje nie potrzebowa�y zaprawy. Kamienie �chcia�y� do siebie przylega�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_119 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_15.3ds";
	on_state[0]					=	Use_ItWr_BookXp_119;
	
	if (Bonus_ItWr_BookXp[119])	{	description = "Z Doliny Szept�w II (przeczytane)";	}
	else						{	description = "Z Doliny Szept�w II";				};
	
	TEXT[0]						=	"Praca badawcza mistrza Garinosa z Archiwum";
	TEXT[1]						=	"Wewn�trznego Bractwa Wiedzy w Geldern,";
	TEXT[2]						=	"rok 76 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Z Doliny Szept�w");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie zachowa� si� �aden dziennik ich pracy. Ale ich dzie�a trwaj�. W ruinach wschodniego obozu widzia�em �cian� z�o�on� z 318 blok�w - ka�dy inny, ka�dy dopasowany do pozosta�ych z precyzj�, kt�rej nie widuj� nawet u wsp�czesnych kamieniarzy z Vengardu. Ich �uki nie maj� zwornik�w. Ich schody nie osiadaj�. Ich kamienie nie p�kaj� na mrozie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dlaczego znikn�li? Wedle opowie�ci, nie zostali wygnani. Odeszli sami. Gdy ostatnia �ciana ich �wi�tyni stan�a, pono� spakowali narz�dzia - wykonane z kamienia, nie z metalu - i ruszyli dalej. Nie pozostawili uczni�w. Nie szukali nast�pc�w. Jakby uznali, �e ich dzie�o dobieg�o ko�ca. A mo�e - �e �wiat nie jest gotowy na to, co potrafi�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Byli tacy, kt�rzy pr�bowali odtworzy� ich metody. Sprowadzano zaklinaczy ziemi, alchemik�w, nawet mag�w kr�gu wody. Nikt nie potrafi� zrozumie�, jak bez zaprawy powsta�y mosty, kt�re stoj� do dzi�. Jedna z hipotez m�wi, �e nie pracowali tylko narz�dziem - ale te� g�osem. �e rozumieli rytm drga� ska� lepiej ni� my rytm modlitw.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W �wi�tyni w Geldern stoi dzi� jeden z ich kamieni - przyniesiony z Doliny, przeniesiony bez ci�cia. Wa�y pi�� ton. Ale najdziwniejsze nie jest jego rozmiar. To, �e nigdy nie nagrzewa si� w s�o�cu. Nawet po po�udniu mo�na po�o�y� na nim d�o� - i b�dzie ch�odny. Jakby co� w nim czeka�o.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kamienie tych ludzi s� jak ich historia - ci�kie, niewzruszone, milcz�ce. Ale czasem mam wra�enie, �e milcz� nie dlatego, �e nie chc� m�wi� - tylko dlatego, �e ju� wszystko powiedzia�y.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_120 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_120;
	
	if (Bonus_ItWr_BookXp[120])	{	description = "Zapomniany kr�l I (przeczytane)";	}
	else						{	description = "Zapomniany kr�l I";					};
	
	TEXT[0]						=	"Notatki badawcze Elratha";
	TEXT[1]						=	"z Izby Pami�ci w Setarrif.";
	TEXT[2]						=	"Rok 118 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Zapomniany kr�l");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W kronikach kr�lewskich, gdzie ka�dy rozdzia� naznaczony jest zar�wno krwi�, jak i piecz�ci�, znajduje si� luka. Nie milczenie - luka. Pomi�dzy panowaniem kr�la Theodrika III a jego synem Leontianem I znajduj� si� trzy lata... kt�re nie istniej�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie chodzi o to, �e o nich nie pisano. Chodzi o to, �e pisano za du�o, nie m�wi�c nic. Ksi�gi urywaj� si�, a potem wracaj� z nowym rokiem panowania - z innym piecz�tnikiem, inn� walut�, innym stylem dekret�w.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale nie pada ani jedno imi�. �adnej bitwy. �adnej kl�ski. Ani nawet �ladu pogrzebu.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W�r�d lokalnych zapisk�w z tamtych lat - z archiwum cech�w, ze starych regest�w celnych, z prywatnych modlitewnik�w - znalaz�em fragmenty list�w podpisanych tytu�em, ale nigdy imieniem: �Z woli tronu, dla dobra wszystkich, Kr�l�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Brakuje podpis�w. Brakuje wizerunk�w. Piecz�cie s� zdarte, wypalone lub pokryte woskiem tak grubym, �e nie spos�b odczyta� symbolu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Czego si� bali?");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_121 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_01.3ds";
	on_state[0]					=	Use_ItWr_BookXp_121;
	
	if (Bonus_ItWr_BookXp[121])	{	description = "Zapomniany kr�l II (przeczytane)";	}
	else						{	description = "Zapomniany kr�l II";					};
	
	TEXT[0]						=	"Notatki badawcze Elratha";
	TEXT[1]						=	"z Izby Pami�ci w Setarrif.";
	TEXT[2]						=	"Rok 118 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Zapomniany kr�l");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W niekt�rych klasztorach, g��boko w piwnicach, zachowa�y si� wzmianki o cz�owieku, kt�ry obj�� koron� bez krwi i j� odda� bez wojny.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O jego dekretach, kt�re mia�y zako�czy� system dziedziczenia. O tym, �e zakaza� u�ywania herbowych tytu��w w dokumentach urz�dowych. O tym, �e pr�bowa� powierzy� ziemi� nie szlachcie, lecz miastom. Rewizjonista. Reformator. Wr�g porz�dku.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie zosta� pokonany - zosta� uniewa�niony. Wymazany z historii nie przez kl�sk�, lecz przez porozumienie. Cisz� wi�ksz� ni� wyrok.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W jednym z dokument�w - list prywatny do opata w Silden - znalaz�em fragment: �Niechaj pami�� o nim nie zginie tylko w�r�d kamienia, ale niech nie powr�ci s�owem. Bo jego rz�dy by�y snem, kt�ry nie wolno �ni�.�");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy by� tyranem. Mo�e by�. Mo�e jego rz�dy przynios�y chaos. Ale wiem, �e kto� postanowi�, �e lepiej, by�my nigdy tego nie ocenili. �e lepiej, by nie zosta� zapami�tany wcale, ni� zapami�tany niew�a�ciwie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "A je�li historia potrafi wymaza� kr�la - jak�e �atwo mo�e wymaza� prawd� o ka�dym z nas.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_122 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_122;
	
	if (Bonus_ItWr_BookXp[122])	{	description = "Niebezpieczna wiedza I (przeczytane)";	}
	else						{	description = "Niebezpieczna wiedza I";					};
	
	TEXT[0]						=	"Rozwa�ania starego uczonego";
	TEXT[1]						=	"spisane w opactwie Uthar,";
	TEXT[2]						=	"na rok przed jego �mierci�.";
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
				Doc_PrintLines	(nDocID,  0, "Przez wi�kszo�� �ycia wierzy�em, �e najwi�kszym grzechem cz�owieka wiedzy jest milczenie. �e kto posiada m�dro��, ten winien j� szerzy�, jak pochodni� w mroku. Dzi� nie jestem ju� tego tak pewien.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Niekt�rzy z najwi�kszych mistrz�w, jakich zna�em - ludzie, kt�rzy rozumieli ruchy gwiazd, struktur� czasu, wewn�trzny puls ziemi - nigdy nie zostawili po sobie uczni�w.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Mieli pisma. Mieli ksi�gi. Ale nie przekazali swojej wiedzy nikomu osobi�cie. I to nie dlatego, �e zabrak�o im czasu. Zabrak�o im... odwagi? Wiary? A mo�e mieli racj�?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Znam przypadek maga, kt�ry potrafi� odczytywa� my�li z krwi. Pisa�, �e �ka�da kropla to list, wystarczy zna� alfabet�. Nigdy nikogo tego nie nauczy�. Zmar� samotnie, a jego dziennik sp�on�� razem z wie��.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Znam te� runomistrza z g�rnego klasztoru, kt�ry twierdzi�, �e potrafi odr�ni� k�amstwo od prawdy nie s�ysz�c s��w - a patrz�c na cie� cz�owieka. Gdy zapytano go, czemu nie dzieli si� t� umiej�tno�ci�, odpowiedzia�: �Nie ka�da prawda powinna by� u�ywana na zawo�anie.�");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_123 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_02.3ds";
	on_state[0]					=	Use_ItWr_BookXp_123;
	
	if (Bonus_ItWr_BookXp[123])	{	description = "Niebezpieczna wiedza II (przeczytane)";	}
	else						{	description = "Niebezpieczna wiedza II";				};
	
	TEXT[0]						=	"Rozwa�ania starego uczonego";
	TEXT[1]						=	"spisane w opactwie Uthar,";
	TEXT[2]						=	"na rok przed jego �mierci�.";
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
				Doc_PrintLines	(nDocID,  0, "Przez lata uwa�a�em ich za tch�rzy. Za egoist�w. Za ludzi, kt�rzy pozwolili umrze� sztuce, kt�r� mogli ocali�. Ale teraz... zaczynam rozumie�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Bo widzia�em uczni�w, kt�rzy poznali tylko po�ow� nauki i uznali si� za mistrz�w. Widzia�em czarodziei, kt�rzy znali zakl�cie, lecz nie jego cen�. Widzia�em wiedz�, kt�ra zosta�a przekazana nie tym, kt�rzy chcieli zrozumie� - lecz tym, kt�rzy chcieli mie� przewag�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Mo�e ci mistrzowie nie milczeli z pychy. Mo�e milczeli z mi�o�ci. Mo�e wiedzieli, �e nie wszystko mo�na przekaza� s�owem. �e niekt�re prawdy dojrzewaj� tylko w ciszy.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "A mo�e... mo�e bali si� tego, co stanie si� z uczniem, kt�ry nauczy si� za du�o - za szybko - za �atwo.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, czy mieli racj�. Ale dzi�, kiedy kto� prosi mnie: �Naucz mnie tego, co wiesz�, czasem odpowiadam: �Nie potrafi� - cho� wiem, �e potrafi� doskonale. Bo mo�e najwi�ksza odpowiedzialno�� mistrza to nie nauczy�, ale zdecydowa�, czego nie uczy�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_124 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_124;
	
	if (Bonus_ItWr_BookXp[124])	{	description = "Mowa bez s��w I (przeczytane)";	}
	else						{	description = "Mowa bez s��w I";				};
	
	TEXT[0]						=	"Spisane przez starego ober�yst�";
	TEXT[1]						=	"z po�udniowej marchii, na marginesie";
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
				Doc_PrintLines	(nDocID,  0, "Mowa bez s��w");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie jestem uczonym. Nie umiem pisa� ozdobnie, a wielu s��w, kt�rych u�ywaj� kap�ani i magowie, nawet nie rozumiem. Ale jedno wiem na pewno: cz�owieka poznaje si� nie po tym, co m�wi - ale po tym, jak siada.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W karczmie, kiedy kto� wchodzi, ju� po samym spojrzeniu wiem, czy szuka piwa, spokoju, awantury, czy tylko alibi.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ci, co rozgl�daj� si� za szybko - maj� co� do ukrycia. Ci, co nie patrz� nikomu w oczy - s� po stracie albo z czym�, czego si� wstydz�. A ci, co siadaj� plecami do drzwi? Albo s� g�upcami, albo maj� za sob� wi�cej trup�w ni� lat.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Karczmarz nie ma prawa pyta�. Ale ma obowi�zek wiedzie�. Kto siedzi z kim. Kto z kim nie siada. Kto zmienia miejsce, gdy przychodzi stra�nik. Kto k�adzie sakiewk� na stole jak �eton, a kto trzyma j� pod nog�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To j�zyk, kt�rego uczysz si� przez lata - bez nauczyciela, bez podr�cznika. Ale gdy raz go poznasz, s�yszysz go wsz�dzie.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_125 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_03.3ds";
	on_state[0]					=	Use_ItWr_BookXp_125;
	
	if (Bonus_ItWr_BookXp[125])	{	description = "Mowa bez s��w II (przeczytane)";	}
	else						{	description = "Mowa bez s��w II";				};
	
	TEXT[0]						=	"Spisane przez starego ober�yst�";
	TEXT[1]						=	"z po�udniowej marchii, na marginesie";
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
				Doc_PrintLines	(nDocID,  0, "Mowa bez s��w");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Znam ludzi, kt�rzy nigdy nie widzieli zamku, nie rozmawiali z kr�lem ani nie czytali edykt�w. Ale znaj� szepty, spojrzenia i niepok�j - bo s� sta�ymi bywalcami.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To w karczmie najpierw m�wi si� o wojnie, zanim spadnie pierwszy rozkaz. To w karczmie pojawia si� wie�� o zarazie, zanim kap�ani przynios� kadzid�a. To w karczmie dochodzi do pojedna�, zdrad i znikni��.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie powiem, �e wszystko wiem. Ale powiem, �e wszystko wida� - je�li si� wie, na co patrze�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "S�ysza�em kiedy� od jednego ze stra�nik�w, �e �karczmarz to tylko pacho�ek z chochl��. Mo�e i tak. Ale to chochla, kt�ra miesza nie tylko zup�, ale i ludzkie dusze. I je�li kto� naprawd� chce wiedzie�, czym �yje miasto - niech zapyta nie arcykap�ana, nie radc�, nie pos�a - tylko tego, kt�ry nalewa i s�ucha.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bo mowa w karczmie to nie j�zyk ust. To j�zyk oczu, d�oni, i tych chwil ciszy, kiedy kto� zamawia jeszcze jedno, cho� mia� ju� wyj��. Karczma to nie �wi�tynia. Ale bywa, �e modlitwy sk�adane przy kuflu s� prawdziwsze ni� te przy o�tarzu.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_126 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_04.3ds";
	on_state[0]					=	Use_ItWr_BookXp_126;
	
	if (Bonus_ItWr_BookXp[126])	{	description = "Targi przed �witem I (przeczytane)";	}
	else						{	description = "Targi przed �witem I";				};
	
	TEXT[0]						=	"Spisane przez obserwatora miejskiego";
	TEXT[1]						=	"handlu w Setarrif, nieoficjalnie,";
	TEXT[2]						=	"na pergaminach ksi�g podatkowych.";
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
				Doc_PrintLines	(nDocID,  0, "Targi przed �witem");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Kto zna wag� chleba przed �witem, zna wag� �wiata.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Gdy dzwony w �wi�tyni zaczynaj� bi� na jutrzni�, wi�kszo�� mieszka�c�w dopiero si� budzi. Ale targ ju� �yje. A w�a�ciwie - �y� jeszcze zanim si� zbudzili�cie.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie m�wi� tu o otwarciu stragan�w, o nawo�ywaniach przekupek, o krzykach ��wie�y karp, �ywy karp!� i o zapachu gor�cych pasztecik�w z budki przy murze.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "To ju� teatr - pokaz dla mieszczan, dla klient�w, dla przechodni�w. Prawdziwy targ dzieje si� wcze�niej. W mroku. W ciszy. Czasem w b�ocie.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Jeszcze przed �witem przychodz� ci, kt�rzy wiedz�, co ma warto��. Mistrz piekarski odbiera m�k� od m�ynarza, kt�ry nie zostawi� jej w oficjalnym magazynie, bo tam trzeba by by�o p�aci� myto.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Rze�nik bierze tusze prosto z wozu, jeszcze ciep�e, nim kap�an ognia zd��y sprawdzi� piecz�cie czysto�ci. A handlarz winem kupuje trzy beczki starego cuv�e, zanim stra� miejska przypomni sobie, �e wino z po�udnia powinno by� ob�o�one c�em.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_127 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_04.3ds";
	on_state[0]					=	Use_ItWr_BookXp_127;
	
	if (Bonus_ItWr_BookXp[127])	{	description = "Targi przed �witem II (przeczytane)";	}
	else						{	description = "Targi przed �witem II";					};
	
	TEXT[0]						=	"Spisane przez obserwatora miejskiego";
	TEXT[1]						=	"handlu w Setarrif, nieoficjalnie,";
	TEXT[2]						=	"na pergaminach ksi�g podatkowych.";
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
				Doc_PrintLines	(nDocID,  0, "Targi przed �witem");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To wtedy zapadaj� decyzje. Co dzi� b�dzie dost�pne, co �nagle si� sko�czy�o�, co �przyjecha�o z daleka� i dlatego kosztuje trzy razy wi�cej. To nie magia. To logistyka. To j�zyk spojrze� i milcz�cych porozumie�. U�cisk d�oni. Skrzynia pod p�acht�. Dw�m si� powie �nie ma�, a trzeciemu - �dla ciebie si� znalaz�o�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale s� te� tacy, kt�rzy �yj� obok targu. Cie� targu ma swoich mieszka�c�w: ch�opcy, co roznosz� plotki szybciej ni� listy. Stara Lira, co �po�ycza� kobierce i sprzedaje je dwa dni p�niej jako �nowe z Gothy�. I Marnek, kt�ry nigdy niczego nie sprzedaje, ale zawsze wie, kto ile wzi�� i za ile. Nie wiadomo, czy pracuje dla cechu, stra�y, czy samego siebie. Ale wiedza te� jest towarem. Czasem najcenniejszym.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "A gdy pierwsze �wiat�o dotyka kamieni placu, ci, kt�rzy ju� wszystko ustalili, znikaj�. Ich miejsce zajmuj� handlarze z g�o�nym g�osem i gotowym u�miechem. Rozstawiaj� stragany, odliczaj� drobne, modl� si� cicho o pogod�. Dla t�umu to pocz�tek. Ale dla targu to ju� epilog.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bo prawdziwy rynek ko�czy si� wtedy, gdy miasto si� budzi.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_128 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_128;
	
	if (Bonus_ItWr_BookXp[128])	{	description = "Nied�wied� z prze��czy I (przeczytane)";	}
	else						{	description = "Nied�wied� z prze��czy I";				};
	
	TEXT[0]						=	"Spisana przez skalnego skryb� Yorrika";
	TEXT[1]						=	"z klanu M�ota, w sze��dziesi�t� zim�";
	TEXT[2]						=	"po bitwie o Pr�g Krwi.";
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
				Doc_PrintLines	(nDocID,  0, "Nied�wied� z prze��czy");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W nordmarskiej tradycji pami�tamy imiona wojownik�w, kt�rzy padli z toporem w r�ku. Ale s� czyny, kt�re nie potrzebuj� imienia - bo wyry�y si� w skale i �niegu. Tak jest z nim.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie mia� imienia ludzkiego, bo nie by� cz�owiekiem. By� nied�wiedziem - sier�� jak popi� po kowalskim palenisku, �apy szerokie jak tarcze klanowe. Znale�li�my go jako m�ode, wyg�odnia�e i porzucone, w jednym z lodowych jar�w nad Jeziorem Cierni. Sierota, jak wielu z nas. A mo�e dar, jak rzadko kt�ry.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Najpierw karmili�my go mlekiem i suszonym mi�sem, potem sam zacz�� przynosi� upolowane zaj�ce. By� silny - nie tylko cia�em, ale sercem. Nie oswojony jak pies, nie ujarzmiony jak ko� - r�wny. Sam wybiera�, gdzie spa�, z kim siedzie� przy ogniu, kogo s�ucha�. A jednak, gdy r�g bojowy rozbrzmiewa� w w�wozie, stawa� przy nas. Bez pancerza, bez rozkazu. Walczy�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Kiedy orkowie zeszli z p�nocnych grani i uderzyli na prze��cz mi�dzy klanem M�ota a fortec� Faring, wielu z nas nie wr�ci�o. L�d nasi�k� krwi�, a niebo by�o ci�sze ni� stal. Ale on - on - zatrzyma� ich marsz.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_129 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_05.3ds";
	on_state[0]					=	Use_ItWr_BookXp_129;
	
	if (Bonus_ItWr_BookXp[129])	{	description = "Nied�wied� z prze��czy II (przeczytane)";	}
	else						{	description = "Nied�wied� z prze��czy II";					};
	
	TEXT[0]						=	"Spisana przez skalnego skryb� Yorrika";
	TEXT[1]						=	"z klanu M�ota, w sze��dziesi�t� zim�";
	TEXT[2]						=	"po bitwie o Pr�g Krwi.";
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
				Doc_PrintLines	(nDocID,  0, "Nied�wied� z prze��czy");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Niekt�rzy m�wi�, �e widzieli, jak powala� jednego orka za drugim, �ami�c im bro� i szcz�ki. Inni twierdz�, �e stan�� w miejscu, gdzie linia si� za�ama�a, i nie cofn�� si� ani o krok, mimo �e dzidy przeszy�y mu bok. A ja... ja pami�tam tylko jedno: �e gdy pad� - pad� na orka, nie pozwalaj�c mu ruszy� dalej.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Po bitwie pochowali�my wojownik�w z klanu - jak nale�y. Jego te�. Nie pod kamieniem, ale w samym �rodku Prze��czy, tam gdzie ziemia nosi�a jego �lady. Tam, gdzie jego �apy zrobi�y r�w g��bszy ni� buty wojownik�w.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie mia� imienia? Mo�e. Ale ka�dy, kto przejdzie tamt�dy, wie, �e to jego ziemia. Niech runy nie zapomn�. Niech ka�da opowie�� w d�ug� noc zaczyna si� od niego. Bo cho� nie m�wi� j�zykiem ludzi, jego czyn przem�wi� za tysi�c krzyk�w.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "By� jednym z nas. I by� lepszy ni� wielu z nas.");
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
	TEXT[2]						=	"po jego zagini�ciu w okolicach G�r Cieni.";
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
				Doc_PrintLines	(nDocID,  0, "Znamy smoki. A przynajmniej s�dzimy, �e je znamy. M�wi� o nich pie�ni, opowiadaj� o nich starcy, zapisuj� je w kronikach ci, kt�rzy nigdy ich nie widzieli. Skrzyd�a jak �agle, oddech jak piek�o, zbroja ze z�ota i krwi. Ale w jednym wszyscy si� zgadzaj�: smok jest w�adc� przestworzy.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "A je�li to nieprawda?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W jednej z najstarszych map G�r Cieni, tej, kt�r� sporz�dzili wi�niowie g�rniczego kolosa jeszcze przed powstaniem barier, znajduje si� notatka przy jednym z podziemnych tuneli.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Napisano tam: �Ziemia dudni. Co� du�ego. Nigdy nie przysz�o z g�ry.� Inna wzmianka - w dzienniku kopacza z Argaan - m�wi o ��arze w kamieniu� i �oczach, kt�re nie zna�y s�o�ca�. W obu przypadkach - zero �lad�w skrzyde�. Zero �lad�w wyj�cia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Czy mo�liwe jest, �e niekt�re smoki - rodz� si� i umieraj� pod ziemi�? �e ich �ycie nie ma nic wsp�lnego z powietrzem i przestrzeni�, a wszystko z ciemno�ci� i cisz�?");
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
	TEXT[2]						=	"po jego zagini�ciu w okolicach G�r Cieni.";
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
				Doc_PrintLines	(nDocID,  0, "Wyobra�my sobie istot� wielko�ci domu, wij�c� si� mi�dzy p�ytami ska�y, oddychaj�c� przez w�skie gard�a lawowe, �ywi�c� si� minera�ami i gor�cem. Nie potrzebuje skrzyde�. Nie chce wzbi� si� w powietrze. Dla niej niebo to mit. A my - jedynie echo nad jej g�ow�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Jedna z moich hipotez zak�ada, �e to w�a�nie takie smoki - nielotne, �lepe, g�uche na �wiat ludzi - s� najstarsze. Ich istnienie poprzedza j�zyk, religi�, nawet poj�cie wojny. S� cz�ci� ska�y, nie opowie�ci.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "I jeszcze co�. W ruinach �wi�tyni Adanosa w pobli�u Mora Sul, na jednej z kolumn odkry�em ryt mikroskopijnego przedstawienia istoty o d�ugim, w�owym ciele, bez oczu, z szeregiem drobnych kolc�w na grzbiecie. U jej st�p le�y symbol bog�w - roz�upany.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie wiem, co to znaczy. Ale boj� si�, �e je�li te smoki istniej� - nie poluj�. Nie lec�. One czekaj�. A kiedy ziemia zadr�y... niebo mo�e pozosta� spokojne. Bo zagro�enie nie spadnie z g�ry. Ono wyjdzie z do�u.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Je�li znajd� moje cia�o, niech zostanie spalone. Je�li nie znajd� - znaczy, �e znalaz�o mnie ono.");
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
	TEXT[2]						=	"przypuszczalnie za rz�d�w arcyregenta Velrasa.";
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
				Doc_PrintLines	(nDocID,  0, "Nazywa� si� Elgor, cho� ma�o kto zna� jego imi�. W Dol Arelin m�wiono po prostu �ten od trumien�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Mieszka� na skraju dzielnicy p�nocnej, przy opuszczonym m�ynie, gdzie nawet szczury chodzi�y ostro�niej. Jego warsztat nie mia� szyldu, a drzwi zawsze skrzypia�y, jakby ju� zapowiada�y �a�ob�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie robi� �awek, nie �ata� dach�w, nie struga� �y�ek. Tylko trumny. I to wy��cznie na zam�wienie. Nigdy wi�cej ni� jedn� naraz.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Jedni go wy�miewali, drudzy unikali. Plotkowano, �e przed ka�dym ci�ciem drewna przyk�ada� do niego ucho, jakby s�ucha�, co ma do powiedzenia. �e nie mierzy�, nie szkicowa�, a mimo to trumna zawsze pasowa�a - nawet do zmar�ych, kt�rych nikt si� nie spodziewa�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Raz podobno odm�wi� zam�wienia - a cz�owiek, kt�ry j� z�o�y�, zgin�� tej samej nocy. Przypadek? Mo�e.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Cech cie�li pr�bowa� go zmusi� do podporz�dkowania si� piecz�ciom rzemie�lniczym. Odm�wi�. Powo�a� si� na star� klauzul� z czas�w regenta Velrasa, kt�ra stanowi�a, �e �tw�rca rzeczy ostatecznych� nie podlega cechom. I rzeczywi�cie - znaleziono taki dokument w archiwach.");
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
	TEXT[2]						=	"przypuszczalnie za rz�d�w arcyregenta Velrasa.";
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
				Doc_PrintLines	(nDocID,  0, "Ale najdziwniejsze wysz�o na jaw dopiero po jego �mierci. Zmar� samotnie. Nikt nie zna� dnia ani przyczyny. Stra� miejska wesz�a do jego warsztatu dopiero po miesi�cu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Znaleziono tam dziesi�tki wyrytych szkielet�w modeli - ka�da zrobiona pod kogo�, kto ju� od dawna le�a� pod ziemi�. I ka�da z trumien mia�a na spodzie wyryty znak. Nie run�. Nie litery. Raczej co�... osobistego.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dla stra�nika - male�ka tarcza. Dla starej zielarki - li�� mi�ty. Dla �piewaka - nuty, roz�o�one jakby by�y �piewane przez drewno. Ka�dy symbol by� inny. Ka�dy - jakby zna� zmar�ego lepiej, ni� zna�a go jego w�asna rodzina.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie wiemy, sk�d wiedzia�. Mo�e widzia� rzeczy, kt�rych inni nie widz�. Mo�e tylko rozumia�, �e �mier� ma sw�j j�zyk - i pr�bowa� go przet�umaczy� na drewno.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Na jego grobie nie ma nagrobka. Tylko stare deski, kt�re sam tam po�o�y� - na d�ugo przed swoj� �mierci�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "A jednak, gdy kto� umiera dzi� w Dol Arelin i rodzina nie wie, gdzie zam�wi� trumn�, czasem m�wi: �Szkoda, �e nie ma ju� Elgora. On wiedzia�, jak to zrobi�... w�a�ciwie.�");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_134 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_134;
	
	if (Bonus_ItWr_BookXp[134])	{	description = "�wi�ta bez czci I (przeczytane)";	}
	else						{	description = "�wi�ta bez czci I";					};
	
	TEXT[0]						=	"Notatki kap�ana Emdora z klasztoru Dagnor,";
	TEXT[1]						=	"nieprzeznaczone do publikacji.";
	TEXT[2]						=	"Odnalezione po jego znikni�ciu.";
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
				Doc_PrintLines	(nDocID,  0, "�wi�ta bez czci");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W archiwach pod klasztorem w Dagnor znajduje si� skrzynia, kt�rej nie wolno otwiera� bez zgody Rady Starszych.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Widzia�em j� tylko raz, w obecno�ci mistrza Ellariona. Zardzewia�e zawiasy, pop�kany wosk na piecz�ciach, a w �rodku - zbiory zakazanych kult�w, odpisy starych herezji, rzeczy, kt�rych nie wolno cytowa�. I w�r�d nich... by�o imi�: Virella.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Nie wspomina jej �aden wsp�czesny modlitewnik. �aden �piew, �adne nabo�e�stwo. A jednak �lady jej obecno�ci s� wsz�dzie, je�li wie si�, gdzie patrze�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "W ruinach starego sanktuarium w g�rach Larthas znalaz�em p�askorze�b� - posta� kobieca, d�onie uniesione, a u st�p woda, nie ogie�. Podpisano j�: �Ta, kt�ra budzi�a modlitw�, gdy bogowie jeszcze milczeli.�");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "W starych kalendarzach z czas�w panowania Velrasa, dzie� 7 Ko�ca Lata by� oznaczony znakiem spirali i s�owami: �Wielka cisza Virelli�. Dzi� - to dzie� pusty. Wymazany.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_135 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_08.3ds";
	on_state[0]					=	Use_ItWr_BookXp_135;
	
	if (Bonus_ItWr_BookXp[135])	{	description = "�wi�ta bez czci II (przeczytane)";	}
	else						{	description = "�wi�ta bez czci II";					};
	
	TEXT[0]						=	"Notatki kap�ana Emdora z klasztoru Dagnor,";
	TEXT[1]						=	"nieprzeznaczone do publikacji.";
	TEXT[2]						=	"Odnalezione po jego znikni�ciu.";
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
				Doc_PrintLines	(nDocID,  0, "�wi�ta bez czci");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Znalezione przeze mnie odpisy wskazuj�, �e Virella by�a jedn� z pierwszych kap�anek, by� mo�e jeszcze z czas�w przed Drugim Z��czeniem. Nie g�osi�a ognia ani lodu, nie wzywa�a imion b�stw w obecnej formie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zamiast tego uczy�a, �e bogowie odeszli - �e nas zostawili, a ich echo pozosta�o tylko w rytua�ach. Twierdzi�a, �e prawdziwa �wi�to�� nie le�y w czci, ale w odwadze m�wienia prawdy do milcz�cego nieba.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To, co kiedy� by�o nauk�, uznano za blu�nierstwo. Nie wiemy, jak zgin�a. Ale nie sp�on�a. Nie zosta�a stracona. Po prostu - znikn�a z pami�ci. Jej imi� wymazano z ksi�g, jej symbole zeszlifowano z o�tarzy. A mo�e - to nie my j� zapomnieli�my. Mo�e ona nas opu�ci�a.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ale raz, tylko raz, podczas modlitwy w Dolinie Mg�y, gdy zapad�a cisza tak g��boka, �e s�ysza�em bicie w�asnej krwi, us�ysza�em co� jeszcze. Nie s�owa. Co� mi�dzy oddechem a szumem. Co�, co brzmia�o jak... �Jeszcze mnie pami�tasz.�");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie mam dowod�w. Tylko w�tpliwo�ci. I tylko te w�tpliwo�ci prowadz� mnie dalej.");
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
	TEXT[1]						=	"Milicji Kr�lewskiej, nieznane nazwisko.";
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
				Doc_PrintLines	(nDocID,  0, "Kiedy wst�powa�em do milicji, mury miasta mia�y znaczenie. Ich wysoko��, ich stan, ich symbolika - by�y wszystkim. Dla obywatela - bezpieczn� granic�. Dla wroga - ostrze�eniem. Dla nas - obowi�zkiem.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Dzi� mijam je codziennie, id�c po wod�. Nie strzeg� ju� niczego, pr�cz go��bi.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie chodzi tylko o kamie�, kt�ry kruszeje, i o wie�e, kt�re dawno przesta�y by� obsadzane. Chodzi o to, �e ludzie przestali patrze� w g�r�. Kiedy�, gdy wie�a wschodnia zap�on�a ogniem ostrzegawczym, ca�e miasto zamar�o. Teraz dzieci bawi� si� pod jej cieniem, rzucaj�c w ni� pestkami.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Ostatni raz us�ysza�em rozkaz �Zamkn�� bram�!� siedemna�cie lat temu. Zabrzmia� wtedy jak wyrok - nie dla wroga, lecz dla nas. Zostali�my wewn�trz, bez rozkaz�w, bez kontaktu, z broni�, kt�ra rdzewia�a szybciej ni� nasze sumienie. S�yszeli�my krzyki poza murami, ale nikt nie otworzy�. W ko�cu i one ucich�y.");
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
	TEXT[1]						=	"Milicji Kr�lewskiej, nieznane nazwisko.";
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
				Doc_PrintLines	(nDocID,  0, "Od tamtej pory widzia�em, jak handlarze wynosz� towar przez bramy noc�, jak stra�nicy �pi� na posterunkach, jak nawet z�odzieje przestaj� si� �pieszy�, bo i tak nikt ich nie goni. Mury s� tylko t�em. Rze�b�. Kul� w p�ocie historii. A przecie� niegdy�... By�y wszystkim.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Pami�tam jeszcze, gdy w dzie� koronacji kr�la Marevara t�um wyleg� na place, a chor�gwie z herbem zawis�y na ka�dej z wie�. Byli�my dumni, gotowi odda� �ycie, by te mury sta�y niewzruszone.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nazywano mnie porucznikiem. Teraz jestem tylko starym cz�owiekiem z blizn� i pami�ci�. Ludzie nie pytaj� mnie o czasy obl�enia, o deszcze ognia, o szar�e z zewn�trz. Pytaj�, gdzie taniej kupi� m�k�. I maj� racj�.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie t�skni� za wojn�. Ale t�skni� za chwil�, gdy wiedzieli�my, czym jest mur. Czym jest granica mi�dzy bezpiecze�stwem a chaosem. Dzi� nie ma ani jednego, ani drugiego. Tylko dym, piasek i s�o�ce.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Wiem, �e pewnych rzeczy nie odbuduje si� ju� nigdy. Ale je�li kiedy� kto� postawi tu nowe mury - niech nauczy ludzi, po co one stoj�. Bo kamie� bez woli obrony to tylko cie� kamienia.");
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
	TEXT[2]						=	"spisane w roku 88 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "Zacz��em te badania z prostym celem: skatalogowa� szcz�tki zwierz�t i istot, kt�re �y�y na tych ziemiach w czasach dawno minionych. Nie spodziewa�em si�, �e przyjdzie mi zakwestionowa� wszystko, co o naturze s�dzi�em do tej pory.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "W Dolinie Kamiennych Korzeni natrafili�my na warstw� ziemi sprzed, jak oceniaj� geomanci, wielu tysi�cy lat. W niej - ko�ci kretoszczur�w, �cierwojad�w, z�baczy. Ale by�y inne. Wi�ksze. Grubsze. Czaszki bardziej wyd�u�one. Z�by bardziej prymitywne, nie tak ostro wyspecjalizowane jak u dzisiejszych z�baczy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Z pocz�tku s�dzi�em, �e to szcz�tki innego gatunku. Ale w kolejnych warstwach widzieli�my, jak te formy zmieniaj� si� z czasem. W m�odszych osadach - mniejsze, bardziej smuk�e, lepiej przystosowane do warunk�w, kt�re znamy dzisiaj. Jakby natura nie by�a niezmienna, lecz zmienia�a si� powoli wraz z czasem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Konsultowa�em si� z druidami - ich wiedza o zwierz�tach przewy�sza nasz�. Niekt�rzy z nich twierdz�, �e natura dostosowuje stworzenia do krainy, w kt�rej �yj�. Ale to, co widzia�em w tych ko�ciach, by�o czym� wi�cej. To by�y nie tylko dostosowania. To by� ci�g zmian - od form dawnych, przez po�rednie, a� po obecne. Najwi�kszy wstrz�s czeka� mnie jednak p�niej.");
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
	TEXT[2]						=	"spisane w roku 88 po Drugim Z��czeniu.";
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
				Doc_PrintLines	(nDocID,  0, "W ni�szej warstwie, g��biej ni� ktokolwiek si�ga� dot�d, natrafili�my na szkielet istoty o proporcjach... dziwnych. Wysoki. Pot�ny. Ale nie zwierz�cy. Czaszka mia�a cechy zar�wno cz�owiecze, jak i orcze - szerokie �uki brwiowe, wysuni�te szcz�ki, a jednak zarys czaszki bardziej zaokr�glony, z miejscem na m�zg wi�kszym ni� u znanych ork�w. Ko�ci r�k by�y d�ugie, palce precyzyjne. Nie wojownik. Mo�e my�liciel? A mo�e po prostu... kto� inny.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z pocz�tku uzna�em to za oszustwo. Ale badanie warstwy ziemi potwierdzi�o - ko�ci by�y tam od dawna. O wiele dawniej ni� jakiekolwiek znane osady ludzkie czy orcze. Co to oznacza?");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Mo�liwo�ci s� dwie. Albo przed nami istnia�a rasa, kt�rej pami�� zatar� czas, a kt�ra by�a spokrewniona zar�wno z nami, jak i z orkami. Albo - i ta my�l nie daje mi spokoju - ludzie i orkowie maj� wsp�lnych przodk�w. Je�li bowiem zmiana w naturze jest prawem, kt�re dzia�a od zawsze, nic nie stoi na przeszkodzie, by dwie odleg�e dzi� istoty pochodzi�y z jednego pnia.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Nie o�mielam si� jeszcze g�osi� tego g�o�no. Wiara w niezmienno�� �wiata jest zbyt silna. Ale mo�e nadejdzie dzie�, gdy kto� odwa�y si� powiedzie�: nie tylko bestie si� zmieniaj�. Ludzie te�. A wtedy pytanie nie b�dzie ju� brzmia�o, kim jeste�my dzi�, ale kim byli�my kiedy�. I czy jeszcze mamy odwag� to odkry�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_140 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_140;
	
	if (Bonus_ItWr_BookXp[140])	{	description = "O ostrzu i o ciosie I (przeczytane)";	}
	else						{	description = "O ostrzu i o ciosie I";					};
	
	TEXT[0]						=	"Relacja z pojedynku wojownika Po�udnia";
	TEXT[1]						=	"i wojownika P�nocy spisana przez";
	TEXT[2]						=	"Arena Gathrosa, podr�nika z Khorinis.";
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
				Doc_PrintLines	(nDocID,  0, "By�em tam. Nie zamierza�em by� �wiadkiem, lecz los postawi� mnie na �cie�ce tych, kt�rzy pragn�li rozstrzygn�� stary sp�r nie s�owem, lecz stal�. Miejsce wybrano nieprzypadkowo - ruiny starego fortu, po�o�one na skraju doliny, gdzie �niegi P�nocy styka�y si� z wilgotnym wiatrem znad Po�udnia. Dwa �wiaty, dwa style, dwie filozofie walki - i dwaj ludzie, kt�rzy mieli je uosabia�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Wojownik z Po�udnia zwa� si� Sayel. Smuk�y, o szybkim spojrzeniu i r�kach, kt�re nigdy nie by�y bezczynne. Jego broni� by� miecz jednor�czny, d�ugi, lecz lekki, o wywa�eniu idealnym do b�yskawicznych ci�� i unik�w. Na sobie mia� sk�rzan� zbroj� lamelkow�, nie kr�puj�c� ruch�w. Przez dwa dni przed starciem trenowa� na dziedzi�cu - seriach kr�tkich wypad�w, obrot�w, fechtunku, kt�ry przypomina� taniec drapie�nego ptaka.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Jego przeciwnikiem by� Thorin z klanu Wilka. Pot�ny m�czyzna, z ramionami jak konary starych drzew. Uzbrojony w wielki dwur�czny top�r, z kling� szerok� jak tarcza. Pancerz - grube sk�ry i stalowe obr�cze, niemal zbroja p�pe�na. Jego przygotowania by�y odmienne - nie szybkie kroki i uniki, lecz ci�kie, rytmiczne ciosy w pie� drzewa, wzmacnianie uchwytu i �wiczenie wytrzyma�o�ci. W jego stylu nie by�o finezji - by�a w nim nieuchronno��.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Rankiem trzeciego dnia stan�li naprzeciw siebie, a zgromadzeni wok� widzowie, zar�wno z P�nocy, jak i Po�udnia, zamilkli. Nie by�o fanfar. Nie by�o s�dzi�w. Tylko dw�ch wojownik�w i jedno pytanie: czy szybko�� pokona si��, czy si�a zd�awi szybko��.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_141 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_11.3ds";
	on_state[0]					=	Use_ItWr_BookXp_141;
	
	if (Bonus_ItWr_BookXp[141])	{	description = "O ostrzu i o ciosie II (przeczytane)";	}
	else						{	description = "O ostrzu i o ciosie II";					};
	
	TEXT[0]						=	"Relacja z pojedynku wojownika Po�udnia";
	TEXT[1]						=	"i wojownika P�nocy spisana przez";
	TEXT[2]						=	"Arena Gathrosa, podr�nika z Khorinis.";
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
				Doc_PrintLines	(nDocID,  0, "Sayel rozpocz�� pierwszy. B�yskawiczne serie ci��, ka�dy z nich mierzy� w ods�oni�te miejsca - pod pach�, z ty�u kolana, u szyi. Thorin sta� jak ska�a, blokuj�c zamachy ostrzem topora, kt�re samym ruchem powietrza potrafi�y zepchn�� przeciwnika. Ka�dy unik Sayela by� sprawdzianem wytrzyma�o�ci - wiedzia�, �e wystarczy jedno trafienie.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Starcie trwa�o d�u�ej, ni� ktokolwiek si� spodziewa�. Sayel os�abia� olbrzyma, tn�c paski pancerza, rani�c rami�. Ale ka�dy manewr kosztowa� go oddech. Thorin - cho� spowolniony - nie ust�powa�. Prze�om nast�pi� w chwili, gdy Sayel po�lizgn�� si� na kamieniu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To wystarczy�o. Top�r przeci�� powietrze w szerokim �uku, trafi� w p�yt� nagolennika. D�wi�k by� jak uderzenie pioruna. Sayel upad� - lecz w tym samym momencie, le��c, pchn�� mieczem ku nodze przeciwnika, tn�c �ci�gno.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Obaj padli. Obaj krwawili. I wtedy, ku zdumieniu wszystkich, Thorin opar� si� o top�r i wyci�gn�� r�k� do Sayela. A ten - mimo b�lu - j� u�cisn��. Nie by�o zwyci�zcy. Nie by�o przegranego. By�a nauka.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Styl Po�udnia - oparty na zr�czno�ci, szybkim my�leniu i precyzji - dawa� szans� unikania cios�w i zadawania wielu drobnych ran. Ale wymaga� niemal nieustannego ruchu i odporno�ci na zm�czenie. Styl P�nocy - zbudowany na brutalnej sile i odporno�ci - pozwala� znie�� wiele, a ka�dy jego cios m�g� zako�czy� walk�. Ale czyni� wojownika mniej elastycznym wobec zmiennego tempa.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Oba by�y drog�. Oba mia�y warto��. Spisa�em t� relacj� nie po to, by rozs�dza�, kt�ry styl jest lepszy. Lecz by ka�dy, kto bierze bro� do r�ki, pami�ta�: zwyci�a nie stal, lecz umys�, kt�ry ni� w�ada.");
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
	TEXT[2]						=	"w roku 38 po Wojnie Smok�w.";
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
				Doc_PrintLines	(nDocID,  0, "Nie pisz� tego, by ci� nauczy�, jak zabija�. Kto pragnie si� nauczy�, znajdzie nauczyciela. Pisz�, by� wiedzia�, co bierzesz na siebie, krocz�c t� �cie�k�. Nie jest to droga bohater�w, cho� wielu pragnie si� tak widzie�. To droga cienia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O pierwszym b��dzie");
				Doc_PrintLines	(nDocID,  0, "M�odzi adepci s�dz�, �e w sztuce cichego zabijania chodzi o narz�dzie - sztylet, trucizn�, cienk� garot�. To fa�sz. Bro� jest najmniej wa�na. Najwa�niejsze jest znikni�cie - przed, w trakcie, po. Nie masz istnie� w umy�le ofiary. Nie masz istnie� w opowie�ci o jej �mierci.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "O obserwacji");
				Doc_PrintLines	(nDocID,  1, "Ka�dy cz�owiek to wz�r. Porusza si� w okre�lony spos�b, powtarza gesty, ma chwile nieuwagi. Skrytob�jca jest tkaczem, kt�ry z tych nici tka moment �mierci. Noc bywa sprzymierze�cem, lecz jeszcze lepsza jest rutyna ofiary. Zabij wtedy, gdy wszystko zdaje si� by� jak zawsze.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "O narz�dziu");
				Doc_PrintLines	(nDocID,  1, "Nie ma idealnej broni. Czasem jest to sztylet w serce. Czasem niewidoczna kropla jadu. Czasem lina nad belk� stropow�. Mistrz zna wszystkie metody, ale wybiera najcichsz�, nie najszybsz�. Krzyk ofiary jest pora�k�.");
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
	TEXT[2]						=	"w roku 38 po Wojnie Smok�w.";
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
				Doc_PrintLines	(nDocID,  0, "Nie wierz tym, kt�rzy m�wi�, �e zab�jstwo staje si� �atwiejsze z czasem. To nieprawda. Staje si� tylko bardziej puste. Ka�da noc przynosi nowe twarze, kt�re ogl�da�e� tu� przed �mierci�. Je�li chcesz �y�, musisz pogodzi� si� z tym, �e nikt ci� nie op�acze.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O odej�ciu");
				Doc_PrintLines	(nDocID,  0, "Najtrudniejszy jest moment po. Nie �mier�. Nie ucieczka. Cisza potem. Naucz si� znika�, zanim uczynisz pierwszy krok. W innym mie�cie, pod innym imieniem. Gdy musisz zosta� - niech twoja twarz b�dzie mask�.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "O cenie");
				Doc_PrintLines	(nDocID,  1, "Zabijanie dla z�ota wydaje si� proste. Dop�ki nie zabijesz dla z�ota kogo�, kto spojrza� ci w oczy bez strachu. Wtedy dowiesz si�, ile warte s� twoje monety.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Pisz� to jako ten, kt�ry zbyt d�ugo kroczy� �cie�k� Cieni. Nie po to, by� ni� pod��a�, ale by� rozumia�, co za ni� stoi.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Je�li po przeczytaniu tej ksi�gi nadal chcesz i�� t� drog� - niech twoje kroki b�d� lekkie, a sumienie twarde. Inaczej Cienie po�r� ci� szybciej, ni� ostrze kogokolwiek.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_144 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_144;
	
	if (Bonus_ItWr_BookXp[144])	{	description = "W�r�d cieniostwor�w I (przeczytane)";	}
	else						{	description = "W�r�d cieniostwor�w I";					};
	
	TEXT[0]						=	"Spisane przez Werrana,";
	TEXT[1]						=	"my�liwego z G�rskiego Kr�gu,";
	TEXT[2]						=	"w roku 42 po Wojnie Smok�w.";
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
				Doc_PrintLines	(nDocID,  0, "W�r�d cieniostwor�w");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez wiele lat polowa�em w lasach na wsch�d od Khorinis. Tam, gdzie nawet stra�nicy dr�� noc�, a po�amane ga��zie znacz� �cie�ki stworze�, kt�rych �lad�w nikt nie chce �ledzi�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "M�wi� o cieniostworach. Dla wi�kszo�ci to tylko bestie, kt�re nale�y wyt�pi�. Lecz ja przez d�ugie miesi�ce obserwowa�em je - i cho� nie twierdz�, �e je rozumiem, to wiem wi�cej ni� ten, kto widzi tylko pazury i z�by.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O siedliskach");
				Doc_PrintLines	(nDocID,  0, "Cieniostwory zamieszkuj� stare lasy, gdzie �wiat�o rzadko si�ga dna. Ich ulubione miejsca to zagajniki otoczone urwiskami lub mokrad�a, gdzie d�wi�k krok�w niknie w�r�d mch�w. Rzadko opuszczaj� swe terytorium - chyba �e zmusi je g��d.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "O hierarchii");
				Doc_PrintLines	(nDocID,  1, "Wbrew pozorom cieniostwory nie s� samotnikami. Cho� zazwyczaj poluj� pojedynczo, mo�na zaobserwowa�, �e w g��bi lasu gromadz� si� czasem w lu�ne grupy. Starsze osobniki s� wyra�nie dominuj�ce. M�ode cieniostwory ucz� si� od nich - widzia�em, jak na�laduj� spos�b skradania i reaguj� na sygna�y d�wi�kowe.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "O polowaniu");
				Doc_PrintLines	(nDocID,  1, "Ich spos�b polowania jest sztuk�. Nie s� �lepo brutalne. Potrafi� godzinami pod��a� za ofiar�, czekaj�c na moment s�abo�ci. W nocy poluj� najcz�ciej, wykorzystuj�c sw�j niemal bezszelestny ch�d. Us�yszenie cieniostwora przed atakiem to rzadko�� - wyj�tek stanowi� momenty, gdy cel jest osaczony i bestia pragnie wzbudzi� w nim strach.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_145 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_13.3ds";
	on_state[0]					=	Use_ItWr_BookXp_145;
	
	if (Bonus_ItWr_BookXp[145])	{	description = "W�r�d cieniostwor�w II (przeczytane)";	}
	else						{	description = "W�r�d cieniostwor�w II";					};
	
	TEXT[0]						=	"Spisane przez Werrana,";
	TEXT[1]						=	"my�liwego z G�rskiego Kr�gu,";
	TEXT[2]						=	"w roku 42 po Wojnie Smok�w.";
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
				Doc_PrintLines	(nDocID,  0, "W�r�d cieniostwor�w");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O inteligencji");
				Doc_PrintLines	(nDocID,  0, "Niekt�rzy m�wi�, �e to tylko instynkt. Lecz ja widzia�em co� wi�cej. Jeden z m�odych cieniostwor�w, kt�rego obserwowa�em z kryj�wki, potrafi� wyci�ga� ryby z p�ytkiego strumienia, podrzucaj�c kamienie, by je sp�oszy�. Starszy osobnik - zapewne nauczyciel - nie reagowa�, jakby by� obeznany z t� metod�.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "O relacji z innymi bestiami");
				Doc_PrintLines	(nDocID,  0, "Cieniostwory nie s� w�adcami lasu. Unikaj� z�baczy czy warg�w w grupach. Ich naturalnymi wrogami s� wi�ksze drapie�niki, ale przede wszystkim cz�owiek. Gdy czuj�, �e s� �ledzone, cz�sto zmieniaj� terytorium. Znale�� je ponownie wymaga cierpliwo�ci.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "O szacunku");
				Doc_PrintLines	(nDocID,  1, "Zabi�em wiele bestii w swym �yciu. Ale nigdy nie poluj� na cieniostwora dla sportu. Tylko z potrzeby. Kto nie rozumie ich sprytu, �atwo staje si� ofiar�. A kto my�li, �e to tylko g�upie potwory, ten nie wr�ci z lasu.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Niech te s�owa s�u�� przestrodze i nauce. Bo w g��bi kniei s� cienie, kt�re �yj� w�asnym �yciem - i tylko g�upiec my�li, �e s� tylko zwierzyn�.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_146 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_146;
	
	if (Bonus_ItWr_BookXp[146])	{	description = "Upadek Z�otego Li�cia I (przeczytane)";	}
	else						{	description = "Upadek Z�otego Li�cia I";				};
	
	TEXT[0]						=	"Spisane przez Malviana,";
	TEXT[1]						=	"archiwist� klasztoru Innosa w Khorinis,";
	TEXT[2]						=	"rok 49 po Wojnie Smok�w.";
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
				Doc_PrintLines	(nDocID,  0, "Upadek Z�otego Li�cia");
				Doc_PrintLines	(nDocID,  0, "Tom I");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "S� rody, kt�rych imiona nosz� ulice, kt�rych piecz�cie zdobi� bramy miast, kt�rych potomkowie radz� dzi� na dworach. Ale s� te� takie, kt�re przepad�y w mroku historii, pozostawiaj�c jedynie po��k�e pergaminy i zbutwia�e kamienie. Do takich nale�y Dom Z�otego Li�cia.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z�oty Li�� by� jednym z najstarszych rod�w na ziemiach Myrtany. Jego korzenie si�ga�y czas�w jeszcze sprzed pierwszych wojen z orkami. Herb rodu przedstawia� d�b o li�ciach barwy z�ota, na tle zieleni - symbol wiecznego wzrostu i dobrobytu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Przez stulecia r�d s�yn�� z m�drych zarz�dc�w i hojnych patron�w sztuki. Mieli w�asn� siedzib� - zamek Aveldan - po�o�ony na wzg�rzach u zachodnich granic Myrtany, w�r�d rozleg�ych sad�w i winnic.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Najwi�kszy rozkwit rodu przypad� na czas panowania lorda Caldrena. By� on m�em uczonym, mi�o�nikiem ksi�g i prawa.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Za jego czas�w Z�oty Li�� utrzymywa� w�asn� akademi� dla skryb�w, z kt�rej r�kopisy rozchodzi�y si� po ca�ym kr�lestwie. M�wiono, �e w bibliotece Aveldanu przechowywano tomy starsze ni� sama korona kr�la.");
				Doc_Show		(nDocID);
};

///******************************************************************************************
instance ItWr_BookXp_147 (ItemPR_BookXp)
{
	visual						=	"ItWr_BookXp_14.3ds";
	on_state[0]					=	Use_ItWr_BookXp_147;
	
	if (Bonus_ItWr_BookXp[147])	{	description = "Upadek Z�otego Li�cia II (przeczytane)";	}
	else						{	description = "Upadek Z�otego Li�cia II";					};
	
	TEXT[0]						=	"Spisane przez Malviana,";
	TEXT[1]						=	"archiwist� klasztoru Innosa w Khorinis,";
	TEXT[2]						=	"rok 49 po Wojnie Smok�w.";
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
				Doc_PrintLines	(nDocID,  0, "Upadek Z�otego Li�cia");
				Doc_PrintLines	(nDocID,  0, "Tom II");
				Doc_SetFont		(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Ale ka�da ga���, cho� silna, mo�e ulec, je�li dotknie j� robak pychy. Syn Caldrena, Lord Verron, by� cz�owiekiem ��dnym w�adzy. Zamiast piel�gnowa� sztuk� i ziemie, zacz�� snu� intrygi na dworze kr�lewskim. By zdoby� przewag� nad innymi rodami, Verron zawar� uk�ady z kupcami z dalekiego po�udnia i z najemnikami. Z czasem jego �o�nierze zacz�li terroryzowa� okoliczne wsie. Ci, kt�rzy o�mielili si� sprzeciwi�, znikali bez �ladu.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "To �ci�gn�o na r�d gniew. Po �mierci kr�la Rhobara I, w czasach chaosu, Dom Z�otego Li�cia stan�� po stronie samozwa�c�w, licz�c na zyski. Gdy wreszcie nowy porz�dek zosta� przywr�cony, r�d uznano za zdrajc�w.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Nie by�o wojny, nie by�o szturmu na zamek. Wystarczy�o, �e w�adca og�osi� wyrok i odebra� prawa lennika. Kupcy odwr�cili si�. Wojsko odesz�o. W ci�gu roku Aveldan opustosza�. Ostatnia dziedziczka rodu, Lady Illewen, podobno opu�ci�a mury zamku w noc bez ksi�yca. Nigdy jej nie odnaleziono. Odt�d mury Aveldanu niszcza�y, a z�ote li�cie herbu odpada�y jeden po drugim.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Dzi� tylko w starych ksi�gach mo�na znale�� wzmianki o Domu Z�otego Li�cia. Ci, kt�rzy b��dz� po ruinach zamku, m�wi� o g�osach w ciemnych salach - by� mo�e to tylko wiatr, a mo�e duchy pychy i zdrady. Niech ta opowie�� s�u�y jako przestroga. Bo ka�dy r�d, ka�dy cz�owiek - mo�e si� wznie��, ale i upa��. A z�oto, cho� pi�kne, �atwo przyci�ga cie�.");
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
	TEXT[1]						=	"dawnego dow�dc� wojskowego, w samotno�ci,";
	TEXT[2]						=	"rok 51 po Wojnie Smok�w.";
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
				Doc_PrintLines	(nDocID,  0, "W m�odo�ci my�la�em, �e honor to miecz. Czysty, b�yszcz�cy, trzymany wysoko. �e kto ma honor, ten zwyci�a. �e kto go splami, ten jest zgubiony. Ale �ycie jest bardziej m�tne ni� stal. A honor - bardziej kruchy, ni� ci si� zdaje.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Z�o�y�em przysi�g� - jak wielu. S�u�y� kr�lowi. Strzec prawa. Nie waha� si� przed ofiar�. Przez lata nosi�em t� przysi�g� jak zbroj�. Chroni�a mnie. Ale i wi�zi�a. A� nadszed� dzie�, gdy kazano mi spali� wiosk�, w kt�rej skrywali si� buntownicy. Wiedzia�em, �e nie wszyscy w niej winni. Kobiety. Dzieci. Starcy.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Rozkaz by� jasny. Honor nakazywa� wykona� go. Ale czy� wi�kszym honorem nie jest ocali� niewinnych?");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Stan��em przed swoimi lud�mi. Powiedzia�em: �Nie b�dziemy katami.� Z�ama�em przysi�g�. Straci�em tytu�. Uciek�em z miasta. Do dzi� wielu nazywa mnie zdrajc�. Ale tamtej nocy spojrza�em w oczy dzieci, kt�re �y�y dzi�ki temu, co uczyni�em. I zrozumia�em: czasem honor nie tkwi w wierze w s�owa, lecz w czynach.");
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
	TEXT[1]						=	"dawnego dow�dc� wojskowego, w samotno�ci,";
	TEXT[2]						=	"rok 51 po Wojnie Smok�w.";
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
				Doc_PrintLines	(nDocID,  0, "Honor ma cen�. Czasem zap�acisz j� z�otem, czasem krwi�. Najcz�ciej - samotno�ci�. Nie licz, �e �wiat ci� zrozumie. Ci, kt�rzy ho�duj� bezwzgl�dnym regu�om, b�d� ci� nienawidzi�. Ci, kt�rym pomog�e� - zapomn�. Zostaniesz sam, z w�asnym sumieniem. Ale je�li potrafisz rano spojrze� w lustro i nie odwr�ci� wzroku - mo�e w�a�nie to jest honor.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Honor nie jest s�owem na pergaminie. Nie jest piecz�ci�, medalem, pochwa��. Jest wyborem - najtrudniejszym z mo�liwych. I nigdy nie ma jednej drogi.");
				
				Doc_SetMargins	(nDocID, -1, 15, 15, 160, 15, 1);
				Doc_SetFont		(nDocID,  1, FONT_Book);
				Doc_PrintLines	(nDocID,  1, "Ucz si�, m�ody wojowniku. Nie �piesz si� z s�dem. Nie my�l, �e ka�dy kto z�ama� przysi�g�, jest zdrajc�. I nie my�l, �e ka�dy kto jej dotrzyma�, jest bohaterem.");
				Doc_PrintLine	(nDocID,  1, "");
				Doc_PrintLines	(nDocID,  1, "Bo czasem honor kosztuje wi�cej, ni� ha�ba.");
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
	
	description					=	"Mapa teren�w Khorinis";
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
	
	description					=	"Mapa G�rniczej Doliny";
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
