///******************************************************************************************
///	aSource
///******************************************************************************************

var oCNpc o_hero; //o_hero = Hlp_GetNpc(hero);
var C_Npc o_other; //o_other = MEM_PtrToInst(o_hero.focus_vob);
var oCItem o_item; //o_item = MEM_PtrToInst(o_hero.focus_vob);
var string o_string;
var int o_int;

///******************************************************************************************

var int hpRegenPower;
var int hpRegenPoints;
var int mpRegenPower;
var int mpRegenPoints;
var int poisonResistance;
var int enableTimeDust;

var int foodTime;
var int digestionTime;
var int drunkTime;

const int BS_fRun			=	0;
const int BS_Poison			=	1;
const int BS_Obsession		=	2;
const int BS_hArmor			=	3;
const int BS_Drunk			=	4;
var int bState[5];

var int dLevel;				/// difficulty level: Easy | Medium | Hard | Very Hard | Hardcore
var int gLevelA;			/// girlfriend love level (not sure/don't remember)
var int talkingWithGirl;	/// also don't remember what was this for

var int selectedHero;		/// hero skin (select in New Game menu)
var int noAnimTake;			/// fast item take (with no animation) on RMB
var int movieMode;			/// movie mode = enabled cheat mode, animation shortcuts etc.
var int scaleTime;

///******************************************************************************************
///	Colors & Time
///******************************************************************************************

const int COL_Health			=	(255<<16) | (128<<8) | (128<<0) | (255<<24);
const int COL_Mana				=	(128<<16) | (128<<8) | (255<<0) | (255<<24);
const int COL_Energy			=	(255<<16) | (255<<8) | (128<<0) | (255<<24);
const int COL_Exp				=	(128<<16) | (255<<8) | (128<<0) | (255<<24);
const int COL_Love				=	(255<<16) | (192<<8) | (224<<0) | (255<<24);
const int COL_Negative			=	(192<<16) | (192<<8) | (192<<0) | (255<<24);

const int COL_ItemGiven			=	(255<<16) | (128<<8) | (128<<0) | (255<<24);
const int COL_ItemTaken			=	(255<<16) | (255<<8) | (128<<0) | (255<<24);

const int COL_ExpGained			=	(128<<16) | (255<<8) | (128<<0) | (255<<24);
const int COL_LoveGained		=	(255<<16) | (192<<8) | (224<<0) | (255<<24);

const int COL_QuestRunning		=	(255<<16) | (255<<8) | (128<<0) | (255<<24);
const int COL_QuestProgress		=	(128<<16) | (192<<8) | (255<<0) | (255<<24);
const int COL_QuestSuccess		=	(128<<16) | (255<<8) | (128<<0) | (255<<24);
const int COL_QuestFailed		=	(255<<16) | (128<<8) | (128<<0) | (255<<24);
const int COL_QuestCanceled		=	(255<<16) | (192<<8) | (128<<0) | (255<<24);
const int COL_QuestObsolete		=	(128<<16) | (128<<8) | (128<<0) | (255<<24);

const int TIME_ShortPrint		=	2;
const int TIME_Print			=	4;
const int TIME_LongPrint		=	8;
const int TIME_LongerPrint		=	12;
const int TIME_LongestPrint		=	20;

///******************************************************************************************
///	Functions
///******************************************************************************************
func int atrue()
{
	return true;
};
func int Hlp_RandomRange (var int start, var int end)
{
	return (start + Hlp_Random(end - start + 1));
};
///******************************************************************************************
func void B_ScaleTime(var int x)
{
   var int world_timer; world_timer = MEM_Timer.frameTimeFloat;
   var int acceleration; acceleration = fracf(x, 100);
   world_timer = mulf(world_timer, subf(acceleration, mkf(1)));
   MEM_WorldTimer.worldTime = addf(MEM_WorldTimer.worldTime, world_timer);
};
///******************************************************************************************
func void B_SetVisibilityPercent (var oCNpc slf, var int visibility)
{
	if (visibility == 100)	{	slf.bloodEnabled = true;	}
	else					{	slf.bloodEnabled = false;	};
	
	slf._zCVob_bitfield[0] = slf._zCVob_bitfield[0] | zCVob_bitfield0_visualAlphaEnabled;
	slf._zCVob_visualAlpha = divf(mkf(visibility), mkf(100));
	slf._zCVob_bitfield[0] = slf._zCVob_bitfield[0] & ~zCVob_bitfield0_castDynShadow;
};
