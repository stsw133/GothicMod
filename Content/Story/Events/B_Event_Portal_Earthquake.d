//****************************
// 	B_EVENT_PORTAL_EARTHQUAKE (Funktion, die beim Ausfahren der DI br�cke ausgef�hrt wird.)
//****************************
func void B_EVENT_PORTAL_EARTHQUAKE ()
{
	Wld_PlayEffect("FX_EarthQuake",  hero, hero, 0, 0, 0, false );
	
	var int randy;
	randy = Hlp_Random (4);

	if (randy == 0)
	{
		Snd_Play 	("Ravens_Earthquake4" );
	};
	if (randy == 1)
	{
		Snd_Play 	("Ravens_Earthquake4" );
		Snd_Play 	("Ravens_Earthquake2" );
	};	
	if (randy == 2)
	{
		Snd_Play 	("Ravens_Earthquake3" );
		Snd_Play 	("Ravens_Earthquake1" );
	};
	if (randy == 3)
	{
		Snd_Play 	("Ravens_Earthquake3" );
	};
	
};

var int B_EVENT_PORTAL_FIRST_EARTHQUAKE_OneTime;

func void B_EVENT_PORTAL_FIRST_EARTHQUAKE ()
{
	if (B_EVENT_PORTAL_FIRST_EARTHQUAKE_OneTime == false)
	{
		Wld_PlayEffect("FX_EarthQuake",  hero, hero, 0, 0, 0, false );
		Snd_Play 	("Ravens_Earthquake4" );
		B_EVENT_PORTAL_FIRST_EARTHQUAKE_OneTime = true;
	};
};
