///******************************************************************************************
/// aSource
///******************************************************************************************

var oCNpc o_hero; //o_hero = Hlp_GetNpc(hero);
var C_Npc o_other; //o_other = MEM_PtrToInst(o_hero.focus_vob);
var oCItem o_item; //o_item = MEM_PtrToInst(o_hero.focus_vob);

/// game config
var int dLevel;				/// difficulty levels: Easy | Medium | Hard | Very Hard
var int movieMode;			/// movie mode = enabled cheat mode, animation shortcuts etc.
var int selectedHeroSkin;	/// hero skin (select in "New Game" menu)
var int scaleWorldTime;		/// the speed at which clock time passes

/// natural regeneration
var int regenPower[3], regenPoints[3];

/// regeneration from items
var int regenPotionPointsPerSec[3], regenPotionTime[3];
var int timedPotionPoints[ATR_INDEX_MAX], timedPotionTime[ATR_INDEX_MAX];
var int foodTime[4], alcoholTime;

/// damage & magical shield & finish percent
var int mDamageIncrease, mDamageReduction;
var int mShieldPoints;
var int mFinishPercent;
var int inFightCounter;

/// magic aura
var int mAuraType, mAuraPoints, mAuraTime;
var int mAuraPalType, mAuraPalPoints, mAuraPalTime;

/// slow effect
var int mSlowPoints, mSlowTime;

/// item spawn
var int enableTimeDust;

///******************************************************************************************
/// Colors & Time
///******************************************************************************************

/// ------ Colors (in RGBA) ------
const int COL_Health						=	(255<<16) | (127<<8) | (127<<0) | (255<<24);
const int COL_Mana							=	(127<<16) | (127<<8) | (255<<0) | (255<<24);
const int COL_Stamina						=	(255<<16) | (255<<8) | (127<<0) | (255<<24);
const int COL_Exp							=	(127<<16) | (255<<8) | (127<<0) | (255<<24);
const int COL_Love							=	(255<<16) | (191<<8) | (223<<0) | (255<<24);
const int COL_Negative						=	(191<<16) | (191<<8) | (191<<0) | (255<<24);

const int COL_DamageGiven					=	( 63<<16) | (159<<8) | (255<<0) | (255<<24);
const int COL_DamageTaken					=	(255<<16) | ( 63<<8) | ( 63<<0) | (255<<24);
const int COL_DamageTrueGiven				=	(127<<16) | (203<<8) | (255<<0) | (255<<24);
const int COL_DamageTrueTaken				=	(255<<16) | (127<<8) | (127<<0) | (255<<24);
const int COL_DamageShielded				=	(183<<16) | (223<<8) | (203<<0) | (255<<24);

const int COL_ItemGiven						=	(255<<16) | (127<<8) | (127<<0) | (255<<24);
const int COL_ItemTaken						=	(255<<16) | (223<<8) | (127<<0) | (255<<24);

const int COL_QuestRunning					=	(255<<16) | (255<<8) | (127<<0) | (255<<24);
const int COL_QuestProgress					=	(127<<16) | (191<<8) | (255<<0) | (255<<24);
const int COL_QuestSuccess					=	(127<<16) | (255<<8) | (127<<0) | (255<<24);
const int COL_QuestFailed					=	(255<<16) | (127<<8) | (127<<0) | (255<<24);
const int COL_QuestCanceled					=	(255<<16) | (191<<8) | (127<<0) | (255<<24);
const int COL_QuestObsolete					=	(127<<16) | (127<<8) | (127<<0) | (255<<24);

/// ------ Time (in seconds) ------
const int TIME_ShortPrint					=	2;
const int TIME_Print						=	4;
const int TIME_LongPrint					=	8;
const int TIME_LongerPrint					=	12;
const int TIME_LongestPrint					=	20;

///******************************************************************************************
/// Bars order (it is also connected to most regen arrays)
///******************************************************************************************

const int BarOrderHP						=	0;
const int BarOrderMP						=	1;
const int BarOrderSP						=	2;
const int BarOrderXP						=	3;
