///******************************************************************************************
/// NewGame
///******************************************************************************************
instance MENU_NEWGAME (C_MENU_DEF)
{
	backpic = MENU_BACK_PIC;
	items[0] = "MENUITEM_NEWGAME_HEADLINE";
	items[1] = "MENUITEM_NEWGAME_HERO";
	items[2] = "MENUITEM_NEWGAME_HERO_CHOICE";
	items[3] = "MENUITEM_NEWGAME_DIFF";
	items[4] = "MENUITEM_NEWGAME_DIFF_CHOICE";
	items[5] = "MENUITEM_NEWGAME_MOVIEMODE";
	items[6] = "MENUITEM_NEWGAME_MOVIEMODE_CHOICE";
	items[7] = "MENUITEM_NEWGAME_ACCEPT";
	items[8] = "MENUITEM_NEWGAME_BACK";
	defaultoutgame = 1;
	defaultingame = 1;
	flags = flags | MENU_SHOW_INFO;
};

///******************************************************************************************
instance MENUITEM_NEWGAME_HEADLINE (C_MENU_ITEM_DEF)
{
	text[0] = "NOWA GRA";
	type = MENU_ITEM_TEXT;
	posx = 0;
	posy = MENU_TITLE_Y;
	dimx = 8192;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

///******************************************************************************************
instance MENUITEM_NEWGAME_HERO (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Sk�rka postaci";
	text[1] = "Cz�� sk�rek dost�pna za osi�gni�cia";
	posx = 700;
	posy = MENU_START_Y + (MENU_DY * 0);
	dimx = 4700;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_NEWGAME_HERO_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "G1|GS|G2|Psi|Wied�min|Max Kayne";
	fontname = MENU_FONT_SMALL;
	posx = 5492;
	posy = MENU_START_Y + (MENU_DY * 0) + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "selectedHero";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_PERF_OPTION | IT_TXT_CENTER;
};

instance MENUITEM_NEWGAME_DIFF (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Poziom trudno�ci";
	text[1] = "Wp�ywa na zadawane i otrzymywane obra�enia";
	posx = 700;
	posy = MENU_START_Y + (MENU_DY * 1);
	dimx = 4700;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_NEWGAME_DIFF_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "�atwy|�redni|Trudny|B. trudny";
	fontname = MENU_FONT_SMALL;
	posx = 5492;
	posy = MENU_START_Y + (MENU_DY * 1) + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "difficulty";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_PERF_OPTION | IT_TXT_CENTER;
};

instance MENUITEM_NEWGAME_MOVIEMODE (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Tryb filmowy";
	text[1] = "Skr�ty klawiszowe i ustawienia pod machinim�";
	posx = 700;
	posy = MENU_START_Y + (MENU_DY * 2);
	dimx = 4700;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_NEWGAME_MOVIEMODE_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5492;
	posy = MENU_START_Y + (MENU_DY * 2) + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "movieMode";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_PERF_OPTION | IT_TXT_CENTER;
};

///******************************************************************************************
instance MENUITEM_NEWGAME_ACCEPT (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Potwierd�";
	text[1] = "Potwierd� rozpocz�cie nowej gry";
	posx = 1000;
	posy = MENU_START_Y + (MENU_DY * 5);
	dimx = 6192;
	dimy = MENU_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "NEW_GAME";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_NEWGAME_BACK (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Wr��";
	posx = 1000;
	posy = MENU_BACK_Y + 300;
	dimx = 6192;
	dimy = MENU_DY;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER;
};
