///******************************************************************************************
/// Exit
///******************************************************************************************
instance MENU_LEAVE_GAME(C_MENU_DEF)
{
	backpic = MENU_BACK_PIC;
	items[0] = "MENUITEM_LEAVE_GAME_HEADLINE";
	items[1] = "MENUITEM_LEAVE_GAME_YES";
	items[2] = "MENUITEM_LEAVE_GAME_NO";
	defaultoutgame = 2;
	defaultingame = 2;
	flags = flags | MENU_SHOW_INFO;
};

///******************************************************************************************
instance MENUITEM_LEAVE_GAME_HEADLINE(C_MENU_ITEM_DEF)
{
	text[0] = "Na pewno chcesz wyj��?";
	type = MENU_ITEM_TEXT;
	posx = 0;
	posy = 3000;
	dimx = 8192;
	dimy = 750;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_TXT_CENTER;
};

instance MENUITEM_LEAVE_GAME_YES(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Tak";
//	text[1] = "Jeszcze tu wr�c�!";
	posx = 0;
	posy = 4000;
	dimx = 8192;
	dimy = 750;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "LEAVE_GAME";
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_SELECTABLE | IT_TXT_CENTER;
};

instance MENUITEM_LEAVE_GAME_NO(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Nie";
//	text[1] = "Nie, chc� dalej gra�.";
	posx = 0;
	posy = 4600;
	dimx = 8192;
	dimy = 750;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_SELECTABLE | IT_TXT_CENTER;
};
