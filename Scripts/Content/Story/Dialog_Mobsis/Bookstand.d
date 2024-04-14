///******************************************************************************************
/// Bookstand_Alchemy
///******************************************************************************************
func void Use_BookstandALCHEMY1_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga",	false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Mikstury o mocy magicznej");
					Doc_PrintLine	(nDocID,  0, "i ich sk�adniki");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Esencja many");
					Doc_PrintLine	(nDocID,  0, "2 ogniste pokrzywy");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Ekstrakt many");
					Doc_PrintLine	(nDocID,  0, "2 ogniste ziela");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Eliksir many");
					Doc_PrintLine	(nDocID,  0, "2 ogniste korzenie");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Ka�da praca wykonywana przy stole alchemicznym wymaga zu�ycia menzurki.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Warzenie ka�dej mikstury leczniczej czy przywracaj�cej moc magiczn� wymaga u�ycia specjalnego sk�adnika oraz ro�liny, jak� jest w tym wypadku:");
					Doc_PrintLine	(nDocID,  1, "Rdest polny");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Warzenie ka�dej mikstury maj�cej sta�y i okre�lony wp�yw na cia�o lub umys� wymaga u�ycia ro�liny, jak� jest w tym wypadku:");
					Doc_PrintLines	(nDocID,  1, "Szczaw kr�lewski");
					Doc_Show		(nDocID);
		/*
		if (!Alchemy_1_permanent)
		{
			B_GivePlayerExp(25);
			Alchemy_1_permanent = true;
		};
		*/
	};
};

///******************************************************************************************
func void Use_BookstandALCHEMY2_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga",	false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Mikstury lecznicze");
					Doc_PrintLine	(nDocID,  0, "i ich sk�adniki");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Esencja lecznicza");
					Doc_PrintLine	(nDocID,  0, "2 ro�liny lecznicze");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Ekstrakt leczniczy");
					Doc_PrintLine	(nDocID,  0, "2 zio�a lecznicze");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Eliksir leczniczy");
					Doc_PrintLine	(nDocID,  0, "2 korzenie lecznicze");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Ka�da praca wykonywana przy stole alchemicznym wymaga zu�ycia menzurki.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Warzenie ka�dej mikstury leczniczej czy przywracaj�cej moc magiczn� wymaga u�ycia specjalnego sk�adnika oraz ro�liny, jak� jest w tym wypadku:");
					Doc_PrintLine	(nDocID,  1, "Rdest polny");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Warzenie ka�dej mikstury maj�cej sta�y i okre�lony wp�yw na cia�o lub umys� wymaga u�ycia ro�liny, jak� jest w tym wypadku:");
					Doc_PrintLines	(nDocID,  1, "Szczaw kr�lewski");
					Doc_Show		(nDocID);
		/*
		if (!Alchemy_2_permanent)
		{
			B_GivePlayerExp(25);
			Alchemy_2_permanent = true;
		};
		*/
	};
};

///******************************************************************************************
func void Use_BookstandALCHEMY3_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga",	false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Mikstury powoduj�ce sta�e zmiany");
					Doc_PrintLine	(nDocID,  0, "i ich sk�adniki");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Eliksir zr�czno�ci");
					Doc_PrintLine	(nDocID,  0, "1 goblinie jagody");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Mikstura szybko�ci");
					Doc_PrintLines	(nDocID,  0, "1 z�bate ziele - ta mikstura zamiast szczawiu kr�lewskiego wymaga rdestu polnego.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Eliksir si�y");
					Doc_PrintLine	(nDocID,  0, "1 smoczy korze�");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Eliksir �ycia");
					Doc_PrintLine	(nDocID,  0, "1 korze� leczniczy");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Eliksir ducha");
					Doc_PrintLine	(nDocID,  0, "1 ognisty korze�");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Uwarzenie tych mikstur to najwy�szy stopie� alchemicznego wtajemniczenia. Ka�da z tych mikstur wymaga u�ycia szczawiu kr�lewskiego.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Mikstura szybko�ci ma mniej skomplikowan� receptur� (nie wymaga u�ycia szczawiu kr�lewskiego).");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_Show		(nDocID);
		/*
		if (!Alchemy_3_permanent)
		{
			B_GivePlayerExp(25);
			Alchemy_3_permanent = true;
		};
		*/
	};
};

///******************************************************************************************
/// Bookstand_Animals
///******************************************************************************************
func void Use_BookstandAnimals1_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Brown_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Brown_R.tga", false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "�owy i zwierzyna");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Ka�de stworzenie mo�e pozostawi� po sobie trofeum, kt�re zwi�kszy maj�tek i s�aw� do�wiadczonego my�liwego.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "My�liwy taki b�dzie te� wiedzia�, jak preparowa� swe zdobycze i pozyskiwa� trofea.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Pozyskiwanie k��w");
					Doc_PrintLines	(nDocID,  0, "K�y to dla wielu zwierz�t bro�, a najcenniejsze s� te, kt�re mo�na pozyska� z truche� wilk�w, z�baczy, cieniostwor�w, w�y b�otnych i trolli.");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "Obdzieranie ze sk�ry");
					Doc_PrintLines	(nDocID,  1, "Umiej�tno�� ceniona w�r�d do�wiadczonych my�liwych, gdy� pozwala na pozyskiwanie warto�ciowych sk�r owiec, wilk�w, cieniostwor�w,");
					Doc_PrintLines	(nDocID,  1, "w�y b�otnych i topielc�w.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "Pozyskiwanie szpon�w");
					Doc_PrintLines	(nDocID,  1, "Mo�na je praktykowa� na jaszczurach, z�baczach, topielcach i cieniostworach.");
					Doc_Show		(nDocID);
		/*
		if (!Animals_1_permanent)
		{
			B_GivePlayerExp(25);
			Animals_1_permanent = true;
		};
		*/
	};
};

///******************************************************************************************
func void Use_BookstandAnimals2_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Brown_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Brown_R.tga", false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "�owy i zwierzyna");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Ka�de stworzenie mo�e pozostawi� po sobie trofeum, kt�re zwi�kszy maj�tek i s�aw� do�wiadczonego my�liwego.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Krwiopijcy");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Wypatroszenie tych lataj�cych potwor�w nie jest proste, mo�na im jednak");
					Doc_PrintLines	(nDocID,  0, "usun�� skrzyd�a i wyj�� ��d�a.");
					Doc_PrintLines	(nDocID,  0, "I jedne, i drugie stanowi� cenne trofea my�liwskie.");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Polne bestie i pe�zacze atakuj� za pomoc� �uwaczek. Szczeg�lnie cenne s� narz�dy");
					Doc_PrintLines	(nDocID,  1, "tych drugich, zawieraj�ce wydzielin�, kt�rej wypicie zwi�ksza moc magiczn�.");
					Doc_PrintLines	(nDocID,  1, "Nie nale�y nadu�ywa� tego cudownego �rodka, gdy� z czasem organizm ludzki przestaje na� reagowa�.");
					Doc_PrintLines	(nDocID,  1, "Podobnie popularne s� p�yty pancerza pe�zacza, z kt�rych mo�na tworzy� bardzo dobre zbroje.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "");
					Doc_Show		(nDocID);
		/*
		if (!Animals_2_permanent)
		{
			B_GivePlayerExp(25);
			Animals_2_permanent = true;
		};
		*/
	};
};

///******************************************************************************************
func void Use_BookstandAnimals3_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Brown_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Brown_R.tga", false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "�owy i zwierzyna");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Ka�de stworzenie mo�e pozostawi� po sobie trofeum, kt�re zwi�kszy maj�tek i s�aw� do�wiadczonego my�liwego.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Ognisty jaszczur");
					Doc_PrintLines	(nDocID,  0, "Ta jaszczuropodobna, ziej�ca ogniem istota jest wyj�tkowo gro�na dla ka�dego przebywaj�cego w pobli�u.");
					Doc_PrintLines	(nDocID,  0, "Jej cenny j�zyk mo�e spr�bowa� zdoby� tylko kto� dysponuj�cy jak�� ochron� przed ogniem.");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "Cieniostw�r");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Wi�kszo�� z tych stworze� to zaszyci g��boko w lasach samotnicy.");
					Doc_PrintLines	(nDocID,  1, "Pozosta�o ich na �wiecie bardzo niewiele, nie stanowi� wi�c zagro�enia dla ludzi - chyba �e wkroczy si� na ich tereny �owieckie.");
					Doc_PrintLines	(nDocID,  1, "Dobrze wiedzie�, gdzie znajduj� si� te tereny - r�g cieniostwora to cenne trofeum my�liwskie, kt�re jednak trzeba");
					Doc_PrintLines	(nDocID,  1, "umie� odpowiednio preparowa�.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_Show		(nDocID);
		/*
		if (!Animals_3_permanent)
		{
			B_GivePlayerExp(25);
			Animals_3_permanent = true;
		};
		*/
	};
};

///******************************************************************************************
///	Bookstand_History
///******************************************************************************************
func void Use_BookstandHistory1_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  2);
					Doc_SetPage 	( nDocID,  0, "Book_RED_L.tga", false);
					Doc_SetPage 	( nDocID,  1, "Book_RED_R.tga", false);
					Doc_SetFont 	( nDocID, -1, FONT_Book);
					
					Doc_SetMargins	( nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	( nDocID,  0, "Sztuka walki");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Najlepsz� obron� jest atak - w ka�dym razie przeciwko zwierz�tom i bestiom. W ich przypadku parowanie cios�w nie ma sensu.");
					Doc_PrintLines	( nDocID,  0, "Lepiej szachowa� przeciwnika celnymi ciosami i przygotowa� zaskakuj�c� kombinacj�, kt�rej nie zdo�a odeprze�.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Pami�taj jednak, �e ��czenie cios�w w p�ynne sekwencje to domena do�wiadczonych wojownik�w, a ��czenie poszczeg�lnych sekwencji jest jeszcze trudniejsze.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "");
					Doc_Show		( nDocID);
		/*
		if (!History_1_permanent)
		{
			B_GivePlayerExp(25);
			History_1_permanent = true;
		};
		*/
	};
};

///******************************************************************************************
func void Use_BookstandHistory2_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_RED_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_RED_R.tga", false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "Wyspa");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Khorinis to portowe miasto le��ce na wyspie w pobli�u wybrze�y Kr�lestwa Myrtany.");
					Doc_PrintLines	(nDocID,  0, "Wi�kszo�� swej w�tpliwej s�awy wyspa zawdzi�cza G�rniczej Dolinie, gdzie znajdowa�a si� kolonia karna, otoczona przez wiele lat magiczn� barier�. To tutaj wszyscy skaza�cy kraju");
					Doc_PrintLines	(nDocID,  0, "zajmowali si� wydobywaniem z najg��bszych pok�ad�w skorupy ziemskiej magicznej rudy.");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Opr�cz miasta znajduj� si� tam liczne farmy, a na �yznych ziemiach uprawia si� pszenic�, rzep� i hoduje owce.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Od pokole� najwi�ksza z farm nale�a�a do wielmo�y, kt�ry przekazywa� swoje ziemie innym pod upraw�.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "W centrum wyspy znajduje si� pradawny Klasztor Innosa zarz�dzany przez Mag�w Ognia, kt�rzy zajmuj� si� badaniem natury magii, alchemi� i wytwarzaniem win.");
					Doc_Show		(nDocID);
		/*
		if (!History_2_permanent)
		{
			B_GivePlayerExp(25);
			History_2_permanent = true;
		};
		*/
	};
};

///******************************************************************************************
func void Use_BookstandHistory3_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_RED_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_RED_R.tga", false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "Prawo wyspy");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Ka�de zebranie grupy ludzi musi si� odbywa� w absolutnym spokoju - i to niezale�nie od miejsca, w kt�rym si� odbywa.");
					Doc_PrintLines	(nDocID,  0, "Ka�da zbrodnia przeciwko og�owi b�dzie karana.");
					Doc_PrintLines	(nDocID,  0, "Og� zabrania wszczynania b�jek oraz brania w nich udzia�u.");
					Doc_PrintLines	(nDocID,  0, "Zbrodni� jest r�wnie� kradzie�, a prawo chroni tak�e owce.");
					Doc_PrintLines	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Atak na cz�owieka lub jego zabicie oznacza dla sprawcy bezzw�oczne os�dzenie. ");
					Doc_PrintLines	(nDocID,  1, "W najlepszym razie winny musi zap�aci� wysok� grzywn�.");
					Doc_PrintLines	(nDocID,  1, "Wszystkie wi�ksze skupiska ludzkie s� chronione przez odpowiednie s�u�by. Ich funkcjonariusze karz� przest�pc�w i dbaj� o �ad i porz�dek.");
					Doc_PrintLines	(nDocID,  1, "Praworz�dna wi�kszo�� poinformuje w�adze o przest�pstwie, sprawcy nie s� tu mile widziani,");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "cho� zdarzaj� si� jednostki o �adne prawa nie dbaj�ce - to m.in wszelacy bandyci i najemnicy.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "");
					Doc_Show		(nDocID);
		/*
		if (!History_2_permanent)
		{
			B_GivePlayerExp(25);
			History_2_permanent = true;
		};
		*/
	};
};

///******************************************************************************************
///	Bookstand_Kloster
///******************************************************************************************
func void Use_Bookstand_Rune_01_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();							
					Doc_SetPages	(nDocID,  2);                         
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false); 
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga",	false);
					Doc_SetFont 	(nDocID, -1, FONT_Book); 	
					
					Doc_SetMargins	(nDocID,  0,  275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "Strona 1");
					Doc_PrintLine	(nDocID,  0, "Kamienie runiczne");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "Strona 2");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "");
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************
func void Use_Bookstand_Rune_02_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga",	false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "Strona 1");
					Doc_PrintLine	(nDocID,  0, "Kamienie runiczne i ich sk�adniki");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "Strona 2");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "");
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************
func void Use_Bookstand_Innos_01_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga",	false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "Strona 1");
					Doc_PrintLine	(nDocID,  0, "Nauka Innosa");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "Strona 2");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "");
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************
func void Use_Bookstand_Innos_02_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();							
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga",	false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "Strona 1");
					Doc_PrintLine	(nDocID,  0, "Przykazania Innosa");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "Strona 2");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "");
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************
func void Use_Bookstand_Kreise_01_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga",	false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "PIERWSZY KR�G");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Runy pierwszego kr�gu i potrzebne do ich stworzenia sk�adniki:");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "�wiat�o");
					Doc_PrintLine	(nDocID,  0, "Z�ota moneta");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Ognista strza�a");
					Doc_PrintLine	(nDocID,  0, "Siarka");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Ma�a b�yskawica");
					Doc_PrintLine	(nDocID,  0, "Ska�a krystaliczna");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Szkielet-goblin");
					Doc_PrintLine	(nDocID,  0, "Ko�� goblina");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Leczenie lekkich ran");
					Doc_PrintLine	(nDocID,  0, "Ro�lina lecznicza");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Tworzenie runy wymaga jednej sztuki lub porcji odpowiedniego sk�adnika.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Trzeba te� zna� w�a�ciwe zakl�cie, dysponowa� zwojem, na kt�rym je spisano oraz pustym kamieniem runicznym.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Dopiero po spe�nieniu tych wszystkich warunk�w mo�na rozpocz�� prac� przy stole runicznym.");
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************
func void Use_Bookstand_Kreise_02_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga",	false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "DRUGI KR�G");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Runy drugiego kr�gu i potrzebne do ich stworzenia sk�adniki:");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Kula ognia");
					Doc_PrintLine	(nDocID,  0, "Smo�a");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Lodowa strza�a");
					Doc_PrintLine	(nDocID,  0, "Kwarcyt");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Przyzwanie wilka");
					Doc_PrintLine	(nDocID,  0, "Sk�ra wilka");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Pi�� wichru");
					Doc_PrintLine	(nDocID,  0, "W�giel");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Sen");
					Doc_PrintLine	(nDocID,  0, "Bagienne ziele");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Tworzenie runy wymaga jednej sztuki lub porcji odpowiedniego sk�adnika.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Trzeba te� zna� w�a�ciwe zakl�cie, dysponowa� zwojem, na kt�rym je spisano oraz pustym kamieniem runicznym.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Dopiero po spe�nieniu tych wszystkich warunk�w mo�na rozpocz�� prac� przy stole runicznym.");
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************
func void Use_Bookstand_Kreise_03_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga",	false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "TRZECI KR�G");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Runy trzeciego kr�gu i potrzebne do ich stworzenia sk�adniki:");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Leczenie �rednich ran");
					Doc_PrintLine	(nDocID,  0, "Ziele lecznicze");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Ma�a burza ognista");
					Doc_PrintLine	(nDocID,  0, "Smo�a, Siarka");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Tworzenie szkieletu");
					Doc_PrintLine	(nDocID,  0, "Ko�� szkieletu");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Strach");
					Doc_PrintLine	(nDocID,  0, "Czarna per�a");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Bry�a lodu");
					Doc_PrintLine	(nDocID,  0, "Kwarcyt");
					Doc_PrintLine	(nDocID,  0, "Akwamaryn");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Piorun kulisty");
					Doc_PrintLine	(nDocID,  0, "Ska�a krystaliczna");
					Doc_PrintLine	(nDocID,  0, "Siarka");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  0, "Kula ognia");
					Doc_PrintLine	(nDocID,  0, "Smo�a");
					Doc_PrintLine	(nDocID,  0, "Siarka");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  1, "Tworzenie runy wymaga jednej sztuki lub porcji odpowiedniego sk�adnika.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Trzeba te� zna� w�a�ciwe zakl�cie, dysponowa� zwojem, na kt�rym je spisano oraz pustym kamieniem runicznym.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Dopiero po spe�nieniu tych wszystkich warunk�w mo�na rozpocz�� prac� przy stole runicznym.");
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************
func void Use_Bookstand_Kreise_04_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga",	false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "CZWARTY KR�G");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Runy czwartego kr�gu i potrzebne do ich stworzenia sk�adniki:");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Du�a kula ognia");
					Doc_PrintLine	(nDocID,  0, "Siarka");
					Doc_PrintLine	(nDocID,  0, "Smo�a");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "B�yskawica");
					Doc_PrintLine	(nDocID,  0, "Ska�a krystaliczna");
					Doc_PrintLine	(nDocID,  0, "Kwarcyt");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Obudzenie golema");
					Doc_PrintLine	(nDocID,  0, "Serce kamiennego golema");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Zniszczenie o�ywie�ca");
					Doc_PrintLine	(nDocID,  0, "Woda �wi�cona");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Tworzenie runy wymaga jednej sztuki lub porcji odpowiedniego sk�adnika.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Trzeba te� zna� w�a�ciwe zakl�cie, dysponowa� zwojem, na kt�rym je spisano oraz pustym kamieniem runicznym.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Dopiero po spe�nieniu tych wszystkich warunk�w mo�na rozpocz�� prac� przy stole runicznym.");
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************
func void Use_Bookstand_Kreise_05_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga", false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "PI�TY KR�G");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Runy pi�tego kr�gu i potrzebne do ich stworzenia sk�adniki:");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Lodowa fala");
					Doc_PrintLine	(nDocID,  0, "Kwarcyt");
					Doc_PrintLine	(nDocID,  0, "Akwamaryn");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Du�a burza ognista");
					Doc_PrintLine	(nDocID,  0, "Siarka");
					Doc_PrintLine	(nDocID,  0, "Ognista pokrzywa");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Przyzwanie demona");
					Doc_PrintLine	(nDocID,  0, "Serce demona");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Leczenie ci�kich ran");
					Doc_PrintLine	(nDocID,  0, "Korze� leczniczy");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Tworzenie runy wymaga jednej sztuki lub porcji odpowiedniego sk�adnika.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Trzeba te� zna� w�a�ciwe zakl�cie, dysponowa� zwojem, na kt�rym je spisano oraz pustym kamieniem runicznym.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Dopiero po spe�nieniu tych wszystkich warunk�w mo�na rozpocz�� prac� przy stole runicznym.");
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************
func void Use_Bookstand_Kreise_06_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga",	false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "SZ�STY KR�G");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Runy sz�stego kr�gu i potrzebne do ich stworzenia sk�adniki:");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Deszcz ognia");
					Doc_PrintLine	(nDocID,  0, "Smo�a");
					Doc_PrintLine	(nDocID,  0, "Siarka");
					Doc_PrintLine	(nDocID,  0, "J�zyk ognistego jaszczura");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Tchnienie �mierci");
					Doc_PrintLine	(nDocID,  0, "W�giel");
					Doc_PrintLine	(nDocID,  0, "Czarna per�a");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "�miertelna fala");
					Doc_PrintLine	(nDocID,  0, "Ko�� szkieletu");
					Doc_PrintLine	(nDocID,  0, "Czarna per�a");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Armia ciemno�ci");
					Doc_PrintLine	(nDocID,  0, "Ko�� szkieletu");
					Doc_PrintLine	(nDocID,  0, "Czarna per�a");
					Doc_PrintLine	(nDocID,  0, "Serce kamiennego golema");
					Doc_PrintLine	(nDocID,  0,  "Serce demona");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "Zmniejszenie potwora");
					Doc_PrintLine	(nDocID,  1, "Ko�� goblina");
					Doc_PrintLine	(nDocID,  1, "Kie� trolla");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Tworzenie runy wymaga jednej sztuki lub porcji odpowiedniego sk�adnika.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Trzeba te� zna� w�a�ciwe zakl�cie, dysponowa� zwojem, na kt�rym je spisano oraz pustym kamieniem runicznym.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Dopiero po spe�nieniu tych wszystkich warunk�w mo�na rozpocz�� prac� przy stole runicznym.");
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************
func void Use_Bookstand_Rules_01_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2 );
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga",	false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "Strona 1");
					Doc_PrintLine	(nDocID,  0, "Zasady");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "Strona 2");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "");
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************
///	Bookstand_KDW
///******************************************************************************************
func void Use_Runemaking_KDW_CIRC1_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga",	false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "Wodny Kr�g");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Runy wody i sk�adniki potrzebne do ich stworzenia.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Wir");
					Doc_PrintLine	(nDocID,  0, "Skrzyd�a krwiopijcy");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Lodowa lanca");
					Doc_PrintLine	(nDocID,  0, "Kwarcyt");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Gejzer");
					Doc_PrintLine	(nDocID,  0, "Akwamaryn");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Grom");
					Doc_PrintLine	(nDocID,  0, "Kwarcyt");
					Doc_PrintLine	(nDocID,  0, "Skrzyd�a krwiopijcy");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Wodna pi��");
					Doc_PrintLine	(nDocID,  0, "Akwamaryn");
					Doc_PrintLine	(nDocID,  0, "Ska�a krystaliczna");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Tworzenie runy wymaga jednej sztuki lub porcji odpowiedniego sk�adnika.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Trzeba te� zna� w�a�ciwe zakl�cie, dysponowa� zwojem, na kt�rym je spisano oraz pustym kamieniem runicznym.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Dopiero po spe�nieniu tych wszystkich warunk�w mo�na rozpocz�� prac� przy stole runicznym.");
					Doc_Show		(nDocID);
	};
};

func void Use_Runemaking_KDW_CIRC2_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};
func void Use_Runemaking_KDW_CIRC3_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};
func void Use_Runemaking_KDW_CIRC4_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};
func void Use_Runemaking_KDW_CIRC5_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};
func void Use_Runemaking_KDW_CIRC6_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};

///******************************************************************************************
/// Bookstand_Dementor
///******************************************************************************************
func void Use_BookstandDementor_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Dementor_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Dementor_R.tga",	false);
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************
/// Bookstand_OldCamp
///******************************************************************************************
func void Bookstand_Milten_03_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Brown_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Brown_R.tga", false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "P�no ju�");
					Doc_PrintLines	(nDocID,  0, "Jak �atwo by�o przewidzie�, t�pni�cie w Starej Kopalni bardzo rozsierdzi�o Magnat�w.");
					Doc_PrintLines	(nDocID,  0, "Gomez jest teraz jak beczka prochu, gotowa eksplodowa� w ka�dej chwili.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Corristo");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Uwa�a, �e win� za ostatnie wydarzenia ponosi ten nowy wi�zie�. To rzeczywi�cie tajemniczy cz�owiek... Lepiej dla niego, �eby si� tu wi�cej nie pokazywa�.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Corristo");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Gomez jest w paskudnym humorze i chyba wiem, co planuje. Musimy uprzedzi� Mag�w Wody, nim b�dzie za p�no!");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "Corristo");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Mo�e uda si� nam zapobiec katastrofie. Wol� nie my�le�, co si� stanie, je�li Wolna Kopalnia...");
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************
func void Bookstand_Milten_02_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Mage_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Mage_R.tga",	false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Pozwoli�em sobie troch� si� tutaj urz�dzi�. Kto by pomy�la�, �e pewnego dnia b�d� jedynym magiem w obozie?");
					Doc_PrintLines	(nDocID,  0, "Nie powiem, �eby cieszy� mnie powr�t tutaj. Prawd� m�wi�c, mam ochot� jak najszybciej st�d uciec.");
					Doc_PrintLines	(nDocID,  0, "Ta ca�a wyprawa skazana jest na pora�k�.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Wczoraj wyruszyli g�rnicy. Zabrali ze sob� Diega. Nie zdziwi�bym si�, gdyby ten cwaniak przy pierwszej okazji da� nog�.");
					Doc_PrintLines	(nDocID,  1, "Jako� nie wyobra�am go sobie z kilofem w r�ku.");
					Doc_PrintLines	(nDocID,  1, "C�, wykorzystam wolny czas na zg��bianie tajnik�w alchemii.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "Milten");
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************
func void Bookstand_Milten_01_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		//if (Npc_IsPlayer(self))
		//{
		//	B_SetPlayerMap(ItWr_Map_OldWorld);
		//};
		
		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_OldWorld.tga", true);
					Doc_SetLevel		(Document, "OldWorld\OldWorld.zen");
					Doc_SetLevelCoords	(Document, -78500, 47500, 54000, -53000);
					Doc_Show			(Document);
	};
};

///******************************************************************************************
func void Bookstand_Engor_01_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Red_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Red_R.tga", false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Zapasy");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Znale�li�my troch� towaru, ale nic specjalnego. Poza tym mamy tu:");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "3 skrzynie starych szmat"	);
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "8 skrzy� zardzewia�ego �elaza");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "4 skrzynie po�amanych pancerzy");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "5 (potwornie �mierdz�cych) skrzy� sk�ry i futer");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "2 skrzynie kilof�w");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "3 skrzynie narz�dzi");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "16 skrzy� kamieni (bez rudy)");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "1 skrzyni� zardzewia�ych �yletek");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "4 skrzynie zniszczonych naczy�");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "56 beczu�ek z wod�");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "1 skrzyni� czego� paskudnego (dawno do cna przegni�ego)");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "Engor");
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************
/// Bookstand_Addon
///******************************************************************************************
func void Use_Bookstand_Addon_BL_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  2);
					Doc_SetPage 	(nDocID,  0, "Book_Brown_L.tga", false);
					Doc_SetPage 	(nDocID,  1, "Book_Brown_R.tga", false);
					Doc_SetFont 	(nDocID, -1, FONT_Book);
					
					Doc_SetMargins	(nDocID,  0, 275, 20, 30, 20, 1);
					Doc_PrintLine	(nDocID,  0, "Kopalnia");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Crimson: otrzyma� i przetopi� 79 samorodk�w z�ota");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Scatty: otrzyma� towary warto�ci 250 sztuk z�ota");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Garaz: otrzyma� 6 samorodk�w z�ota");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Wszyscy stra�nicy: otrzymali 9 samorodk�w z�ota");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "Ob�z:  ");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Stra� Kruka: 25 sztuk z�ota");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Finn: 60 sztuk z�ota");
					Doc_PrintLines	(nDocID,  1, "Lennar: 40 sztuk z�ota");
					Doc_PrintLines	(nDocID,  1, "Emilio: 50 sztuk z�ota");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Inni: 20 sztuk z�ota");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Huno, Fisk, Snaf: w zale�no�ci od towaru");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "My�liwi: Szef powinien to wyja�ni�! Franko otrzyma� 7 sztuk z�ota");
					Doc_Show		(nDocID);
	};
};

///******************************************************************************************

var int BookstandMayaHierchary_1_permanent;
var int BookstandMayaHierchary_2_permanent;
var int BookstandMayaHierchary_3_permanent;
var int BookstandMayaHierchary_4_permanent;
var int BookstandMayaHierchary_5_permanent;
var int BookstandMayaArt;

func int C_CanReadBookStand()
{
	if (Npc_GetTalentSkill(hero, NPC_TALENT_LANGUAGE))
	{
		return true;
	};
};

///******************************************************************************************
func void Use_BookstandMaya() 
{
	if (BookstandMayaArt == 1)
	{
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "...gdy� jedynie STRA�NICY UMAR�YCH byli zdolni przywo�a� przodk�w.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Ich nieobecno�� g��boko rani. Bez rady przodk�w jeste�my na �asce naszego ludu.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "UZDROWICIELE zostali wys�ani, aby zapiecz�towa� portal i zniszczy� klucz. Jedynie Adanos wie, co si� z nimi sta�o, i czy zdo�ali wykona� powierzone im zadanie.");
		
		Doc_SetMargins	(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "KASTA WOJOWNIK�W zosta�a zniszczona przez gniew Adanosa. P�k�o serce starego ksi�cia wojownik�w. ");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Jedynie pozostali KAP�ANI podsycaj� nadziej� i bezustannie g�osz� kazania o odrodzeniu naszego miasta.");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Ale my, UCZENI, znamy gorzk� prawd�. JARKENDAR upad� i wkr�tce zniknie w odm�tach czasu.");
		Doc_PrintLines	(StPl_nDocID,  1, "");
	}
	else if (BookstandMayaArt == 2)
	{
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "RADEMESA pogrzebano w �wi�tyni Adanosa, ale moc miecza nie zosta�a zniszczona.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Jego wp�yw sta� si� zbyt wielki. Nie by�o ko�ca rzeziom na ulicach.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Jednak gniew ADANOSA po�o�y� temu kres. Morze wznios�o si� ponad JARKENDAR i zatopi�o ca�e miasto.");
		
		Doc_SetMargins	(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "W wi�kszo�ci nietkni�te pozosta�y jedynie �wi�tynie i budynki na wzniesieniach.");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Niewielka grupa ocala�ych z katastrofy nie ma ju� si�y potrzebnej do odbudowy miasta.");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "I tak los JARKENDARU zosta� przypiecz�towany.");
		
		if (!SC_Knows_WeaponInAdanosTempel)
		{
			B_GivePlayerExp(100);
			SC_Knows_WeaponInAdanosTempel = true;
		};
	}
	else if (BookstandMayaArt == 3)
	{
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Podesz�y wiek QUARHODRONA uniemo�liwia� mu dowodzenie armi�. Dlatego kap�ani domagali si� przej�cia jego kompetencji.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Rozkazali mu zrzec si� tytu�u, a tak�e odda� miecz.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Na jego miejsce powo�ano Rad� Pi�ciu. Ale sprzeciwi�a si� temu Kasta Wojownik�w.");
	    
		Doc_SetMargins	(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Wojownicy nie chcieli podporz�dkowa� si� Radzie Pi�ciu i wybrali na swego przyw�dc� RADEMESA, syna QUARHODRONA.");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "QUARHODRON przysta� na to z powodu dumy i zaufania do swego potomka.");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Przekaza� miecz swojemu synowi, z nadziej�, �e b�dzie nim w�ada� r�wnie pewnie, jak niegdy� on sam.");
	}
	else if (BookstandMayaArt == 4)
	{
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "RADEMES by� s�aby. Miecz przej�� nad nim kontrol� i uczyni� z niego swe narz�dzie.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Op�tany przez miecz, sprowadzi� tyle cierpienia i okrucie�stw na sw�j lud, �e nawet uzdrowiciele nie byli w stanie u�mierzy� b�lu.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Miecz wkr�tce zrozumia�, �e ludzie s� zbyt s�abi, by zapobiec jego planom.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Zagrozi� mu mog�a jedynie moc naszych przodk�w.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		
		Doc_SetMargins	(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Dlatego RADEMES kaza� wygna� lub straci� wszystkich Stra�nik�w Umar�ych i w ten spos�b odebra� ca�� nadziej� na ocalenie przed z�em.");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Nie by�o ju� �adnego Stra�nika Umar�ych, kiedy pozosta�a czw�rka dawnych przyw�dc�w naszego ludu podj�a gorzk� decyzj� poddania JARKENDARU.");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Na ulicach szala�a wojna, gdy uzdrowiciele wyruszyli, by na zawsze zamkn�� wej�cie do naszej doliny.");
	}
	else if (BookstandMayaArt == 5)
	{
		Doc_PrintLines	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "QUARHODRON, najwy�szy kap�an KHARDIMON i ja dyskutowali�my w tych salach o tym, jak pokona� RADEMESA i jego miecz.");
		Doc_PrintLines	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "QUARHODRON i KHARDIMON uwa�ali, �e najlepiej zjednoczy� si�, zaatakowa� RADEMESA i pokona� go w otwartej walce. Ale ja zbyt dobrze zna�em moc miecza, by wierzy�, �e przyniesie to po��dany skutek.");
		Doc_PrintLines	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Wykorzysta�em swoje prawo do uniewa�nienia decyzji pozosta�ej dw�jki. Zdecydowa�em pokona� RADEMESA za pomoc� podst�pu.");
		
		Doc_SetMargins	(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLines	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "QUARHODRON podporz�dkowa� si� decyzji rady. Wyruszy� do �wi�tyni Adanosa i wys�a� wiadomo�� do swojego syna.");
		Doc_PrintLines	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Nienawi�� RADEMESA przybra�a takie rozmiary, �e w furii wpad� do �wi�tyni, aby zabi� swojego ojca.");
		Doc_PrintLines	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Gdy zorientowa� si�, jaki mamy plan, by�o ju� za p�no.");
		Doc_PrintLines	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "QUARHODRON zamkn�� za nimi komnaty �wi�tyni i RADEMES zosta� w nich uwi�ziony na ca�� wieczno��.");
		Doc_PrintLines	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "");
	};
};

func void InitUse_BookstandMaya()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		if (!C_CanReadBookStand())
		{
			StPl_nDocID = 	Doc_Create		();
							Doc_SetPages	(StPl_nDocID,  2);
							Doc_SetPage 	(StPl_nDocID,  0, "Book_MayaGlyph_L.tga", false);
							Doc_SetPage 	(StPl_nDocID,  1, "Book_MayaGlyph_R.tga", false);
							Doc_SetFont 	(StPl_nDocID, -1, FONT_Book);
							Doc_SetMargins	(StPl_nDocID,  0, 275, 20, 30, 20, 1);
							Doc_Show		(StPl_nDocID);
			
			B_Say (self, self, "$CANTREADTHIS");
		}
		else
		{
			if (C_CanReadBookStand())
			{
				StPl_nDocID =	Doc_Create		();
								Doc_SetPages	(StPl_nDocID,  2);
								Doc_SetPage 	(StPl_nDocID,  0, "Book_MayaRead_L.tga", false);
								Doc_SetPage 	(StPl_nDocID,  1, "Book_MayaRead_R.tga", false);
								Doc_SetFont 	(StPl_nDocID, -1, FONT_Book);
								Doc_SetMargins	(StPl_nDocID,  0, 275, 20, 30, 20, 1);
								Use_BookstandMaya();
								Doc_Show		(StPl_nDocID );
			};
		};
	};
	
	BookstandMayaArt = 0;
};

func void Use_BookstandMayaHierchary_01_S1()		
{
	BookstandMayaArt = 1;
	InitUse_BookstandMaya();
	
	if (!BookstandMayaHierchary_1_permanent)
	&& (C_CanReadBookStand())
	{
		B_GivePlayerExp(100);
		BookstandMayaHierchary_1_permanent = true;
	};
};

func void Use_BookstandMayaHierchary_02_S1()
{
	BookstandMayaArt = 2;
	InitUse_BookstandMaya();
	
	if (!BookstandMayaHierchary_2_permanent)
	&& (C_CanReadBookStand())
	{
		B_GivePlayerExp(100);
		BookstandMayaHierchary_2_permanent = true;
	};
};

func void Use_BookstandMayaHierchary_03_S1()
{
	BookstandMayaArt = 3;
	InitUse_BookstandMaya();
	
	if (!BookstandMayaHierchary_3_permanent)
	&& (C_CanReadBookStand())
	{
		B_GivePlayerExp(100);
		BookstandMayaHierchary_3_permanent = true;
	};
};

func void Use_BookstandMayaHierchary_04_S1()
{
	BookstandMayaArt = 4;
	InitUse_BookstandMaya();
	
	if (!BookstandMayaHierchary_4_permanent)
	&& (C_CanReadBookStand())
	{
		B_GivePlayerExp(100);
		BookstandMayaHierchary_4_permanent = true;
	};
};

func void Use_BookstandMayaHierchary_05_S1()
{
	BookstandMayaArt = 5;
	InitUse_BookstandMaya();
	
	if (!BookstandMayaHierchary_5_permanent)
	&& (C_CanReadBookStand())
	{
		B_GivePlayerExp(100);
		BookstandMayaHierchary_5_permanent = true;
	};
};
