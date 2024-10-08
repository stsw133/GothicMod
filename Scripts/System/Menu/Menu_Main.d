///******************************************************************************************
/// Main
///******************************************************************************************
instance MENU_MAIN (C_MENU_DEF)
{
	backpic = MENU_BACK_PIC;
	musictheme = "SYS_Menu";
	items[0] = "MENUITEM_MAIN_HEADLINE";
	items[1] = "MENUITEM_MAIN_HEADLINE2";
	items[2] = "MENUITEM_MAIN_NEWGAME";
	items[3] = "MENUITEM_MAIN_SAVEGAME_LOAD";
	items[4] = "MENUITEM_MAIN_SAVEGAME_SAVE";
	items[5] = "MENUITEM_MAIN_RESUME";
	items[6] = "MENUITEM_MAIN_OPTIONS";
	items[7] = "MENUITEM_MAIN_INTRO";
	items[8] = "MENUITEM_MAIN_CREDITS";
	items[9] = "MENUITEM_MAIN_EXIT";
	defaultoutgame = 2;
	defaultingame = 4;
	flags = flags | MENU_SHOW_INFO;
};

const int MENU_MAIN_Y = 2500;
const int MENU_MAIN_DY = 550;

///******************************************************************************************
instance MENUITEM_MAIN_HEADLINE (C_MENU_ITEM_DEF)
{
	//backpic = "menu_gothicshadow.tga";
	posx = 200;
	posy = 200;
	dimx = 7800;
	dimy = 2400;
	alphamode = "BLEND";
	alpha = 220;
	flags = flags | IT_TXT_CENTER;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_MAIN_HEADLINE2 (C_MENU_ITEM_DEF)
{
	backpic = "menu_gothic.tga";
	posx = 200;
	posy = 200;
	dimx = 7800;
	dimy = 2400;
	alphamode = "BLEND";
	alpha = 255;
	flags = flags | IT_TXT_CENTER;
	flags = flags & ~IT_SELECTABLE;
};

func int showintro()
{
	PlayVideo("intro.bik");
	return true;
};

func int showcredits()
{
	PlayVideo("credits.bik");
	return true;
};

///******************************************************************************************
instance MENUITEM_MAIN_NEWGAME (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Nowa gra";
//	text[1] = "Rozpocznij now� przygod�";
	posx = 0;
	posy = MENU_MAIN_Y + (MENU_MAIN_DY * 0);
	dimx = 8192;
	dimy = 750;
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_NEWGAME";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_MAIN_SAVEGAME_LOAD (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Wczytaj";
//	text[1] = "Kontynuuj zapisan� gr�";
	posx = 0;
	posy = MENU_MAIN_Y + (MENU_MAIN_DY * 1);
	dimx = 8192;
	dimy = 750;
	onselaction_s[0] = "MENU_SAVEGAME_LOAD";
	onselaction[0] = SEL_ACTION_STARTMENU;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_MAIN_SAVEGAME_SAVE (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Zapisz";
//	text[1] = "Zapisz obecny stan rozgrywki";
	posx = 0;
	posy = MENU_MAIN_Y + (MENU_MAIN_DY * 2);
	dimx = 8192;
	dimy = 750;
	onselaction_s[0] = "MENU_SAVEGAME_SAVE";
	onselaction[0] = SEL_ACTION_STARTMENU;
	flags = flags | IT_TXT_CENTER | IT_ONLY_IN_GAME;
};

instance MENUITEM_MAIN_RESUME (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Wzn�w";
//	text[1] = "Wzn�w trwaj�c� rozgrywk�";
	posx = 0;
	posy = MENU_MAIN_Y + (MENU_MAIN_DY * 3);
	dimx = 8192;
	dimy = 750;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER | IT_ONLY_IN_GAME;
};

instance MENUITEM_MAIN_OPTIONS (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Opcje";
//	text[1] = "Ustawienia rozgrywki, d�wi�ku i grafiki.";
	posx = 0;
	posy = MENU_MAIN_Y + (MENU_MAIN_DY * 4);
	dimx = 8192;
	dimy = 750;
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_OPTIONS";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_MAIN_INTRO (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Wprowadzenie";
//	text[1] = "Odtw�rz film wprowadzaj�cy";
	posx = 0;
	posy = MENU_MAIN_Y + (MENU_MAIN_DY * 5);
	dimx = 8192;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	oneventaction[1] = showintro;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_MAIN_CREDITS (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Tw�rcy gry";
//	text[1] = "Lista tw�rc�w gry";
	posx = 0;
	posy = MENU_MAIN_Y + (MENU_MAIN_DY * 6);
	dimx = 8192;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	oneventaction[1] = showcredits;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_MAIN_EXIT (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Wyjd�";
//	text[1] = "Powr�t do systemu Windows";
	posx = 0;
	posy = MENU_MAIN_Y + (MENU_MAIN_DY * 7);
	dimx = 8192;
	dimy = 750;
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_LEAVE_GAME";
	flags = flags | IT_TXT_CENTER;
};
