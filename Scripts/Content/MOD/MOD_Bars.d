///******************************************************************************************
/// MOD_Bars
///******************************************************************************************

/// dive bar
instance diveBar(GothicBar)				{ x = 100; y = Print_Screen[PS_Y]-100; backTex = "Bar_Back.tga"; barTex = "Bar_Misc.tga"; };

/// HP bars
instance healthBar(GothicBar)			{ x = 100; y = Print_Screen[PS_Y]-80; backTex = "Bar_Back.tga"; barTex = "Bar_Health.tga"; };
instance poisonBar(GothicBar)			{ x = 100; y = Print_Screen[PS_Y]-80; backTex = "Bar_Back.tga"; barTex = "Bar_Negative.tga"; };

/// shield bars
instance shieldBar(GothicBar)			{ x = 100; y = Print_Screen[PS_Y]-75; backTex = "Alpha.tga"; barTex = "Bar_Progress.tga"; height = 10; };

/// MP bars
instance manaBar(GothicBar)				{ x = 100; y = Print_Screen[PS_Y]-60; backTex = "Bar_Back.tga"; barTex = "Bar_Mana.tga"; };
instance obsessionBar(GothicBar)		{ x = 100; y = Print_Screen[PS_Y]-60; backTex = "Bar_Back.tga"; barTex = "Bar_Negative.tga"; };

/// aura bar
instance auraBar(GothicBar)				{ x = 100; y = Print_Screen[PS_Y]-55; backTex = "Alpha.tga"; barTex = "Bar_Progress.tga"; height = 10; };

/// SP bars
instance staminaBar(GothicBar)			{ x = 100; y = Print_Screen[PS_Y]-40; backTex = "Bar_Back.tga"; barTex = "Bar_Stamina.tga"; };
instance harmorBar(GothicBar)			{ x = 100; y = Print_Screen[PS_Y]-40; backTex = "Bar_Back.tga"; barTex = "Bar_Negative.tga"; };

/// XP bar
instance expBar(GothicBar)				{ x = 100; y = Print_Screen[PS_Y]-20; backTex = "Bar_Back.tga"; barTex = "Bar_Exp.tga"; };

///******************************************************************************************
func int BarLoop_RenderOnScreen()
{
	if (!MEM_Game.showPlayerStatus || !InfoManager_hasFinished())
	{
		return false;
	};
	
	return true;
};

///******************************************************************************************
/// MOD_BarLoop
///******************************************************************************************

var int BarLoop_dvBar;
var int BarLoop_hpBar, BarLoop_shieldBar;
var int BarLoop_mpBar, BarLoop_auraBar;
var int BarLoop_spBar;
var int BarLoop_xpBar;

var int BarPrinter_dvBar; var string BarText_dvBar; var zCViewText BarTextView_dvBar;
var int BarPrinter_hpBar; var string BarText_hpBar; var zCViewText BarTextView_hpBar;
var int BarPrinter_mpBar; var string BarText_mpBar; var zCViewText BarTextView_mpBar;
var int BarPrinter_spBar; var string BarText_spBar; var zCViewText BarTextView_spBar;
var int BarPrinter_xpBar; var string BarText_xpBar; var zCViewText BarTextView_xpBar;

/// dvBar
func void Loop_dvBar()
{
	/// VALUE
	if (C_BodyStateContains(hero, BS_DIVE))
	{
		if (!Hlp_IsValidHandle(BarLoop_dvBar))
		{
			BarLoop_dvBar = Bar_Create(diveBar);
		};
	}
	else
	{
		if (Hlp_IsValidHandle(BarLoop_dvBar))
		{
			Bar_Delete(BarLoop_dvBar);
		};
	};
	
	o_hero = Hlp_GetNpc(hero);
	Bar_SetMax (BarLoop_dvBar, RealToInt(o_hero.divetime) / 100);
	Bar_SetValue (BarLoop_dvBar, RealToInt(o_hero.divectr) / 100);
	
	/// TEXT
	if (!Hlp_IsValidHandle(BarPrinter_dvBar))
	{
		BarPrinter_dvBar = Print_ExtPxl(200, Print_Screen[PS_Y]-110, BarText_dvBar, FONT_ScreenSmall, COL_Aqua, -1);
		BarTextView_dvBar = Print_GetText(BarPrinter_dvBar);
	};
	
	if (!BarLoop_RenderOnScreen() || !C_BodyStateContains(hero, BS_DIVE))
	{
		BarText_dvBar = "";
	}
	else if (C_BodyStateContains(hero, BS_DIVE))
	{
		BarText_dvBar = ConcatStrings(IntToString(RealToInt(o_hero.divectr) / 1000), " / ");
		BarText_dvBar = ConcatStrings(BarText_dvBar, IntToString(RealToInt(o_hero.divetime) / 1000));
	};
	BarTextView_dvBar.text = BarText_dvBar;
};

/// hpBar
func void Loop_hpBar()
{
	/// VALUE
	if (!Hlp_IsValidHandle(BarLoop_hpBar))
	{
		if (bsPoison > 0)	{	BarLoop_hpBar = Bar_Create(poisonBar);	}
		else				{	BarLoop_hpBar = Bar_Create(healthBar);	};
	};
	
	Bar_SetMax (BarLoop_hpBar, hero.attribute[ATR_HITPOINTS_MAX]);
	Bar_SetValue (BarLoop_hpBar, hero.attribute[ATR_HITPOINTS]);
	
	/// TEXT
	if (!Hlp_IsValidHandle(BarPrinter_hpBar))
	{
		BarPrinter_hpBar = Print_ExtPxl(200, Print_Screen[PS_Y]-90, BarText_hpBar, FONT_ScreenSmall, COL_Health, -1);
		BarTextView_hpBar = Print_GetText(BarPrinter_hpBar);
	};
	
	if (!BarLoop_RenderOnScreen())
	{
		BarText_hpBar = "";
	}
	else
	{
		BarText_hpBar = ConcatStrings(IntToString(hero.attribute[ATR_HITPOINTS]), " / ");
		BarText_hpBar = ConcatStrings(BarText_hpBar, IntToString(hero.attribute[ATR_HITPOINTS_MAX]));
		if (regenPotionTime[BarOrderHP] > 0)
		{
			BarText_hpBar = ConcatStrings(BarText_hpBar, " (");
			BarText_hpBar = ConcatStrings(BarText_hpBar, IntToString(regenPotionTime[BarOrderHP]));
			BarText_hpBar = ConcatStrings(BarText_hpBar, ")");
		};
		if (foodTime[BarOrderHP] > 0)
		{
			BarText_hpBar = ConcatStrings(BarText_hpBar, " ~");
			BarText_hpBar = ConcatStrings(BarText_hpBar, IntToString(foodTime[BarOrderHP]));
		};
	};
	BarTextView_hpBar.text = BarText_hpBar;
	
	if (bsPoison > 0)	{	BarTextView_hpBar.color = COL_Negative;	}
	else				{	BarTextView_hpBar.color = COL_Health;	};
};

/// shieldBar
func void Loop_shieldBar()
{
	if (!Hlp_IsValidHandle(BarLoop_shieldBar))
	{
		BarLoop_shieldBar = Bar_Create(shieldBar);
	};
	
	Bar_SetMax (BarLoop_shieldBar, hero.attribute[ATR_HITPOINTS_MAX]);
	Bar_SetValue (BarLoop_shieldBar, mShieldPoints);
};

/// mpBar
func void Loop_mpBar()
{
	/// VALUE
	if (!Hlp_IsValidHandle(BarLoop_mpBar))
	{
		if (bsObsession > 0)	{	BarLoop_mpBar = Bar_Create(obsessionBar);	}
		else					{	BarLoop_mpBar = Bar_Create(manaBar);		};
	};
	
	Bar_SetMax (BarLoop_mpBar, hero.attribute[ATR_MANA_MAX]);
	Bar_SetValue (BarLoop_mpBar, hero.attribute[ATR_MANA]);
	
	/// TEXT
	if (!Hlp_IsValidHandle(BarPrinter_mpBar))
	{
		BarPrinter_mpBar = Print_ExtPxl(200, Print_Screen[PS_Y]-70, BarText_mpBar, FONT_ScreenSmall, COL_Mana, -1);
		BarTextView_mpBar = Print_GetText(BarPrinter_mpBar);
	};
	
	if (!BarLoop_RenderOnScreen())
	{
		BarText_mpBar = "";
	}
	else
	{
		BarText_mpBar = ConcatStrings(IntToString(hero.attribute[ATR_MANA]), " / ");
		BarText_mpBar = ConcatStrings(BarText_mpBar, IntToString(hero.attribute[ATR_MANA_MAX]));
		if (regenPotionTime[BarOrderMP] > 0)
		{
			BarText_mpBar = ConcatStrings(BarText_mpBar, " (");
			BarText_mpBar = ConcatStrings(BarText_mpBar, IntToString(regenPotionTime[BarOrderMP]));
			BarText_mpBar = ConcatStrings(BarText_mpBar, ")");
		};
		if (foodTime[BarOrderMP] > 0)
		{
			BarText_mpBar = ConcatStrings(BarText_mpBar, " ~");
			BarText_mpBar = ConcatStrings(BarText_mpBar, IntToString(foodTime[BarOrderMP]));
		};
	};
	BarTextView_mpBar.text = BarText_mpBar;
	
	if (bsObsession > 0)	{	BarTextView_mpBar.color = COL_Negative;	}
	else					{	BarTextView_mpBar.color = COL_Mana;		};
};

/// auraBar
func void Loop_auraBar()
{
	if (!Hlp_IsValidHandle(BarLoop_auraBar))
	{
		BarLoop_auraBar = Bar_Create(auraBar);
	};
	
	Bar_SetMax (BarLoop_auraBar, 60);
	Bar_SetValue (BarLoop_auraBar, mAuraTime + mAuraPalTime);
};

/// spBar
func void Loop_spBar()
{
	/// VALUE
	if (!Hlp_IsValidHandle(BarLoop_spBar))
	{
		if (bsArmor > 0)	{	BarLoop_spBar = Bar_Create(harmorBar);	}
		else				{	BarLoop_spBar = Bar_Create(staminaBar);	};
	};
	
	Bar_SetMax (BarLoop_spBar, hero.aivar[AIV_Stamina_MAX]);
	Bar_SetValue (BarLoop_spBar, hero.aivar[AIV_Stamina]);
	
	/// TEXT
	if (!Hlp_IsValidHandle(BarPrinter_spBar))
	{
		BarPrinter_spBar = Print_ExtPxl(200, Print_Screen[PS_Y]-50, BarText_spBar, FONT_ScreenSmall, COL_Stamina, -1);
		BarTextView_spBar = Print_GetText(BarPrinter_spBar);
	};
	
	if (!BarLoop_RenderOnScreen())
	{
		BarText_spBar = "";
	}
	else
	{
		BarText_spBar = ConcatStrings(IntToString(hero.aivar[AIV_Stamina]), " / ");
		BarText_spBar = ConcatStrings(BarText_spBar, IntToString(hero.aivar[AIV_Stamina_MAX]));
		if (regenPotionTime[BarOrderSP] > 0)
		{
			BarText_spBar = ConcatStrings(BarText_spBar, " (");
			BarText_spBar = ConcatStrings(BarText_spBar, IntToString(regenPotionTime[BarOrderSP]));
			BarText_spBar = ConcatStrings(BarText_spBar, ")");
		};
		if (foodTime[BarOrderSP] > 0)
		{
			BarText_spBar = ConcatStrings(BarText_spBar, " ~");
			BarText_spBar = ConcatStrings(BarText_spBar, IntToString(foodTime[BarOrderSP]));
		};
	};
	BarTextView_spBar.text = BarText_spBar;
	
	if (bsArmor > 0)	{	BarTextView_spBar.color = COL_Negative;	}
	else				{	BarTextView_spBar.color = COL_Stamina;	};
};

/// xpBar
func void Loop_xpBar()
{
	/// VALUE
	if (!Hlp_IsValidHandle(BarLoop_xpBar))
	{
		BarLoop_xpBar = Bar_Create(expBar);
	};
	
	Bar_SetMax (BarLoop_xpBar, hero.exp_next);
	Bar_SetValue (BarLoop_xpBar, hero.exp);
	
	/// TEXT
	if (!Hlp_IsValidHandle(BarPrinter_xpBar))
	{
		BarPrinter_xpBar = Print_ExtPxl(200, Print_Screen[PS_Y]-30, BarText_xpBar, FONT_ScreenSmall, COL_Exp, -1);
		BarTextView_xpBar = Print_GetText(BarPrinter_xpBar);
	};
	
	if (!BarLoop_RenderOnScreen())
	{
		BarText_xpBar = "";
	}
	else
	{
		BarText_xpBar = ConcatStrings(IntToString(hero.exp_next-hero.exp), " do nast.");
		if ((foodTime[BarOrderXP] + alcoholTime) > 0)
		{
			BarText_xpBar = ConcatStrings(BarText_xpBar, " ~");
			BarText_xpBar = ConcatStrings(BarText_xpBar, IntToString(foodTime[BarOrderXP] + alcoholTime));
		};
	};
	BarTextView_xpBar.text = BarText_xpBar;
};
