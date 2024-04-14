///******************************************************************************************
///	MOD_Bars
///******************************************************************************************

/// HP bars
instance healthBar(GothicBar)		{ x = 100; y = Print_Screen[PS_Y]-80; backTex = "Bar_Back.tga"; barTex = "Bar_Health.tga"; };
instance poisonBar(GothicBar)		{ x = 100; y = Print_Screen[PS_Y]-80; backTex = "Bar_Back.tga"; barTex = "Bar_Negative.tga"; };

/// shield bar
instance shieldPhBar(GothicBar)		{ x = 100; y = Print_Screen[PS_Y]-75; backTex = "Alpha.tga"; barTex = "Bar_Stamina.tga"; height = 10; };
instance shieldMgBar(GothicBar)		{ x = 100; y = Print_Screen[PS_Y]-75; backTex = "Alpha.tga"; barTex = "Bar_Mana.tga"; height = 10; };

/// MP bars
instance manaBar(GothicBar)			{ x = 100; y = Print_Screen[PS_Y]-60; backTex = "Bar_Back.tga"; barTex = "Bar_Mana.tga"; };
instance obsessionBar(GothicBar)	{ x = 100; y = Print_Screen[PS_Y]-60; backTex = "Bar_Back.tga"; barTex = "Bar_Negative.tga"; };

/// aura bar
instance auraBar(GothicBar)			{ x = 100; y = Print_Screen[PS_Y]-55; backTex = "Alpha.tga"; barTex = "Bar_Progress.tga"; height = 10; };

/// SP bars
instance staminaBar(GothicBar)		{ x = 100; y = Print_Screen[PS_Y]-40; backTex = "Bar_Back.tga"; barTex = "Bar_Stamina.tga"; };
instance harmorBar(GothicBar)		{ x = 100; y = Print_Screen[PS_Y]-40; backTex = "Bar_Back.tga"; barTex = "Bar_Negative.tga"; };

/// XP & LOVE bars
instance expBar(GothicBar)			{ x = 100; y = Print_Screen[PS_Y]-20; backTex = "Bar_Back.tga"; barTex = "Bar_Exp.tga"; };
instance loveBar(GothicBar)			{ x = 100; y = Print_Screen[PS_Y]-20; backTex = "Bar_Back.tga"; barTex = "Bar_Love.tga"; };

///******************************************************************************************
///	MOD_BarLoop
///******************************************************************************************

var int Bar_hpBar, Bar_shieldPhBar, Bar_shieldMgBar;
var int Bar_mpBar, Bar_auraBar;
var int Bar_spBar;
var int Bar_xpBar;

/// HP bar
func void Loop_hpBar()
{
	if (!Hlp_IsValidHandle(Bar_hpBar))
	{
		if (bsPoison > 0)		{	Bar_hpBar = Bar_Create(poisonBar);		}
		else					{	Bar_hpBar = Bar_Create(healthBar);		};
	};
	
	Bar_SetMax (Bar_hpBar, hero.attribute[ATR_HITPOINTS_MAX]);
	Bar_SetValue (Bar_hpBar, hero.attribute[ATR_HITPOINTS]);
};

/// shield bar
func void Loop_shieldPhBar()
{
	if (!Hlp_IsValidHandle(Bar_shieldPhBar))
	{
		Bar_shieldPhBar = Bar_Create(shieldPhBar);
	};
	
	Bar_SetMax (Bar_shieldPhBar, hero.attribute[ATR_HITPOINTS_MAX]);
	Bar_SetValue (Bar_shieldPhBar, mShieldPhPoints);
};
func void Loop_shieldMgBar()
{
	if (!Hlp_IsValidHandle(Bar_shieldMgBar))
	{
		Bar_shieldMgBar = Bar_Create(shieldMgBar);
	};
	
	Bar_SetMax (Bar_shieldMgBar, hero.attribute[ATR_HITPOINTS_MAX]);
	Bar_SetValue (Bar_shieldMgBar, mShieldMgPoints);
};

/// MP bar
func void Loop_mpBar()
{
	if (!Hlp_IsValidHandle(Bar_mpBar))
	{
		if (bsObsession > 0)	{	Bar_mpBar = Bar_Create(obsessionBar);	}
		else					{	Bar_mpBar = Bar_Create(manaBar);		};
	};
	
	Bar_SetMax (Bar_mpBar, hero.attribute[ATR_MANA_MAX]);
	Bar_SetValue (Bar_mpBar, hero.attribute[ATR_MANA]);
};

/// aura bar
func void Loop_auraBar()
{
	if (!Hlp_IsValidHandle(Bar_auraBar))
	{
		Bar_auraBar = Bar_Create(auraBar);
	};
	
	Bar_SetMax (Bar_auraBar, 60);
	Bar_SetValue (Bar_auraBar, mAuraTime + mAuraPalTime);
};

/// SP bar
func void Loop_spBar()
{
	if (!Hlp_IsValidHandle(Bar_spBar))
	{
		if (bsArmor > 0)		{	Bar_spBar = Bar_Create(harmorBar);		}
		else					{	Bar_spBar = Bar_Create(staminaBar);		};
	};
	
	Bar_SetMax (Bar_spBar, hero.aivar[AIV_Stamina_MAX]);
	Bar_SetValue (Bar_spBar, hero.aivar[AIV_Stamina]);
};

/// XP & LOVE bar
func void Loop_xpBar()
{
	if (!Hlp_IsValidHandle(Bar_xpBar))
	{
		if (talkingWithGirl)	{	Bar_xpBar = Bar_Create(loveBar);		}
		else					{	Bar_xpBar = Bar_Create(expBar);			};
	};
	
	if (talkingWithGirl)
	{
		Bar_SetMax (Bar_xpBar, MAX_LOVE);
		Bar_SetValue (Bar_xpBar, gLevelA);
	}
	else
	{
		Bar_SetMax (Bar_xpBar, hero.exp_next);
		Bar_SetValue (Bar_xpBar, hero.exp);
	};
};

///******************************************************************************************
///	MOD_BarText
///******************************************************************************************

var int BarPrinter_hpBar; var string BarText_hpBar;
var int BarPrinter_mpBar; var string BarText_mpBar;
var int BarPrinter_spBar; var string BarText_spBar;
var int BarPrinter_xpBar; var string BarText_xpBar;

///******************************************************************************************
func void ShowBarText()
{
	/// HP bar
	BarText_hpBar = ConcatStrings(IntToString(hero.attribute[ATR_HITPOINTS]), " / ");
	BarText_hpBar = ConcatStrings(BarText_hpBar, IntToString(hero.attribute[ATR_HITPOINTS_MAX]));
	if (hpPotionTime > 0)
	{
		BarText_hpBar = ConcatStrings(BarText_hpBar, " (");
		BarText_hpBar = ConcatStrings(BarText_hpBar, IntToString(hpPotionTime));
		BarText_hpBar = ConcatStrings(BarText_hpBar, ")");
	};
	if (foodTime > 0)
	{
		BarText_hpBar = ConcatStrings(BarText_hpBar, " ~");
		BarText_hpBar = ConcatStrings(BarText_hpBar, IntToString(foodTime));
	};
	
	if (Hlp_IsValidHandle(BarPrinter_hpBar))
	{
		Print_DeleteText(BarPrinter_hpBar);
	};
	if (!Hlp_IsValidHandle(BarPrinter_hpBar))
	{
		if (bsPoison > 0)		{	BarPrinter_hpBar = Print_ExtPxl (200, Print_Screen[PS_Y]-90, BarText_hpBar, FONT_ScreenSmall, COL_Negative, -1);	}
		else					{	BarPrinter_hpBar = Print_ExtPxl (200, Print_Screen[PS_Y]-90, BarText_hpBar, FONT_ScreenSmall, COL_Health, -1);		};
	};
	
	/// MP bar
	BarText_mpBar = ConcatStrings(IntToString(hero.attribute[ATR_MANA]), " / ");
	BarText_mpBar = ConcatStrings(BarText_mpBar, IntToString(hero.attribute[ATR_MANA_MAX]));
	if (mpPotionTime > 0)
	{
		BarText_mpBar = ConcatStrings(BarText_mpBar, " (");
		BarText_mpBar = ConcatStrings(BarText_mpBar, IntToString(mpPotionTime));
		BarText_mpBar = ConcatStrings(BarText_mpBar, ")");
	};
	
	if (Hlp_IsValidHandle(BarPrinter_mpBar))
	{
		Print_DeleteText(BarPrinter_mpBar);
	};
	if (!Hlp_IsValidHandle(BarPrinter_mpBar))
	{
		if (bsObsession > 0)	{	BarPrinter_mpBar = Print_ExtPxl (200, Print_Screen[PS_Y]-70, BarText_mpBar, FONT_ScreenSmall, COL_Negative, -1);		}
		else					{	BarPrinter_mpBar = Print_ExtPxl (200, Print_Screen[PS_Y]-70, BarText_mpBar, FONT_ScreenSmall, COL_Mana, -1);			};
	};
	
	/// SP bar
	BarText_spBar = ConcatStrings(IntToString(hero.aivar[AIV_Stamina]), " / ");
	BarText_spBar = ConcatStrings(BarText_spBar, IntToString(hero.aivar[AIV_Stamina_MAX]));
	if (spPotionTime > 0)
	{
		BarText_spBar = ConcatStrings(BarText_spBar, " (");
		BarText_spBar = ConcatStrings(BarText_spBar, IntToString(spPotionTime));
		BarText_spBar = ConcatStrings(BarText_spBar, ")");
	};
	if (drinkTime > 0)
	{
		BarText_spBar = ConcatStrings(BarText_spBar, " ~");
		BarText_spBar = ConcatStrings(BarText_spBar, IntToString(drinkTime));
	};
	
	if (Hlp_IsValidHandle(BarPrinter_spBar))
	{
		Print_DeleteText(BarPrinter_spBar);
	};
	if (!Hlp_IsValidHandle(BarPrinter_spBar))
	{
		if (bsArmor > 0)		{	BarPrinter_spBar = Print_ExtPxl (200, Print_Screen[PS_Y]-50, BarText_spBar, FONT_ScreenSmall, COL_Negative, -1);	}
		else					{	BarPrinter_spBar = Print_ExtPxl (200, Print_Screen[PS_Y]-50, BarText_spBar, FONT_ScreenSmall, COL_Stamina, -1);	};
	};
	
	/// XP & LOVE bar
	if (Hlp_IsValidHandle(BarPrinter_xpBar))
	{
		Print_DeleteText(BarPrinter_xpBar);
	};
	/*
	if (talkingWithGirl)
	{
		BarText_xpBar = ConcatStrings(IntToString(gLevelA*100/MAX_LOVE), "%");
		
		if (!Hlp_IsValidHandle(BarPrinter_xpBar))
		{
			BarPrinter_xpBar = Print_ExtPxl (200, Print_Screen[PS_Y]-30, BarText_xpBar, FONT_ScreenSmall, COL_Love, -1);
		};
	}
	else
	{*/
		if (hero.level < MAX_LEVEL)
		{
			BarText_xpBar = ConcatStrings(IntToString(hero.exp_next-hero.exp), " do nast.");
			if (alcoholTime > 0)
			{
				BarText_xpBar = ConcatStrings(BarText_xpBar, " ~");
				BarText_xpBar = ConcatStrings(BarText_xpBar, IntToString(alcoholTime));
			};
		}
		else
		{
			BarText_xpBar = "max. poziom";
		};
		
		if (!Hlp_IsValidHandle(BarPrinter_xpBar))
		{
			BarPrinter_xpBar = Print_ExtPxl (200, Print_Screen[PS_Y]-30, BarText_xpBar, FONT_ScreenSmall, COL_Exp, -1);
		};
	//};
};
