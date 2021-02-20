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

const int ATR_HITPOINTS				=	0;	/// Lebenspunkte
const int ATR_HITPOINTS_MAX			=	1;	/// Max. Lebenspunkte
const int ATR_MANA					=	2;	/// Mana Mana
const int ATR_MANA_MAX				=	3;	/// Mana Max
const int ATR_STRENGTH				=	4;	/// Stärke
const int ATR_DEXTERITY				=	5;	/// Geschick
const int ATR_REGENERATEHP			=	6;	/// Regenerierung von HP alle x sekunden
const int ATR_REGENERATEMP			=	7;	/// Regenerierung von Mana alle x sekunden

const int ATR_INDEX_MAX				=	8;

/// new
const int ATR_POWER					=	26;

///******************************************************************************************
///	NPC FLAGS
///******************************************************************************************

const int NPC_FLAG_FRIEND			=	1 << 0;
const int NPC_FLAG_IMMORTAL			=	1 << 1;
const int NPC_FLAG_GHOST			=	1 << 2;
const int NPC_FLAG_IMPORTANT		=	1 << 3;

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
///	INVENTORY CAPACITIES	// werden vom Programm ignoriert - INV ist unendlich groß!
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
const int ITEM_KAT_NONE			=	1 <<  0;  /// Sonstiges
const int ITEM_KAT_NF			=	1 <<  1;  /// Nahkampfwaffen
const int ITEM_KAT_FF			=	1 <<  2;  /// Fernkampfwaffen
const int ITEM_KAT_MUN			=	1 <<  3;  /// Munition (MULTI)
const int ITEM_KAT_ARMOR		=	1 <<  4;  /// Ruestungen
const int ITEM_KAT_FOOD			=	1 <<  5;  /// Nahrungsmittel (MULTI)
const int ITEM_KAT_DOCS			=	1 <<  6;  /// Dokumente
const int ITEM_KAT_POTIONS		=	1 <<  7;  /// Traenke
const int ITEM_KAT_LIGHT		=	1 <<  8;  /// Lichtquellen
const int ITEM_KAT_RUNE			=	1 <<  9;  /// Runen/Scrolls
const int ITEM_KAT_MAGIC		=	1 << 31;  /// Ringe/Amulette/Guertel
const int ITEM_KAT_KEYS			=	ITEM_KAT_NONE;
/// weapon type (flags)
const int ITEM_DAG				=	1 << 13;  /// (OBSOLETE!)
const int ITEM_SWD				=	1 << 14;  /// Schwert
const int ITEM_AXE				=	1 << 15;  /// Axt
const int ITEM_2HD_SWD			=	1 << 16;  /// Zweihaender
const int ITEM_2HD_AXE			=	1 << 17;  /// Streitaxt
const int ITEM_SHIELD			=	1 << 18;  /// (OBSOLETE!)
const int ITEM_BOW				=	1 << 19;  /// Bogen
const int ITEM_CROSSBOW			=	1 << 20;  /// Armbrust
/// magic type (flags)
const int ITEM_RING				=	1 << 11;  /// Ring
const int ITEM_AMULET			=	1 << 22;  /// Amulet
const int ITEM_BELT				=	1 << 24;  /// Belt
/// attributes (flags)
const int ITEM_DROPPED 			=	1 << 10;  /// (INTERNAL!)
const int ITEM_MISSION 			=	1 << 12;  /// Missionsgegenstand
const int ITEM_MULTI			=	1 << 21;  /// Stapelbar
const int ITEM_NFOCUS			=	1 << 23;  /// (INTERNAL!)
const int ITEM_CREATEAMMO		=	1 << 25;  /// Erzeugt Munition selbst (magisch)
const int ITEM_NSPLIT			=	1 << 26;  /// Kein Split-Item (Waffe als Interact-Item!)
const int ITEM_DRINK			=	1 << 27;  /// (OBSOLETE!)
const int ITEM_TORCH			=	1 << 28;  /// Fackel
const int ITEM_THROW			=	1 << 29;  /// (OBSOLETE!)
const int ITEM_ACTIVE			=	1 << 30;  /// (INTERNAL!)

///******************************************************************************************
///	PROTECTION TYPES v2.0
///******************************************************************************************

const int PROT_BARRIER			=	0;
const int PROT_BLUNT			=	1;
const int PROT_EDGE				=	2;
const int PROT_FIRE				=	3;
const int PROT_FLY				=	4;
const int PROT_MAGIC			=	5;
const int PROT_POINT			=	6;
const int PROT_FALL				=	7;

const int PROT_INDEX_MAX		=	8;

///******************************************************************************************
///	DAMAGE TYPES v2.0 (INDEX)
///******************************************************************************************

const int DAM_INDEX_BARRIER		=	PROT_BARRIER;
const int DAM_INDEX_BLUNT		=	PROT_BLUNT;
const int DAM_INDEX_EDGE		=	PROT_EDGE;
const int DAM_INDEX_FIRE		=	PROT_FIRE;
const int DAM_INDEX_FLY			=	PROT_FLY;
const int DAM_INDEX_MAGIC		=	PROT_MAGIC;
const int DAM_INDEX_POINT		=	PROT_POINT;
const int DAM_INDEX_FALL		=	PROT_FALL;

const int DAM_INDEX_MAX			=	PROT_INDEX_MAX;

///******************************************************************************************
///	DAMAGE TYPES v2.0
///******************************************************************************************

const int DAM_INVALID			=	0;
const int DAM_BARRIER			=	1;
const int DAM_BLUNT				=	DAM_BARRIER	<< 1;
const int DAM_EDGE				=	DAM_BLUNT	<< 1;
const int DAM_FIRE				=	DAM_EDGE	<< 1;
const int DAM_FLY				=	DAM_FIRE	<< 1;
const int DAM_MAGIC				=	DAM_FLY		<< 1;
const int DAM_POINT				=	DAM_MAGIC	<< 1;
const int DAM_FALL				=	DAM_POINT	<< 1;

///******************************************************************************************
///	OTHER DAMAGE CONSTANTS
///******************************************************************************************

const int NPC_ATTACK_FINISH_DISTANCE					=	180;
const int NPC_BURN_TICKS_PER_DAMAGE_POINT				=	800;
const int NPC_BURN_DAMAGE_POINTS_PER_INTERVALL			=	20;
const int DAM_CRITICAL_MULTIPLIER						=	2;

const int BLOOD_SIZE_DIVISOR							=	1000;
const int BLOOD_DAMAGE_MAX								=	200;

const int DAMAGE_FLY_CM_MAX								=	2000;
const int DAMAGE_FLY_CM_MIN	                            =	200;
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
///	NEWS CONSTANTS
///******************************************************************************************

const int IMPORTANT								=	1;

///******************************************************************************************
///	INFO STATUS
///******************************************************************************************

const int INF_TELL								=	0;
const int INF_UNKNOWN							=	2;

///******************************************************************************************
///	MISSION STATUS
///******************************************************************************************

/// ACTIVE
const int LOG_RUNNING							=	1;
const int LOG_SUCCESS							=	2;
const int LOG_FAILED							=	3;
const int LOG_OBSOLETE							=	4;

/// PASSIVE
const int LOG_CANCELED							=	5;
const int LOG_PROGRESS							=	6;

///******************************************************************************************
///	LOG TYPES
///******************************************************************************************

const int LOG_MISSION							=	0;
const int LOG_NOTE								=	1;

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

const int GIL_HUMAN						=	1;		/// Special Guild -> To set Constants for ALL Human Guilds --> wird verwendet in Species.d
const int GIL_PUBLIC					=	15; 	/// für öffentliche Portalräume
const int GIL_SEPERATOR_HUM				=	16;

const int GIL_MEATBUG					=	17;
const int GIL_SHEEP						=	18;
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
const int GIL_STONEGOLEM				=	39;
const int GIL_FIREGOLEM					=	40;
const int GIL_ICEGOLEM					=	41;
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
const int GIL_NEUTRAL					=	53;
const int GIL_SUMMONEDGUARDIAN			=	54;
const int GIL_SUMMONEDZOMBIE			=	55;
const int GIL_SUMMONED					=	56;
const int GIL_WILD						=	57;

const int GIL_SEPERATOR_ORC				=	58;		/// (ehem. 37)

const int GIL_ORC						=	59;
const int GIL_FRIENDLY_ORC				=	60;
const int GIL_UNDEADORC					=	61;
const int GIL_DRACONIAN					=	62;

const int GIL_EMPTY_X					=	63;
const int GIL_EMPTY_Y					=	64;
const int GIL_EMPTY_Z					=	65;

const int GIL_MAX						=	66;		/// (ehem. 42)

///******************************************************************************************
///	GUILDS DESCRIPTION
///******************************************************************************************

class C_GILVALUES
{
	var int		WATER_DEPTH_KNEE				[GIL_MAX];
	var int		WATER_DEPTH_CHEST				[GIL_MAX];
	var int		JUMPUP_HEIGHT					[GIL_MAX];		///	DEFAULT = 200;
//	var int		JUMPUP_FORCE					[GIL_MAX];
	var int		SWIM_TIME						[GIL_MAX];
	var int		DIVE_TIME						[GIL_MAX];
	var int		STEP_HEIGHT						[GIL_MAX];
	var int		JUMPLOW_HEIGHT					[GIL_MAX];
	var int		JUMPMID_HEIGHT					[GIL_MAX];
	var int		SLIDE_ANGLE						[GIL_MAX];
	var int		SLIDE_ANGLE2					[GIL_MAX];
	var int		DISABLE_AUTOROLL				[GIL_MAX];		///	DEFAULT = 0				;  0 = Autoroll  enabled	/ 1 = Autoroll  disabled
	var int		SURFACE_ALIGN					[GIL_MAX];		///	DEFAULT = 0				;  0 = Alignment disabled	/ 1 = Alignment enabled
	var int		CLIMB_HEADING_ANGLE				[GIL_MAX];
	var int		CLIMB_HORIZ_ANGLE				[GIL_MAX];
	var int		CLIMB_GROUND_ANGLE				[GIL_MAX];
	var int		FIGHT_RANGE_BASE				[GIL_MAX];
	var int		FIGHT_RANGE_FIST				[GIL_MAX];
	var int 	FIGHT_RANGE_G					[GIL_MAX];
	var int		FIGHT_RANGE_1HS					[GIL_MAX];
	var int		FIGHT_RANGE_1HA					[GIL_MAX];
	var int		FIGHT_RANGE_2HS					[GIL_MAX];
	var int		FIGHT_RANGE_2HA					[GIL_MAX];
	var int		FALLDOWN_HEIGHT					[GIL_MAX];		///							Wie tief Fallen ohne Schaden ?
	var int		FALLDOWN_DAMAGE					[GIL_MAX];		///							Schaden für jeden weiteren angefangenen Meter.
	var int		BLOOD_DISABLED					[GIL_MAX];		///	DEFAULT = 0					;	Blut ganz ausschalten (z.B. bei Sekletten) ?
	var int		BLOOD_MAX_DISTANCE				[GIL_MAX];		///	DEFAULT = 1000				;	Wie weit spritzt das Blut (in cm) ?
	var int		BLOOD_AMOUNT					[GIL_MAX];		///	DEFAULT = 10				;	Wie viel Blut ?
	var int		BLOOD_FLOW						[GIL_MAX];		///	DEFAULT = 0					;	Soll es sich langsam ausbreiten ?
	var string  BLOOD_EMITTER					[GIL_MAX];		///	DEFAULT = "PFX_BLOOD"		;	Welcher Partikel-Emitter ?
	var string  BLOOD_TEXTURE					[GIL_MAX];		///	DEFAULT = "ZBLOODSPLAT2.TGA";	Welche Textur ?
	var int 	TURN_SPEED						[GIL_MAX];		///	DEFAULT = 150				;
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

var float TRADE_VALUE_MULTIPLIER;
const string TRADE_CURRENCY_INSTANCE			=	"ITMI_GOLD";

///******************************************************************************************
///	SPELL CATEGORIES
///******************************************************************************************

const int SPELL_GOOD		=	0;
const int SPELL_NEUTRAL		=	1;
const int SPELL_BAD			=	2;

///******************************************************************************************
///	SPELL INVEST CONSTS
///******************************************************************************************

const int SPL_DONTINVEST 						=	0;		/// Es können keine weiteren Manapunkte investiert werden. Erst durch CTRL loslassen geht der Spell ab
const int SPL_RECEIVEINVEST						=	1;		/// Wirkung durchgeführt, es können weitere Invest kommen, zB.bei Heal nach jedem Pöppel
const int SPL_SENDCAST							=	2;		/// Starte den Zauber-Effekt (wie CTRL loslassen), automatischer Abbruch
const int SPL_SENDSTOP							=	3;		/// Beende Zauber ohne Effekt
const int SPL_NEXTLEVEL							=	4;		/// setze den Spruch auf den nächsten Level
const int SPL_STATUS_CANINVEST_NO_MANADEC		=	8;
const int SPL_FORCEINVEST		 				=	1 << 16;	/// zieht auf jeden Fall einen Manapunkt ab, egal ob timePerMana abgelaufen ist, oder nicht

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

const int SPL_nLight				=	0;
const int SPL_nHeal					=	1;
const int SPL_PalLight				=	2;		// PAL 1	///zmieniæ na PalBless
const int SPL_PalRemana				=	3;		/// PAL 2a
const int SPL_PalHolyBolt			=	4;		/// PAL 2b
const int SPL_PalBless				=	5;		// PAL 4a	///zmieniæ na coœ innego
const int SPL_PalDestroyEvil		=	6;		/// PAL 4b
const int SPL_SlowTime				=	7; //do zrobienia korzystanie z esencji czasu lub czas odnowienia
const int SPL_Teleport				=	8; //zrobiæ jakiœ wygodniejszy sposób wybierania miejsca teleportacji lub zamieniæ runê na przedmioty teleportacyjne
const int SPL_Telekinesis			=	9;

/// Mys ; Geo ; Ele ; Pyr ; Nec
/// mage spells
const int SPL_MysBolt				=	10;		// MYS 1
const int SPL_MysGhost				=	11;		// MYS 2
const int SPL_MysRoot				=	12;		// MYS 3
const int SPL_MysDomination			=	13;		// MYS 4
const int SPL_MysEchoes				=	14;		// MYS 5
const int SPL_GeoStone				=	15;		/// GEO 1
const int SPL_GeoSkin				=	16;		/// GEO 2
const int SPL_GeoElevate			=	17;		// GEO 3
const int SPL_GeoGolem				=	18;		/// GEO 4
const int SPL_GeoQuake				=	19;		// GEO 5

const int SPL_IceRapidBolt			=	20;		// ELE 1		///EleLightning
const int SPL_AirShield				=	21;		// ELE 2		///EleShield
const int SPL_Freeze				=	22;		// ELE 3		///EleFreeze
const int SPL_AirFist				=	23;		// ELE 4		///EleWind
const int SPL_IceWaving				=	24;		// ELE 5		///EleStorm
const int SPL_BigFireball			=	25;		// PYR 1		///PyrFireball
const int SPL_FireShield			=	26;		// PYR 2		///PyrBurn
const int SPL_Detonate				=	27;		// PYR 3		///PyrDetonate
const int SPL_FireFist				=	28;		// PYR 4		///PyrFlame
const int SPL_Explosion				=	29;		// PYR 5		///PyrExplosion

const int SPL_LifeSteal				=	30;		// NEC 1		///NecSteal
const int SPL_DarkBarrier			=	31;		// NEC 2		///NecBarrier
const int SPL_CreateSkeleton		=	32;		// NEC 3		///NecSkeleton
const int SPL_DemonicRift			=	33;		// NEC 4		///NecRift / NecPlague
const int SPL_InstantDeath			=	34;		// NEC 5		///NecDeath
const int SPL_ChainLightning		=	35;		// LUM 1	///dziedzina magii do usuniêcia  /// BELIAR 1 = "kl¹twa" (kradzie¿ si³y, zrêcznoœci i mocy oraz zatrucie i redukcja many)
const int SPL_Ghost					=	36;		// LUM 2	///dziedzina magii do usuniêcia  /// BELIAR 2 = "kradzie¿ ¿ycia"
const int SPL_Lightkinesis			=	37;		// LUM 3	///dziedzina magii do usuniêcia  /// BELIAR 3 = "gniew beliara" (nowe jako czerwona kula)
const int SPL_LightShine			=	38;		// LUM 4	///dziedzina magii do usuniêcia  /// BELIAR 4 = "tchnienie œmierci"
const int SPL_LightningStorm		=	39;		// LUM 5	///dziedzina magii do usuniêcia  /// BELIAR 5 = "przyzwanie demona"

/// other
const int SPL_Reserved_40			=	40; // ADANOS 1a = "gejzer" dla magów wody
const int SPL_Reserved_41			=	41; // ADANOS 3a = "wodna piêœæ" dla magów wody
const int SPL_Reserved_42			=	42; //tu zostanie przeniesione zniszczenie nieumar³ych
const int SPL_Reserved_43			=	43; //tu bêdzie Fala œmierci
const int SPL_Reserved_44			=	44; //tu bêdzie Deszcz ognia
const int SPL_Reserved_45			=	45; //tu bêdzie Pyrokineza
const int SPL_Reserved_46			=	46; //tu bêdzie Elektrokineza
const int SPL_Reserved_47			=	47;
const int SPL_Transform				=	48; //zostaje ¿eby by³o jako zwój do questa w G1, ale zmieniæ ¿eby zmienia³o w nacelowanego potworka
const int SPL_Summon				=	49; //raczej do usuniêcia

const int SPL_Sleep					=	50;
const int SPL_MassSleep				=	51; //zrobiæ coœ ¿eby zmieœciæ to w zwyk³ym Sleep (zamiast tego Szale sprawiedliwoœci)
const int SPL_Fear					=	52;
const int SPL_MassFear				=	53; //zrobiæ coœ ¿eby zmieœciæ to w zwyk³ym Fear (zamiast tego Noc w dzieñ)
const int SPL_Rage					=	54;
const int SPL_MassRage				=	55; //zrobiæ coœ ¿eby zmieœciæ to w zwyk³ym Rage (zamiast tego Podró¿ duszy ???)
const int SPL_Shrink				=	56;
const int SPL_Control				=	57;
const int SPL_Domination			=	58; //do usuniêcia bo w sumie po co (zamiast tego Wskrzeszenie)
const int SPL_Charm					=	59;

/// for npc/monsters
const int SPL_Reserved_60			=	60;
const int SPL_DeathBolt				=	61; //chyba do usuniêcia jesli magowie bêd¹ mogli korzystaæ z 1 krêgu zwyk³ych dziedziñ magii
const int SPL_Reserved_62			=	62;
const int SPL_ConcussionBolt		=	63; //do sprawdzenia
const int SPL_SkeletonSpell			=	64; //do sprawdzenia bo zbugowany dmg chyba
const int SPL_GolemSpell			=	65; //mo¿liwe ¿e do usuniêcia i bêdzie korzysta³ z 1 krêgu Geo (ale raczej nie)
const int SPL_OrcSpell				=	66;
const int SPL_DementorSpell	        =	67; //mo¿liwe ¿e do usuniêcia i bêdzie korzysta³ z nowych zaklêæ Beliara (1-3)
const int SPL_DemasterSpell			=	68; //mo¿liwe ¿e do usuniêcia i bêdzie korzysta³ z nowych zaklêæ Beliara (4-5)
const int SPL_DragonBall			=	69;

/// special / other
const int SPL_MasterOfDisaster		=	70;	//do usuniêcia bo w sumie po co
const int SPL_BeliarRage			=	71; //hmmm, chyba lepiej daæ od razu jakieœ Tchnienie œmierci dla magowego szponu Beliara
const int SPL_Reserved_72			=	72;
const int SPL_Reserved_73			=	73;
const int SPL_Reserved_74			=	74;
const int SPL_Reserved_75			=	75;
const int SPL_Reserved_76			=	76;
const int SPL_Reserved_77			=	77;
const int SPL_Reserved_78			=	78;
const int SPL_Reserved_79			=	79;

const int SPL_cB_Fireball			=	80;
const int SPL_cR_Fireball			=	81;
const int SPL_cG_Fireball			=	82;
const int SPL_cY_Fireball			=	83;
const int SPL_Reserved_84			=	84;
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

const int MAX_SPELL					=	100;   /// 59 (Gothic), 68 (Gothic2), 100 (G2Addon)

///******************************************************************************************
///	SPELL EFFECT NAMES
///******************************************************************************************
const string spellFxInstanceNames[MAX_SPELL] =
{
	"nLight",				/// 0	SPL_nLight
	"nHeal",  				/// 1	SPL_nHeal
	"PalLight",  			/// 2	SPL_PalLight
	"PalRemana",  			/// 3	SPL_PalRemana
	"PalHolyBolt",			/// 4	SPL_PalHolyBolt
	"PalBless",  			/// 5	SPL_PalBless
	"PalDestroyEvil",  		/// 6	SPL_PalDestroyEvil
	"SlowTime",  			/// 7	SPL_SlowTime
	"Teleport",  			/// 8	SPL_Teleport
	"Telekinesis",  		/// 9	SPL_Telekinesis
	
	"MysBolt",  			/// 10	SPL_MysBolt
	"MysGhost",  			/// 11	SPL_MysGhost
	"MysRoot",  			/// 12	SPL_MysRoot
	"MysDomination",  		/// 13	SPL_MysDomination
	"MysEchoes",  			/// 14	SPL_MysEchoes
	"GeoStone",  			/// 15	SPL_GeoStone
	"GeoSkin",  			/// 16	SPL_GeoSkin
	"GeoElevate",  			/// 17	SPL_GeoElevate
	"GeoGolem",				/// 18	SPL_GeoGolem
	"GeoQuake",				/// 19	SPL_GeoQuake
	
	"IceRapidBolt",			/// 20	SPL_IceRapidBolt
	"AirShield",  			/// 21	SPL_AirShield
	"Freeze",				/// 22	SPL_Freeze
	"AirFist",  			/// 23	SPL_AirFist
	"IceWaving",			/// 24	SPL_IceWaving
	"BigFireball",  		/// 25	SPL_BigFireball
	"FireShield",  			/// 26	SPL_FireShield
	"Detonate",  			/// 27	SPL_Detonate
	"FireFist",  			/// 28	SPL_FireFist
	"Explosion",			/// 29	SPL_Explosion
	
	"LifeSteal",  			/// 30	SPL_LifeSteal
	"DarkBarrier",  		/// 31	SPL_DarkBarrier
	"CreateSkeleton",  		/// 32	SPL_CreateSkeleton
	"DemonicRift",  		/// 33	SPL_DemonicRift
	"InstantDeath",  		/// 34	SPL_InstantDeath
	"ChainLightning",  		/// 53	SPL_ChainLightning
	"Ghost",  				/// 36	SPL_Ghost
	"Lightkinesis",  		/// 37	SPL_Lightkinesis
	"LightShine", 			/// 38	SPL_LightShine
	"LightningStorm",  		/// 39	SPL_LightningStorm
	
	"Light",  				/// 40	SPL_Reserved_40
	"Light",  				/// 41	SPL_Reserved_41
	"Light",  				/// 42	SPL_Reserved_42
	"Light",  				/// 43	SPL_Reserved_43
	"Light",  				/// 44	SPL_Reserved_44
	"Light", 				/// 45	SPL_Reserved_45
	"Light",  				/// 46	SPL_Reserved_46
	"Light",  				/// 47	SPL_Reserved_47
	"Transform",  			/// 48	SPL_Transform
	"Summon",  				/// 49	SPL_Summon
	
	"Sleep",  				/// 50	SPL_Sleep
	"MassSleep",  			/// 51	SPL_MassSleep
	"Fear",  				/// 52	SPL_Fear
	"MassFear",  			/// 53	SPL_MassFear
	"Rage",  				/// 54	SPL_Rage
	"MassRage",  			/// 55	SPL_MassRage
	"Shrink",  				/// 56	SPL_Shrink
	"Control",  			/// 57	SPL_Control
	"Domination",  			/// 58	SPL_Domination
	"Charm",				/// 59	SPL_Charm
	
	"Light", 				/// 60	SPL_Reserved_60
	"DeathBolt",  			/// 61	SPL_DeathBolt
	"Light", 				/// 62	SPL_Reserved_62
	"Concussionbolt", 		/// 63	SPL_ConcussionBolt
	"SkeletonSpell",  		/// 64	SPL_SkeletonSpell
	"GolemSpell",  			/// 65	SPL_GolemSpell
	"OrcSpell",  			/// 66	SPL_OrcSpell
	"DementorSpell",		/// 67	SPL_DementorSpell
	"DemasterSpell",		/// 68	SPL_DemasterSpell
	"DragonBall",			/// 69	SPL_DragonBall
	
    "MasterOfDisaster",		/// 70	SPL_MasterOfDisaster
	"BeliarRage",			/// 71	SPL_BeliarRage
	"Light",				/// 72	SPL_Reserved_72
	"Light",				/// 73	SPL_Reserved_73
	"Light",				/// 74	SPL_Reserved_74
	"Light",				/// 75	SPL_Reserved_75
	"Light",				/// 76	SPL_Reserved_76
	"Light",				/// 77	SPL_Reserved_77
	"Light",				/// 78	SPL_Reserved_78
	"Light",				/// 79	SPL_Reserved_79
	
	"cB_Fireball",			/// 80	SPL_cB_Fireball
	"cR_Fireball",			/// 81	SPL_cR_Fireball
	"cG_Fireball",			/// 82	SPL_cG_Fireball
	"cY_Fireball",			/// 83	SPL_cY_Fireball
	"Light",				/// 84	SPL_Reserved_84
	"Light",				/// 85	SPL_Reserved_85
	"Light",				/// 86	SPL_Reserved_86
	"Light",				/// 87	SPL_Reserved_87
	"Light",				/// 88	SPL_Reserved_88
	"Light",				/// 89	SPL_Reserved_89
	
	"Light",				/// 90	SPL_Reserved_90
	"Light",				/// 91	SPL_Reserved_91
	"Light",				/// 92	SPL_Reserved_92
	"Light",				/// 93	SPL_Reserved_93
	"Light",				/// 94	SPL_Reserved_94
	"Light",				/// 95	SPL_Reserved_95
	"Light",				/// 96	SPL_Reserved_96
	"Light",				/// 97	SPL_Reserved_97
	"Light",				/// 98	SPL_Reserved_98
	"Light"					/// 99	SPL_Reserved_99
};

///******************************************************************************************
///	SPELL ANIMATION PREFIXES
///******************************************************************************************
const string spellFxAniLetters[MAX_SPELL] =
{
	/// SLE, HEA, FBT, FIB, SUM, WND, FEA, FRZ, MSD, TRF, STM, WHI, TEL, PYR, CON, LIN, EXP, FOT, RPF, SAC
	
	"SLE",					/// 0	SPL_nLight
	"HEA",  				/// 1	SPL_nHeal
	"SLE",  				/// 2	SPL_PalLight
	"HEA",  				/// 3	SPL_PalRemana
	"FBT",					/// 4	SPL_PalHolyBolt
	"FBT",  				/// 5	SPL_PalBless
	"FIB",  				/// 6	SPL_PalDestroyEvil
	"MSD",  				/// 7	SPL_SlowTime
	"HEA",  				/// 8	SPL_Teleport
	"TEL",  				/// 9	SPL_Telekinesis
	
	"FBT",  				/// 10	SPL_MysBolt
	"FEA",  				/// 11	SPL_MysGhost
	"FRZ",  				/// 12	SPL_MysRoot
	"HEA",  				/// 13	SPL_MysDomination
	"MSD",  				/// 14	SPL_MysEchoes
	"FBT",  				/// 15	SPL_GeoStone
	"FEA",  				/// 16	SPL_GeoSkin
	"SUM",  				/// 17	SPL_GeoElevate
	"FOT",					/// 18	SPL_GeoGolem
	"EXP",					/// 19	SPL_GeoQuake
	
	"RPF",					/// 20	SPL_IceRapidBolt
	"FEA",  				/// 21	SPL_AirShield
	"FRZ",  				/// 22	SPL_Freeze
	"WND",  				/// 23	SPL_AirFist
	"FEA",					/// 24	SPL_IceWaving
	"FIB",  				/// 25	SPL_BigFireball
	"FEA",  				/// 26	SPL_FireShield
	"PYR",  				/// 27	SPL_Detonate
	"WND",  				/// 28	SPL_FireFist
	"EXP",  				/// 29	SPL_Explosion
	
	"WND",  				/// 30	SPL_LifeSteal
	"FEA",  				/// 31	SPL_DarkBarrier
	"SUM",  				/// 32	SPL_CreateSkeleton
	"MSD",  				/// 33	SPL_DemonicRift
	"FBT",  				/// 34	SPL_InstantDeath
	"LIN",  				/// 35	SPL_ChainLightning
	"FEA",  				/// 36	SPL_Ghost
	"PYR",  				/// 37	SPL_Lightkinesis
	"CON",  				/// 38	SPL_LightShine
	"STM",  				/// 39	SPL_LightningStorm
	
	"XXX",  				/// 40	SPL_Reserved_40
	"XXX",  				/// 41	SPL_Reserved_41
	"XXX",  				/// 42	SPL_Reserved_42
	"XXX",  				/// 43	SPL_Reserved_43
	"XXX",  				/// 44	SPL_Reserved_44
	"XXX",  				/// 45	SPL_Reserved_45
	"XXX",  				/// 46	SPL_Reserved_46
	"XXX",  				/// 47	SPL_Reserved_47
	"TRF",  				/// 48	SPL_Transform
	"SUM",  				/// 49	SPL_Summon
	
	"SLE",  				/// 50	SPL_Sleep
	"FEA",  				/// 51	SPL_MassSleep
	"SLE",  				/// 52	SPL_Fear
	"FEA",  				/// 53	SPL_MassFear
	"SLE",  				/// 54	SPL_Rage
	"FEA",  				/// 55	SPL_MassRage
	"SLE",  				/// 56	SPL_Shrink
	"CON",  				/// 57	SPL_Control
	"SLE",  				/// 58	SPL_Domination
	"SLE",					/// 59	SPL_Charm
	
	"XXX",  				/// 60	SPL_Reserved_60
	"FBT",  				/// 61	SPL_DeathBolt
	"XXX",  				/// 62	SPL_Reserved_62
	"FBT",  				/// 63	SPL_ConcussionBolt
	"FBT",  				/// 64	SPL_SkeletonSpell
	"FBT",  				/// 65	SPL_GolemSpell
	"FBT",  				/// 66	SPL_OrcSpell
	"FBT",					/// 67	SPL_DementorSpell
 	"FBT",					/// 68	SPL_DemasterSpell
	"FBT",					/// 69	SPL_DragonBall
	
	"FIB",  				/// 70	SPL_MasterOfDisaster
	"FIB",  				/// 71	SPL_BeliarRage
	"XXX",  				/// 72	SPL_Reserved_72
	"XXX",  				/// 73	SPL_Reserved_73
	"XXX",  				/// 74	SPL_Reserved_74
	"XXX",  				/// 75	SPL_Reserved_75
	"XXX",  				/// 76	SPL_Reserved_76
	"XXX",					/// 77	SPL_Reserved_77
	"XXX",					/// 78	SPL_Reserved_78
	"XXX",					/// 79	SPL_Reserved_79
	
	"FBT",  				/// 80	SPL_cB_Fireball
	"FBT",  				/// 81	SPL_cR_Fireball
	"FBT",  				/// 82	SPL_cG_Fireball
	"FBT",  				/// 83	SPL_cY_Fireball
	"XXX",  				/// 84	SPL_Reserved_84
	"XXX",  				/// 85	SPL_Reserved_85
	"XXX",  				/// 86	SPL_Reserved_86
	"XXX",					/// 87	SPL_Reserved_87
	"XXX",					/// 88	SPL_Reserved_88
	"XXX",					/// 89	SPL_Reserved_89
	
	"XXX",  				/// 90	SPL_Reserved_90
	"XXX",  				/// 91	SPL_Reserved_91
	"XXX",  				/// 92	SPL_Reserved_92
	"XXX",  				/// 93	SPL_Reserved_93
	"XXX",  				/// 94	SPL_Reserved_94
	"XXX",  				/// 95	SPL_Reserved_95
	"XXX",  				/// 96	SPL_Reserved_96
	"XXX",					/// 97	SPL_Reserved_97
	"XXX",					/// 98	SPL_Reserved_98
	"XXX"					/// 99	SPL_Reserved_99
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
const int NPC_TALENT_2ndH				=	10;	/// second hand -> 1 = shield, 2 = dual swords

/// Magic Talents
const int NPC_TALENT_MAGIC				=	7;
const int NPC_TALENT_LANGUAGE			=	17;

/// Thief Talents
const int NPC_TALENT_SNEAK				=	8;
const int NPC_TALENT_ACROBATIC			=	11;
const int NPC_TALENT_PICKLOCK			=	5;
const int NPC_TALENT_PICKPOCKET			=	6;
const int NPC_TALENT_PERSUASION			=	9;

/// Craft Talents
const int NPC_TALENT_SMITH				=	12;
const int NPC_TALENT_JEWELERY			=	13;
const int NPC_TALENT_ALCHEMY			=	14;
const int NPC_TALENT_HUNTING			=	15;
const int NPC_TALENT_WRITING			=	16;

/// Info Talents
const int NPC_TALENT_CHAPTER			=	18;
const int NPC_TALENT_TYPEOFMAGIC		=	19;
const int NPC_TALENT_GUILD				=	20;	/// prawdopodobnie do zmiany, ale nie wiadomo na co
const int NPC_TALENT_DIFFICULT			=	21;

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
