///******************************************************************************************
/// B_Upgrade_Hero_HackChance
///******************************************************************************************
func void B_Upgrade_Hero_HackChance (var int Wert)
{
	var string concatText;
	concatText = ConcatStrings("Zwiększyła się umiejętność wydobywania złota! (+", IntToString(Wert));
	concatText = ConcatStrings(concatText, ")");
	
	PrintScreen	(concatText, -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);
	
	Hero_HackChance	+= Wert;
	
	Snd_Play("Geldbeutel");
};
