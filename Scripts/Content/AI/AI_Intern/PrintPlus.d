///******************************************************************************************
/// PrintPlus
///******************************************************************************************
func void PrintPlus (var string txt)
{
	var int zufall; zufall = Hlp_Random(100);
	var string zufallTxt; zufallTxt = IntToString(zufall);
	
	var string ausgabe;
	ausgabe = ConcatStrings(txt, " ");
	ausgabe = ConcatStrings(ausgabe, zufallTxt);
	
	Print(ausgabe);
};
