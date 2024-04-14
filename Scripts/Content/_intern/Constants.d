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

const float VIEW_TIME_PER_CHAR		=	600;

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
const int ATR_POWER					=	7;	/// new!!!

const int ATR_INDEX_MAX				=	8;

///******************************************************************************************
///	NPC FLAGS
///******************************************************************************************

const int NPC_FLAG_FRIEND			=	1 << 0;
const int NPC_FLAG_IMMORTAL			=	1 << 1;
const int NPC_FLAG_GHOST			=	1 << 2;
const int NPC_FLAG_IMPORTANT		=	1 << 3;	/// new!!!

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

const int INV_MAX_WEAPONS			=    6;
const int INV_MAX_ARMORS 			=    2;
const int INV_MAX_RUNES				= 1000;
const int INV_MAX_FOOD				=   15;
const int INV_MAX_DOCS				= 1000;
const int INV_MAX_POTIONS			= 1000;
const int INV_MAX_MAGIC				= 1000;
const int INV_MAX_MISC				= 1000;

///******************************************************************************************
///	ITEM TEXTS
///******************************************************************************************

const int ITM_TEXT_MAX				=	6;

///******************************************************************************************
///	ITEM FLAGS
///******************************************************************************************

/// categories (mainflag)
const int ITEM_KAT_NONE			= 1 <<  0;
const int ITEM_KAT_NF			= 1 <<  1;
const int ITEM_KAT_FF			= 1 <<  2;
const int ITEM_KAT_MUN			= 1 <<  3;	/// MULTI
const int ITEM_KAT_ARMOR		= 1 <<  4;
const int ITEM_KAT_FOOD			= 1 <<  5;	/// MULTI
const int ITEM_KAT_DOCS			= 1 <<  6;
const int ITEM_KAT_POTIONS		= 1 <<  7;
const int ITEM_KAT_LIGHT		= 1 <<  8;
const int ITEM_KAT_RUNE			= 1 <<  9;
const int ITEM_KAT_MAGIC		= 1 << 31;
const int ITEM_KAT_KEYS			= ITEM_KAT_NONE;
/// weapon type (flags)
const int ITEM_DAG				= 1 << 13;	/// OBSOLETE!
const int ITEM_SWD				= 1 << 14;
const int ITEM_AXE				= 1 << 15;
const int ITEM_2HD_SWD			= 1 << 16;
const int ITEM_2HD_AXE			= 1 << 17;
const int ITEM_SHIELD			= 1 << 18;	/// OBSOLETE!
const int ITEM_BOW				= 1 << 19;
const int ITEM_CROSSBOW			= 1 << 20;
/// magic type (flags)
const int ITEM_RING				= 1 << 11;
const int ITEM_AMULET			= 1 << 22;
const int ITEM_BELT				= 1 << 24;
/// attributes (flags)
const int ITEM_DROPPED 			= 1 << 10;	/// INTERNAL!
const int ITEM_MISSION 			= 1 << 12;
const int ITEM_MULTI			= 1 << 21;
const int ITEM_NFOCUS			= 1 << 23;	/// INTERNAL!
const int ITEM_CREATEAMMO		= 1 << 25;
const int ITEM_NSPLIT			= 1 << 26;
const int ITEM_DRINK			= 1 << 27;	/// OBSOLETE!
const int ITEM_TORCH			= 1 << 28;
const int ITEM_THROW			= 1 << 29;	/// OBSOLETE!
const int ITEM_ACTIVE			= 1 << 30;	/// INTERNAL!

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
const int NPC_DAM_DIVE_TIME								=	100;
const int DAM_CRITICAL_MULTIPLIER						=	2;
const int DAM_NOSTAMINA_PERCENT							=	80;

const int BLOOD_SIZE_DIVISOR							=	1000;
const int BLOOD_DAMAGE_MAX								=	200;

const int DAMAGE_FLY_CM_MAX								=	2000;
const int DAMAGE_FLY_CM_MIN	                            =	300;
const int DAMAGE_FLY_CM_PER_POINT						=	5;

const int IMMUNE										=	-1;

const float NPC_COLLISION_CORRECTION_SCALER				=	0.75;

///******************************************************************************************
///	SENSES
///******************************************************************************************

const int SENSE_SEE					=	1 << 0;
const int SENSE_HEAR				=	1 << 1;
const int SENSE_SMELL				=	1 << 2;

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

const int IMPORTANT					=	1;

const int INF_TELL					=	0;
const int INF_UNKNOWN				=	2;

///******************************************************************************************
///	LOG TYPES && MISSION STATUS
///******************************************************************************************

const int LOG_MISSION				=	0;
const int LOG_NOTE					=	1;

/// ACTIVE
const int LOG_RUNNING				=	1;
const int LOG_SUCCESS				=	2;
const int LOG_FAILED				=	3;
const int LOG_OBSOLETE				=	4;

/// PASSIVE
const int LOG_CANCELED				=	5;	/// new!!!
const int LOG_PROGRESS				=	6;	/// new!!!

///******************************************************************************************
///	ATTITUDES
///******************************************************************************************

const int ATT_HOSTILE				=	0;
const int ATT_ANGRY					=	1;
const int ATT_NEUTRAL				=	2;
const int ATT_FRIENDLY				=	3;

///******************************************************************************************
///	GUILDS
///******************************************************************************************

/// HUMAN
const int GIL_NONE						=	0;
const int GIL_PAL						=	1;
const int GIL_MIL						=	2;	/// GIL_ROY
const int GIL_VLK						=	3;
const int GIL_KDF						=	4;	/// GIL_MAG
const int GIL_NOV						=	5;
const int GIL_DJG						=	6;
const int GIL_SLD						=	7;	/// for orc sld
const int GIL_BAU						=	8;
const int GIL_BDT						=	9;	/// bandits + pirates
const int GIL_STRF						=	10;
const int GIL_DMT						=	11;
const int GIL_OUT						=	12;
const int GIL_PIR						=	13;	/// GIL_ASA
const int GIL_KDW						=	14;
const int GIL_EMPTY_D					=	15;

const int GIL_HUMAN						=	1;
const int GIL_PUBLIC					=	15;
const int GIL_SEPERATOR_HUM				=	16;

/// MONSTER
const int GIL_MEATBUG					=	17;
const int GIL_LIVESTOCK					=	18;	/// changed!!!
const int GIL_GOBBO						=	19;
const int GIL_GOBBO_SKELETON			=	20;
const int GIL_SUMMONED_GOBBO_SKELETON 	=	21;
const int GIL_SCAVENGER					=	22;
const int GIL_GIANT_RAT					=	23;
const int GIL_GIANT_BUG					=	24;
const int GIL_BLOODFLY					=	25;
const int GIL_WARAN						=	26;
const int GIL_WOLF						=	27;
const int GIL_SUMMONED_WOLF				=	28;
const int GIL_MINECRAWLER				=	29;
const int GIL_LURKER					=	30;
const int GIL_SKELETON					=	31;
const int GIL_SUMMONED_SKELETON			=	32;
const int GIL_SKELETON_MAGE				=	33;
const int GIL_ZOMBIE					=	34;
const int GIL_SNAPPER					=	35;
const int GIL_SHADOWBEAST				=	36;
const int GIL_SHADOWBEAST_SKELETON		=	37;
const int GIL_HARPY						=	38;
const int GIL_GOLEM						=	39;	/// changed!!!
const int GIL_TREANT					=	40;	/// new!!!
const int GIL_TIGER						=	41;	/// new!!!
const int GIL_SUMMONED_GOLEM			=	42;
const int GIL_DEMON						=	43;
const int GIL_SUMMONED_DEMON			=	44;
const int GIL_TROLL						=	45;
const int GIL_SWAMPSHARK				=	46;
const int GIL_DRAGON					=	47;
const int GIL_MOLERAT					=	48;
const int GIL_ALLIGATOR					=	49;
const int GIL_SWAMPGOLEM				=	50;
const int GIL_STONEGUARDIAN				=	51;
const int GIL_GARGOYLE					=	52;
const int GIL_OGRE						=	53;	/// new!!!
const int GIL_SUMMONEDGUARDIAN			=	54;
const int GIL_SUMMONEDZOMBIE			=	55;	/// obsolete!!!
//const int GIL_NEUTRAL					=	55;	/// new!!!
const int GIL_WILD						=	56;	/// new!!!
const int GIL_SUMMONED					=	57;	/// new!!!

/// ORC
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
	var int		DISABLE_AUTOROLL	[GIL_MAX];		///	DEFAULT = 0;  0 = Autoroll enabled / 1 = Autoroll disabled
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

const int NPC_SOUND_DROPTAKE		=	1;
const int NPC_SOUND_SPEAK			=	3;
const int NPC_SOUND_STEPS			=	4;
const int NPC_SOUND_THROWCOLL		=	5;
const int NPC_SOUND_DRAWWEAPON		=	6;
const int NPC_SOUND_SCREAM			=	7;
const int NPC_SOUND_FIGHT			=	8;

///******************************************************************************************
///	MATERIAL TYPES
///******************************************************************************************

const int MAT_WOOD					=	0;
const int MAT_STONE					=	1;
const int MAT_METAL					=	2;
const int MAT_LEATHER				=	3;
const int MAT_CLAY					=	4;
const int MAT_GLAS					=	5;

///******************************************************************************************
///	OTHER CONSTANTS
///******************************************************************************************

const int TIME_INFINITE							=	-1000000 / 1000;
const int NPC_VOICE_VARIATION_MAX				=	10;

const string TRADE_CURRENCY_INSTANCE			=	"ITMI_GOLD";
const float TRADE_VALUE_MULTIPLIER				=	0.15;	/// MOD: the multiplier is set in ZS_Talk

///******************************************************************************************
///	SPELL CATEGORIES
///******************************************************************************************

const int SPELL_GOOD				=	0;
const int SPELL_NEUTRAL				=	1;
const int SPELL_BAD					=	2;

///******************************************************************************************
///	SPELL INVEST CONSTS
///******************************************************************************************

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

/// basic spells
const int SPL_Light					=	0;	/// improved!!!
const int SPL_Heal					=	1;	/// improved!!!
const int SPL_Telekinesis			=	2;	/// new!!!

/// PAL spells
const int SPL_PalBless				=	3;	/// new!!!
const int SPL_PalFaith				=	4;	/// new!!! unfinished!!!
const int SPL_PalHolyBolt			=	5;	/// improved!!!
const int SPL_PalGlory				=	6;	/// new!!! unfinished!!!
const int SPL_PalRepelEvil			=	7;	/// improved!!!
const int SPL_PalJustice			=	8;	/// new!!! unfinished!!!
const int SPL_PalDestroyEvil		=	9;	/// improved!!!

/// common spells
const int SPL_Resurrection			=	10;	/// new!!!
const int SPL_Rage					=	11;	/// new!!!
const int SPL_Seduction				=	12;	/// new!!!
const int SPL_Reserved_13			=	13;
const int SPL_Reserved_14			=	14;
const int SPL_Reserved_15			=	15;
const int SPL_Reserved_16			=	16;
const int SPL_Reserved_17			=	17;
const int SPL_NightToDay			=	18;	/// new!!!
const int SPL_FireBolt				=	19;

const int SPL_IceBolt				=	20;
const int SPL_Stealth				=	21;	/// new!!!
const int SPL_SkullBolt				=	22;	/// new!!!
const int SPL_InstantFireball		=	23;
const int SPL_Zap					=	24;
const int SPL_Slimeball				=	25;	/// new!!! unfinished!!!
const int SPL_WindFist				=	26;
const int SPL_Sleep					=	27;
const int SPL_Charm					=	28;
const int SPL_LightningFlash		=	29;

const int SPL_ChargeFireball		=	30;
const int SPL_Curse					=	31;	/// new!!! unfinished!!!
const int SPL_Fear					=	32;	/// improved!!!
const int SPL_IceCube				=	33;
const int SPL_ChargeZap				=	34;
const int SPL_SummonGolem			=	35;	/// improved!!!
const int SPL_DestroyUndead			=	36;
const int SPL_Pyrokinesis			=	37;
const int SPL_Firestorm				=	38;
const int SPL_IceWave				=	39;

const int SPL_SummonDemon			=	40;	/// improved!!!
const int SPL_Explosion				=	41;	/// new!!! unfinished!!!
const int SPL_Firerain				=	42;
const int SPL_BreathOfDeath			=	43;
const int SPL_MassDeath				=	44;
const int SPL_ArmyOfDarkness		=	45;	/// improved!!!
const int SPL_Shrink				=	46;	/// changed!!!
const int SPL_Tame					=	47;	/// new!!!
const int SPL_RunicEchoes			=	48;	/// new!!! unfinished!!!
const int SPL_SlowTime				=	49;	/// new!!!

const int SPL_HealingAura			=	50;	/// new!!! unfinished!!!
const int SPL_StoneSkin				=	51;	/// new!!! unfinished!!!
const int SPL_AirShield				=	52;	/// new!!! unfinished!!!
const int SPL_FireShield			=	53;	/// new!!! unfinished!!!
const int SPL_DarkBarrier			=	54;	/// new!!! unfinished!!!

/// player spells
const int SPL_BeliarRage			=	55;	/// improved!!!
const int SPL_MasterOfDisaster		=	56;

/// special spells
const int SPL_Teleport				=	57;	/// changed!!!
const int SPL_Transform				=	58;	/// changed!!!
const int SPL_Summon				=	59;	/// changed!!!

/// npc spells
const int SPL_ConcussionSpell		=	60;	/// changed!!!
const int SPL_DeathSpell			=	61;	/// changed!!!
const int SPL_Dragonball			=	62;	/// new!!!
const int SPL_BlackDragonball		=	63;	/// new!!!
const int SPL_BlueFireball			=	64;	/// new!!!
const int SPL_RedFireball			=	65;	/// new!!!
const int SPL_Reserved_66			=	66;
const int SPL_Reserved_67			=	67;
const int SPL_Reserved_68 			=	68;
const int SPL_Reserved_69			=	69;

/// common spells
const int SPL_Thunderstorm			=	70;
const int SPL_Whirlwind				=	71;
const int SPL_WaterFist				=	72;	/// improved!!!
const int SPL_IceLance				=	73;	/// changed!!!
const int SPL_Inflate				=	74;
const int SPL_Geyser	 			=	75;	/// improved!!!
const int SPL_Fireburning			=	76;	/// new!!!
const int SPL_ChainLightning		=	77;	/// new!!! unfinished!!!
const int SPL_Hurricane				=	78;	/// new!!! unfinished!!!
const int SPL_LightFlash			=	79;	/// new!!! unfinished!!!

const int SPL_Plague				=	80;	/// new!!! unfinished!!!
const int SPL_Swarm					=	81;
const int SPL_GreenTentacle			=	82;	/// changed!!!
const int SPL_Earthquake			=	83;	/// new!!!
const int SPL_Rock					=	84;	/// new!!!
const int SPL_Mysticball			=	85;	/// new!!!
const int SPL_SuckEnergy			=	86;	/// changed!!!
const int SPL_Skull					=	87;
const int SPL_Elevate				=	88;	/// new!!!
const int SPL_Crush					=	89;	/// new!!! unfinished!!!

/// ...
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
	/// basic spells
	"nLight",				// 0	SPL_Light
	"nHeal",  				// 1	SPL_Heal
	"Telekinesis",  		// 2	SPL_Telekinesis
	
	/// PAL spells
	"PalBless",  			// 3	SPL_PalBless
	"PalFaith",  			// 4	SPL_PalFaith
	"PalHolyBolt",			// 5	SPL_PalHolyBolt
	"PalGlory",  			// 6	SPL_PalGlory
	"PalRepelEvil",  		// 7	SPL_PalDestroyEvil
	"PalJustice",			// 8	SPL_PalJustice
	"PalDestroyEvil",		// 9	SPL_PalDestroyEvil
	
	/// common spells
	"Resurrection",			// 10	SPL_Resurrection
    "Rage",					// 11	SPL_Rage
	"Seduction",  			// 12	SPL_Seduction
	"Light",  				// 13	SPL_Reserved_13
	"Light",				// 14	SPL_Reserved_14
	"Light",				// 15	SPL_Reserved_15
	"Light",				// 16	SPL_Reserved_16
	"Light",				// 17	SPL_Reserved_17
	"NightToDay",  			// 18	SPL_NightToDay
	"FireBolt",				// 19	SPL_FireBolt
	
	"IceBolt",  			// 20	SPL_IceBolt
	"Stealth",  			// 21	SPL_Stealth
	"SkullBolt",  			// 22	SPL_SkullBolt
	"InstantFireball",  	// 23	SPL_InstantFireball
	"Zap",					// 24	SPL_Zap
	"Slimeball",			// 25	SPL_Slimeball
	"WindFist",  			// 26	SPL_WindFist
	"Sleep",  				// 27	SPL_Sleep
	"Charm",  				// 28	SPL_Charm
	"LightningFlash",		// 29	SPL_LightningFlash
	
	"ChargeFireball",  		// 30	SPL_ChargeFireball
	"Curse",  				// 31	SPL_Curse
	"Fear",  				// 32	SPL_Fear
	"Icecube",  			// 33	SPL_IceCube
	"ChargeZap",  			// 34	SPL_ChargeZap
	"nSummonGolem",  		// 35	SPL_SummonGolem
	"DestroyUndead",  		// 36	SPL_DestroyUndead
	"Pyrokinesis",  		// 37	SPL_Pyrokinesis
	"Firestorm", 			// 38	SPL_Firestorm
	"IceWave",  			// 39	SPL_IceWave
	
	"nSummonDemon",  		// 40	SPL_SummonDemon
	"Explosion",  			// 41	SPL_Explosion
	"Firerain",  			// 42	SPL_Firerain
	"BreathOfDeath",  		// 43	SPL_BreathOfDeath
	"MassDeath",  			// 44	SPL_MassDeath
	"ArmyOfDarkness", 		// 45	SPL_ArmyOfDarkness
	"Shrink",  				// 46	SPL_Shrink
	"Tame",  				// 47	SPL_Tame
	"RunicEchoes",  		// 48	SPL_RunicEchoes
	"SlowTime",  			// 49	SPL_SlowTime
	
	"HealingAura",  		// 50	SPL_HealingAura
	"StoneSkin",  			// 51	SPL_StoneSkin
	"AirShield", 			// 52	SPL_AirShield
	"FireShield",  			// 53	SPL_FireShield
	"DarkBarrier",  		// 54	SPL_DarkBarrier
	
	/// player spells
	"Energyball",  			// 55	SPL_BeliarRage
	"MasterOfDisaster",  	// 56	SPL_MasterOfDisaster
	
	/// special spells
	"Teleport",  			// 57	SPL_Teleport
	"Transform",  			// 58	SPL_Transform
	"Summon",  				// 59	SPL_Summon
	
	/// npc spells
	"ConcussionSpell",		// 60	SPL_ConcussionSpell
	"DeathSpell",			// 61	SPL_DeathSpell
	"Dragonball",  			// 62	SPL_Dragonball
	"BlackDragonball",  	// 63	SPL_BlackDragonball
	"BlueFireball",			// 64	SPL_BlueFireball
	"RedFireball",			// 65	SPL_RedFireball
	"Light",				// 66	SPL_Reserved_66
	"Light",				// 67	SPL_Reserved_67
	"Light",				// 68	SPL_Reserved_68
	"Light",				// 69	SPL_Reserved_69
	
	/// common spells
	"Thunderstorm",			// 70	SPL_Thunderstorm
	"Whirlwind",  			// 71	SPL_Whirlwind
	"WaterFist",  			// 72	SPL_WaterFist
	"IceLance",  			// 73	SPL_IceLance
	"Inflate",  			// 74	SPL_Inflate
	"Geyser",  				// 75	SPL_Geyser
	"Fireburning",  		// 76	SPL_Fireburning
	"ChainLightning", 	 	// 77	SPL_ChainLightning
	"Hurricane",  			// 78	SPL_Hurricane
	"LightFlash",  			// 79	SPL_LightFlash
	
	"Plague",  				// 80	SPL_Plague
	"Swarm",				// 81	SPL_Swarm
	"GreenTentacle", 		// 82	SPL_GreenTentacle
	"Earthquake",  			// 83	SPL_Earthquake
	"Rock", 				// 84	SPL_Rock
	"Mysticball", 			// 85	SPL_Mysticball
	"SuckEnergy",  			// 86	SPL_SuckEnergy
	"Skull",  				// 87	SPL_Skull
	"Elevate",  			// 88	SPL_Elevate
	"Crush",				// 89	SPL_Crush
	
	/// ...
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
	
	/// basic spells
	"SLE",					// 0	SPL_Light
	"HEA",  				// 1	SPL_Heal
	"TEL",  				// 2	SPL_Telekinesis
	
	/// PAL spells
	"SLE",  				// 3	SPL_PalBless
	"HEA",  				// 4	SPL_PalFaith
	"FBT",					// 5	SPL_PalHolyBolt
	"HEA",  				// 6	SPL_PalGlory
	"FBT",  				// 7	SPL_PalRepelEvil
 	"HEA",					// 8	SPL_PalJustice
	"FBT",					// 9	SPL_PalDestroyEvil
	
	/// common spells
	"SUM",  				// 10	SPL_Resurrection
	"SLE",  				// 11	SPL_Rage
	"SLE",  				// 12	SPL_Seduction
	"XXX",  				// 13	SPL_Reserved_13
	"XXX",  				// 14	SPL_Reserved_14
	"XXX",  				// 15	SPL_Reserved_15
	"XXX",  				// 16	SPL_Reserved_16
	"XXX",  				// 17	SPL_Reserved_17
	"SLE",  				// 18	SPL_NightToDay
	"FBT",  				// 19	SPL_FireBolt
	
	"FBT",  				// 20	SPL_IceBolt
	"FEA",  				// 21	SPL_Stealth
	"FBT",  				// 22	SPL_SkullBolt
	"FBT",  				// 23	SPL_InstantFireball
	"FBT",					// 24	SPL_Zap
	"FBT",					// 25	SPL_Slimeball
	"WND",  				// 26	SPL_WindFist
	"SLE",  				// 27	SPL_Sleep
	"SLE",  				// 28	SPL_Charm
	"WND",  				// 29	SPL_LightningFlash
	
	"FIB",  				// 30	SPL_ChargeFireball
	"FRZ",  				// 31	SPL_Curse
	"FEA",  				// 32	SPL_Fear
	"FRZ",  				// 33	SPL_IceCube
	"FIB",  				// 34	SPL_ChargeZap
	"SUM",  				// 35	SPL_SummonGolem
	"FIB",  				// 36	SPL_DestroyUndead
	"FIB",  				// 37	SPL_Pyrokinesis
	"FIB",  				// 38	SPL_Firestorm
	"FEA",  				// 39	SPL_IceWave
	
	"SUM",  				// 40	SPL_SummonDemon
	"EXP",  				// 41	SPL_Explosion
	"STM",  				// 42	SPL_Firerain
	"FIB",  				// 43	SPL_BreathOfDeath
	"MSD",  				// 44	SPL_MassDeath
	"MSD",  				// 45	SPL_ArmyOfDarkness
	"SLE",  				// 46	SPL_Shrink
	"SLE",  				// 47	SPL_Tame
	"MSD",  				// 48	SPL_RunicEchoes
	"SLE",  				// 49	SPL_SlowTime
	
	"HEA",  				// 50	SPL_HealingAura
	"HEA",  				// 51	SPL_StoneSkin
	"HEA",  				// 52	SPL_AirShield
	"HEA",  				// 53	SPL_FireShield
	"HEA",  				// 54	SPL_DarkBarrier
	
	/// player spells
	"WND",					// 55	SPL_BeliarRage
	"FIB",					// 56	SPL_MasterOfDisaster
	
	/// special spells
	"HEA",  				// 57	SPL_Teleport
	"TRF",  				// 58	SPL_Transform
	"SUM",  				// 59	SPL_Summon
	
	/// npc spells
	"FBT",  				// 60	SPL_ConcussionSpell
	"FBT",  				// 61	SPL_DeathSpell
	"FBT",  				// 62	SPL_Dragonball
	"FBT",  				// 63	SPL_BlackDragonball
	"FBT",  				// 64	SPL_BlueFireball
	"FBT",  				// 65	SPL_RedFireball
	"XXX",  				// 66	SPL_Reserved_66
	"XXX",  				// 67	SPL_Reserved_67
	"XXX",					// 68	SPL_Reserved_68
	"XXX",					// 69	SPL_Reserved_69
	
	/// common spells
	"STM",					// 70	SPL_Thunderstorm
	"WHI",  				// 71	SPL_Whirlwind
	"WND",  				// 72	SPL_WaterFist
	"FBT",  				// 73	SPL_IceLance
	"SLE",  				// 74	SPL_Inflate
	"WND",  				// 75	SPL_Geyser
	"PYR",  				// 76	SPL_Fireburning
	"LIN",  				// 77	SPL_ChainLightning
	"EXP",  				// 78	SPL_Hurricane
	"LIN",  				// 79	SPL_LightFlash
	
	"FEA",  				// 80	SPL_Plague
	"FBT",					// 81	SPL_Swarm
	"WND",  				// 82	SPL_GreenTentacle
	"FOT",  				// 83	SPL_Earthquake
	"FBT",  				// 84	SPL_Rock
	"FBT",  				// 85	SPL_Mysticball
	"WND",  				// 86	SPL_SuckEnergy
	"WND",  				// 87	SPL_Skull
	"SUM",  				// 88	SPL_Elevate
	"FOT",					// 89	SPL_Crush
	
	/// ...
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

/// fight
const int NPC_TALENT_1H					=	1;
const int NPC_TALENT_2H					=	2;
const int NPC_TALENT_BOW				=	3;
const int NPC_TALENT_CROSSBOW			=	4;
const int NPC_TALENT_2ndH				=	10;	/// new!!!
/// magic
const int NPC_TALENT_MAGIC				=	7;
const int NPC_TALENT_ENCHANTING			=	14;
const int NPC_TALENT_LANGUAGE			=	17;
/// movement
const int NPC_TALENT_SNEAK				=	8;
const int NPC_TALENT_PRORUN				=	9;	/// new!!!
const int NPC_TALENT_ACROBATIC			=	11;
/// thief
const int NPC_TALENT_PICKLOCK			=	5;
const int NPC_TALENT_PICKPOCKET			=	6;	/// changed!!!
const int NPC_TALENT_PERSUASION			=	12;	/// new!!!
/// craft
const int NPC_TALENT_SMITH				=	13;
const int NPC_TALENT_ALCHEMY			=	15;
const int NPC_TALENT_HUNTING			=	16;
/// other
const int NPC_TALENT_COOKING			=	18;	/// new!!!
const int NPC_TALENT_PROTPOISON			=	19;	/// new!!!
/// info
const int NPC_TALENT_CHAPTER			=	20;	/// new!!!
const int NPC_TALENT_DIFFICULTY			=	21;	/// new!!!

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
