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
					Doc_PrintLine	(nDocID,  0, "i ich sk³adniki");
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
					Doc_PrintLines	(nDocID,  1, "Ka¿da praca wykonywana przy stole alchemicznym wymaga zu¿ycia menzurki.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Warzenie ka¿dej mikstury leczniczej czy przywracaj¹cej moc magiczn¹ wymaga u¿ycia specjalnego sk³adnika oraz roœliny, jak¹ jest w tym wypadku:");
					Doc_PrintLine	(nDocID,  1, "Rdest polny");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Warzenie ka¿dej mikstury maj¹cej sta³y i okreœlony wp³yw na cia³o lub umys³ wymaga u¿ycia roœliny, jak¹ jest w tym wypadku:");
					Doc_PrintLines	(nDocID,  1, "Szczaw królewski");
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
					Doc_PrintLine	(nDocID,  0, "i ich sk³adniki");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Esencja lecznicza");
					Doc_PrintLine	(nDocID,  0, "2 roœliny lecznicze");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Ekstrakt leczniczy");
					Doc_PrintLine	(nDocID,  0, "2 zio³a lecznicze");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Eliksir leczniczy");
					Doc_PrintLine	(nDocID,  0, "2 korzenie lecznicze");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Ka¿da praca wykonywana przy stole alchemicznym wymaga zu¿ycia menzurki.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Warzenie ka¿dej mikstury leczniczej czy przywracaj¹cej moc magiczn¹ wymaga u¿ycia specjalnego sk³adnika oraz roœliny, jak¹ jest w tym wypadku:");
					Doc_PrintLine	(nDocID,  1, "Rdest polny");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Warzenie ka¿dej mikstury maj¹cej sta³y i okreœlony wp³yw na cia³o lub umys³ wymaga u¿ycia roœliny, jak¹ jest w tym wypadku:");
					Doc_PrintLines	(nDocID,  1, "Szczaw królewski");
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
					Doc_PrintLines	(nDocID,  0, "Mikstury powoduj¹ce sta³e zmiany");
					Doc_PrintLine	(nDocID,  0, "i ich sk³adniki");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Eliksir zrêcznoœci");
					Doc_PrintLine	(nDocID,  0, "1 goblinie jagody");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Mikstura szybkoœci");
					Doc_PrintLines	(nDocID,  0, "1 zêbate ziele - ta mikstura zamiast szczawiu królewskiego wymaga rdestu polnego.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Eliksir si³y");
					Doc_PrintLine	(nDocID,  0, "1 smoczy korzeñ");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Eliksir ¿ycia");
					Doc_PrintLine	(nDocID,  0, "1 korzeñ leczniczy");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Eliksir ducha");
					Doc_PrintLine	(nDocID,  0, "1 ognisty korzeñ");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Uwarzenie tych mikstur to najwy¿szy stopieñ alchemicznego wtajemniczenia. Ka¿da z tych mikstur wymaga u¿ycia szczawiu królewskiego.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Mikstura szybkoœci ma mniej skomplikowan¹ recepturê (nie wymaga u¿ycia szczawiu królewskiego).");
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
					Doc_PrintLine	(nDocID,  0, "£owy i zwierzyna");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Ka¿de stworzenie mo¿e pozostawiæ po sobie trofeum, które zwiêkszy maj¹tek i s³awê doœwiadczonego myœliwego.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Myœliwy taki bêdzie te¿ wiedzia³, jak preparowaæ swe zdobycze i pozyskiwaæ trofea.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Pozyskiwanie k³ów");
					Doc_PrintLines	(nDocID,  0, "K³y to dla wielu zwierz¹t broñ, a najcenniejsze s¹ te, które mo¿na pozyskaæ z truche³ wilków, zêbaczy, cieniostworów, wê¿y b³otnych i trolli.");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "Obdzieranie ze skóry");
					Doc_PrintLines	(nDocID,  1, "Umiejêtnoœæ ceniona wœród doœwiadczonych myœliwych, gdy¿ pozwala na pozyskiwanie wartoœciowych skór owiec, wilków, cieniostworów,");
					Doc_PrintLines	(nDocID,  1, "wê¿y b³otnych i topielców.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "Pozyskiwanie szponów");
					Doc_PrintLines	(nDocID,  1, "Mo¿na je praktykowaæ na jaszczurach, zêbaczach, topielcach i cieniostworach.");
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
					Doc_PrintLine	(nDocID,  0, "£owy i zwierzyna");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Ka¿de stworzenie mo¿e pozostawiæ po sobie trofeum, które zwiêkszy maj¹tek i s³awê doœwiadczonego myœliwego.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Krwiopijcy");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Wypatroszenie tych lataj¹cych potworów nie jest proste, mo¿na im jednak");
					Doc_PrintLines	(nDocID,  0, "usun¹æ skrzyd³a i wyj¹æ ¿¹d³a.");
					Doc_PrintLines	(nDocID,  0, "I jedne, i drugie stanowi¹ cenne trofea myœliwskie.");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Polne bestie i pe³zacze atakuj¹ za pomoc¹ ¿uwaczek. Szczególnie cenne s¹ narz¹dy");
					Doc_PrintLines	(nDocID,  1, "tych drugich, zawieraj¹ce wydzielinê, której wypicie zwiêksza moc magiczn¹.");
					Doc_PrintLines	(nDocID,  1, "Nie nale¿y nadu¿ywaæ tego cudownego œrodka, gdy¿ z czasem organizm ludzki przestaje nañ reagowaæ.");
					Doc_PrintLines	(nDocID,  1, "Podobnie popularne s¹ p³yty pancerza pe³zacza, z których mo¿na tworzyæ bardzo dobre zbroje.");
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
					Doc_PrintLine	(nDocID,  0, "£owy i zwierzyna");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Ka¿de stworzenie mo¿e pozostawiæ po sobie trofeum, które zwiêkszy maj¹tek i s³awê doœwiadczonego myœliwego.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Ognisty jaszczur");
					Doc_PrintLines	(nDocID,  0, "Ta jaszczuropodobna, ziej¹ca ogniem istota jest wyj¹tkowo groŸna dla ka¿dego przebywaj¹cego w pobli¿u.");
					Doc_PrintLines	(nDocID,  0, "Jej cenny jêzyk mo¿e spróbowaæ zdobyæ tylko ktoœ dysponuj¹cy jak¹œ ochron¹ przed ogniem.");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "Cieniostwór");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Wiêkszoœæ z tych stworzeñ to zaszyci g³êboko w lasach samotnicy.");
					Doc_PrintLines	(nDocID,  1, "Pozosta³o ich na œwiecie bardzo niewiele, nie stanowi¹ wiêc zagro¿enia dla ludzi - chyba ¿e wkroczy siê na ich tereny ³owieckie.");
					Doc_PrintLines	(nDocID,  1, "Dobrze wiedzieæ, gdzie znajduj¹ siê te tereny - róg cieniostwora to cenne trofeum myœliwskie, które jednak trzeba");
					Doc_PrintLines	(nDocID,  1, "umieæ odpowiednio preparowaæ.");
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
					Doc_PrintLines	( nDocID,  0, "Najlepsz¹ obron¹ jest atak - w ka¿dym razie przeciwko zwierzêtom i bestiom. W ich przypadku parowanie ciosów nie ma sensu.");
					Doc_PrintLines	( nDocID,  0, "Lepiej szachowaæ przeciwnika celnymi ciosami i przygotowaæ zaskakuj¹c¹ kombinacjê, której nie zdo³a odeprzeæ.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Pamiêtaj jednak, ¿e ³¹czenie ciosów w p³ynne sekwencje to domena doœwiadczonych wojowników, a ³¹czenie poszczególnych sekwencji jest jeszcze trudniejsze.");
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
					Doc_PrintLines	(nDocID,  0, "Khorinis to portowe miasto le¿¹ce na wyspie w pobli¿u wybrze¿y Królestwa Myrtany.");
					Doc_PrintLines	(nDocID,  0, "Wiêkszoœæ swej w¹tpliwej s³awy wyspa zawdziêcza Górniczej Dolinie, gdzie znajdowa³a siê kolonia karna, otoczona przez wiele lat magiczn¹ barier¹. To tutaj wszyscy skazañcy kraju");
					Doc_PrintLines	(nDocID,  0, "zajmowali siê wydobywaniem z najg³êbszych pok³adów skorupy ziemskiej magicznej rudy.");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Oprócz miasta znajduj¹ siê tam liczne farmy, a na ¿yznych ziemiach uprawia siê pszenicê, rzepê i hoduje owce.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Od pokoleñ najwiêksza z farm nale¿a³a do wielmo¿y, który przekazywa³ swoje ziemie innym pod uprawê.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "W centrum wyspy znajduje siê pradawny Klasztor Innosa zarz¹dzany przez Magów Ognia, którzy zajmuj¹ siê badaniem natury magii, alchemi¹ i wytwarzaniem win.");
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
					Doc_PrintLines	(nDocID,  0, "Ka¿de zebranie grupy ludzi musi siê odbywaæ w absolutnym spokoju - i to niezale¿nie od miejsca, w którym siê odbywa.");
					Doc_PrintLines	(nDocID,  0, "Ka¿da zbrodnia przeciwko ogó³owi bêdzie karana.");
					Doc_PrintLines	(nDocID,  0, "Ogó³ zabrania wszczynania bójek oraz brania w nich udzia³u.");
					Doc_PrintLines	(nDocID,  0, "Zbrodni¹ jest równie¿ kradzie¿, a prawo chroni tak¿e owce.");
					Doc_PrintLines	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Atak na cz³owieka lub jego zabicie oznacza dla sprawcy bezzw³oczne os¹dzenie. ");
					Doc_PrintLines	(nDocID,  1, "W najlepszym razie winny musi zap³aciæ wysok¹ grzywnê.");
					Doc_PrintLines	(nDocID,  1, "Wszystkie wiêksze skupiska ludzkie s¹ chronione przez odpowiednie s³u¿by. Ich funkcjonariusze karz¹ przestêpców i dbaj¹ o ³ad i porz¹dek.");
					Doc_PrintLines	(nDocID,  1, "Praworz¹dna wiêkszoœæ poinformuje w³adze o przestêpstwie, sprawcy nie s¹ tu mile widziani,");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "choæ zdarzaj¹ siê jednostki o ¿adne prawa nie dbaj¹ce - to m.in wszelacy bandyci i najemnicy.");
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
					Doc_PrintLine	(nDocID,  0, "Kamienie runiczne i ich sk³adniki");
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
					Doc_PrintLine	(nDocID,  0, "PIERWSZY KR¥G");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Runy pierwszego krêgu i potrzebne do ich stworzenia sk³adniki:");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Œwiat³o");
					Doc_PrintLine	(nDocID,  0, "Z³ota moneta");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Ognista strza³a");
					Doc_PrintLine	(nDocID,  0, "Siarka");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Ma³a b³yskawica");
					Doc_PrintLine	(nDocID,  0, "Ska³a krystaliczna");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Szkielet-goblin");
					Doc_PrintLine	(nDocID,  0, "Koœæ goblina");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Leczenie lekkich ran");
					Doc_PrintLine	(nDocID,  0, "Roœlina lecznicza");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Tworzenie runy wymaga jednej sztuki lub porcji odpowiedniego sk³adnika.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Trzeba te¿ znaæ w³aœciwe zaklêcie, dysponowaæ zwojem, na którym je spisano oraz pustym kamieniem runicznym.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Dopiero po spe³nieniu tych wszystkich warunków mo¿na rozpocz¹æ pracê przy stole runicznym.");
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
					Doc_PrintLine	(nDocID,  0, "DRUGI KR¥G");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Runy drugiego krêgu i potrzebne do ich stworzenia sk³adniki:");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Kula ognia");
					Doc_PrintLine	(nDocID,  0, "Smo³a");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Lodowa strza³a");
					Doc_PrintLine	(nDocID,  0, "Kwarcyt");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Przyzwanie wilka");
					Doc_PrintLine	(nDocID,  0, "Skóra wilka");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Piêœæ wichru");
					Doc_PrintLine	(nDocID,  0, "Wêgiel");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Sen");
					Doc_PrintLine	(nDocID,  0, "Bagienne ziele");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Tworzenie runy wymaga jednej sztuki lub porcji odpowiedniego sk³adnika.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Trzeba te¿ znaæ w³aœciwe zaklêcie, dysponowaæ zwojem, na którym je spisano oraz pustym kamieniem runicznym.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Dopiero po spe³nieniu tych wszystkich warunków mo¿na rozpocz¹æ pracê przy stole runicznym.");
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
					Doc_PrintLine	(nDocID,  0, "TRZECI KR¥G");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Runy trzeciego krêgu i potrzebne do ich stworzenia sk³adniki:");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Leczenie œrednich ran");
					Doc_PrintLine	(nDocID,  0, "Ziele lecznicze");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Ma³a burza ognista");
					Doc_PrintLine	(nDocID,  0, "Smo³a, Siarka");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Tworzenie szkieletu");
					Doc_PrintLine	(nDocID,  0, "Koœæ szkieletu");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Strach");
					Doc_PrintLine	(nDocID,  0, "Czarna per³a");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Bry³a lodu");
					Doc_PrintLine	(nDocID,  0, "Kwarcyt");
					Doc_PrintLine	(nDocID,  0, "Akwamaryn");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Piorun kulisty");
					Doc_PrintLine	(nDocID,  0, "Ska³a krystaliczna");
					Doc_PrintLine	(nDocID,  0, "Siarka");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  0, "Kula ognia");
					Doc_PrintLine	(nDocID,  0, "Smo³a");
					Doc_PrintLine	(nDocID,  0, "Siarka");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  1, "Tworzenie runy wymaga jednej sztuki lub porcji odpowiedniego sk³adnika.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Trzeba te¿ znaæ w³aœciwe zaklêcie, dysponowaæ zwojem, na którym je spisano oraz pustym kamieniem runicznym.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Dopiero po spe³nieniu tych wszystkich warunków mo¿na rozpocz¹æ pracê przy stole runicznym.");
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
					Doc_PrintLine	(nDocID,  0, "CZWARTY KR¥G");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Runy czwartego krêgu i potrzebne do ich stworzenia sk³adniki:");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Du¿a kula ognia");
					Doc_PrintLine	(nDocID,  0, "Siarka");
					Doc_PrintLine	(nDocID,  0, "Smo³a");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "B³yskawica");
					Doc_PrintLine	(nDocID,  0, "Ska³a krystaliczna");
					Doc_PrintLine	(nDocID,  0, "Kwarcyt");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Obudzenie golema");
					Doc_PrintLine	(nDocID,  0, "Serce kamiennego golema");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Zniszczenie o¿ywieñca");
					Doc_PrintLine	(nDocID,  0, "Woda œwiêcona");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Tworzenie runy wymaga jednej sztuki lub porcji odpowiedniego sk³adnika.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Trzeba te¿ znaæ w³aœciwe zaklêcie, dysponowaæ zwojem, na którym je spisano oraz pustym kamieniem runicznym.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Dopiero po spe³nieniu tych wszystkich warunków mo¿na rozpocz¹æ pracê przy stole runicznym.");
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
					Doc_PrintLine	(nDocID,  0, "PI¥TY KR¥G");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Runy pi¹tego krêgu i potrzebne do ich stworzenia sk³adniki:");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Lodowa fala");
					Doc_PrintLine	(nDocID,  0, "Kwarcyt");
					Doc_PrintLine	(nDocID,  0, "Akwamaryn");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Du¿a burza ognista");
					Doc_PrintLine	(nDocID,  0, "Siarka");
					Doc_PrintLine	(nDocID,  0, "Ognista pokrzywa");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Przyzwanie demona");
					Doc_PrintLine	(nDocID,  0, "Serce demona");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Leczenie ciê¿kich ran");
					Doc_PrintLine	(nDocID,  0, "Korzeñ leczniczy");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Tworzenie runy wymaga jednej sztuki lub porcji odpowiedniego sk³adnika.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Trzeba te¿ znaæ w³aœciwe zaklêcie, dysponowaæ zwojem, na którym je spisano oraz pustym kamieniem runicznym.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Dopiero po spe³nieniu tych wszystkich warunków mo¿na rozpocz¹æ pracê przy stole runicznym.");
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
					Doc_PrintLine	(nDocID,  0, "SZÓSTY KR¥G");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Runy szóstego krêgu i potrzebne do ich stworzenia sk³adniki:");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Deszcz ognia");
					Doc_PrintLine	(nDocID,  0, "Smo³a");
					Doc_PrintLine	(nDocID,  0, "Siarka");
					Doc_PrintLine	(nDocID,  0, "Jêzyk ognistego jaszczura");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Tchnienie œmierci");
					Doc_PrintLine	(nDocID,  0, "Wêgiel");
					Doc_PrintLine	(nDocID,  0, "Czarna per³a");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Œmiertelna fala");
					Doc_PrintLine	(nDocID,  0, "Koœæ szkieletu");
					Doc_PrintLine	(nDocID,  0, "Czarna per³a");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Armia ciemnoœci");
					Doc_PrintLine	(nDocID,  0, "Koœæ szkieletu");
					Doc_PrintLine	(nDocID,  0, "Czarna per³a");
					Doc_PrintLine	(nDocID,  0, "Serce kamiennego golema");
					Doc_PrintLine	(nDocID,  0,  "Serce demona");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "Zmniejszenie potwora");
					Doc_PrintLine	(nDocID,  1, "Koœæ goblina");
					Doc_PrintLine	(nDocID,  1, "Kie³ trolla");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Tworzenie runy wymaga jednej sztuki lub porcji odpowiedniego sk³adnika.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Trzeba te¿ znaæ w³aœciwe zaklêcie, dysponowaæ zwojem, na którym je spisano oraz pustym kamieniem runicznym.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Dopiero po spe³nieniu tych wszystkich warunków mo¿na rozpocz¹æ pracê przy stole runicznym.");
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
					Doc_PrintLine	(nDocID,  0, "Wodny Kr¹g");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Runy wody i sk³adniki potrzebne do ich stworzenia.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Wir");
					Doc_PrintLine	(nDocID,  0, "Skrzyd³a krwiopijcy");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Lodowa lanca");
					Doc_PrintLine	(nDocID,  0, "Kwarcyt");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Gejzer");
					Doc_PrintLine	(nDocID,  0, "Akwamaryn");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Grom");
					Doc_PrintLine	(nDocID,  0, "Kwarcyt");
					Doc_PrintLine	(nDocID,  0, "Skrzyd³a krwiopijcy");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Wodna piêœæ");
					Doc_PrintLine	(nDocID,  0, "Akwamaryn");
					Doc_PrintLine	(nDocID,  0, "Ska³a krystaliczna");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Tworzenie runy wymaga jednej sztuki lub porcji odpowiedniego sk³adnika.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Trzeba te¿ znaæ w³aœciwe zaklêcie, dysponowaæ zwojem, na którym je spisano oraz pustym kamieniem runicznym.");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Dopiero po spe³nieniu tych wszystkich warunków mo¿na rozpocz¹æ pracê przy stole runicznym.");
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
					Doc_PrintLines	(nDocID,  0, "PóŸno ju¿");
					Doc_PrintLines	(nDocID,  0, "Jak ³atwo by³o przewidzieæ, t¹pniêcie w Starej Kopalni bardzo rozsierdzi³o Magnatów.");
					Doc_PrintLines	(nDocID,  0, "Gomez jest teraz jak beczka prochu, gotowa eksplodowaæ w ka¿dej chwili.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Corristo");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Uwa¿a, ¿e winê za ostatnie wydarzenia ponosi ten nowy wiêzieñ. To rzeczywiœcie tajemniczy cz³owiek... Lepiej dla niego, ¿eby siê tu wiêcej nie pokazywa³.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "Corristo");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Gomez jest w paskudnym humorze i chyba wiem, co planuje. Musimy uprzedziæ Magów Wody, nim bêdzie za póŸno!");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "Corristo");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Mo¿e uda siê nam zapobiec katastrofie. Wolê nie myœleæ, co siê stanie, jeœli Wolna Kopalnia...");
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
					Doc_PrintLines	(nDocID,  0, "Pozwoli³em sobie trochê siê tutaj urz¹dziæ. Kto by pomyœla³, ¿e pewnego dnia bêdê jedynym magiem w obozie?");
					Doc_PrintLines	(nDocID,  0, "Nie powiem, ¿eby cieszy³ mnie powrót tutaj. Prawdê mówi¹c, mam ochotê jak najszybciej st¹d uciec.");
					Doc_PrintLines	(nDocID,  0, "Ta ca³a wyprawa skazana jest na pora¿kê.");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Wczoraj wyruszyli górnicy. Zabrali ze sob¹ Diega. Nie zdziwi³bym siê, gdyby ten cwaniak przy pierwszej okazji da³ nogê.");
					Doc_PrintLines	(nDocID,  1, "Jakoœ nie wyobra¿am go sobie z kilofem w rêku.");
					Doc_PrintLines	(nDocID,  1, "Có¿, wykorzystam wolny czas na zg³êbianie tajników alchemii.");
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
					Doc_PrintLines	(nDocID,  0, "ZnaleŸliœmy trochê towaru, ale nic specjalnego. Poza tym mamy tu:");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "3 skrzynie starych szmat"	);
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "8 skrzyñ zardzewia³ego ¿elaza");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "4 skrzynie po³amanych pancerzy");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "5 (potwornie œmierdz¹cych) skrzyñ skóry i futer");
					Doc_PrintLine	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "2 skrzynie kilofów");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "3 skrzynie narzêdzi");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "16 skrzyñ kamieni (bez rudy)");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "1 skrzyniê zardzewia³ych ¿yletek");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "4 skrzynie zniszczonych naczyñ");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "56 beczu³ek z wod¹");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "1 skrzyniê czegoœ paskudnego (dawno do cna przegni³ego)");
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
					Doc_PrintLines	(nDocID,  0, "Crimson: otrzyma³ i przetopi³ 79 samorodków z³ota");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Scatty: otrzyma³ towary wartoœci 250 sztuk z³ota");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Garaz: otrzyma³ 6 samorodków z³ota");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "Wszyscy stra¿nicy: otrzymali 9 samorodków z³ota");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLine	(nDocID,  0, "");
					Doc_PrintLines	(nDocID,  0, "");
					
					Doc_SetMargins	(nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	(nDocID,  1, "Obóz:  ");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Stra¿ Kruka: 25 sztuk z³ota");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Finn: 60 sztuk z³ota");
					Doc_PrintLines	(nDocID,  1, "Lennar: 40 sztuk z³ota");
					Doc_PrintLines	(nDocID,  1, "Emilio: 50 sztuk z³ota");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Inni: 20 sztuk z³ota");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Huno, Fisk, Snaf: w zale¿noœci od towaru");
					Doc_PrintLine	(nDocID,  1, "");
					Doc_PrintLines	(nDocID,  1, "Myœliwi: Szef powinien to wyjaœniæ! Franko otrzyma³ 7 sztuk z³ota");
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
		Doc_PrintLines	(StPl_nDocID,  0, "...gdy¿ jedynie STRA¯NICY UMAR£YCH byli zdolni przywo³aæ przodków.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Ich nieobecnoœæ g³êboko rani. Bez rady przodków jesteœmy na ³asce naszego ludu.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "UZDROWICIELE zostali wys³ani, aby zapieczêtowaæ portal i zniszczyæ klucz. Jedynie Adanos wie, co siê z nimi sta³o, i czy zdo³ali wykonaæ powierzone im zadanie.");
		
		Doc_SetMargins	(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "KASTA WOJOWNIKÓW zosta³a zniszczona przez gniew Adanosa. Pêk³o serce starego ksiêcia wojowników. ");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Jedynie pozostali KAP£ANI podsycaj¹ nadziejê i bezustannie g³osz¹ kazania o odrodzeniu naszego miasta.");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Ale my, UCZENI, znamy gorzk¹ prawdê. JARKENDAR upad³ i wkrótce zniknie w odmêtach czasu.");
		Doc_PrintLines	(StPl_nDocID,  1, "");
	}
	else if (BookstandMayaArt == 2)
	{
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "RADEMESA pogrzebano w œwi¹tyni Adanosa, ale moc miecza nie zosta³a zniszczona.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Jego wp³yw sta³ siê zbyt wielki. Nie by³o koñca rzeziom na ulicach.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Jednak gniew ADANOSA po³o¿y³ temu kres. Morze wznios³o siê ponad JARKENDAR i zatopi³o ca³e miasto.");
		
		Doc_SetMargins	(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "W wiêkszoœci nietkniête pozosta³y jedynie œwi¹tynie i budynki na wzniesieniach.");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Niewielka grupa ocala³ych z katastrofy nie ma ju¿ si³y potrzebnej do odbudowy miasta.");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "I tak los JARKENDARU zosta³ przypieczêtowany.");
		
		if (!SC_Knows_WeaponInAdanosTempel)
		{
			B_GivePlayerExp(100);
			SC_Knows_WeaponInAdanosTempel = true;
		};
	}
	else if (BookstandMayaArt == 3)
	{
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Podesz³y wiek QUARHODRONA uniemo¿liwia³ mu dowodzenie armi¹. Dlatego kap³ani domagali siê przejêcia jego kompetencji.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Rozkazali mu zrzec siê tytu³u, a tak¿e oddaæ miecz.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Na jego miejsce powo³ano Radê Piêciu. Ale sprzeciwi³a siê temu Kasta Wojowników.");
	    
		Doc_SetMargins	(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Wojownicy nie chcieli podporz¹dkowaæ siê Radzie Piêciu i wybrali na swego przywódcê RADEMESA, syna QUARHODRONA.");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "QUARHODRON przysta³ na to z powodu dumy i zaufania do swego potomka.");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Przekaza³ miecz swojemu synowi, z nadziej¹, ¿e bêdzie nim w³ada³ równie pewnie, jak niegdyœ on sam.");
	}
	else if (BookstandMayaArt == 4)
	{
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "RADEMES by³ s³aby. Miecz przej¹³ nad nim kontrolê i uczyni³ z niego swe narzêdzie.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Opêtany przez miecz, sprowadzi³ tyle cierpienia i okrucieñstw na swój lud, ¿e nawet uzdrowiciele nie byli w stanie uœmierzyæ bólu.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Miecz wkrótce zrozumia³, ¿e ludzie s¹ zbyt s³abi, by zapobiec jego planom.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Zagroziæ mu mog³a jedynie moc naszych przodków.");
		Doc_PrintLine	(StPl_nDocID,  0, "");
		
		Doc_SetMargins	(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Dlatego RADEMES kaza³ wygnaæ lub straciæ wszystkich Stra¿ników Umar³ych i w ten sposób odebra³ ca³¹ nadziejê na ocalenie przed z³em.");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Nie by³o ju¿ ¿adnego Stra¿nika Umar³ych, kiedy pozosta³a czwórka dawnych przywódców naszego ludu podjê³a gorzk¹ decyzjê poddania JARKENDARU.");
		Doc_PrintLine	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Na ulicach szala³a wojna, gdy uzdrowiciele wyruszyli, by na zawsze zamkn¹æ wejœcie do naszej doliny.");
	}
	else if (BookstandMayaArt == 5)
	{
		Doc_PrintLines	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "QUARHODRON, najwy¿szy kap³an KHARDIMON i ja dyskutowaliœmy w tych salach o tym, jak pokonaæ RADEMESA i jego miecz.");
		Doc_PrintLines	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "QUARHODRON i KHARDIMON uwa¿ali, ¿e najlepiej zjednoczyæ siê, zaatakowaæ RADEMESA i pokonaæ go w otwartej walce. Ale ja zbyt dobrze zna³em moc miecza, by wierzyæ, ¿e przyniesie to po¿¹dany skutek.");
		Doc_PrintLines	(StPl_nDocID,  0, "");
		Doc_PrintLines	(StPl_nDocID,  0, "Wykorzysta³em swoje prawo do uniewa¿nienia decyzji pozosta³ej dwójki. Zdecydowa³em pokonaæ RADEMESA za pomoc¹ podstêpu.");
		
		Doc_SetMargins	(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLines	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "QUARHODRON podporz¹dkowa³ siê decyzji rady. Wyruszy³ do œwi¹tyni Adanosa i wys³a³ wiadomoœæ do swojego syna.");
		Doc_PrintLines	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Nienawiœæ RADEMESA przybra³a takie rozmiary, ¿e w furii wpad³ do œwi¹tyni, aby zabiæ swojego ojca.");
		Doc_PrintLines	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "Gdy zorientowa³ siê, jaki mamy plan, by³o ju¿ za póŸno.");
		Doc_PrintLines	(StPl_nDocID,  1, "");
		Doc_PrintLines	(StPl_nDocID,  1, "QUARHODRON zamkn¹³ za nimi komnaty œwi¹tyni i RADEMES zosta³ w nich uwiêziony na ca³¹ wiecznoœæ.");
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
