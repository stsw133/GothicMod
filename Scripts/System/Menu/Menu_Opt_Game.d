///******************************************************************************************
/// Game options
///******************************************************************************************
instance MENU_OPT_GAME (C_MENU_DEF)
{
	backpic = MENU_BACK_PIC;
	items[0] = "MENUITEM_GAME_HEADLINE";
	items[1] = "MENUITEM_GAME_SUB_TITLES";
	items[2] = "MENUITEM_GAME_SUB_TITLES_CHOICE";
	items[3] = "MENUITEM_GAME_FIGHTFOCUS";
	items[4] = "MENUITEM_GAME_FIGHTFOCUS_CHOICE";
	items[5] = "MENUITEM_GAME_INTERACTFOCUS";
	items[6] = "MENUITEM_GAME_INTERACTFOCUS_CHOICE";
	items[7] = "MENUITEM_GAME_LOOKAROUND_INVERSE";
	items[8] = "MENUITEM_GAME_LOOKAROUND_INVERSE_CHOICE";
	items[9] = "MENUITEM_M";
	items[10] = "MENUITEM_M_CHOICE";
	items[11] = "MENUITEM_MSENSITIVITY";
	items[12] = "MENUITEM_MSENSITIVITY_SLIDER";
	items[13] = "MENUITEM_GAME_OLDCONTROLS";
	items[14] = "MENUITEM_GAME_OLDCONTROLS_CHOICE";
	items[15] = "MENUITEM_NEXTMENU";
	items[16] = "MENUITEM_GAME_BACK";
	flags = flags | MENU_SHOW_INFO;
};

///******************************************************************************************
instance MENUITEM_GAME_HEADLINE (C_MENU_ITEM_DEF)
{
	text[0] = "USTAWIENIA GRY";
	type = MENU_ITEM_TEXT;
	posx = 0;
	posy = MENU_TITLE_Y;
	dimx = 8192;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

///******************************************************************************************
instance MENUITEM_GAME_SUB_TITLES (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Podpisy";
	text[1] = "W³¹czenie/wy³¹czenie podpisów przy dialogach";
	posx = 500;
	posy = MENU_START_Y + (MENU_SOUND_DY * 0);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_GAME_SUB_TITLES_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_SOUND_DY * 0) + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "subTitles";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_GAME_FIGHTFOCUS (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Oznaczanie celów";
	text[1] = "W³./wy³. wyró¿niania bie¿¹cego celu w czasie walki";
	posx = 500;
	posy = MENU_START_Y + (MENU_SOUND_DY * 1);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_GAME_FIGHTFOCUS_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Okienko|Podœwietlenie|Oba";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_SOUND_DY * 1) + MENU_CHOICE_YPLUS;
	dimx = 2000;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "highlightMeleeFocus";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_GAME_INTERACTFOCUS (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Podœwietlanie obiektów";
	text[1] = "W³./wy³. podœwietlania przedmiotów w polu widzenia";
	posx = 500;
	posy = MENU_START_Y + (MENU_SOUND_DY * 2);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_GAME_INTERACTFOCUS_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_SOUND_DY * 2) + MENU_CHOICE_YPLUS;
	dimx = 2000;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "highlightInteractFocus";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_GAME_LOOKAROUND_INVERSE (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Zmiana pracy kamery";
	text[1] = "W³¹czenie/wy³¹czenie odwróconych ruchów kamery";
	posx = 500;
	posy = MENU_START_Y + (MENU_SOUND_DY * 3);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_GAME_LOOKAROUND_INVERSE_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_SOUND_DY * 3) + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "camLookaroundInverse";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_M (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Myszka w grze";
	text[1] = "Korzystanie z myszki";
	posx = 500;
	posy = MENU_START_Y + (MENU_SOUND_DY * 4);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_M_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_SOUND_DY * 4) + MENU_CHOICE_YPLUS;
	dimx = 2000;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "enableMouse";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_MSENSITIVITY (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Czu³oœæ myszy";
	text[1] = "Ustawienie czu³oœci myszy";
	posx = 500;
	posy = MENU_START_Y + (MENU_SOUND_DY * 5);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_MSENSITIVITY_SLIDER (C_MENU_ITEM_DEF)
{
	backpic = MENU_SLIDER_BACK_PIC;
	type = MENU_ITEM_SLIDER;
	text[0] = "";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_SOUND_DY * 5) + MENU_SLIDER_YPLUS;
	dimx = 2000;
	dimy = MENU_SLIDER_DY;
	onchgsetoption = "mouseSensitivity";
	onchgsetoptionsection = "GAME";
	userfloat[0] = 20;
	userstring[0] = MENU_SLIDER_POS_PIC;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_GAME_OLDCONTROLS (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Sterowanie z Gothic I";
	text[1] = "Wykorzystanie sposobu sterowania z Gothic I";
	posx = 500;
	posy = MENU_START_Y + (MENU_SOUND_DY * 6);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_GAME_OLDCONTROLS_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_SOUND_DY * 6) + MENU_CHOICE_YPLUS;
	dimx = 2000;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "useGothic1Controls";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_NEXTMENU (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Wiêcej ustawieñ...";
	text[1] = "Konfiguracja dalszych ustawieñ";
	posx = 3000;
	posy = MENU_START_Y + (MENU_SOUND_DY * 7) + 100;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	onselaction_s[0] = "MENU_OPT_GAME_EXTOPTIONS";
	onselaction[0] = SEL_ACTION_STARTMENU;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_GAME_BACK (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Wróæ";
	posx = 1000;
	posy = MENU_BACK_Y + 300;
	dimx = 6192;
	dimy = MENU_SOUND_DY;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER;
};

///******************************************************************************************
/// Game options - extended
///******************************************************************************************
instance MENU_OPT_GAME_EXTOPTIONS (C_MENU_DEF)
{
	backpic = MENU_BACK_PIC;
	items[0] = "MENUITEM_GAME_HEADLINE";
	items[1] = "MENUITEM_GAME_ANIWIN";
	items[2] = "MENUITEM_GAME_ANIWIN_CHOICE";
	items[3] = "MENUITEM_GAME_NOANIMTAKE";
	items[4] = "MENUITEM_GAME_NOANIMTAKE_CHOICE";
	items[5] = "MENUITEM_GAME_BACK";
	flags = flags | MENU_SHOW_INFO;
};

///******************************************************************************************
instance MENUITEM_GAME_ANIWIN (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Animowane okna";
	text[1] = "W³¹czenie/wy³¹czenie animacji miêdzy dialogami";
	posx = 500;
	posy = MENU_START_Y + (MENU_SOUND_DY * 0);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_GAME_ANIWIN_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_SOUND_DY * 0) + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "animatedWindows";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_GAME_NOANIMTAKE (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Podnoszenie bez anim.";
	text[1] = "W³¹czenie/wy³¹czenie podnoszenia przedmiotów bez animacji";
	posx = 500;
	posy = MENU_START_Y + (MENU_SOUND_DY * 1);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_GAME_NOANIMTAKE_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_SOUND_DY * 1) + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "noAnimTake";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};
