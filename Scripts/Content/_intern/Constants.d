///******************************************************************************************
///	Fonts / Time per char
///******************************************************************************************

const string FONT_Screen			=	"FONT_OLD_20_WHITE.TGA";
const string FONT_ScreenSmall		=	"FONT_OLD_10_WHITE.TGA";
const string FONT_Book				=	"FONT_10_BOOK.TGA";
const string FONT_BookHeadline		=	"FONT_20_BOOK.TGA";

const string TEXT_FONT_20 			=	"Font_old_20_white.tga";
const string TEXT_FONT_10 			=	"Font_old_10_white.tga";
const string TEXT_FONT_DEFAULT 		=	"Font_old_10_white.tga";
const string TEXT_FONT_Inventory 	=	"Font_old_10_white.tga";

const float VIEW_TIME_PER_CHAR		=	500;

///******************************************************************************************
///	NPC ATTRIBUTES
///******************************************************************************************

const int ATR_HITPOINTS				=	0;
const int ATR_HITPOINTS_MAX			=	1;
const int ATR_MANA					=	2;
const int ATR_MANA_MAX				=	3;
const int ATR_STRENGTH				=	4;
const int ATR_DEXTERITY				=	5;
const int ATR_REGENERATEHP			=	6;
const int ATR_REGENERATEMP			=	7;

const int ATR_INDEX_MAX				=	8;

const int ATR_ENERGY_MAX			=	9;	///new!!!
const int ATR_LIFESTEAL				=	10;	///new!!!
const int ATR_POWER					=	26;	///new!!!

///******************************************************************************************
///	NPC FLAGS
///******************************************************************************************

const int NPC_FLAG_FRIEND			=	1 << 0;
const int NPC_FLAG_IMMORTAL			=	1 << 1;
const int NPC_FLAG_GHOST			=	1 << 2;
const int NPC_FLAG_IMPORTANT		=	1 << 3;	///new!!!

///******************************************************************************************
///	FIGHT MODES
///******************************************************************************************

const int FMODE_NONE				=	0;
const int FMODE_FIST				=	1;
const int FMODE_MELEE				=	2;
const int FMODE_FAR					=	5;
const int FMODE_MAGIC				=	7;

///******************************************************************************************
///	WALK MODES
///******************************************************************************************

const int NPC_RUN					=	0;
const int NPC_WALK					=	1;
const int NPC_SNEAK					=	2;
const int NPC_RUN_WEAPON			=	0 + 128;
const int NPC_WALK_WEAPON			=	1 + 128;
const int NPC_SNEAK_WEAPON			=	2 + 128;

///******************************************************************************************
///	ARMOR FLAGS
///******************************************************************************************

const int WEAR_TORSO				=	1;
const int WEAR_HEAD					=	2;
const int WEAR_EFFECT				=	16;

///******************************************************************************************
///	INVENTORY CATEGORIES
///******************************************************************************************

const int INV_WEAPON				=	1;
const int INV_ARMOR					=	2;
const int INV_RUNE					=	3;
const int INV_MAGIC					=	4;
const int INV_FOOD					=	5;
const int INV_POTION				=	6;
const int INV_DOC					=	7;
const int INV_MISC					=	8;

const int INV_CAT_MAX				=	9;

///******************************************************************************************
///	INVENTORY CAPACITIES
///******************************************************************************************

const int INV_MAX_WEAPONS			=	6;
const int INV_MAX_ARMORS 			=	2;
const int INV_MAX_RUNES				=	1000;
const int INV_MAX_FOOD				=	15;
const int INV_MAX_DOCS				=	1000;
const int INV_MAX_POTIONS			=	1000;
const int INV_MAX_MAGIC				=	1000;
const int INV_MAX_MISC				=	1000;

///******************************************************************************************
///	ITEM TEXTS
///******************************************************************************************

const int ITM_TEXT_MAX				=	6;

///******************************************************************************************
///	ITEM FLAGS
///******************************************************************************************

/// categories (mainflag)
const int ITEM_KAT_NONE		= 1 <<  0;
const int ITEM_KAT_NF		= 1 <<  1;
const int ITEM_KAT_FF		= 1 <<  2;
const int ITEM_KAT_MUN		= 1 <<  3;	/// MULTI
const int ITEM_KAT_ARMOR	= 1 <<  4;
const int ITEM_KAT_FOOD		= 1 <<  5;	/// MULTI
const int ITEM_KAT_DOCS		= 1 <<  6;
const int ITEM_KAT_POTIONS	= 1 <<  7;
const int ITEM_KAT_LIGHT	= 1 <<  8;
const int ITEM_KAT_RUNE		= 1 <<  9;
const int ITEM_KAT_MAGIC	= 1 << 31;
const int ITEM_KAT_KEYS		= ITEM_KAT_NONE;
/// weapon type (flags)
const int ITEM_DAG			= 1 << 13;	/// OBSOLETE!
const int ITEM_SWD			= 1 << 14;
const int ITEM_AXE			= 1 << 15;
const int ITEM_2HD_SWD		= 1 << 16;
const int ITEM_2HD_AXE		= 1 << 17;
const int ITEM_SHIELD		= 1 << 18;	/// OBSOLETE!
const int ITEM_BOW			= 1 << 19;
const int ITEM_CROSSBOW		= 1 << 20;
/// magic type (flags)
const int ITEM_RING			= 1 << 11;
const int ITEM_AMULET		= 1 << 22;
const int ITEM_BELT			= 1 << 24;
/// attributes (flags)
const int ITEM_DROPPED 		= 1 << 10;	/// INTERNAL!
const int ITEM_MISSION 		= 1 << 12;
const int ITEM_MULTI		= 1 << 21;
const int ITEM_NFOCUS		= 1 << 23;	/// INTERNAL!
const int ITEM_CREATEAMMO	= 1 << 25;
const int ITEM_NSPLIT		= 1 << 26;
const int ITEM_DRINK		= 1 << 27;	/// OBSOLETE!
const int ITEM_TORCH		= 1 << 28;
const int ITEM_THROW		= 1 << 29;	/// OBSOLETE!
const int ITEM_ACTIVE		= 1 << 30;	/// INTERNAL!

///******************************************************************************************
///	DAMAGE TYPES v2.0 (INDEX)
///******************************************************************************************

const int DAM_INVALID				=	0;
const int DAM_BARRIER				=	1;
const int DAM_BLUNT					=	DAM_BARRIER	<< 1;
const int DAM_EDGE					=	DAM_BLUNT	<< 1;
const int DAM_FIRE					=	DAM_EDGE	<< 1;
const int DAM_FLY					=	DAM_FIRE	<< 1;
const int DAM_MAGIC					=	DAM_FLY		<< 1;
const int DAM_POINT					=	DAM_MAGIC	<< 1;
const int DAM_FALL					=	DAM_POINT	<< 1;

///******************************************************************************************
///	DAMAGE TYPES v2.0
///******************************************************************************************

const int DAM_INDEX_BARRIER			=	0;
const int DAM_INDEX_BLUNT			=	DAM_INDEX_BARRIER	+ 1;
const int DAM_INDEX_EDGE			=	DAM_INDEX_BLUNT		+ 1;
const int DAM_INDEX_FIRE			=	DAM_INDEX_EDGE		+ 1;
const int DAM_INDEX_FLY				=	DAM_INDEX_FIRE		+ 1;
const int DAM_INDEX_MAGIC			=	DAM_INDEX_FLY		+ 1;
const int DAM_INDEX_POINT			=	DAM_INDEX_MAGIC		+ 1;
const int DAM_INDEX_FALL			=	DAM_INDEX_POINT		+ 1;

const int DAM_INDEX_MAX				=	DAM_INDEX_FALL		+ 1;

///******************************************************************************************
///	PROTECTION TYPES v2.0
///******************************************************************************************

const int PROT_BARRIER				=	DAM_INDEX_BARRIER;
const int PROT_BLUNT				=	DAM_INDEX_BLUNT;
const int PROT_EDGE					=	DAM_INDEX_EDGE;
const int PROT_FIRE					=	DAM_INDEX_FIRE;
const int PROT_FLY					=	DAM_INDEX_FLY;
const int PROT_MAGIC				=	DAM_INDEX_MAGIC;
const int PROT_POINT				=	DAM_INDEX_POINT;
const int PROT_FALL					=	DAM_INDEX_FALL;

const int PROT_INDEX_MAX			=	DAM_INDEX_MAX;

///******************************************************************************************
///	OTHER DAMAGE CONSTANTS
///******************************************************************************************

const int NPC_ATTACK_FINISH_DISTANCE					=	180;
const int NPC_BURN_TICKS_PER_DAMAGE_POINT				=	1000;
const int NPC_BURN_DAMAGE_POINTS_PER_INTERVALL			=	50;
const int DAM_CRITICAL_MULTIPLIER						=	2;

const int BLOOD_SIZE_DIVISOR							=	1000;
const int BLOOD_DAMAGE_MAX								=	200;

const int DAMAGE_FLY_CM_MAX								=	2000;
const int DAMAGE_FLY_CM_MIN	                            =	300;
const int DAMAGE_FLY_CM_PER_POINT						=	5;

const int NPC_DAM_DIVE_TIME								=	100;

const int IMMUNE										=	-1;

const float NPC_COLLISION_CORRECTION_SCALER				=	0.75;

///******************************************************************************************
///	SENSES
///******************************************************************************************

const int SENSE_SEE										=	1 << 0;
const int SENSE_HEAR									=	1 << 1;
const int SENSE_SMELL									=	1 << 2;

///******************************************************************************************
///	PERCEPTIONS	
///******************************************************************************************

/// ACTIVE
const int PERC_ASSESSPLAYER								=	1;
const int PERC_ASSESSENEMY								=	2;
const int PERC_ASSESSFIGHTER							=	3;
const int PERC_ASSESSBODY								=	4;
const int PERC_ASSESSITEM								=	5;

/// PASSIVE
const int PERC_ASSESSMURDER								=	6;
const int PERC_ASSESSDEFEAT								=	7;
const int PERC_ASSESSDAMAGE								=	8;
const int PERC_ASSESSOTHERSDAMAGE						=	9;
const int PERC_ASSESSTHREAT								=  10;
const int PERC_ASSESSREMOVEWEAPON						=  11;
const int PERC_OBSERVEINTRUDER							=  12;
const int PERC_ASSESSFIGHTSOUND							=  13;
const int PERC_ASSESSQUIETSOUND							=  14;
const int PERC_ASSESSWARN								=  15;
const int PERC_CATCHTHIEF								=  16;
const int PERC_ASSESSTHEFT								=  17;
const int PERC_ASSESSCALL								=  18;
const int PERC_ASSESSTALK								=  19;
const int PERC_ASSESSGIVENITEM							=  20;
const int PERC_ASSESSFAKEGUILD							=  21;
const int PERC_MOVEMOB									=  22;
const int PERC_MOVENPC									=  23;
const int PERC_DRAWWEAPON								=  24;
const int PERC_OBSERVESUSPECT							=  25;
const int PERC_NPCCOMMAND								=  26;
const int PERC_ASSESSMAGIC								=  27;
const int PERC_ASSESSSTOPMAGIC							=  28;
const int PERC_ASSESSCASTER								=  29;
const int PERC_ASSESSSURPRISE							=  30;
const int PERC_ASSESSENTERROOM							=  31;
const int PERC_ASSESSUSEMOB								=  32;

///******************************************************************************************
///	NEWS SPREAD MODE
///******************************************************************************************

const int NEWS_DONT_SPREAD								=	0;
const int NEWS_SPREAD_NPC_FRIENDLY_TOWARDS_VICTIM		=	1;
const int NEWS_SPREAD_NPC_FRIENDLY_TOWARDS_WITNESS		=	2;
const int NEWS_SPREAD_NPC_FRIENDLY_TOWARDS_OFFENDER		=	3;
const int NEWS_SPREAD_NPC_SAME_GUILD_VICTIM				=	4;

///******************************************************************************************
///	NEWS CONSTANTS && INFO STATUS
///******************************************************************************************

const int IMPORTANT								=	1;

const int INF_TELL								=	0;
const int INF_UNKNOWN							=	2;

///******************************************************************************************
///	LOG TYPES && MISSION STATUS
///******************************************************************************************

const int LOG_MISSION							=	0;
const int LOG_NOTE								=	1;

/// ACTIVE
const int LOG_RUNNING							=	1;
const int LOG_SUCCESS							=	2;
const int LOG_FAILED							=	3;
const int LOG_OBSOLETE							=	4;

/// PASSIVE
const int LOG_CANCELED							=	5;
const int LOG_PROGRESS							=	6;

///******************************************************************************************
///	ATTITUDES
///******************************************************************************************

const int ATT_HOSTILE							=	0;
const int ATT_ANGRY								=	1;
const int ATT_NEUTRAL							=	2;
const int ATT_FRIENDLY							=	3;

///******************************************************************************************
///	GUILDS
///******************************************************************************************

const int GIL_NONE						=	0;
const int GIL_PAL						=	1;
const int GIL_MIL						=	2;	/// GIL_GRD
const int GIL_VLK						=	3;
const int GIL_KDF						=	4;	/// GIL_MAG
const int GIL_NOV						=	5;
const int GIL_DJG						=	6;	/// GIL_DRH
const int GIL_SLD						=	7;	/// GIL_ASA
const int GIL_BAU						=	8;
const int GIL_BDT						=	9;
const int GIL_STRF						=	10;
const int GIL_DMT						=	11;
const int GIL_OUT						=	12;
const int GIL_PIR						=	13;
const int GIL_KDW						=	14;
const int GIL_EMPTY_D					=	15;

const int GIL_HUMAN						=	1;
const int GIL_PUBLIC					=	15;
const int GIL_SEPERATOR_HUM				=	16;

const int GIL_MEATBUG					=	17;
const int GIL_SHEEP						=	18;	/// is obsolete now (moved to GIL_LIVESTOCK)
const int GIL_GOBBO						=	19;	/// is obsolete now (rename to GIL_GOBLIN)
const int GIL_GOBLIN					=	19;
const int GIL_GOBBO_SKELETON			=	20;	/// is obsolete now (moved to GIL_SKELETON)
const int GIL_SUMMONED_GOBBO_SKELETON 	=	21;	/// is obsolete now (moved to GIL_SUMMONED)
const int GIL_SCAVENGER					=	22;
const int GIL_GIANT_RAT					=	23;
const int GIL_GIANT_BUG					=	24;
const int GIL_BLOODFLY					=	25;
const int GIL_WARAN						=	26;
const int GIL_WOLF						=	27;
const int GIL_SUMMONED_WOLF				=	28;	/// is obsolete now (moved to GIL_SUMMONED)
const int GIL_MINECRAWLER				=	29;
const int GIL_LURKER					=	30;
const int GIL_SKELETON					=	31;
const int GIL_SUMMONED_SKELETON			=	32;	/// is obsolete now (moved to GIL_SUMMONED)
const int GIL_SKELETON_MONSTER			=	32;	///new!!!
const int GIL_SKELETON_MAGE				=	33;
const int GIL_ZOMBIE					=	34;
const int GIL_SNAPPER					=	35;
const int GIL_SHADOWBEAST				=	36;
const int GIL_SHADOWBEAST_SKELETON		=	37;	/// is obsolete now (moved to GIL_SKELETON)
const int GIL_TIGER						=	37;	///new!!!
const int GIL_HARPY						=	38;
const int GIL_GOLEM						=	39;	///new!!!
const int GIL_STONEGOLEM				=	39;	/// is obsolete now (moved to GIL_GOLEM)
const int GIL_TREANT					=	40;	///new!!!
const int GIL_FIREGOLEM					=	40;	/// is obsolete now (moved to GIL_GOLEM)
const int GIL_ICEGOLEM					=	41;	/// is obsolete now (moved to GIL_GOLEM)
const int GIL_SUMMONED_GOLEM			=	42;	/// is obsolete now (moved to GIL_SUMMONED)
const int GIL_DEMON						=	43;
const int GIL_SUMMONED_DEMON			=	44;	/// is obsolete now (moved to GIL_SUMMONED)
const int GIL_TROLL						=	45;
const int GIL_SWAMPSHARK				=	46;
const int GIL_DRAGON					=	47;
const int GIL_MOLERAT					=	48;
const int GIL_ALLIGATOR					=	49;
const int GIL_SWAMPGOLEM				=	50;	/// is obsolete now (moved to GIL_GOLEM)
const int GIL_STONEGUARDIAN				=	51;
const int GIL_GARGOYLE					=	52;
const int GIL_OGRE						=	53;	///new!!!
const int GIL_SUMMONEDGUARDIAN			=	54;	/// is obsolete now (moved to GIL_SUMMONED)
const int GIL_LIVESTOCK					=	54;	///new!!!
const int GIL_SUMMONEDZOMBIE			=	55;	/// is obsolete now (moved to GIL_SUMMONED)
const int GIL_NEUTRAL					=	55;	///new!!!
const int GIL_WILD						=	56;	///new!!!
const int GIL_SUMMONED					=	57;	///new!!!

const int GIL_SEPERATOR_ORC				=	58;

const int GIL_ORC						=	59;
const int GIL_FRIENDLY_ORC				=	60;
const int GIL_UNDEADORC					=	61;
const int GIL_DRACONIAN					=	62;
const int GIL_EMPTY_X					=	63;
const int GIL_EMPTY_Y					=	64;
const int GIL_EMPTY_Z					=	65;

const int GIL_MAX						=	66;

///******************************************************************************************
///	GUILDS DESCRIPTION
///******************************************************************************************

class C_GILVALUES
{
	var int		WATER_DEPTH_KNEE	[GIL_MAX];
	var int		WATER_DEPTH_CHEST	[GIL_MAX];
	var int		JUMPUP_HEIGHT		[GIL_MAX];		///	DEFAULT = 200;
//	var int		JUMPUP_FORCE		[GIL_MAX];
	var int		SWIM_TIME			[GIL_MAX];
	var int		DIVE_TIME			[GIL_MAX];
	var int		STEP_HEIGHT			[GIL_MAX];
	var int		JUMPLOW_HEIGHT		[GIL_MAX];
	var int		JUMPMID_HEIGHT		[GIL_MAX];
	var int		SLIDE_ANGLE			[GIL_MAX];
	var int		SLIDE_ANGLE2		[GIL_MAX];
	var int		DISABLE_AUTOROLL	[GIL_MAX];		///	DEFAULT = 0;  0 = Autoroll  enabled / 1 = Autoroll disabled
	var int		SURFACE_ALIGN		[GIL_MAX];		///	DEFAULT = 0;  0 = Alignment disabled / 1 = Alignment enabled
	var int		CLIMB_HEADING_ANGLE	[GIL_MAX];
	var int		CLIMB_HORIZ_ANGLE	[GIL_MAX];
	var int		CLIMB_GROUND_ANGLE	[GIL_MAX];
	var int		FIGHT_RANGE_BASE	[GIL_MAX];
	var int		FIGHT_RANGE_FIST	[GIL_MAX];
	var int 	FIGHT_RANGE_G		[GIL_MAX];
	var int		FIGHT_RANGE_1HS		[GIL_MAX];
	var int		FIGHT_RANGE_1HA		[GIL_MAX];
	var int		FIGHT_RANGE_2HS		[GIL_MAX];
	var int		FIGHT_RANGE_2HA		[GIL_MAX];
	var int		FALLDOWN_HEIGHT		[GIL_MAX];
	var int		FALLDOWN_DAMAGE		[GIL_MAX];
	var int		BLOOD_DISABLED		[GIL_MAX];		///	DEFAULT = 0;
	var int		BLOOD_MAX_DISTANCE	[GIL_MAX];		///	DEFAULT = 1000;
	var int		BLOOD_AMOUNT		[GIL_MAX];		///	DEFAULT = 10;
	var int		BLOOD_FLOW			[GIL_MAX];		///	DEFAULT = 0;
	var string  BLOOD_EMITTER		[GIL_MAX];		///	DEFAULT = "PFX_BLOOD";
	var string  BLOOD_TEXTURE		[GIL_MAX];		///	DEFAULT = "ZBLOODSPLAT2.TGA";
	var int 	TURN_SPEED			[GIL_MAX];		///	DEFAULT = 150;
};

///******************************************************************************************
///	SOUND TYPES
///******************************************************************************************

const int NPC_SOUND_DROPTAKE					=	1;
const int NPC_SOUND_SPEAK						=	3;
const int NPC_SOUND_STEPS						=	4;
const int NPC_SOUND_THROWCOLL					=	5;
const int NPC_SOUND_DRAWWEAPON					=	6;
const int NPC_SOUND_SCREAM						=	7;
const int NPC_SOUND_FIGHT						=	8;

///******************************************************************************************
///	MATERIAL TYPES
///******************************************************************************************

const int MAT_WOOD								=	0;
const int MAT_STONE								=	1;
const int MAT_METAL								=	2;
const int MAT_LEATHER							=	3;
const int MAT_CLAY								=	4;
const int MAT_GLAS								=	5;

///******************************************************************************************
///	OTHER CONSTANTS
///******************************************************************************************

const int TIME_INFINITE							=	-1000000 / 1000;
const int NPC_VOICE_VARIATION_MAX				=	10;

var float TRADE_VALUE_MULTIPLIER;	//const float TRADE_VALUE_MULTIPLIER = 0.15;
const string TRADE_CURRENCY_INSTANCE			=	"ITMI_GOLD";

///******************************************************************************************
///	SPELL CATEGORIES
///******************************************************************************************

const int SPELL_GOOD				=	0;
const int SPELL_NEUTRAL				=	1;
const int SPELL_BAD					=	2;

///******************************************************************************************
///	SPELL INVEST CONSTS
///******************************************************************************************

const int SPL_Cost_Scroll			=	5;

const int SPL_DONTINVEST 						=	0;
const int SPL_RECEIVEINVEST						=	1;
const int SPL_SENDCAST							=	2;
const int SPL_SENDSTOP							=	3;
const int SPL_NEXTLEVEL							=	4;
const int SPL_STATUS_CANINVEST_NO_MANADEC		=	8;
const int SPL_FORCEINVEST		 				=	1 << 16;

///******************************************************************************************
///	SPELL TARGETS
///******************************************************************************************

const int TARGET_COLLECT_NONE 					=	0;	/// target will be set by effect (range, azi, elev)
const int TARGET_COLLECT_CASTER					=	1;	/// target is the caster
const int TARGET_COLLECT_FOCUS 					=	2;	/// target is the focus vob
const int TARGET_COLLECT_ALL 					=	3;	/// all targets in range will be assembled
const int TARGET_COLLECT_FOCUS_FALLBACK_NONE	=	4;	/// target is the focus vob, if the focus vob is not valid, the trajectory will be set by the effect
const int TARGET_COLLECT_FOCUS_FALLBACK_CASTER	=	5;	/// target is the focus vob, if the focus vob is not valid, the target is the caster
const int TARGET_COLLECT_ALL_FALLBACK_NONE		=	6;	/// if there are no valid targets, the trajectory will be set by the effect
const int TARGET_COLLECT_ALL_FALLBACK_CASTER	=	7;	/// if there are no valid targets, the target is the caster

const int TARGET_TYPE_ALL			=	1;
const int TARGET_TYPE_ITEMS			=	2;
const int TARGET_TYPE_NPCS			=	4;
const int TARGET_TYPE_ORCS			=	8;
const int TARGET_TYPE_HUMANS		=	16;
const int TARGET_TYPE_UNDEAD		=	32;

///******************************************************************************************
///	SPELLS
///******************************************************************************************

/// standard spells
const int SPL_nLight				=	0;	///changed!!!
const int SPL_nHeal					=	1;	///changed!!!

/// PAL spells
const int SPL_PalBless				=	2;	///new!!!
const int SPL_PalHeal				=	3;	///changed!!!
const int SPL_PalHolyBolt			=	4;
const int SPL_PalJustice			=	5;	///new!!!
const int SPL_PalDestroyEvil		=	6;	///changed!!!

/// common spells
const int SPL_SlowTime				=	7;	///new!!!
const int SPL_NightToDay			=	8;	///new!!!
const int SPL_Telekinesis			=	9;	///new!!!

/// MYS spells
const int SPL_MysBolt				=	10;	///new!!!
const int SPL_MysProtection			=	11;	///new!!!
const int SPL_MysRoot				=	12;
const int SPL_MysTame				=	13;	///new!!!
const int SPL_MysAura				=	14;	///new!!!
const int SPL_MysEchoes 			=	15;	///new!!!

/// GEO spells
const int SPL_GeoStone				=	16;	///new!!!
const int SPL_GeoProtection			=	17;	///new!!!
const int SPL_GeoElevate 			=	18;	///new!!!
const int SPL_GeoGolem				=	19;
const int SPL_GeoExplosion			=	20;	///new!!!
const int SPL_GeoWall				=	21;	///new!!!

/// common spells
const int SPL_FireBolt				=	22;
const int SPL_IceBolt				=	23;
const int SPL_Zap					=	24;
const int SPL_Charm					=	25;
const int SPL_WindFist				=	26;
const int SPL_Sleep					=	27;
const int SPL_MassSleep				=	28;	///new!!!
const int SPL_LightningFlash		=	29;

const int SPL_ChargeFireball		=	30;
const int SPL_Whirlwind				=	31;
const int SPL_Fear					=	32;	///changed!!!
const int SPL_MassFear				=	33;	///new!!!
const int SPL_ChargeZap				=	34;
const int SPL_EarthQuake			=	35;	///new!!!
const int SPL_Geyser				=	36;
const int SPL_WaterFist				=	37;
const int SPL_IceLance				=	38;
const int SPL_IceWave				=	39;

const int SPL_Inflate				=	40;
const int SPL_Rage					=	41;	///new!!!
const int SPL_MassRage				=	42;	///new!!!
const int SPL_BreathOfDeath			=	43;
const int SPL_MassDeath				=	44;
const int SPL_ArmyOfDarkness		=	45;
const int SPL_Shrink				=	46;	///changed!!!

/// special spells
const int SPL_Teleport				=	47;	///changed!!!
const int SPL_Transform				=	48;	///changed!!!
const int SPL_Summon				=	49;	///changed!!!

/// ELE spells
const int SPL_EleLightning			=	50;	///new!!!
const int SPL_EleProtection			=	51;	///new!!!
const int SPL_EleFreeze				=	52;
const int SPL_EleHurricane 			=	53;	///new!!!
const int SPL_EleKinesis			=	54;	///new!!!
const int SPL_EleThunderstorm		=	55;

/// PYR spells
const int SPL_PyrFireball			=	56;
const int SPL_PyrProtection			=	57;	///new!!!
const int SPL_PyrFirestorm			=	58;
const int SPL_PyrKinesis			=	59;	///new!!!
const int SPL_PyrExplosion			=	60;	///new!!!
const int SPL_PyrFirerain			=	61;

/// NEC spells
const int SPL_NecLifesteal			=	62;
const int SPL_NecProtection			=	63;	///new!!!
const int SPL_NecSkeleton			=	64;
const int SPL_NecSwarm			    =	65;
const int SPL_NecDemon	    	    =	66;
const int SPL_NecDeath				=	67;	///changed!!!

/// special spells
const int SPL_MasterOfDisaster		=	68;
const int SPL_BeliarRage			=	69;

/// npc spells
const int SPL_ConcussionBolt		=	70;
const int SPL_DeathBolt				=	71;

/// common spells
const int SPL_PoisonBolt			=	72;
const int SPL_SkullBolt				=	73;
const int SPL_Reserved_74			=	74;
const int SPL_BloodFireball			=	75;
const int SPL_Reserved_76			=	76;
const int SPL_Reserved_77			=	77;
const int SPL_DragonBall			=	78;
const int SPL_BlackDragonBall		=	79;

/// ...
const int SPL_cB_Fireball			=	80;
const int SPL_cR_Fireball			=	81;
const int SPL_cG_Fireball			=	82;
const int SPL_cY_Fireball			=	83;
const int SPL_cP_Fireball			=	84;
const int SPL_Reserved_85			=	85;
const int SPL_Reserved_86			=	86;
const int SPL_Reserved_87			=	87;
const int SPL_Reserved_88			=	88;
const int SPL_Reserved_89			=	89;

const int SPL_Reserved_90			=	90;
const int SPL_Reserved_91			=	91;
const int SPL_Reserved_92			=	92;
const int SPL_Reserved_93			=	93;
const int SPL_Reserved_94			=	94;
const int SPL_Reserved_95			=	95;
const int SPL_Reserved_96			=	96;
const int SPL_Reserved_97			=	97;
const int SPL_Reserved_98			=	98;
const int SPL_Reserved_99			=	99;

const int MAX_SPELL					=	100;   // 59 (Gothic), 68 (Gothic2), 100 (G2Addon)


///******************************************************************************************
///	SPELL EFFECT NAMES
///******************************************************************************************
const string spellFxInstanceNames[MAX_SPELL] =
{
	/// standard spells
	"nLight",				// 0	SPL_nLight
	"nHeal",  				// 1	SPL_nHeal
	
	/// PAL spells
	"PalHolyBolt",  		// 2	SPL_PalBless
	"PalHeal",  			// 3	SPL_PalHeal
	"PalHolyBolt",			// 4	SPL_PalHolyBolt
	"PalJustice",  			// 5	SPL_PalJustice
	"PalDestroyEvil",  		// 6	SPL_PalDestroyEvil
	
	/// common spells
	"SlowTime",  			// 7	SPL_SlowTime
	"NightToDay",  			// 8	SPL_NightToDay
	"Telekinesis",  		// 9	SPL_Telekinesis
	
	/// MYS spells
	"MysBolt",  			// 10	SPL_MysBolt
	"MysProtection",  		// 11	SPL_MysProtection
	"MysRoot",  			// 12	SPL_MysRoot
	"MysTame",  			// 13	SPL_MysTame
	"MysAura",  			// 14	SPL_MysAura
	"MysEchoes",  			// 15	SPL_MysEchoes
	
	/// GEO spells
	"GeoStone",  			// 16	SPL_GeoStone
	"GeoProtection",  		// 17	SPL_GeoProtection
	"GeoElevate",			// 18	SPL_GeoElevate
	"GeoGolem",				// 19	SPL_GeoGolem
	"GeoExplosion",			// 20	SPL_GeoExplosion
	"GeoWall",  			// 21	SPL_GeoWall
	
	/// common spells
	"FireBolt",				// 22	SPL_FireBolt
	"IceBolt",  			// 23	SPL_IceBolt
	"Zap",					// 24	SPL_Zap
	"Charm",  				// 25	SPL_Charm
	"WindFist",  			// 26	SPL_WindFist
	"Sleep",  				// 27	SPL_Sleep
	"Sleep",  				// 28	SPL_MassSleep
	"LightningFlash",		// 29	SPL_LightningFlash
	
	"ChargeFireball",  		// 30	SPL_ChargeFireball
	"Whirlwind",  			// 31	SPL_Whirlwind
	"Fear",  				// 32	SPL_Fear
	"Fear",  				// 33	SPL_MassFear
	"ChargeZap",  			// 34	SPL_ChargeZap
	"EarthQuake",  			// 53	SPL_EarthQuake
	"Geyser",  				// 36	SPL_Geyser
	"WaterFist",  			// 37	SPL_WaterFist
	"IceLance", 			// 38	SPL_IceLance
	"IceWave",  			// 39	SPL_IceWave
	
	"Sleep",  				// 40	SPL_Inflate
	"Rage",  				// 41	SPL_Rage
	"Rage",  				// 42	SPL_MassRage
	"BreathOfDeath",  		// 43	SPL_BreathOfDeath
	"MassDeath",  			// 44	SPL_MassDeath
	"ArmyOfDarkness", 		// 45	SPL_ArmyOfDarkness
	"Shrink",  				// 46	SPL_Shrink
	
	/// special spells
	"Teleport",  			// 47	SPL_Teleport
	"Transform",  			// 48	SPL_Transform
	"Summon",  				// 49	SPL_Summon
	
	/// ELE spells
	"EleLightning",  		// 50	SPL_EleLightning
	"EleProtection",  		// 51	SPL_EleProtection
	"EleFreeze",  			// 52	SPL_EleFreeze
	"EleHurricane",  		// 53	SPL_EleHurricane
	"EleKinesis",  			// 54	SPL_EleKinesis
	"EleThunderstorm",  	// 55	SPL_EleThunderstorm
	
	/// PYR spells
	"PyrFireball",  		// 56	SPL_PyrFireball
	"PyrProtection",  		// 57	SPL_PyrProtection
	"PyrFirestorm",  		// 58	SPL_PyrFirestorm
	"PyrKinesis",			// 59	SPL_PyrKinesis
	"PyrExplosion", 		// 60	SPL_PyrExplosion
	"PyrFirerain",  		// 61	SPL_PyrFirerain
	
	/// NEC spells
	"NecLifesteal", 		// 62	SPL_NecLifesteal
	"NecProtection", 		// 63	SPL_NecProtection
	"NecSkeleton",  		// 64	SPL_NecSkeleton
	"NecSwarm",  			// 65	SPL_NecSwarm
	"NecDemon",  			// 66	SPL_NecDemon
	"NecDeath",				// 67	SPL_NecDeath
	
	/// special spells
	"MasterOfDisaster",		// 68	SPL_MasterOfDisaster
	"EnergyBall",			// 69	SPL_BeliarRage
	
	/// npc spells
    "ConcussionBolt",		// 70	SPL_ConcussionBolt
	"DeathBolt",			// 71	SPL_DeathBolt
	
	/// common spells
	"PoisonBolt",			// 72	SPL_PoisonBolt
	"SkullBolt",			// 73	SPL_SkullBolt
	"Light",				// 74	SPL_Reserved_74
	"DementorBall",			// 75	SPL_BloodFireball
	"Light",				// 76	SPL_Reserved_76
	"Light",				// 77	SPL_Reserved_77
	"DragonBall",			// 78	SPL_DragonBall
	"BlackDragonBall",		// 79	SPL_BlackDragonBall
	
	/// ...
	"cB_Fireball",			// 80	SPL_cB_Fireball
	"cR_Fireball",			// 81	SPL_cR_Fireball
	"cG_Fireball",			// 82	SPL_cG_Fireball
	"cY_Fireball",			// 83	SPL_cY_Fireball
	"cP_Fireball",			// 84	SPL_cP_Fireball
	"Light",				// 85	SPL_Reserved_85
	"Light",				// 86	SPL_Reserved_86
	"Light",				// 87	SPL_Reserved_87
	"Light",				// 88	SPL_Reserved_88
	"Light",				// 89	SPL_Reserved_89
	
	"Light",				// 90	SPL_Reserved_90
	"Light",				// 91	SPL_Reserved_91
	"Light",				// 92	SPL_Reserved_92
	"Light",				// 93	SPL_Reserved_93
	"Light",				// 94	SPL_Reserved_94
	"Light",				// 95	SPL_Reserved_95
	"Light",				// 96	SPL_Reserved_96
	"Light",				// 97	SPL_Reserved_97
	"Light",				// 98	SPL_Reserved_98
	"Light"					// 99	SPL_Reserved_99
};

///******************************************************************************************
///	SPELL ANIMATION PREFIXES
///******************************************************************************************
const string spellFxAniLetters[MAX_SPELL] =
{
	/// SLE, HEA, FBT, FIB, SUM, WND, FEA, FRZ, MSD, TRF, STM, WHI, TEL, PYR, CON, LIN, EXP, FOT, RPF, SAC
	
	/// standard spells
	"SLE",					// 0	 SPL_nLight
	"HEA",  				// 1	 SPL_nHeal
	
	/// PAL spells
	"SLE",  				// 2	 SPL_PalBless
	"HEA",  				// 3	 SPL_PalHeal
	"FBT",					// 4	 SPL_PalHolyBolt
	"FEA",  				// 5	 SPL_PalJustice
	"FIB",  				// 6	 SPL_PalDestroyEvil
	
	/// common spells
	"MSD",  				// 7	SPL_SlowTime
	"SLE",  				// 8	SPL_NightToDay
	"TEL",  				// 9	SPL_Telekinesis
	
	/// MYS spells
	"FBT",  				// 10	SPL_MysBolt
	"FEA",  				// 11	SPL_MysProtection
	"FRZ",  				// 12	SPL_MysRoot
	"FBT",  				// 13	SPL_MysTame
	"HEA",  				// 14	SPL_MysAura
	"STM",  				// 15	SPL_MysEchoes
	
	/// GEO spells
	"FBT",  				// 16	SPL_GeoStone
	"FEA",  				// 17	SPL_GeoProtection
	"SUM",					// 18	SPL_GeoElevate
	"FOT",					// 19	SPL_GeoGolem
	"EXP",					// 20	SPL_GeoExplosion
	"SUM",  				// 21	SPL_GeoWall
	
	/// common spells
	"FBT",  				// 22	SPL_FireBolt
	"FBT",  				// 23	SPL_IceBolt
	"FBT",					// 24	SPL_Zap
	"SLE",  				// 25	SPL_Charm
	"WND",  				// 26	SPL_WindFist
	"SLE",  				// 27	SPL_Sleep
	"FEA",  				// 28	SPL_MassSleep
	"WND",  				// 29	SPL_LightningFlash
	
	"FIB",  				// 30	SPL_ChargeFireball
	"WHI",  				// 31	SPL_Whirlwind
	"SLE",  				// 32	SPL_Fear
	"FEA",  				// 33	SPL_MassFear
	"FIB",  				// 34	SPL_ChargeZap
	"FOT",  				// 35	SPL_EarthQuake
	"WND",  				// 36	SPL_Geyser
	"WND",  				// 37	SPL_WaterFist
	"FBT",  				// 38	SPL_IceLance
	"FEA",  				// 39	SPL_IceWave
	
	"SLE",  				// 40	SPL_Inflate
	"SLE",  				// 41	SPL_Rage
	"FEA",  				// 42	SPL_MassRage
	"FIB",  				// 43	SPL_BreathOfDeath
	"MSD",  				// 44	SPL_MassDeath
	"SUM",  				// 45	SPL_ArmyOfDarkness
	"SLE",  				// 46	SPL_Shrink
	
	/// special spells
	"HEA",  				// 47	SPL_Teleport
	"TRF",  				// 48	SPL_Transform
	"SUM",  				// 49	SPL_Summon
	
	/// ELE spells
	"LIN",  				// 50	SPL_EleLightning
	"FEA",  				// 51	SPL_EleProtection
	"FRZ",  				// 52	SPL_EleFreeze
	"EXP",  				// 53	SPL_EleHurricane
	"PYR",  				// 54	SPL_EleKinesis
	"STM",  				// 55	SPL_EleThunderstorm
	
	/// PYR spells
	"FIB",  				// 56	SPL_PyrFireball
	"FEA",  				// 57	SPL_PyrProtection
	"FBT",  				// 58	SPL_PyrFirestorm
	"PYR",					// 59	SPL_PyrKinesis
	"EXP",  				// 60	SPL_PyrExplosion
	"STM",  				// 61	SPL_PyrFirerain
	
	/// NEC spells
	"WND",  				// 62	SPL_NecLifesteal
	"FEA",  				// 63	SPL_NecProtection
	"SUM",  				// 64	SPL_NecSkeleton
	"FBT",  				// 65	SPL_NecSwarm
	"SUM",  				// 66	SPL_NecDemon
	"WND",					// 67	SPL_NecDeath
	
	/// special spells
 	"FIB",					// 68	SPL_MasterOfDisaster
	"WND",					// 69	SPL_BeliarRage

	/// npc spells
	"FBT",  				// 70	SPL_ConcussionBolt
	"FBT",  				// 71	SPL_DeathBolt
	
	/// common spells
	"FBT",  				// 72	SPL_PoisonBolt
	"FBT",  				// 73	SPL_SkullBolt
	"FBT",  				// 74	SPL_Reserved_74
	"FBT",  				// 75	SPL_BloodFireball
	"FIB",  				// 76	SPL_Reserved_76
	"FRZ",					// 77	SPL_Reserved_77
	"FBT",					// 78	SPL_DragonBall
	"FBT",					// 79	SPL_BlackDragonBall
	
	/// ...
	"FBT",  				// 80	SPL_cB_Fireball
	"FBT",  				// 81	SPL_cR_Fireball
	"FBT",  				// 82	SPL_cG_Fireball
	"FBT",  				// 83	SPL_cY_Fireball
	"FBT",  				// 84	SPL_cP_Fireball
	"XXX",  				// 85	SPL_Reserved_85
	"XXX",  				// 86	SPL_Reserved_86
	"XXX",					// 87	SPL_Reserved_87
	"XXX",					// 88	SPL_Reserved_88
	"XXX",					// 89	SPL_Reserved_89
	
	"XXX",  				// 90	SPL_Reserved_90
	"XXX",  				// 91	SPL_Reserved_91
	"XXX",  				// 92	SPL_Reserved_92
	"XXX",  				// 93	SPL_Reserved_93
	"XXX",  				// 94	SPL_Reserved_94
	"XXX",  				// 95	SPL_Reserved_95
	"XXX",  				// 96	SPL_Reserved_96
	"XXX",					// 97	SPL_Reserved_97
	"XXX",					// 98	SPL_Reserved_98
	"XXX"					// 99	SPL_Reserved_99
};

///******************************************************************************************
///	TALENTS
///******************************************************************************************

const int NPC_TALENT_UNKNOWN			=	0;

/// Fight Talents
const int NPC_TALENT_1H					=	1;
const int NPC_TALENT_2H					=	2;
const int NPC_TALENT_BOW				=	3;
const int NPC_TALENT_CROSSBOW			=	4;
const int NPC_TALENT_2ndH				=	10;	///new!!!

/// Magic Talents
const int NPC_TALENT_MAGIC				=	7;
const int NPC_TALENT_LANGUAGE			=	17;

/// Movement Talents
const int NPC_TALENT_SNEAK				=	8;
const int NPC_TALENT_ACROBATIC			=	11;
const int NPC_TALENT_LONGRUN			=	18;	///new!!!

/// Thief Talents
const int NPC_TALENT_PICKLOCK			=	5;
const int NPC_TALENT_PICKPOCKET			=	6;
const int NPC_TALENT_PERSUASION			=	9;	///new!!!

/// Craft Talents
const int NPC_TALENT_JEWELERY			=	12;	///new!!!
const int NPC_TALENT_SMITH				=	13;
const int NPC_TALENT_ENCHANTING			=	14;	///new!!!
const int NPC_TALENT_ALCHEMY			=	15;
const int NPC_TALENT_HUNTING			=	16;	///new!!!

/// Info Talents
const int NPC_TALENT_CHAPTER			=	19;	///new!!!
const int NPC_TALENT_TYPEOFMAGIC		=	20;	///new!!!
const int NPC_TALENT_DIFFICULTY			=	21;	///new!!!

const int NPC_TALENT_MAX				=	22;

///******************************************************************************************
///	WORLD IDs
///******************************************************************************************

const int NEWWORLD_ZEN 					=	1;
const int OLDWORLD_ZEN 					=	2;
const int DRAGONISLAND_ZEN				=	3;
const int ADDONWORLD_ZEN				=	4;

///******************************************************************************************
///	INV CAMERA CONSTS
///******************************************************************************************

const int INVCAM_ENTF_RING_STANDARD 	=	400;
const int INVCAM_ENTF_AMULETTE_STANDARD =	150;
const int INVCAM_ENTF_MISC_STANDARD 	=	200;
const int INVCAM_ENTF_MISC2_STANDARD 	=	250;
const int INVCAM_ENTF_MISC3_STANDARD 	=	500;
const int INVCAM_ENTF_MISC4_STANDARD 	=	650;
const int INVCAM_ENTF_MISC5_STANDARD 	=	850;
const int INVCAM_X_RING_STANDARD 		=	25;
const int INVCAM_Z_RING_STANDARD 		=	45;
const int INVCAM_X_STONEPLATE_STANDARD 	=	-90;
