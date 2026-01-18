///******************************************************************************************
/// NewGame
///******************************************************************************************
instance MENU_NEWGAME (C_MENU_DEF)
{
	backpic = MENU_BACK_PIC;
	items[0] = "MENUITEM_NEWGAME_HEADLINE";
	items[1] = "MENUITEM_NEWGAME_HERO";
	items[2] = "MENUITEM_NEWGAME_HERO_CHOICE";
	items[3] = "MENUITEM_NEWGAME_MOVIEMODE";
	items[4] = "MENUITEM_NEWGAME_MOVIEMODE_CHOICE";
	items[5] = "MENUITEM_NEWGAME_DIFF";
	items[6] = "MENUITEM_NEWGAME_DIFF_CHOICE";
	items[7] = "MENUITEM_NEWGAME_CUSTOM";
	items[8] = "MENUITEM_NEWGAME_ACCEPT";
	items[9] = "MENUITEM_NEWGAME_BACK";
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
	text[0] = "Skórka postaci";
	text[1] = "Czêœæ skórek dostêpna za osi¹gniêcia";
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
	text[0] = "G1|GS|G2|Psi|WiedŸmin|Max Kayne";
	fontname = MENU_FONT_SMALL;
	posx = 5492;
	posy = MENU_START_Y + (MENU_DY * 0) + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "selectedHeroSkin";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_PERF_OPTION | IT_TXT_CENTER;
};

instance MENUITEM_NEWGAME_MOVIEMODE (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Tryb filmowy";
	text[1] = "Skróty klawiszowe i ustawienia pod machinimê";
	posx = 700;
	posy = MENU_START_Y + (MENU_DY * 1);
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
	posy = MENU_START_Y + (MENU_DY * 1) + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "movieMode";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_PERF_OPTION | IT_TXT_CENTER;
};

instance MENUITEM_NEWGAME_DIFF (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Poziom trudnoœci";
	text[1] = "Wp³ywa na zadawane i otrzymywane obra¿enia";
	posx = 700;
	posy = MENU_START_Y + (MENU_DY * 2);
	dimx = 4700;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
	//hideifoptionsectionset = "MOD";
	//hideifoptionset = "movieMode";
	//hideonvalue = 1;
};
instance MENUITEM_NEWGAME_DIFF_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "£atwy|Œredni|Trudny|B. trudny|W³asny";
	fontname = MENU_FONT_SMALL;
	posx = 5492;
	posy = MENU_START_Y + (MENU_DY * 2) + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "difficulty";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_PERF_OPTION | IT_TXT_CENTER;
	//hideifoptionsectionset = "MOD";
	//hideifoptionset = "movieMode";
	//hideonvalue = 1;
};

instance MENUITEM_NEWGAME_CUSTOM (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Dodatkowe opcje";
	text[1] = "Konfiguracja w asnego poziomu trudnoci";
	posx = 700;
	posy = MENU_START_Y + (MENU_DY * 3);
	dimx = 4700;
	dimy = 750;
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_NEWGAME_CUSTOM_OPTIONS";
	flags = flags;
	//hideifoptionsectionset = "MOD";
	//hideifoptionset = "movieMode";
	//hideonvalue = 1;
};

///******************************************************************************************
instance MENUITEM_NEWGAME_ACCEPT (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "PotwierdŸ";
	text[1] = "PotwierdŸ rozpoczêcie nowej gry";
	posx = 1000;
	posy = MENU_BACK_Y - (MENU_DY * 1);
	dimx = 6192;
	dimy = MENU_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "NEW_GAME";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_NEWGAME_BACK (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Wróæ";
	posx = 1000;
	posy = MENU_BACK_Y + 300;
	dimx = 6192;
	dimy = MENU_DY;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER;
};

///******************************************************************************************
/// Custom difficulty level options
///******************************************************************************************
instance MENU_NEWGAME_CUSTOM_OPTIONS (C_MENU_DEF)
{
	backpic = MENU_BACK_PIC;
	items[0] = "MENUITEM_NEWGAME_CUSTOM_HEADLINE";
	items[1] = "MENUITEM_NEWGAME_CUSTOM_DAMAGE_GIVEN";
	items[2] = "MENUITEM_NEWGAME_CUSTOM_DAMAGE_GIVEN_CHOICE";
	items[3] = "MENUITEM_NEWGAME_CUSTOM_DAMAGE_TAKEN";
	items[4] = "MENUITEM_NEWGAME_CUSTOM_DAMAGE_TAKEN_CHOICE";
	items[5] = "MENUITEM_NEWGAME_CUSTOM_STAMINA";
	items[6] = "MENUITEM_NEWGAME_CUSTOM_STAMINA_CHOICE";
	items[7] = "MENUITEM_NEWGAME_CUSTOM_NPC_DAMAGE";
	items[8] = "MENUITEM_NEWGAME_CUSTOM_NPC_DAMAGE_CHOICE";
	items[9] = "MENUITEM_NEWGAME_CUSTOM_SCROLLS";
	items[10] = "MENUITEM_NEWGAME_CUSTOM_SCROLLS_CHOICE";
	items[11] = "MENUITEM_NEWGAME_CUSTOM_BONUSES";
	items[12] = "MENUITEM_NEWGAME_CUSTOM_BONUSES_CHOICE";
	items[13] = "MENUITEM_NEWGAME_CUSTOM_FLEE";
	items[14] = "MENUITEM_NEWGAME_CUSTOM_FLEE_CHOICE";
	items[15] = "MENUITEM_NEWGAME_CUSTOM_IMMORTALITY";
	items[16] = "MENUITEM_NEWGAME_CUSTOM_IMMORTALITY_CHOICE";
	items[17] = "MENUITEM_NEWGAME_CUSTOM_REGEN";
	items[18] = "MENUITEM_NEWGAME_CUSTOM_REGEN_CHOICE";
	items[19] = "MENUITEM_NEWGAME_CUSTOM_BACK";
	flags = flags | MENU_SHOW_INFO;
};

const int MENU_NEWGAME_CUSTOM_DY = 400;

///******************************************************************************************
instance MENUITEM_NEWGAME_CUSTOM_HEADLINE (C_MENU_ITEM_DEF)
{
	text[0] = "W£ASNY POZIOM TRUDNOŒCI";
	type = MENU_ITEM_TEXT;
	posx = 0;
	posy = MENU_TITLE_Y;
	dimx = 8192;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

///******************************************************************************************
instance MENUITEM_NEWGAME_CUSTOM_DAMAGE_GIVEN (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Obra¿enia zadawane (%)";
	text[1] = "Mno¿nik zadawanych obra¿eñ";
	fontname = MENU_FONT_SMALL;
	posx = 500;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 0);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_NEWGAME_CUSTOM_DAMAGE_GIVEN_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "20%|40%|60%|80%|100%|120%|140%|160%|180%|200%|220%|240%|260%|280%|300%";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 0);
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "customDamageGivenPercent";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_NEWGAME_CUSTOM_DAMAGE_TAKEN (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Obra¿enia otrzymywane (%)";
	text[1] = "Mno¿nik obra¿eñ otrzymanych";
	fontname = MENU_FONT_SMALL;
	posx = 500;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 1);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_NEWGAME_CUSTOM_DAMAGE_TAKEN_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "20%|40%|60%|80%|100%|120%|140%|160%|180%|200%|220%|240%|260%|280%|300%";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 1);
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "customDamageTakenPercent";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_NEWGAME_CUSTOM_STAMINA (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Mechanika staminy";
	text[1] = "Czy brak staminy obni¿a obra¿enia i animacje";
	fontname = MENU_FONT_SMALL;
	posx = 500;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 2);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_NEWGAME_CUSTOM_STAMINA_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 2);
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "customStaminaPenaltyEnabled";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_NEWGAME_CUSTOM_NPC_DAMAGE (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Mniejsze obra¿enia miêdzy NPC";
	text[1] = "Redukcja obra¿eñ w walkach miêdzy NPC";
	fontname = MENU_FONT_SMALL;
	posx = 500;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 3);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_NEWGAME_CUSTOM_NPC_DAMAGE_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 3);
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "customNpcDamageReductionEnabled";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_NEWGAME_CUSTOM_SCROLLS (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Koszt zwojów";
	text[1] = "Czy zwoje kosztuj¹ 20% many runy czy 5 punktów";
	fontname = MENU_FONT_SMALL;
	posx = 500;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 4);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_NEWGAME_CUSTOM_SCROLLS_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "20% many runy|5 pkt many";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 4);
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "customScrollManaCostMode";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_NEWGAME_CUSTOM_BONUSES (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Bonusy za jedzenie i ksi¹zki";
	text[1] = "Sta³e premie za 1000 punktów jedzenia/lektury";
	fontname = MENU_FONT_SMALL;
	posx = 500;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 5);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_NEWGAME_CUSTOM_BONUSES_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 5);
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "customFoodAndBookBonusEnabled";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_NEWGAME_CUSTOM_FLEE (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Uciekaj¹cy NPC";
	text[1] = "Czy NPC mog¹ uciekaæ przed silniejszymi";
	fontname = MENU_FONT_SMALL;
	posx = 500;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 6);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_NEWGAME_CUSTOM_FLEE_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Tak|Nie";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 6);
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "customNpcFleeEnabled";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_NEWGAME_CUSTOM_IMMORTALITY (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Tryb nieœmiertelnoœci NPC";
	text[1] = "Flaga NPC_FLAG_IMMORTAL czy NPC_FLAG_IMPORTANT";
	fontname = MENU_FONT_SMALL;
	posx = 500;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 7);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_NEWGAME_CUSTOM_IMMORTALITY_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nieœmiertelni|Wa¿ni";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 7);
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "customImmortalityMode";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_NEWGAME_CUSTOM_REGEN (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Naturalna regeneracja";
	text[1] = "Czy aktywna jest regeneracja z krêgów magii i specjalnych buffów";
	fontname = MENU_FONT_SMALL;
	posx = 500;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 8);
	dimx = 5100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};
instance MENUITEM_NEWGAME_CUSTOM_REGEN_CHOICE (C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5692;
	posy = MENU_START_Y + (MENU_NEWGAME_CUSTOM_DY * 8);
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "customNaturalRegenEnabled";
	onchgsetoptionsection = "MOD";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_NEWGAME_CUSTOM_BACK (C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Wróæ";
	posx = 1000;
	posy = MENU_BACK_Y + 300;
	dimx = 6192;
	dimy = MENU_DY;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER;
};
