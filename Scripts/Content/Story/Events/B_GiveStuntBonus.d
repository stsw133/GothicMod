///******************************************************************************************
func void B_GiveStuntBonus_FUNC()
{
	if (!StuntBonus_Once)
	{
		PrintScreen	("Premia za wyczyn", -1, 45, FONT_Screen, 2);
		B_GivePlayerExp(100);
		StuntBonus_Once = true;
		Snd_Play("THRILLJINGLE_01");
	}
	else
	{
		PrintScreen	("Kara za oszustwa", -1, 45, FONT_Screen, 2);
		B_GivePlayerExp(-100);
		StuntBonus_Once = false;
		Snd_Play("MFX_BELIARWEAP");
	};
	
	SC_MadeStunt = true;
};
