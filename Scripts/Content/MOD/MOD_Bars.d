///******************************************************************************************
///	MOD_Bars
///******************************************************************************************

/// HP bars
instance healthBar(GothicBar)
{
	x = 100; y = Print_Screen[PS_Y]-80;
    backTex = "Bar_Back.tga";
	barTex = "Bar_Health.tga";
};
instance poisonBar(GothicBar)
{
	x = 100; y = Print_Screen[PS_Y]-80;
    backTex = "Bar_Back.tga";
	barTex = "Bar_Negative.tga";
};

/// shield bar
instance shieldBar(GothicBar)
{
	x = 100; y = Print_Screen[PS_Y]-75;
	height = 10;
    backTex = "Alpha.tga";
	barTex = "Bar_Progress.tga";
};

/// MP bars
instance manaBar(GothicBar)
{
	x = 100; y = Print_Screen[PS_Y]-60;
    backTex = "Bar_Back.tga";
	barTex = "Bar_Mana.tga";
};
instance obsessionBar(GothicBar)
{
	x = 100; y = Print_Screen[PS_Y]-60;
    backTex = "Bar_Back.tga";
	barTex = "Bar_Negative.tga";
};

/// aura bar
instance auraBar(GothicBar)
{
	x = 100; y = Print_Screen[PS_Y]-55;
	height = 10;
    backTex = "Alpha.tga";
	barTex = "Bar_Progress.tga";
};

/// SP bars
instance staminaBar(GothicBar)
{
	x = 100; y = Print_Screen[PS_Y]-40;
    backTex = "Bar_Back.tga";
	barTex = "Bar_Stamina.tga";
};
instance harmorBar(GothicBar)
{
	x = 100; y = Print_Screen[PS_Y]-40;
    backTex = "Bar_Back.tga";
	barTex = "Bar_Negative.tga";
};

/// XP & LOVE bars
instance expBar(GothicBar)
{
	x = 100; y = Print_Screen[PS_Y]-20;
    backTex = "Bar_Back.tga";
	barTex = "Bar_Exp.tga";
};
instance loveBar(GothicBar)
{
	x = 100; y = Print_Screen[PS_Y]-20;
    backTex = "Bar_Back.tga";
	barTex = "Bar_Love.tga";
};

///******************************************************************************************
///	MOD_BarLoop
///******************************************************************************************

var int Bar_healthBar, Bar_shieldBar;
var int Bar_manaBar, Bar_auraBar;
var int Bar_staminaBar;
var int Bar_expBar;

/// HP bar
func void Loop_healthBar()
{
	if (!Hlp_IsValidHandle(Bar_healthBar))
	{
		if (bsPoison > 0)		{	Bar_healthBar = Bar_Create(poisonBar);		}
		else					{	Bar_healthBar = Bar_Create(healthBar);		};
	};
	
	Bar_SetMax (Bar_healthBar, hero.attribute[ATR_HITPOINTS_MAX]);
	Bar_SetValue (Bar_healthBar, hero.attribute[ATR_HITPOINTS]);
};

/// shield bar
func void Loop_shieldBar()
{
	if (!Hlp_IsValidHandle(Bar_shieldBar))
	{
		Bar_shieldBar = Bar_Create(shieldBar);
	};
	
	Bar_SetMax (Bar_shieldBar, hero.attribute[ATR_HITPOINTS_MAX]);
	Bar_SetValue (Bar_shieldBar, mShieldPoints);
};

/// MP bar
func void Loop_manaBar()
{
	if (!Hlp_IsValidHandle(Bar_manaBar))
	{
		if (bsObsession > 0)	{	Bar_manaBar = Bar_Create(obsessionBar);		}
		else					{	Bar_manaBar = Bar_Create(manaBar);			};
	};
	
	Bar_SetMax (Bar_manaBar, hero.attribute[ATR_MANA_MAX]);
	Bar_SetValue (Bar_manaBar, hero.attribute[ATR_MANA]);
};

/// aura bar
func void Loop_auraBar()
{
	if (!Hlp_IsValidHandle(Bar_auraBar))
	{
		Bar_auraBar = Bar_Create(auraBar);
	};
	
	Bar_SetMax (Bar_auraBar, 60);
	Bar_SetValue (Bar_auraBar, mAuraTime);
};

/// SP bar
func void Loop_staminaBar()
{
	if (!Hlp_IsValidHandle(Bar_staminaBar))
	{
		if (bsArmor > 0)		{	Bar_staminaBar = Bar_Create(harmorBar);		}
		else					{	Bar_staminaBar = Bar_Create(staminaBar);	};
	};
	
	Bar_SetMax (Bar_staminaBar, hero.aivar[AIV_Stamina_MAX]);
	Bar_SetValue (Bar_staminaBar, hero.aivar[AIV_Stamina]);
};

/// XP & LOVE bar
func void Loop_expBar()
{
	if (!Hlp_IsValidHandle(Bar_expBar))
	{
		if (talkingWithGirl)	{	Bar_expBar = Bar_Create(loveBar);			}
		else					{	Bar_expBar = Bar_Create(expBar);			};
	};
	
	if (talkingWithGirl)
	{
		Bar_SetMax (Bar_expBar, MAX_LOVE);
		Bar_SetValue (Bar_expBar, gLevelA);
	}
	else
	{
		Bar_SetMax (Bar_expBar, hero.exp_next);
		Bar_SetValue (Bar_expBar, hero.exp);
	};
};

///******************************************************************************************
///	MOD_BarText
///******************************************************************************************

var int BarTextPrint_healthBar;		var string BarText_healthBar;
var int BarTextPrint_manaBar;		var string BarText_manaBar;
var int BarTextPrint_staminaBar;	var string BarText_staminaBar;
var int BarTextPrint_expBar;		var string BarText_expBar;

///******************************************************************************************
func void ShowBarText()
{
	/// HP bar
	BarText_healthBar = ConcatStrings(IntToString(hero.attribute[ATR_HITPOINTS]), " / ");
	BarText_healthBar = ConcatStrings(BarText_healthBar, IntToString(hero.attribute[ATR_HITPOINTS_MAX]));
	if (hpPotionTime > 0)
	{
		BarText_healthBar = ConcatStrings(BarText_healthBar, " (");
		BarText_healthBar = ConcatStrings(BarText_healthBar, IntToString(hpPotionTime));
		BarText_healthBar = ConcatStrings(BarText_healthBar, ")");
	};
	if (foodTime > 0)
	{
		BarText_healthBar = ConcatStrings(BarText_healthBar, " ~");
		BarText_healthBar = ConcatStrings(BarText_healthBar, IntToString(foodTime));
	};
	
	if (Hlp_IsValidHandle(BarTextPrint_healthBar))
	{
		Print_DeleteText(BarTextPrint_healthBar);
	};
	if (!Hlp_IsValidHandle(BarTextPrint_healthBar))
	{
		if (bsPoison > 0)		{	BarTextPrint_healthBar = Print_ExtPxl (200, Print_Screen[PS_Y]-90, BarText_healthBar, FONT_ScreenSmall, COL_Negative, -1);	}
		else					{	BarTextPrint_healthBar = Print_ExtPxl (200, Print_Screen[PS_Y]-90, BarText_healthBar, FONT_ScreenSmall, COL_Health, -1);		};
	};
	
	/// MP bar
	BarText_manaBar = ConcatStrings(IntToString(hero.attribute[ATR_MANA]), " / ");
	BarText_manaBar = ConcatStrings(BarText_manaBar, IntToString(hero.attribute[ATR_MANA_MAX]));
	if (mpPotionTime > 0)
	{
		BarText_manaBar = ConcatStrings(BarText_manaBar, " (");
		BarText_manaBar = ConcatStrings(BarText_manaBar, IntToString(mpPotionTime));
		BarText_manaBar = ConcatStrings(BarText_manaBar, ")");
	};
	/*
	if (mAuraTime > 0)
	{
		BarText_manaBar = ConcatStrings(BarText_manaBar, " a");
		BarText_manaBar = ConcatStrings(BarText_manaBar, IntToString(mAuraTime));
	};
	*/
	
	if (Hlp_IsValidHandle(BarTextPrint_manaBar))
	{
		Print_DeleteText(BarTextPrint_manaBar);
	};
	if (!Hlp_IsValidHandle(BarTextPrint_manaBar))
	{
		if (bsObsession > 0)	{	BarTextPrint_manaBar = Print_ExtPxl (200, Print_Screen[PS_Y]-70, BarText_manaBar, FONT_ScreenSmall, COL_Negative, -1);		}
		else					{	BarTextPrint_manaBar = Print_ExtPxl (200, Print_Screen[PS_Y]-70, BarText_manaBar, FONT_ScreenSmall, COL_Mana, -1);			};
	};
	
	/// SP bar
	BarText_staminaBar = ConcatStrings(IntToString(hero.aivar[AIV_Stamina]), " / ");
	BarText_staminaBar = ConcatStrings(BarText_staminaBar, IntToString(hero.aivar[AIV_Stamina_MAX]));
	if (spPotionTime > 0)
	{
		BarText_staminaBar = ConcatStrings(BarText_staminaBar, " (");
		BarText_staminaBar = ConcatStrings(BarText_staminaBar, IntToString(spPotionTime));
		BarText_staminaBar = ConcatStrings(BarText_staminaBar, ")");
	};
	if (drinkTime > 0)
	{
		BarText_staminaBar = ConcatStrings(BarText_staminaBar, " ~");
		BarText_staminaBar = ConcatStrings(BarText_staminaBar, IntToString(drinkTime));
	};
	
	if (Hlp_IsValidHandle(BarTextPrint_staminaBar))
	{
		Print_DeleteText(BarTextPrint_staminaBar);
	};
	if (!Hlp_IsValidHandle(BarTextPrint_staminaBar))
	{
		if (bsArmor > 0)		{	BarTextPrint_staminaBar = Print_ExtPxl (200, Print_Screen[PS_Y]-50, BarText_staminaBar, FONT_ScreenSmall, COL_Negative, -1);	}
		else					{	BarTextPrint_staminaBar = Print_ExtPxl (200, Print_Screen[PS_Y]-50, BarText_staminaBar, FONT_ScreenSmall, COL_Stamina, -1);	};
	};
	
	/// XP & LOVE bar
	if (Hlp_IsValidHandle(BarTextPrint_expBar))
	{
		Print_DeleteText(BarTextPrint_expBar);
	};
	/*
	if (talkingWithGirl)
	{
		BarText_expBar = ConcatStrings(IntToString(gLevelA*100/MAX_LOVE), "%");
		
		if (!Hlp_IsValidHandle(BarTextPrint_expBar))
		{
			BarTextPrint_expBar = Print_ExtPxl (200, Print_Screen[PS_Y]-30, BarText_expBar, FONT_ScreenSmall, COL_Love, -1);
		};
	}
	else
	{*/
		if (hero.level < MAX_LEVEL)
		{
			BarText_expBar = ConcatStrings(IntToString(hero.exp_next-hero.exp), " do nast.");
			if (alcoholTime > 0)
			{
				BarText_expBar = ConcatStrings(BarText_expBar, " ~");
				BarText_expBar = ConcatStrings(BarText_expBar, IntToString(alcoholTime));
			};
		}
		else
		{
			BarText_expBar = "max. poziom";
		};
		
		if (!Hlp_IsValidHandle(BarTextPrint_expBar))
		{
			BarTextPrint_expBar = Print_ExtPxl (200, Print_Screen[PS_Y]-30, BarText_expBar, FONT_ScreenSmall, COL_Exp, -1);
		};
	//};
};
