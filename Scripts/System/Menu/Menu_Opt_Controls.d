///******************************************************************************************
/// Control options
///******************************************************************************************
instance MENU_OPT_CONTROLS (C_MENU_DEF)
{
	backpic = MENU_BACK_PIC;
	items[0] = "MENU_ITEM_CHG_KEYS_HEADLINE";
	items[1] = "MENU_ITEM_KEY_UP";
	items[2] = "MENU_ITEM_INP_UP";
	items[3] = "MENU_ITEM_KEY_DOWN";
	items[4] = "MENU_ITEM_INP_DOWN";
	items[5] = "MENU_ITEM_KEY_LEFT";
	items[6] = "MENU_ITEM_INP_LEFT";
	items[7] = "MENU_ITEM_KEY_RIGHT";
	items[8] = "MENU_ITEM_INP_RIGHT";
	items[9] = "MENU_ITEM_KEY_STRAFE_LEFT";
	items[10] = "MENU_ITEM_INP_STRAFE_LEFT";
	items[11] = "MENU_ITEM_KEY_STRAFE_RIGHT";
	items[12] = "MENU_ITEM_INP_STRAFE_RIGHT";
	items[13] = "MENU_ITEM_KEY_JUMPCLIMBSTRAFE";
	items[14] = "MENU_ITEM_INP_JUMPCLIMBSTRAFE";
	items[15] = "MENU_ITEM_KEY_RUNMODETOGGLE";
	items[16] = "MENU_ITEM_INP_RUNMODETOGGLE";
	items[17] = "MENU_ITEM_KEY_SNEAK";
	items[18] = "MENU_ITEM_INP_SNEAK";
	items[19] = "MENU_ITEM_KEY_ACTION";
	items[20] = "MENU_ITEM_INP_ACTION";
	items[21] = "MENU_ITEM_KEY_WEAPON";
	items[22] = "MENU_ITEM_INP_WEAPON";
	items[23] = "MENU_ITEM_KEY_MAP";
	items[24] = "MENU_ITEM_INP_MAP";
	items[25] = "MENU_ITEM_KEY_LOOK";
	items[26] = "MENU_ITEM_INP_LOOK";
	items[27] = "MENU_ITEM_KEY_LOOK_FP";
	items[28] = "MENU_ITEM_INP_LOOK_FP";
	items[29] = "MENU_ITEM_KEY_INVENTORY";
	items[30] = "MENU_ITEM_INP_INVENTORY";
	items[31] = "MENU_ITEM_KEY_SCREEN_STATUS";
	items[32] = "MENU_ITEM_INP_SCREEN_STATUS";
	items[33] = "MENU_ITEM_KEY_SCREEN_LOG";
	items[34] = "MENU_ITEM_INP_SCREEN_LOG";
	items[35] = "MENU_ITEM_NEXTMENU";
	items[36] = "MENU_ITEM_CHG_KEYS_SET_DEFAULT";
	items[37] = "MENU_ITEM_CHG_KEYS_SET_ALTERNATIVE";
	items[38] = "MENU_ITEM_CHG_KEYS_BACK";
	flags = flags | MENU_SHOW_INFO;
};

const int CTRL_SP1_1 = 600;
const int CTRL_SP1_2 = 3600;
const int CTRL_DIMX = 4600;
const int CTRL_Y_STEP = 260;
const int CTRL_Y_STEP2 = 180;
const int CTRL_Y_TITLE = 500;
const int CTRL_Y_START = 1020;
const int CTRL_GROUP1 = 0;
const int CTRL_GROUP2 = 180;
const int CTRL_GROUP3 = 360;
const int CTRL_GROUP4 = 540;
const int CTRL_GROUP5 = 720;
const int CTRL_GROUP6 = 900;
const int CTRL_GROUP7 = 1080;

///******************************************************************************************
instance MENU_ITEM_CHG_KEYS_HEADLINE (C_MENU_ITEM_DEF)
{
	text[0] = "USTAWIENIA KONTROLERA";
	type = MENU_ITEM_TEXT;
	posx = 0;
	posy = CTRL_Y_TITLE;
	dimx = 8100;
	fontname = MENU_FONT_BRIGHT;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

///******************************************************************************************
instance MENU_ITEM_KEY_UP (C_MENU_ITEM_DEF)
{
	text[0] = "Do przodu";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 0) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_UP";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_UP (C_MENU_ITEM_DEF)
{
	backpic = MENU_KBDINPUT_BACK_PIC;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	type = MENU_ITEM_INPUT;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 0) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	onchgsetoption = "keyUp";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_DOWN (C_MENU_ITEM_DEF)
{
	text[0] = "Do ty�u";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 1) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_DOWN";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_DOWN (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 1) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyDown";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_LEFT (C_MENU_ITEM_DEF)
{
	text[0] = "Skr�t w lewo";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 2) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_LEFT";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_LEFT (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 2) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyLeft";
	onchgsetoptionsection = "KEYS";
	flags = IT_CHROMAKEYED | IT_TRANSPARENT;
};

instance MENU_ITEM_KEY_RIGHT (C_MENU_ITEM_DEF)
{
	text[0] = "Skr�t w prawo";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 3) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_RIGHT";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_RIGHT (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 3) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyRight";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_STRAFE_LEFT (C_MENU_ITEM_DEF)
{
	text[0] = "Krok w lewo";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 4) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_STRAFE_LEFT";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_STRAFE_LEFT (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 4) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyStrafeLeft";
	onchgsetoptionsection = "KEYS";
	flags = IT_CHROMAKEYED | IT_TRANSPARENT;
};

instance MENU_ITEM_KEY_STRAFE_RIGHT (C_MENU_ITEM_DEF)
{
	text[0] = "Krok w prawo";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 5) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_STRAFE_RIGHT";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_STRAFE_RIGHT (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 5) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyStrafeRight";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_JUMPCLIMBSTRAFE (C_MENU_ITEM_DEF)
{
	text[0] = "Skok";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 6) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_JUMPCLIMBSTRAFE";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_JUMPCLIMBSTRAFE (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 6) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keySMove";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_RUNMODETOGGLE (C_MENU_ITEM_DEF)
{
	text[0] = "Ch�d/bieg";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 7) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_RUNMODETOGGLE";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_RUNMODETOGGLE (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 7) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keySlow";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_SNEAK (C_MENU_ITEM_DEF)
{
	text[0] = "Skradanie si�";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 8) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_SNEAK";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_SNEAK (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 8) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keySneak";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_ACTION (C_MENU_ITEM_DEF)
{
	text[0] = "Dzia�anie";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 9) + CTRL_GROUP2;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_ACTION";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_ACTION (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 9) + CTRL_GROUP2;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyAction";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_WEAPON (C_MENU_ITEM_DEF)
{
	text[0] = "Postawa bojowa";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 10) + CTRL_GROUP2;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_WEAPON";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_WEAPON (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 10) + CTRL_GROUP2;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyWeapon";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_MAP (C_MENU_ITEM_DEF)
{
	text[0] = "Mapa";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 11) + CTRL_GROUP2;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_MAP";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_MAP (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 11) + CTRL_GROUP2;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyShowMap";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_LOOK (C_MENU_ITEM_DEF)
{
	text[0] = "Rozgl�danie si�";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 12) + CTRL_GROUP3;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_LOOK";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_LOOK (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 12) + CTRL_GROUP3;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyLook";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_LOOK_FP (C_MENU_ITEM_DEF)
{
	text[0] = "Widok FPP";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 13) + CTRL_GROUP3;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_LOOK_FP";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_LOOK_FP (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 13) + CTRL_GROUP3;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyLookFP";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_INVENTORY (C_MENU_ITEM_DEF)
{
	text[0] = "Ekwipunek";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 14) + CTRL_GROUP4;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_INVENTORY";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_INVENTORY (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 14) + CTRL_GROUP4;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyInventory";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_SCREEN_STATUS (C_MENU_ITEM_DEF)
{
	text[0] = "Statystyki postaci";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 15) + CTRL_GROUP4;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_SCREEN_STATUS";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_SCREEN_STATUS (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 15) + CTRL_GROUP4;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyShowStatus";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_SCREEN_LOG (C_MENU_ITEM_DEF)
{
	text[0] = "Dziennik zada�";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 16) + CTRL_GROUP4;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_SCREEN_LOG";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_SCREEN_LOG (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 16) + CTRL_GROUP4;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyShowLog";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

///******************************************************************************************
/// Control options - extended
///******************************************************************************************
instance MENU_OPT_CONTROLS_EXTKEYS (C_MENU_DEF)
{
	backpic = MENU_BACK_PIC;
	items[0] = "MENU_ITEM_CHG_EXTKEYS_HEADLINE";
	items[1] = "MENU_ITEM_KEY_SPRINT";
	items[2] = "MENU_ITEM_INP_SPRINT";
	items[3] = "MENU_ITEM_KEY_NOANIMTAKE";
	items[4] = "MENU_ITEM_INP_NOANIMTAKE";
	items[5] = "MENU_ITEM_KEY_SHORTCUTS";
	items[6] = "MENU_ITEM_INP_SHORTCUTS";
	items[7] = "MENU_ITEM_KEY_INTERACT";
	items[8] = "MENU_ITEM_INP_INTERACT";
	items[9] = "MENU_ITEM_KEY_WEAPON_LEFT";
	items[10] = "MENU_ITEM_INP_WEAPON_LEFT";
	items[11] = "MENU_ITEM_KEY_WEAPON_RIGHT";
	items[12] = "MENU_ITEM_INP_WEAPON_RIGHT";
	items[13] = "MENU_ITEM_KEY_WEAPON_PARADE";
	items[14] = "MENU_ITEM_INP_WEAPON_PARADE";
	items[15] = "MENU_ITEM_KEY_LOCKFOCUS";
	items[16] = "MENU_ITEM_INP_LOCKFOCUS";
	items[17] = "MENU_ITEM_KEY_QUICKHEALTH";
	items[18] = "MENU_ITEM_INP_QUICKHEALTH";
	items[19] = "MENU_ITEM_KEY_QUICKMANA";
	items[20] = "MENU_ITEM_INP_QUICKMANA";
	items[21] = "MENU_ITEM_PREVMENU";
	items[22] = "MENU_ITEM_CHG_KEYS_SET_DEFAULT";
	items[23] = "MENU_ITEM_CHG_KEYS_SET_ALTERNATIVE";
	items[24] = "MENU_ITEM_CHG_KEYS_BACK";
	flags = flags | MENU_SHOW_INFO;
};

///******************************************************************************************
instance MENU_ITEM_CHG_EXTKEYS_HEADLINE (C_MENU_ITEM_DEF)
{
	text[0] = "STEROWANIE ZAAWANSOWANE";
	type = MENU_ITEM_TEXT;
	posx = 0;
	posy = CTRL_Y_TITLE;
	dimx = 8100;
	fontname = MENU_FONT_BRIGHT;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

///******************************************************************************************
instance MENU_ITEM_KEY_SPRINT (C_MENU_ITEM_DEF)
{
	text[0] = "Sprint";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 0) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_SPRINT";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_SPRINT (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 0) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keySprint";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_NOANIMTAKE (C_MENU_ITEM_DEF)
{
	text[0] = "Kradz. kiesz.";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 1) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_PICKPOCKET";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_NOANIMTAKE (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 1) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyNoAnimTake";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_SHORTCUTS (C_MENU_ITEM_DEF)
{
	text[0] = "Skr�ty";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 2) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_SHORTCUTS";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_SHORTCUTS (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 2) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyShortcuts";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_INTERACT (C_MENU_ITEM_DEF)
{
	text[0] = "Interakcja";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 3) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_INTERACT";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};
instance MENU_ITEM_INP_INTERACT (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 3) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyInteract";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_WEAPON_LEFT (C_MENU_ITEM_DEF)
{
	text[0] = "Atak z lewej";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 4) + CTRL_GROUP2;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_WEAPON_LEFT";
	fontname = MENU_FONT_SMALL;
	flags = flags;
	hideifoptionsectionset = "GAME";
	hideifoptionset = "useGothic1Controls";
	hideonvalue = 1;
};
instance MENU_ITEM_INP_WEAPON_LEFT (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 4) + CTRL_GROUP2;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyActionLeft";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
	hideifoptionsectionset = "GAME";
	hideifoptionset = "useGothic1Controls";
	hideonvalue = 1;
};

instance MENU_ITEM_KEY_WEAPON_RIGHT (C_MENU_ITEM_DEF)
{
	text[0] = "Atak z prawej";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 5) + CTRL_GROUP2;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_WEAPON_RIGHT";
	fontname = MENU_FONT_SMALL;
	flags = flags;
	hideifoptionsectionset = "GAME";
	hideifoptionset = "useGothic1Controls";
	hideonvalue = 1;
};
instance MENU_ITEM_INP_WEAPON_RIGHT (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 5) + CTRL_GROUP2;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyActionRight";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
	hideifoptionsectionset = "GAME";
	hideifoptionset = "useGothic1Controls";
	hideonvalue = 1;
};

instance MENU_ITEM_KEY_WEAPON_PARADE (C_MENU_ITEM_DEF)
{
	text[0] = "Blok";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 6) + CTRL_GROUP2;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_WEAPON_PARADE";
	fontname = MENU_FONT_SMALL;
	flags = flags;
	hideifoptionsectionset = "GAME";
	hideifoptionset = "useGothic1Controls";
	hideonvalue = 1;
};
instance MENU_ITEM_INP_WEAPON_PARADE (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 6) + CTRL_GROUP2;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyParade";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
	hideifoptionsectionset = "GAME";
	hideifoptionset = "useGothic1Controls";
	hideonvalue = 1;
};

instance MENU_ITEM_KEY_LOCKFOCUS (C_MENU_ITEM_DEF)
{
	text[0] = "Zablokowanie widoku";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 7) + CTRL_GROUP2;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_LOCKFOCUS";
	fontname = MENU_FONT_SMALL;
	flags = flags;
	hideifoptionsectionset = "GAME";
	hideifoptionset = "useGothic1Controls";
	hideonvalue = 1;
};
instance MENU_ITEM_INP_LOCKFOCUS (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 7) + CTRL_GROUP2;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyLockTarget";
	onchgsetoptionsection = "KEYS";
	hideifoptionsectionset = "GAME";
	hideifoptionset = "useGothic1Controls";
	hideonvalue = 1;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_KEY_QUICKHEALTH (C_MENU_ITEM_DEF)
{
	text[0] = "Mikstura lecznicza";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 8) + CTRL_GROUP3;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_QUICKHEALTH";
	fontname = MENU_FONT_SMALL;
	flags = flags;
	hideifoptionsectionset = "GAME";
	hideifoptionset = "usePotionKeys";
	hideonvalue = 0;
};
instance MENU_ITEM_INP_QUICKHEALTH (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 8) + CTRL_GROUP3;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyHeal";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
	hideifoptionsectionset = "GAME";
	hideifoptionset = "usePotionKeys";
	hideonvalue = 0;
};

instance MENU_ITEM_KEY_QUICKMANA (C_MENU_ITEM_DEF)
{
	text[0] = "Mikstura many";
	text[1] = "[Del] anuluje wyb�r, [Enter] zatwierdza nowy.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 9) + CTRL_GROUP3;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_QUICKMANA";
	fontname = MENU_FONT_SMALL;
	flags = flags;
	hideifoptionsectionset = "GAME";
	hideifoptionset = "usePotionKeys";
	hideonvalue = 0;
};
instance MENU_ITEM_INP_QUICKMANA (C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = "Wci�nij klawisz maj�cy odpowiada� za dan� czynno��.";
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 9) + CTRL_GROUP3;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_KBDINPUT_BACK_PIC;
	onchgsetoption = "keyPotion";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
	hideifoptionsectionset = "GAME";
	hideifoptionset = "usePotionKeys";
	hideonvalue = 0;
};

///******************************************************************************************
/// Control options - shared
///******************************************************************************************
instance MENU_ITEM_PREVMENU (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Wi�cej klawiszy...";
	text[1] = "Konfiguracja poprzednich klawiszy";
	posx = CTRL_SP1_1 + 2500;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 17) + CTRL_GROUP5;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	onselaction_s[0] = "MENU_OPT_CONTROLS";
	onselaction[0] = SEL_ACTION_STARTMENU;
	flags = flags | IT_TXT_CENTER;
};

instance MENU_ITEM_NEXTMENU (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Wi�cej klawiszy...";
	text[1] = "Konfiguracja dalszych klawiszy";
	posx = CTRL_SP1_1 + 2500;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 17) + CTRL_GROUP5;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	onselaction_s[0] = "MENU_OPT_CONTROLS_EXTKEYS";
	onselaction[0] = SEL_ACTION_STARTMENU;
	flags = flags | IT_TXT_CENTER;
};

///******************************************************************************************
instance MENU_ITEM_CHG_KEYS_SET_DEFAULT (C_MENU_ITEM_DEF)
{
	text[0] = "Ustawienia domy�lne";
	text[1] = "Przywr�cenie ustawie� domy�lnych";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 18) + CTRL_GROUP6;
	dimy = 300;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "SETDEFAULT";
	fontname = MENU_FONT_SMALL;
	flags = flags | IT_TXT_CENTER;
};

instance MENU_ITEM_CHG_KEYS_SET_ALTERNATIVE (C_MENU_ITEM_DEF)
{
	text[0] = "Ustawienia alternatywne";
	text[1] = "Wyb�r alternatywnych ustawie� sterowania";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 19) + CTRL_GROUP6;
	dimy = 300;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "SETALTERNATIVE";
	fontname = MENU_FONT_SMALL;
	flags = flags | IT_TXT_CENTER;
};

instance MENU_ITEM_CHG_KEYS_BACK (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Wr��";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 20) + CTRL_GROUP7;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER;
};
