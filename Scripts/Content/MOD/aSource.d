///******************************************************************************************
///	aSource
///******************************************************************************************

var oCNpc o_hero; //o_hero = Hlp_GetNpc(hero);
var C_Npc o_other; //o_other = MEM_PtrToInst(o_hero.focus_vob);
var oCItem o_item; //o_item = MEM_PtrToInst(o_hero.focus_vob);

///******************************************************************************************

var int dLevel;				/// difficulty level: Easy | Medium | Hard | VeryHard
var int gLevelA;			/// girlfriend love level (not sure/don't remember for what purpose it exists)
var int talkingWithGirl;	/// also don't remember what was this for
var int inFightCounter;

var int selectedHero;		/// hero skin (select in New Game menu)
var int noAnimTake;			/// fast item take (with no animation) on RMB
var int movieMode;			/// movie mode = enabled cheat mode, animation shortcuts etc.
var int scaleTime;

var int hpRegenPower, hpRegenPoints;
var int mpRegenPower, mpRegenPoints;
var int spRegenPower, spRegenPoints;

var int foodTime, drinkTime, alcoholTime;
var int digestionTime;

var int mShieldPoints, mFinishPercent;
var int mAuraType, mAuraPoints, mAuraTime;

var int enableTimeDust;

///******************************************************************************************
///	Colors (RGBA) & Time (seconds)
///******************************************************************************************

const int COL_Health			=	(255<<16) | (128<<8) | (128<<0) | (255<<24);
const int COL_Mana				=	(128<<16) | (128<<8) | (255<<0) | (255<<24);
const int COL_Stamina			=	(255<<16) | (255<<8) | (128<<0) | (255<<24);
const int COL_Exp				=	(128<<16) | (255<<8) | (128<<0) | (255<<24);
const int COL_Love				=	(255<<16) | (192<<8) | (224<<0) | (255<<24);
const int COL_Negative			=	(192<<16) | (192<<8) | (192<<0) | (255<<24);

const int COL_DamageGiven		=	( 64<<16) | (160<<8) | (255<<0) | (255<<24);
const int COL_DamageTaken		=	(255<<16) | ( 64<<8) | ( 64<<0) | (255<<24);

const int COL_ItemGiven			=	(255<<16) | (128<<8) | (128<<0) | (255<<24);
const int COL_ItemTaken			=	(255<<16) | (224<<8) | (128<<0) | (255<<24);

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

/// ------ Time ------
func void B_ScaleTime(var int x)
{
   var int world_timer; world_timer = MEM_Timer.frameTimeFloat;
   var int acceleration; acceleration = fracf(x, 100);
   world_timer = mulf(world_timer, subf(acceleration, mkf(1)));
   MEM_WorldTimer.worldTime = addf(MEM_WorldTimer.worldTime, world_timer);
};

/// ------ Visibility ------
func void B_SetVisibilityPercent (var oCNpc slf, var int visibility)
{
	if (visibility == 100)	{	slf.bloodEnabled = true;	}
	else					{	slf.bloodEnabled = false;	};
	
	slf._zCVob_bitfield[0] = slf._zCVob_bitfield[0] | zCVob_bitfield0_visualAlphaEnabled;
	slf._zCVob_visualAlpha = divf(mkf(visibility), mkf(100));
	slf._zCVob_bitfield[0] = slf._zCVob_bitfield[0] & ~zCVob_bitfield0_castDynShadow;
};

/// ------ Trading ------
func void B_SetSellingValuePercent(var int percent)
{
    percent = divf(mkf(percent), mkf(100));
    MEM_WriteInt (11211032, percent);
    MEM_WriteInt (MEM_ReadInt(MEM_InformationMan.DlgTrade + 248) + 268, percent);
};

/// ------ States ------
func void oCNpc_DropUnconscious(var C_Npc slf)
{
    const int oCNpc__DropUnconscious = 7560880;
    CALL_IntParam(MEM_InstToPtr(slf));
    CALL_IntParam(1065353216);
    CALL__thiscall(MEM_InstToPtr(slf), oCNpc__DropUnconscious);
};

/// ------ Animations ------
func int oCNPC_GetModel(var int npc)
{
	CALL__thiscall(MEM_InstToPtr(npc), 7571232);
	return CALL_RetValAsInt();
};

func int AniIsActive(var C_Npc slf, var string aniname)
{
	var int ptr; ptr = oCNpc_GetModel(slf);
	const int zCModel_AniIsActive = 5727888;

	CALL_zStringPtrParam(Str_Upper(aniname));
	CALL__thiscall(ptr,zCModel_AniIsActive);
	return CALL_RetValAsInt();	
};

func int Get_AniIDFromAniName(var int slf, var string aniName)
{
	var int model; model = oCNpc_GetModel(slf);
	CALL_zStringPtrParam(Str_Upper(aniName));
	CALL__thiscall(model, 6365296);
	return CALL_RetValAsInt();	
};

func int GetAniFromAniID(var C_Npc slf, var string aniName)
{
	var int model; model = oCNpc_GetModel(slf);
	var int ani; ani = Get_AniIDFromAniName(slf,aniName);

	CALL_PtrParam(ani);
	CALL__thiscall(model, 4665168);
	return CALL_RetValAsInt();
};

func void Set_AniFPS(var C_Npc slf, var string aniName, var int fps)
{
	var int ptr; ptr = GetAniFromAniID(slf, aniName);
	
	MEM_WriteInt(ptr+176, mkf(fps));
};

func void NPC_SetTimeScale (var C_Npc slf, var int percent)
{
	var int ptr; ptr = oCNPC_GetModel(slf);
	
	var int f; f = divf(mkf(percent), mkf(100));
	MEM_WriteInt(ptr+508, f);
};
