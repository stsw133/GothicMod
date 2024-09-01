///******************************************************************************************

const int false		=	0;
const int true		=	1;

///******************************************************************************************

const int	MAX_USERSTRINGS			=	10;
const int	MAX_ITEMS				=	150;
const int	MAX_EVENTS				=	10;
const int	MAX_SEL_ACTIONS			=	5;
const int	MAX_USERVARS			=	4;

const int	SEL_ACTION_UNDEF		=	0;
const int	SEL_ACTION_BACK			=	1;
const int	SEL_ACTION_STARTMENU	=	2;
const int	SEL_ACTION_STARTITEM	=	3;
const int	SEL_ACTION_CLOSE		=	4;
const int	SEL_ACTION_CONCOMMANDS	=	5;	/// -> console commands
const int	SEL_ACTION_PLAY_SOUND	=	6;
const int	SEL_ACTION_EXECCOMMANDS	=	7;	/// -> dynamic build in func.

const int	MENU_ITEM_UNDEF			=	0;
const int	MENU_ITEM_TEXT			=	1;
const int	MENU_ITEM_SLIDER		=	2;
const int	MENU_ITEM_INPUT			=	3;
const int	MENU_ITEM_CURSOR		=	4;
const int	MENU_ITEM_CHOICEBOX		=	5;
const int	MENU_ITEM_BUTTON		=	6;
const int	MENU_ITEM_LISTBOX		=	7;

const int	IT_CHROMAKEYED			=	1;
const int	IT_TRANSPARENT			=	2;
const int	IT_SELECTABLE			=	4;
const int	IT_MOVEABLE				=	8;
const int	IT_TXT_CENTER			=	16;
const int	IT_DISABLED				=	32;
const int	IT_FADE					=	64;
const int	IT_EFFECTS_NEXT			=	128;
const int	IT_ONLY_OUT_GAME		=	256;
const int	IT_ONLY_IN_GAME			=	512;
const int	IT_PERF_OPTION			=	1024;
const int	IT_MULTILINE			=	2048;
const int	IT_NEEDS_APPLY			=	4096;	/// die mit dem Menuepunkt verknuepfte Option wird NUR ueber ein APPLY aktiv
const int	IT_NEEDS_RESTART		=	8192;	/// die mit dem Menuepunkt verknuepfte Option wird NUR ueber ein RESTART aktiv
const int	IT_EXTENDED_MENU		=	16384;

const int	MENU_OVERTOP			=	1;
const int	MENU_EXCLUSIVE			=	2;
const int	MENU_NOANI				=	4;
const int	MENU_DONTSCALE_DIM		=	8;
const int	MENU_DONTSCALE_POS		=	16;
const int	MENU_ALIGN_CENTER		=	32;
const int	MENU_SHOW_INFO			=	64;

const int	EVENT_UNDEF				=	0;
const int	EVENT_EXECUTE			=	1;
const int	EVENT_CHANGED			=	2;
const int	EVENT_LEAVE				=	3;
const int	EVENT_TIMER				=	4;
const int	EVENT_CLOSE				=	5;
const int	EVENT_INIT				=	6;
const int	EVENT_SEL_PREV			=	7;
const int	EVENT_SEL_NEXT			=	8;

const int	CLOSE_ITEM				=	1;

///******************************************************************************************
class C_MENU_ITEM
{
	var string	fontName;
	var string	text[MAX_USERSTRINGS];
	var string	backPic;
	var string	alphaMode;
	var int		alpha;
	var int		type;
	var int		onSelAction[MAX_SEL_ACTIONS];
	var string	onSelAction_S[MAX_SEL_ACTIONS];
	var string	onChgSetOption;
	var string	onChgSetOptionSection;
	
	var func	onEventAction[MAX_EVENTS];
	var int		posx,posy;
	// var int		txtPosX, txtPosY;	/// txt offset position in virtual coords relativ to this item	
	var int		dimx, dimy;	/// -1 = AUTODETECT (FONTWISE)
	var float	sizeStartScale;
	var int		flags;
	var float	openDelayTime;
	var float	openDuration;
	var float	userFloat [MAX_USERVARS];
	var string	userString[MAX_USERVARS];
	var int		frameSizeX;
	var int		frameSizeY;
	var string	hideIfOptionSectionSet;
	var string	hideIfOptionSet;
	var int		hideOnValue;
};

class C_MENU
{
	var string	backPic;
	var string	backWorld;
	var int		posx, posy;
	var int		dimx, dimy;
	// var float	sizeStartScale;
	var int		alpha;
	var string	musicTheme;
	var int		eventTimerMSec;
	var string	items[MAX_ITEMS];
	var int		flags;
	var int		defaultOutGame;
	var int		defaultInGame;
};

prototype C_MENU_ITEM_DEF (C_MENU_ITEM)
{
	fontName				=	MENU_FONT_DEFAULT;
	text					=	"";
	alphaMode				=	"BLEND";
	alpha					=	254;	/// NOTE: Must be under 255 to support chroma keying, chroma color is black
	type					=	MENU_ITEM_TEXT;
	posx					=	0;
	posy					=	0;
	dimx					=	-1;	/// -1 = AUTODETECT
	dimy					=	-1;	/// -1 = AUTODETECT
	flags					=	IT_CHROMAKEYED | IT_TRANSPARENT | IT_SELECTABLE;
	
	openDelayTime			=	0;
	openDuration			=	-1;
	
	sizeStartScale			=	1;
	
	userFloat[0]			=	100;
	userFloat[1]			=	200;
	
	onSelAction[0]			=	SEL_ACTION_BACK;
	onChgSetOption			=	"";
	onChgSetOptionSection	=	"INTERNAL";
	hideIfOptionSectionSet	=	"";
	hideIfOptionSet			=	"";
	hideOnValue				=	-1;
	
	frameSizeX				=	0;
	frameSizeY				=	0;
};

prototype C_MENU_DEF (C_MENU)
{
	// backWorld			=	"cutscenes\INTRO.zen";
	posx					=	0;
	posy					=	0;
	dimx					=	8191;
	dimy					=	8191;
	alpha					=	254;	/// NOTE: Must be under 255 to support chroma keying, chroma color is black
	items[0]				=	"ITEM_BACK";
	flags					=	MENU_EXCLUSIVE | MENU_DONTSCALE_DIM | MENU_ALIGN_CENTER;
	eventTimerMSec			=	1000;	/// 1 second cycle with EVENT_TIMER
	musicTheme				=	"";
	defaultOutGame			=	-1;	/// no item is default
	defaultInGame			=	-1;	/// no item is default
};
