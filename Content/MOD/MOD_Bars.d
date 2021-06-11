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

/// MP bars
instance manaBar(GothicBar)
{
	x = 100; y = Print_Screen[PS_Y]-60;
    backTex = "Bar_Back.tga";
	barTex = "Bar_Mana.tga";
};

/// ENE bars
instance energyBar(GothicBar)
{
	x = 100; y = Print_Screen[PS_Y]-40;
    backTex = "Bar_Back.tga";
	barTex = "Bar_Energy.tga";
};
instance harmorBar(GothicBar)
{
	x = 100; y = Print_Screen[PS_Y]-40;
    backTex = "Bar_Back.tga";
	barTex = "Bar_Negative.tga";
};

/// EXP & LOVE bars
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

var int Bar_healthBar;
var int Bar_manaBar;
var int Bar_energyBar;
var int Bar_expBar;

/// HP bar
func void Loop_healthBar()
{
	if (!Hlp_IsValidHandle(Bar_healthBar))
	{
		if (bState[BS_Poison])	{	Bar_healthBar = Bar_Create(poisonBar);	}
		else					{	Bar_healthBar = Bar_Create(healthBar);	};
	};

	Bar_SetMax (Bar_healthBar, hero.attribute[ATR_HITPOINTS_MAX]);
	Bar_SetValue (Bar_healthBar, hero.attribute[ATR_HITPOINTS]);
};

/// MP bar
func void Loop_manaBar()
{
	if (!Hlp_IsValidHandle(Bar_manaBar))
	{
		Bar_manaBar = Bar_Create(manaBar);
	};

	Bar_SetMax (Bar_manaBar, hero.attribute[ATR_MANA_MAX]);
	Bar_SetValue (Bar_manaBar, hero.attribute[ATR_MANA]);
};

/// ENE bar
func void Loop_energyBar()
{
	if (!Hlp_IsValidHandle(Bar_energyBar))
	{
		if (bState[BS_hArmor])	{	Bar_energyBar = Bar_Create(harmorBar);	}
		else					{	Bar_energyBar = Bar_Create(energyBar);	};
	};

	Bar_SetMax (Bar_energyBar, sattribute[ATR_ENERGY_MAX]);
	Bar_SetValue (Bar_energyBar, sattribute[ATR_ENERGY]);
};

/// EXP & LOVE bar
func void Loop_expBar()
{
	if (!Hlp_IsValidHandle(Bar_expBar))
	{
		if (talkingWithGirl)	{	Bar_expBar = Bar_Create(loveBar);	}
		else					{	Bar_expBar = Bar_Create(expBar);	};
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
var int BarTextPrint_energyBar;		var string BarText_energyBar;
var int BarTextPrint_expBar;		var string BarText_expBar;

///******************************************************************************************
func void ShowBarText()
{
	/// HP bar
	BarText_healthBar = ConcatStrings(IntToString(hero.attribute[ATR_HITPOINTS]), " / ");
	BarText_healthBar = ConcatStrings(BarText_healthBar, IntToString(hero.attribute[ATR_HITPOINTS_MAX]));
	if (sattribute[ATR_FoodTime] > 0)
	{
		BarText_healthBar = ConcatStrings(BarText_healthBar, " (");
		BarText_healthBar = ConcatStrings(BarText_healthBar, IntToString(sattribute[ATR_FoodTime]));
		BarText_healthBar = ConcatStrings(BarText_healthBar, ")");
	};
	
	if (Hlp_IsValidHandle(BarTextPrint_healthBar))
	{
		Print_DeleteText(BarTextPrint_healthBar);
	};
	if (!Hlp_IsValidHandle(BarTextPrint_healthBar))
	{
		BarTextPrint_healthBar = Print_ExtPxl (200, Print_Screen[PS_Y]-90, BarText_healthBar, FONT_ScreenSmall, COL_Health, -1);
	};
	
	/// MP bar
	BarText_manaBar = ConcatStrings(IntToString(hero.attribute[ATR_MANA]), " / ");
	BarText_manaBar = ConcatStrings(BarText_manaBar, IntToString(hero.attribute[ATR_MANA_MAX]));
	
	if (Hlp_IsValidHandle(BarTextPrint_manaBar))
	{
		Print_DeleteText(BarTextPrint_manaBar);
	};
	if (!Hlp_IsValidHandle(BarTextPrint_manaBar))
	{
		BarTextPrint_manaBar = Print_ExtPxl (200, Print_Screen[PS_Y]-70, BarText_manaBar, FONT_ScreenSmall, COL_Mana, -1);
	};
	
	/// ENE bar
	BarText_energyBar = ConcatStrings(IntToString(sattribute[ATR_ENERGY]), " / ");
	BarText_energyBar = ConcatStrings(BarText_energyBar, IntToString(sattribute[ATR_ENERGY_MAX]));
	
	if (Hlp_IsValidHandle(BarTextPrint_energyBar))
	{
		Print_DeleteText(BarTextPrint_energyBar);
	};
	if (!Hlp_IsValidHandle(BarTextPrint_energyBar))
	{
		BarTextPrint_energyBar = Print_ExtPxl (200, Print_Screen[PS_Y]-50, BarText_energyBar, FONT_ScreenSmall, COL_Energy, -1);
	};
	
	/// EXP & LOVE bar
	if (Hlp_IsValidHandle(BarTextPrint_expBar))
	{
		Print_DeleteText(BarTextPrint_expBar);
	};
	
	if (talkingWithGirl == true)
	{
		BarText_expBar = ConcatStrings(IntToString(gLevelA*100/MAX_LOVE), "%");
		
		if (!Hlp_IsValidHandle(BarTextPrint_expBar))
		{
			BarTextPrint_expBar = Print_ExtPxl (200, Print_Screen[PS_Y]-30, BarText_expBar, FONT_ScreenSmall, COL_Love, -1);
		};
	}
	else
	{
		if (hero.level < MAX_LEVEL)	{	BarText_expBar = ConcatStrings(IntToString(hero.exp_next-hero.exp), " do nast.");	}
		else						{	BarText_expBar = "max. poziom";	};
		
		if (!Hlp_IsValidHandle(BarTextPrint_expBar))
		{
			BarTextPrint_expBar = Print_ExtPxl (200, Print_Screen[PS_Y]-30, BarText_expBar, FONT_ScreenSmall, COL_Exp, -1);
		};
	};
};
