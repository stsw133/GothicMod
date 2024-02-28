
instance MENU_STATUS(C_MENU_DEF)
{
	items[0] = "MENU_ITEM_STATUS_HEADING";
	items[1] = "MENU_ITEM_PLAYERGUILD";
	items[2] = "MENU_ITEM_LEVEL_TITLE";
	items[3] = "MENU_ITEM_LEVEL";
	items[4] = "MENU_ITEM_EXP_TITLE";
	items[5] = "MENU_ITEM_EXP";
	items[6] = "MENU_ITEM_LEVEL_NEXT_TITLE";
	items[7] = "MENU_ITEM_LEVEL_NEXT";
	items[8] = "MENU_ITEM_LEARN_TITLE";
	items[9] = "MENU_ITEM_LEARN";
	items[10] = "MENU_ITEM_ATTRIBUTE_HEADING";
	items[11] = "MENU_ITEM_ATTRIBUTE_1_TITLE";
	items[12] = "MENU_ITEM_ATTRIBUTE_1";
	items[13] = "MENU_ITEM_ATTRIBUTE_2_TITLE";
	items[14] = "MENU_ITEM_ATTRIBUTE_2";
	items[15] = "MENU_ITEM_ATTRIBUTE_3_TITLE";
	items[16] = "MENU_ITEM_ATTRIBUTE_3";
	items[17] = "MENU_ITEM_ATTRIBUTE_4_TITLE";
	items[18] = "MENU_ITEM_ATTRIBUTE_4";
	items[19] = "MENU_ITEM_ATTRIBUTE_POWER_TITLE";
	items[20] = "MENU_ITEM_TALENT_7";
	items[21] = "MENU_ITEM_ARMOR_HEADING";
	items[22] = "MENU_ITEM_ARMOR_1_TITLE";
	items[23] = "MENU_ITEM_ARMOR_1";
	items[24] = "MENU_ITEM_ARMOR_2_TITLE";
	items[25] = "MENU_ITEM_ARMOR_2";
	items[26] = "MENU_ITEM_ARMOR_3_TITLE";
	items[27] = "MENU_ITEM_ARMOR_3";
	items[28] = "MENU_ITEM_ARMOR_4_TITLE";
	items[29] = "MENU_ITEM_ARMOR_4";
	items[30] = "MENU_ITEM_TALENTS_HEADING";
	items[31] = "MENU_ITEM_TALENT_1_TITLE";
	items[32] = "MENU_ITEM_TALENT_1_SKILL";
	items[33] = "MENU_ITEM_TALENT_1";
	items[34] = "MENU_ITEM_TALENT_2_TITLE";
	items[35] = "MENU_ITEM_TALENT_2_SKILL";
	items[36] = "MENU_ITEM_TALENT_2";
	items[37] = "MENU_ITEM_TALENT_3_TITLE";
	items[38] = "MENU_ITEM_TALENT_3_SKILL";
	items[39] = "MENU_ITEM_TALENT_3";
	items[40] = "MENU_ITEM_TALENT_4_TITLE";
	items[41] = "MENU_ITEM_TALENT_4_SKILL";
	items[42] = "MENU_ITEM_TALENT_4";
	items[43] = "MENU_ITEM_TALENT_5_TITLE";
	items[44] = "MENU_ITEM_TALENT_5_SKILL";
	items[45] = "MENU_ITEM_TALENT_6_TITLE";
	items[46] = "MENU_ITEM_TALENT_6_SKILL";
	items[47] = "MENU_ITEM_TALENT_7_TITLE";
	items[48] = "MENU_ITEM_TALENT_7_SKILL";
	items[49] = "MENU_ITEM_TALENT_8_TITLE";
	items[50] = "MENU_ITEM_TALENT_8_SKILL";
	items[51] = "MENU_ITEM_TALENT_9_TITLE";
	items[52] = "MENU_ITEM_TALENT_9_SKILL";
	items[53] = "MENU_ITEM_TALENT_10_TITLE";
	items[54] = "MENU_ITEM_TALENT_10_SKILL";
	items[55] = "MENU_ITEM_TALENT_11_TITLE";
	items[56] = "MENU_ITEM_TALENT_11_SKILL";
	items[57] = "MENU_ITEM_TALENT_12_TITLE";
	items[58] = "MENU_ITEM_TALENT_12_SKILL";
	items[59] = "MENU_ITEM_TALENT_13_TITLE";
	items[60] = "MENU_ITEM_TALENT_13_SKILL";
	items[61] = "MENU_ITEM_TALENT_13";
	items[62] = "MENU_ITEM_TALENT_14_TITLE";
	items[63] = "MENU_ITEM_TALENT_14_SKILL";
	items[64] = "MENU_ITEM_TALENT_15_TITLE";
	items[65] = "MENU_ITEM_TALENT_15_SKILL";
	items[66] = "MENU_ITEM_TALENT_15";
	items[67] = "MENU_ITEM_TALENT_16_TITLE";
	items[68] = "MENU_ITEM_TALENT_16_SKILL";
	items[69] = "MENU_ITEM_TALENT_16";
	items[70] = "MENU_ITEM_TALENT_17_TITLE";
	items[71] = "MENU_ITEM_TALENT_17_SKILL";
	items[72] = "MENU_ITEM_TALENT_18_TITLE";
	items[73] = "MENU_ITEM_TALENT_18_SKILL";
	items[74] = "MENU_ITEM_TALENT_19_TITLE";
	items[75] = "MENU_ITEM_TALENT_19_SKILL";
	items[76] = "MENU_ITEM_TALENT_20_TITLE";
	items[77] = "MENU_ITEM_TALENT_20_SKILL";
	items[78] = "MENU_ITEM_TALENT_21_TITLE";
	items[79] = "MENU_ITEM_TALENT_21_SKILL";
	
	dimx = 8192;
	dimy = 8192;
	flags = flags | MENU_OVERTOP | MENU_NOANI;
	backpic = STAT_BACK_PIC;
};

const int STAT_A_X1 = 500;
const int STAT_A_X2 = 2300;
const int STAT_A_X3 = 2950;
const int STAT_A_X4 = 3400;
const int STAT_B_X1 = 3800;
const int STAT_B_X2 = 6000;
const int STAT_B_X3 = 7200;
const int STAT_B_X4 = 7700;
const int STAT_PLYHEAD_Y = 600;
const int STAT_PLY_Y = 1050;
const int STAT_ATRHEAD_Y = 3650;
const int STAT_ATR_Y = 4100;
const int STAT_ARMHEAD_Y = 5900;
const int STAT_ARM_Y = 6350;
const int STAT_TALHEAD_Y = 600;
const int STAT_TAL_Y = 1050;
const int STAT_DY = 300;
const int STAT_DSY = 200;

/// HEADING
instance MENU_ITEM_STATUS_HEADING(C_MENU_ITEM_DEF)
{
	text[0] = "POSTAÆ";
	posx = STAT_A_X1;
	posy = STAT_PLYHEAD_Y;
	dimx = STAT_A_X4 - STAT_A_X1;
	dimy = STAT_DY;
	fontname = STAT_FONT_DEFAULT;
	flags = (flags & ~IT_SELECTABLE) | IT_TXT_CENTER;
};

instance MENU_ITEM_TALENT_21_TITLE(C_MENU_ITEM_DEF)	/// difficulty
{
	posx = STAT_A_X1;
	posy = STAT_PLY_Y + (STAT_DY * 0);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_21_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X2;
	posy = STAT_PLY_Y + (STAT_DY * 0);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_20_TITLE(C_MENU_ITEM_DEF)	/// chapter
{
	posx = STAT_A_X1;
	posy = STAT_PLY_Y + (STAT_DY * 1);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_20_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X2;
	posy = STAT_PLY_Y + (STAT_DY * 1);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_PLAYERGUILD(C_MENU_ITEM_DEF)	/// guild
{
	posx = STAT_A_X1;
	posy = STAT_PLY_Y + (STAT_DY * 2);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
/*
instance MENU_ITEM_TALENT_20_TITLE(C_MENU_ITEM_DEF)	/// guild
{
	posx = STAT_A_X1;
	posy = STAT_PLY_Y + (STAT_DY * 2);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_20_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X1;
	posy = STAT_PLY_Y + (STAT_DY * 2);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
*/
instance MENU_ITEM_LEVEL_TITLE(C_MENU_ITEM_DEF)	/// level
{
	posx = STAT_A_X1;
	posy = STAT_PLY_Y + (STAT_DY * 3) + STAT_DSY;
	text[0] = "Poz. postaci:";
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_LEVEL(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X2;
	posy = STAT_PLY_Y + (STAT_DY * 3) + STAT_DSY;
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_EXP_TITLE(C_MENU_ITEM_DEF)	/// exp
{
	posx = STAT_A_X1;
	posy = STAT_PLY_Y + (STAT_DY * 4) + STAT_DSY;
	text[0] = "Doœw.:";
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_EXP(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X2;
	posy = STAT_PLY_Y + (STAT_DY * 4) + STAT_DSY;
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_LEVEL_NEXT_TITLE(C_MENU_ITEM_DEF)	/// expnext
{
	posx = STAT_A_X1;
	posy = STAT_PLY_Y + (STAT_DY * 5) + STAT_DSY;
	text[0] = "Nast. poziom:";
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_LEVEL_NEXT(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X2;
	posy = STAT_PLY_Y + (STAT_DY * 5) + STAT_DSY;
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_LEARN_TITLE(C_MENU_ITEM_DEF)	/// lp
{
	posx = STAT_A_X1;
	posy = STAT_PLY_Y + (STAT_DY * 6) + STAT_DSY;
	text[0] = "Punkty nauki:";
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_LEARN(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X2;
	posy = STAT_PLY_Y + (STAT_DY * 6) + STAT_DSY;
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

/// ATTRIBUTE_HEADING
instance MENU_ITEM_ATTRIBUTE_HEADING(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X1;
	posy = STAT_ATRHEAD_Y;
	dimx = STAT_A_X4 - STAT_A_X1;
	dimy = STAT_DY;
	text[0] = "ATRYBUTY";
	fontname = STAT_FONT_DEFAULT;
	flags = (flags & ~IT_SELECTABLE) | IT_TXT_CENTER;
};

instance MENU_ITEM_ATTRIBUTE_4_TITLE(C_MENU_ITEM_DEF)	/// hp
{
	posx = STAT_A_X1;
	posy = STAT_ATR_Y + (STAT_DY * 0);
	text[0] = "¯ycie:";
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_ATTRIBUTE_4(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X2;
	posy = STAT_ATR_Y + (STAT_DY * 0);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_ATTRIBUTE_3_TITLE(C_MENU_ITEM_DEF)	/// mana
{
	posx = STAT_A_X1;
	posy = STAT_ATR_Y + (STAT_DY * 1);
	text[0] = "Mana:";
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_ATTRIBUTE_3(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X2;
	posy = STAT_ATR_Y + (STAT_DY * 1);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_ATTRIBUTE_1_TITLE(C_MENU_ITEM_DEF)	/// str
{
	posx = STAT_A_X1;
	posy = STAT_ATR_Y + (STAT_DY * 2);
	text[0] = "Si³a:";
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_ATTRIBUTE_1(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X2;
	posy = STAT_ATR_Y + (STAT_DY * 2);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_ATTRIBUTE_2_TITLE(C_MENU_ITEM_DEF)	/// dex
{
	posx = STAT_A_X1;
	posy = STAT_ATR_Y + (STAT_DY * 3);
	text[0] = "Zrêcznoœæ:";
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_ATTRIBUTE_2(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X2;
	posy = STAT_ATR_Y + (STAT_DY * 3);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_ATTRIBUTE_POWER_TITLE(C_MENU_ITEM_DEF)	/// power
{
	posx = STAT_A_X1;
	posy = STAT_ATR_Y + (STAT_DY * 4);
	text[0] = "Moc zaklêæ:";
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_7(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X2;
	posy = STAT_ATR_Y + (STAT_DY * 4);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

/// ARMOR_HEADING
instance MENU_ITEM_ARMOR_HEADING(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X1;
	posy = STAT_ARMHEAD_Y;
	dimx = STAT_A_X4 - STAT_A_X1;
	dimy = STAT_DY;
	text[0] = "OCHRONA";
	fontname = STAT_FONT_DEFAULT;
	flags = (flags & ~IT_SELECTABLE) | IT_TXT_CENTER;
};

instance MENU_ITEM_ARMOR_1_TITLE(C_MENU_ITEM_DEF)	/// edge
{
	posx = STAT_A_X1;
	posy = STAT_ARM_Y + (STAT_DY * 0);
	text[0] = "Broñ:";
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_ARMOR_1(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X3;
	posy = STAT_ARM_Y + (STAT_DY * 0);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_ARMOR_2_TITLE(C_MENU_ITEM_DEF)	/// point
{
	posx = STAT_A_X1;
	posy = STAT_ARM_Y + (STAT_DY * 1);
	text[0] = "Pociski:";
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_ARMOR_2(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X3;
	posy = STAT_ARM_Y + (STAT_DY * 1);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_ARMOR_3_TITLE(C_MENU_ITEM_DEF)	/// fire
{
	posx = STAT_A_X1;
	posy = STAT_ARM_Y + (STAT_DY * 2);
	text[0] = "Smoczy ogieñ:";
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_ARMOR_3(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X3;
	posy = STAT_ARM_Y + (STAT_DY * 2);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_ARMOR_4_TITLE(C_MENU_ITEM_DEF)	/// magic
{
	posx = STAT_A_X1;
	posy = STAT_ARM_Y + (STAT_DY * 3);
	text[0] = "Magia:";
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_ARMOR_4(C_MENU_ITEM_DEF)
{
	posx = STAT_A_X3;
	posy = STAT_ARM_Y + (STAT_DY * 3);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

/// TALENTS_HEADING
instance MENU_ITEM_TALENTS_HEADING(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X1;
	posy = STAT_TALHEAD_Y;
	dimx = STAT_B_X4 - STAT_B_X1;
	dimy = STAT_DY;
	text[0] = "UMIEJÊTNOŒCI";
	fontname = STAT_FONT_DEFAULT;
	flags = (flags & ~IT_SELECTABLE) | IT_TXT_CENTER;
};

instance MENU_ITEM_TALENT_1_TITLE(C_MENU_ITEM_DEF)	/// 1h
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (0 * STAT_DY + 0 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_1_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (0 * STAT_DY + 0 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_1(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X3;
	posy = STAT_TAL_Y + (0 * STAT_DY + 0 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_TALENT_2_TITLE(C_MENU_ITEM_DEF)	/// 2h
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (1 * STAT_DY + 0 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_2_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (1 * STAT_DY + 0 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_2(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X3;
	posy = STAT_TAL_Y + (1 * STAT_DY + 0 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_TALENT_3_TITLE(C_MENU_ITEM_DEF)	/// bow
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (2 * STAT_DY + 0 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_3_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (2 * STAT_DY + 0 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_3(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X3;
	posy = STAT_TAL_Y + (2 * STAT_DY + 0 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_TALENT_4_TITLE(C_MENU_ITEM_DEF)	/// cbow
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (3 * STAT_DY + 0 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_4_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (3 * STAT_DY + 0 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_4(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X3;
	posy = STAT_TAL_Y + (3 * STAT_DY + 0 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_10_TITLE(C_MENU_ITEM_DEF)	/// shield or dual swords
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (4 * STAT_DY + 0 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_10_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (4 * STAT_DY + 0 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_TALENT_7_TITLE(C_MENU_ITEM_DEF)	/// magic circle
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (5 * STAT_DY + 1 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_7_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (5 * STAT_DY + 1 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_14_TITLE(C_MENU_ITEM_DEF)	/// enchanting
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (6 * STAT_DY + 1 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_14_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (6 * STAT_DY + 1 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_17_TITLE(C_MENU_ITEM_DEF)	/// language
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (7 * STAT_DY + 1 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_17_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (7 * STAT_DY + 1 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_TALENT_8_TITLE(C_MENU_ITEM_DEF)	/// sneak
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (8 * STAT_DY + 2 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_8_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (8 * STAT_DY + 2 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_9_TITLE(C_MENU_ITEM_DEF)	/// longrun
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (9 * STAT_DY + 2 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_9_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (9 * STAT_DY + 2 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_11_TITLE(C_MENU_ITEM_DEF)	/// acrobatic
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (10 * STAT_DY + 2 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_11_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (10 * STAT_DY + 2 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_TALENT_5_TITLE(C_MENU_ITEM_DEF)	/// picklock
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (11 * STAT_DY + 3 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_5_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (11 * STAT_DY + 3 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_6_TITLE(C_MENU_ITEM_DEF)	/// pickpocket
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (12 * STAT_DY + 3 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_6_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (12 * STAT_DY + 3 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_12_TITLE(C_MENU_ITEM_DEF)	/// persuasion
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (13 * STAT_DY + 3 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_12_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (13 * STAT_DY + 3 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_TALENT_13_TITLE(C_MENU_ITEM_DEF)	/// smith
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (14 * STAT_DY + 4 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_13_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (14 * STAT_DY + 4 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_13(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X3;
	posy = STAT_TAL_Y + (14 * STAT_DY + 4 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_15_TITLE(C_MENU_ITEM_DEF)	/// alchemy
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (15 * STAT_DY + 4 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_15_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (15 * STAT_DY + 4 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_15(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X3;
	posy = STAT_TAL_Y + (15 * STAT_DY + 4 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_16_TITLE(C_MENU_ITEM_DEF)	/// hunting
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (16 * STAT_DY + 4 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_16_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (16 * STAT_DY + 4 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_16(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X3;
	posy = STAT_TAL_Y + (16 * STAT_DY + 4 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_18_TITLE(C_MENU_ITEM_DEF)	/// cooking
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (17 * STAT_DY + 4 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_18_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (17 * STAT_DY + 4 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_19_TITLE(C_MENU_ITEM_DEF)	/// prot poison
{
	posx = STAT_B_X1;
	posy = STAT_TAL_Y + (18 * STAT_DY + 4 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
instance MENU_ITEM_TALENT_19_SKILL(C_MENU_ITEM_DEF)
{
	posx = STAT_B_X2;
	posy = STAT_TAL_Y + (18 * STAT_DY + 4 * STAT_DSY);
	fontname = STAT_FONT_DEFAULT;
	flags = flags & ~IT_SELECTABLE;
};
