///******************************************************************************************
/// EVT_FINAL_DOOR_SAY_01
///******************************************************************************************
func void EVT_FINAL_DOOR_SAY_01()
{
	B_Say (self, self, "$SCOPENSLASTDOOR");
	Snd_Play("LASTDOOREVENT");
	Wld_PlayEffect ("spellFX_INCOVATION_VIOLET", hero, hero, 0, 0, 0, false);
	Wld_PlayEffect ("SFX_Circle", hero, hero, 0, 0, 0, false);
};
