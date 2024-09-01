///******************************************************************************************
///	MOD_Bars
///******************************************************************************************

/// dive bar
instance diveBar(GothicBar)			{ x = 100; y = Print_Screen[PS_Y]-100; backTex = "Bar_Back.tga"; barTex = "Bar_Misc.tga"; };

/// HP bars
instance healthBar(GothicBar)		{ x = 100; y = Print_Screen[PS_Y]-80; backTex = "Bar_Back.tga"; barTex = "Bar_Health.tga"; };
instance poisonBar(GothicBar)		{ x = 100; y = Print_Screen[PS_Y]-80; backTex = "Bar_Back.tga"; barTex = "Bar_Negative.tga"; };

/// shield bars
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

/// XP bar
instance expBar(GothicBar)			{ x = 100; y = Print_Screen[PS_Y]-20; backTex = "Bar_Back.tga"; barTex = "Bar_Exp.tga"; };

/// bars order
const int BarOrderHP				=	0;
const int BarOrderMP				=	1;
const int BarOrderSP				=	2;
const int BarOrderXP				=	3;

///******************************************************************************************
///	MOD_BarLoop
///******************************************************************************************

var int BarLoop_dvBar;
var int BarLoop_hpBar, BarLoop_shieldPhBar, BarLoop_shieldMgBar;
var int BarLoop_mpBar, BarLoop_auraBar;
var int BarLoop_spBar;
var int BarLoop_xpBar;

var int BarPrinter_dvBar; var string BarText_dvBar;
var int BarPrinter_hpBar; var string BarText_hpBar;
var int BarPrinter_mpBar; var string BarText_mpBar;
var int BarPrinter_spBar; var string BarText_spBar;
var int BarPrinter_xpBar; var string BarText_xpBar;

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
	
	Bar_SetMax (BarLoop_dvBar, RealToInt(o_hero.divetime) / 100);
	Bar_SetValue (BarLoop_dvBar, RealToInt(o_hero.divectr) / 100);
	
	/// TEXT
	if (Hlp_IsValidHandle(BarPrinter_dvBar))
	{
		Print_DeleteText(BarPrinter_dvBar);
	};
	
	if (C_BodyStateContains(hero, BS_DIVE))
	{
		BarText_dvBar = ConcatStrings(IntToString(RealToInt(o_hero.divectr) / 1000), " / ");
		BarText_dvBar = ConcatStrings(BarText_dvBar, IntToString(RealToInt(o_hero.divetime) / 1000));
		
		if (!Hlp_IsValidHandle(BarPrinter_dvBar))
		{
			BarPrinter_dvBar = Print_ExtPxl(200, Print_Screen[PS_Y]-110, BarText_dvBar, FONT_ScreenSmall, COL_Aqua, -1);
		};
	};
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
	if (Hlp_IsValidHandle(BarPrinter_hpBar))
	{
		Print_DeleteText(BarPrinter_hpBar);
	};
	
	BarText_hpBar = ConcatStrings(IntToString(hero.attribute[ATR_HITPOINTS]), " / ");
	BarText_hpBar = ConcatStrings(BarText_hpBar, IntToString(hero.attribute[ATR_HITPOINTS_MAX]));
	if (hpPotionTime > 0)
	{
		BarText_hpBar = ConcatStrings(BarText_hpBar, " (");
		BarText_hpBar = ConcatStrings(BarText_hpBar, IntToString(hpPotionTime));
		BarText_hpBar = ConcatStrings(BarText_hpBar, ")");
	};
	if (foodTime[BarOrderHP] > 0)
	{
		BarText_hpBar = ConcatStrings(BarText_hpBar, " ~");
		BarText_hpBar = ConcatStrings(BarText_hpBar, IntToString(foodTime[BarOrderHP]));
	};
	
	if (!Hlp_IsValidHandle(BarPrinter_hpBar))
	{
		if (bsPoison > 0)	{	BarPrinter_hpBar = Print_ExtPxl(200, Print_Screen[PS_Y]-90, BarText_hpBar, FONT_ScreenSmall, COL_Negative, -1);	}
		else				{	BarPrinter_hpBar = Print_ExtPxl(200, Print_Screen[PS_Y]-90, BarText_hpBar, FONT_ScreenSmall, COL_Health, -1);	};
	};
};

/// shieldBar
func void Loop_shieldPhBar()
{
	if (!Hlp_IsValidHandle(BarLoop_shieldPhBar))
	{
		BarLoop_shieldPhBar = Bar_Create(shieldPhBar);
	};
	
	Bar_SetMax (BarLoop_shieldPhBar, hero.attribute[ATR_HITPOINTS_MAX]);
	Bar_SetValue (BarLoop_shieldPhBar, mShieldPhPoints);
};
func void Loop_shieldMgBar()
{
	if (!Hlp_IsValidHandle(BarLoop_shieldMgBar))
	{
		BarLoop_shieldMgBar = Bar_Create(shieldMgBar);
	};
	
	Bar_SetMax (BarLoop_shieldMgBar, hero.attribute[ATR_HITPOINTS_MAX]);
	Bar_SetValue (BarLoop_shieldMgBar, mShieldMgPoints);
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
	if (Hlp_IsValidHandle(BarPrinter_mpBar))
	{
		Print_DeleteText(BarPrinter_mpBar);
	};
	
	BarText_mpBar = ConcatStrings(IntToString(hero.attribute[ATR_MANA]), " / ");
	BarText_mpBar = ConcatStrings(BarText_mpBar, IntToString(hero.attribute[ATR_MANA_MAX]));
	if (mpPotionTime > 0)
	{
		BarText_mpBar = ConcatStrings(BarText_mpBar, " (");
		BarText_mpBar = ConcatStrings(BarText_mpBar, IntToString(mpPotionTime));
		BarText_mpBar = ConcatStrings(BarText_mpBar, ")");
	};
	if (foodTime[BarOrderMP] > 0)
	{
		BarText_mpBar = ConcatStrings(BarText_mpBar, " ~");
		BarText_mpBar = ConcatStrings(BarText_mpBar, IntToString(foodTime[BarOrderMP]));
	};
	
	if (!Hlp_IsValidHandle(BarPrinter_mpBar))
	{
		if (bsObsession > 0)	{	BarPrinter_mpBar = Print_ExtPxl(200, Print_Screen[PS_Y]-70, BarText_mpBar, FONT_ScreenSmall, COL_Negative, -1);	}
		else					{	BarPrinter_mpBar = Print_ExtPxl(200, Print_Screen[PS_Y]-70, BarText_mpBar, FONT_ScreenSmall, COL_Mana, -1);		};
	};
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
	if (Hlp_IsValidHandle(BarPrinter_spBar))
	{
		Print_DeleteText(BarPrinter_spBar);
	};
	
	BarText_spBar = ConcatStrings(IntToString(hero.aivar[AIV_Stamina]), " / ");
	BarText_spBar = ConcatStrings(BarText_spBar, IntToString(hero.aivar[AIV_Stamina_MAX]));
	if (spPotionTime > 0)
	{
		BarText_spBar = ConcatStrings(BarText_spBar, " (");
		BarText_spBar = ConcatStrings(BarText_spBar, IntToString(spPotionTime));
		BarText_spBar = ConcatStrings(BarText_spBar, ")");
	};
	if (foodTime[BarOrderSP] > 0)
	{
		BarText_spBar = ConcatStrings(BarText_spBar, " ~");
		BarText_spBar = ConcatStrings(BarText_spBar, IntToString(foodTime[BarOrderSP]));
	};
	
	if (!Hlp_IsValidHandle(BarPrinter_spBar))
	{
		if (bsArmor > 0)	{	BarPrinter_spBar = Print_ExtPxl(200, Print_Screen[PS_Y]-50, BarText_spBar, FONT_ScreenSmall, COL_Negative, -1);	}
		else				{	BarPrinter_spBar = Print_ExtPxl(200, Print_Screen[PS_Y]-50, BarText_spBar, FONT_ScreenSmall, COL_Stamina, -1);	};
	};
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
	if (hero.exp_next != 0)	{	Bar_SetValue (BarLoop_xpBar, hero.exp);	}
	else					{	Bar_SetValue (BarLoop_xpBar, 0);		};	/// bugfix!!!
	
	/// TEXT
	if (Hlp_IsValidHandle(BarPrinter_xpBar))
	{
		Print_DeleteText(BarPrinter_xpBar);
	};
	
	if (hero.level < MAX_LEVEL)
	{
		BarText_xpBar = ConcatStrings(IntToString(hero.exp_next-hero.exp), " do nast.");
		if (foodTime[BarOrderXP] > 0)
		{
			BarText_xpBar = ConcatStrings(BarText_xpBar, " ~");
			BarText_xpBar = ConcatStrings(BarText_xpBar, IntToString(foodTime[BarOrderXP]));
		};
	}
	else
	{
		BarText_xpBar = "max. poziom";
	};
	
	if (!Hlp_IsValidHandle(BarPrinter_xpBar))
	{
		BarPrinter_xpBar = Print_ExtPxl(200, Print_Screen[PS_Y]-30, BarText_xpBar, FONT_ScreenSmall, COL_Exp, -1);
	};
};
