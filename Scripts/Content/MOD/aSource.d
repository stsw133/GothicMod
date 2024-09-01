///******************************************************************************************
/// aSource
///******************************************************************************************

var oCNpc o_hero; //o_hero = Hlp_GetNpc(hero);
var C_Npc o_other; //o_other = MEM_PtrToInst(o_hero.focus_vob);
var oCItem o_item; //o_item = MEM_PtrToInst(o_hero.focus_vob);

/// game config
var int dLevel;				/// difficulty level: Easy | Medium | Hard
var int movieMode;			/// movie mode = enabled cheat mode, animation shortcuts etc.
var int noAnimTake;			/// fast item take (with no animation) on RMB
var int selectedHero;		/// hero skin (select in New Game menu)
var int scaleTime;			/// the speed at which clock time passes

/// natural regeneration
var int hpRegenPower, hpRegenPoints;
var int mpRegenPower, mpRegenPoints;
var int spRegenPower, spRegenPoints;

/// item regeneration
var int foodTime[4], alcoholTime;

/// shield & damage & finish percent
var int mShieldPhPoints, mShieldMgPoints;
var int mDamageIncrease, mDamageReduction;
var int mFinishPercent;
var int inFightCounter;

/// aura
var int mAuraType, mAuraPoints, mAuraTime;
var int mAuraPalType, mAuraPalPoints, mAuraPalTime;

/// slow
var int mSlowPoints, mSlowTime;

/// item spawn
var int enableTimeDust;

///******************************************************************************************
/// Colors (RGBA) & Time (seconds)
///******************************************************************************************

const int COL_Health			=	(255<<16) | (127<<8) | (127<<0) | (255<<24);
const int COL_Mana				=	(127<<16) | (127<<8) | (255<<0) | (255<<24);
const int COL_Stamina			=	(255<<16) | (255<<8) | (127<<0) | (255<<24);
const int COL_Exp				=	(127<<16) | (255<<8) | (127<<0) | (255<<24);
const int COL_Love				=	(255<<16) | (191<<8) | (223<<0) | (255<<24);
const int COL_Negative			=	(191<<16) | (191<<8) | (191<<0) | (255<<24);

const int COL_DamageGiven		=	( 63<<16) | (159<<8) | (255<<0) | (255<<24);
const int COL_DamageTaken		=	(255<<16) | ( 63<<8) | ( 63<<0) | (255<<24);
const int COL_DamageTrueGiven	=	(127<<16) | (203<<8) | (255<<0) | (255<<24);
const int COL_DamageTrueTaken	=	(255<<16) | (127<<8) | (127<<0) | (255<<24);
const int COL_DamageShielded	=	(183<<16) | (223<<8) | (203<<0) | (255<<24);

const int COL_ItemGiven			=	(255<<16) | (127<<8) | (127<<0) | (255<<24);
const int COL_ItemTaken			=	(255<<16) | (223<<8) | (127<<0) | (255<<24);

const int COL_QuestRunning		=	(255<<16) | (255<<8) | (127<<0) | (255<<24);
const int COL_QuestProgress		=	(127<<16) | (191<<8) | (255<<0) | (255<<24);
const int COL_QuestSuccess		=	(127<<16) | (255<<8) | (127<<0) | (255<<24);
const int COL_QuestFailed		=	(255<<16) | (127<<8) | (127<<0) | (255<<24);
const int COL_QuestCanceled		=	(255<<16) | (191<<8) | (127<<0) | (255<<24);
const int COL_QuestObsolete		=	(127<<16) | (127<<8) | (127<<0) | (255<<24);

const int TIME_ShortPrint		=	2;
const int TIME_Print			=	4;
const int TIME_LongPrint		=	8;
const int TIME_LongerPrint		=	12;
const int TIME_LongestPrint		=	20;

///******************************************************************************************
/// Functions
///******************************************************************************************
func int RealToInt(var int r)
{
	return STR_ToInt(STR_Split(toStringf(r), ".", 0));
};

/// ------ Random ------
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
func void B_SetNpcVisibilityPercent (var C_Npc slf, var int visibility)
{
	var oCNpc Npc; Npc = Hlp_GetNpc(slf);
	
	if (visibility == 100)	{	Npc.bloodEnabled = true;	}
	else					{	Npc.bloodEnabled = false;	};
	
	Npc._zCVob_bitfield[0] = Npc._zCVob_bitfield[0] | zCVob_bitfield0_visualAlphaEnabled;
	Npc._zCVob_visualAlpha = divf(mkf(visibility), mkf(100));
	Npc._zCVob_bitfield[0] = Npc._zCVob_bitfield[0] & ~zCVob_bitfield0_castDynShadow;
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

/// ------ Movement speed ------
func void NPC_SetTimeScale (var C_Npc slf, var int permille)
{
	if (Npc_IsPlayer(slf) && mSlowTime > 0)
	{
		permille *= 2;
	};
	
	var int ptr; ptr = oCNPC_GetModel(slf);
	
	var int f; f = divf(mkf(permille), mkf(1000));
	MEM_WriteInt(ptr+508, f);
};
