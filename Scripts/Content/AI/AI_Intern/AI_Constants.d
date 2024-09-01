///******************************************************************************************
///	Constants
///******************************************************************************************

const int default		=	0;

const int false			=	0;
const int true			=	1;

const int decrease		=	0;
const int increase		=	1;

const int LOOP_CONTINUE =	0;
const int LOOP_END		=	1;

///******************************************************************************************
///	AIV
///******************************************************************************************

/// ------ Fight ------
const int AIV_LastFightAgainstPlayer		=	0;
	const int FIGHT_NONE				= 0;
	const int FIGHT_Lost				= 1;
	const int FIGHT_Won					= 2;
	const int FIGHT_Cancel				= 3;

/// ------ Crimes ------
const int AIV_NpcSawPlayerCommit			=	1;
	const int CRIME_NONE				= 0;
	const int CRIME_SheepKiller			= 1;
	const int CRIME_Attack				= 2;
	const int CRIME_Theft				= 3;
	const int CRIME_Murder				= 4;
const int AIV_NpcSawPlayerCommitDay			=	2;

/// ------ Talk ------
const int AIV_NpcStartedTalk				=	3;
const int AIV_Invisible						=	4;
const int AIV_TalkedToPlayer				=	5;

/// ------ Pickpocket ------
const int AIV_PlayerHasPickedMyPocket		=	6;

/// ------ Attack ------
const int AIV_LastTarget					=	7;
const int AIV_PursuitEnd					=	8;

/// ------ Say attack reason ------
const int AIV_AttackReason					=	9;
	const int AR_NONE					= 0;
	const int AR_LeftPortalRoom			= 1;
	const int AR_ClearRoom				= 2;
	const int AR_GuardCalledToRoom		= 3;
	const int AR_MonsterVsHuman			= 4;
	const int AR_MonsterMurderedHuman 	= 5;
	const int AR_SheepKiller			= 6;
	const int AR_Theft					= 7;
	const int AR_UseMob					= 8;
	const int AR_GuardCalledToThief 	= 9;
	const int AR_ReactToWeapon			= 10;
	const int AR_ReactToDamage			= 11;
	const int AR_GuardStopsFight		= 12;
	const int AR_GuardCalledToKill		= 13;
	const int AR_GuildEnemy				= 14;
	const int AR_HumanMurderedHuman		= 15;
	const int AR_MonsterCloseToGate 	= 16;
	const int AR_GuardStopsIntruder		= 17;
	const int AR_SuddenEnemyInferno		= 18;
	const int AR_KILL					= 19;
const int AIV_LastPlayerAR					=	10;

/// ------ Ransack body ------
const int AIV_Ransacked						=	11;

/// ------ Guard passage ------
const int AIV_GuardPassage_Status			=	12;	/// changed!!!
	const int GP_NONE					= 0;
	const int GP_FirstWarnGiven			= 1;
	const int GP_SecondWarnGiven		= 2;
	const int GP_PassGate				= 3;
const int AIV_LastDistToWP					=	13;

/// ------  TA position ------
const int AIV_TaPosition					=	14;
	const int IsInPos					= 0;
	const int NotInPos					= 1;
	const int NotInPos_Walk				= 2;

/// ------ Defeated by player ------
const int AIV_DefeatedByPlayer				=	15;	/// changed!!!
	const int DBP_NONE					= 0;
	const int DBP_Defeated				= 1;
	const int DBP_Killed				= 2;
const int AIV_VictoryExpGiven				=	16;

/// ------ Can offer ------
const int AIV_CanOffer						=	17;	/// new!!!
	const int OFFER_Teaching			= 1 << 0;
	const int OFFER_Trading				= 1 << 1;

/// ------ Stand eating ------
const int AIV_Food							=	18;
	const int FOOD_Apple				= 0;
	const int FOOD_Cheese				= 1;
	const int FOOD_Bacon				= 2;
	const int FOOD_Bread				= 3;

/// ------ Spells ------
const int AIV_SpellLevel					=	19;
const int AIV_SelectSpell					=	20;

/// ------ Observe player ------
const int AIV_SeenLeftRoom					=	21;
	var int Player_SneakerComment;
	var int Player_LeftRoomComment;
	var int Player_DrawWeaponComment;
	var int Player_GetOutOfMyBedComment;

/// ------ Attack ------
const int AIV_HitByOtherNpc					=	22;
const int AIV_WaitBeforeAttack				=	23;
const int AIV_LastAbsolutionLevel			=	24;

/// ------ Load game ------
const int AIV_LoadGame						=	25;

/// ------ Monster AIV: threaten ------
const int AIV_MM_ThreatenBeforeAttack		=	26;

/// ------ Monster AIV: follow ------
const int AIV_MM_FollowTime 				=	27;
	const int FOLLOWTIME_SHORT			= 5;
	const int FOLLOWTIME_MEDIUM			= 10;
	const int FOLLOWTIME_LONG			= 20;
const int AIV_MM_FollowInWater 				=	28;

/// ------ Monster AIV: priority ------
const int AIV_MM_Priority 					=	29;
	const int PRIO_EAT 					= 0;
	const int PRIO_ATTACK 				= 1;

/// ------ Monster AIV: routine ------
const int AIV_MM_SleepStart 				=	30;
const int AIV_MM_SleepEnd 					=	31;
const int AIV_MM_RestStart 					=	32;
const int AIV_MM_RestEnd 					=	33;		
const int AIV_MM_RoamStart 					=	34;
const int AIV_MM_RoamEnd 					=	35;
const int AIV_MM_EatGroundStart 			=	36;
const int AIV_MM_EatGroundEnd 				=	37;
const int AIV_MM_WuselStart 				=	38;
const int AIV_MM_WuselEnd 					=	39;
const int AIV_MM_OrcSitStart				=	40;
const int AIV_MM_OrcSitEnd					=	41;
	const int OnlyRoutine 				= -1;

/// ------ Monster AIV: packhunter ------
const int AIV_MM_Packhunter					=	42;

/// ------ Monster ID ------
const int AIV_MM_Real_ID					=	43;
	const int ID_MEATBUG				= 1;
	const int ID_INKBUG					= 1 + ID_MEATBUG;
	const int ID_SHEEP					= 1 + ID_INKBUG;
	const int ID_GOAT					= 1 + ID_SHEEP;
	const int ID_DOG					= 1 + ID_GOAT;
	const int ID_GOBBO					= 1 + ID_DOG;
	const int ID_GOBBO_BLACK			= 1 + ID_GOBBO;
	const int ID_GOBBO_BANDIT			= 1 + ID_GOBBO_BLACK;
	const int ID_GOBBO_WARRIOR			= 1 + ID_GOBBO_BANDIT;
	const int ID_GOBBO_SHAMAN			= 1 + ID_GOBBO_WARRIOR;
	const int ID_GOBBO_SKELETON			= 1 + ID_GOBBO_SHAMAN;
	const int ID_SPINT					= 1 + ID_GOBBO_SKELETON;
	const int ID_SCAVENGER				= 1 + ID_SPINT;
	const int ID_SCAVENGER_DEMON		= 1 + ID_SCAVENGER;
	const int ID_BITER					= 1 + ID_SCAVENGER_DEMON;
	const int ID_GIANT_RAT				= 1 + ID_BITER;
	const int ID_GIANT_BUG				= 1 + ID_GIANT_RAT;
	const int ID_BLOODFLY				= 1 + ID_GIANT_BUG;
	const int ID_DRAGONFLY				= 1 + ID_BLOODFLY;
	const int ID_SWAMPDRONE				= 1 + ID_DRAGONFLY;
	const int ID_WISP					= 1 + ID_SWAMPDRONE;
	const int ID_WARAN					= 1 + ID_WISP;
	const int ID_FIREWARAN				= 1 + ID_WARAN;
	const int ID_WOLF					= 1 + ID_FIREWARAN;
	const int ID_WOLF_SKELETON			= 1 + ID_WOLF;
	const int ID_ICEWOLF				= 1 + ID_WOLF_SKELETON;
	const int ID_WARG					= 1 + ID_ICEWOLF;
	const int ID_KEILER					= 1 + ID_WARG;
	const int ID_JACKAL					= 1 + ID_KEILER;
	const int ID_GIANT_SPIDER			= 1 + ID_JACKAL;
	const int ID_MINECRAWLER			= 1 + ID_GIANT_SPIDER;
	const int ID_MINECRAWLERWARRIOR		= 1 + ID_MINECRAWLER;
	const int ID_MINECRAWLERQUEEN		= 1 + ID_MINECRAWLERWARRIOR;
	const int ID_BLATTCRAWLER			= 1 + ID_MINECRAWLERQUEEN;
	const int ID_LURKER					= 1 + ID_BLATTCRAWLER;
	const int ID_SKELETON				= 1 + ID_LURKER;
	const int ID_SKELETON_WARRIOR		= 1 + ID_SKELETON;
	const int ID_SKELETON_DARK			= 1 + ID_SKELETON_WARRIOR;
	const int ID_SKELETON_LORD			= 1 + ID_SKELETON_DARK;
	const int ID_SKELETON_MAGE			= 1 + ID_SKELETON_LORD;
	const int ID_ZOMBIE					= 1 + ID_SKELETON_MAGE;
	const int ID_MUMMY					= 1 + ID_ZOMBIE;
	const int ID_SNAPPER				= 1 + ID_MUMMY;
	const int ID_RAZOR					= 1 + ID_SNAPPER;
	const int ID_DRAGONSNAPPER			= 1 + ID_RAZOR;
	const int ID_GIANTSNAPPER			= 1 + ID_DRAGONSNAPPER;
	const int ID_SHADOWBEAST			= 1 + ID_GIANTSNAPPER;
	const int ID_BLOODHOUND				= 1 + ID_SHADOWBEAST;
	const int ID_SHADOWBEAST_SKELETON	= 1 + ID_BLOODHOUND;
	const int ID_SHADOWBEAST_FIRE		= 1 + ID_SHADOWBEAST_SKELETON;
	const int ID_HARPY					= 1 + ID_SHADOWBEAST_FIRE;
	const int ID_VAMPHARPY				= 1 + ID_HARPY;
	const int ID_DRAGONHARPY			= 1 + ID_VAMPHARPY;
	const int ID_GOLEM					= 1 + ID_DRAGONHARPY;
	const int ID_FIREGOLEM				= 1 + ID_GOLEM;
	const int ID_ICEGOLEM				= 1 + ID_FIREGOLEM;
	const int ID_AVATAR					= 1 + ID_ICEGOLEM;
	const int ID_TREANT					= 1 + ID_AVATAR;
	const int ID_TIGER					= 1 + ID_TREANT;
	const int ID_DEMON					= 1 + ID_TIGER;
	const int ID_DEMON_LORD				= 1 + ID_DEMON;
	const int ID_DEMONICON				= 1 + ID_DEMON_LORD;
	const int ID_TROLL					= 1 + ID_DEMONICON;
	const int ID_TROLL_BLACK			= 1 + ID_TROLL;
	const int ID_TROLL_DEMON			= 1 + ID_TROLL_BLACK;
	const int ID_GORILLA				= 1 + ID_TROLL_DEMON;
	const int ID_SWAMPSHARK				= 1 + ID_GORILLA;
	const int ID_DRAGON					= 1 + ID_SWAMPSHARK;
	const int ID_DRAGON_SWAMP			= 1 + ID_DRAGON;
	const int ID_DRAGON_ROCK			= 1 + ID_DRAGON_SWAMP;
	const int ID_DRAGON_FIRE			= 1 + ID_DRAGON_ROCK;
	const int ID_DRAGON_ICE				= 1 + ID_DRAGON_FIRE;
	const int ID_DRAGON_GOLD			= 1 + ID_DRAGON_ICE;
	const int ID_DRAGON_BLACK			= 1 + ID_DRAGON_GOLD;
	const int ID_DRAGON_UNDEAD			= 1 + ID_DRAGON_BLACK;
	const int ID_SLEEPER				= 1 + ID_DRAGON_UNDEAD;
	const int ID_MOLERAT				= 1 + ID_SLEEPER;
	const int ID_ALLIGATOR				= 1 + ID_MOLERAT;
	const int ID_SWAMPGOLEM				= 1 + ID_ALLIGATOR;
	const int ID_STONEGUARDIAN			= 1 + ID_SWAMPGOLEM;
	const int ID_GARGOYLE				= 1 + ID_STONEGUARDIAN;
	const int ID_OGRE					= 1 + ID_GARGOYLE;
	const int ID_HARE					= 1 + ID_OGRE;
	const int ID_SUMMONED				= 1 + ID_HARE;
	const int ID_SUMMONED_EVIL			= 1 + ID_SUMMONED;
	const int ID_SUMMONED_UNDEAD		= 1 + ID_SUMMONED_EVIL;
	const int ID_ORC					= 1 + ID_SUMMONED_UNDEAD;
	const int ID_ORCSOLDIER				= 1 + ID_ORC;
	const int ID_ORCWARRIOR				= 1 + ID_ORCSOLDIER;
	const int ID_ORCSHAMAN				= 1 + ID_ORCWARRIOR;
	const int ID_ORCELITE				= 1 + ID_ORCSHAMAN;
	const int ID_ORCCHAMPION			= 1 + ID_ORCELITE;
	const int ID_UNDEADORCWARRIOR		= 1 + ID_ORCCHAMPION;
	const int ID_DRACONIAN				= 1 + ID_UNDEADORCWARRIOR;
	const int ID_ZODD					= 1 + ID_DRACONIAN;

/// ------ Monster AIV: last body ------
const int AIV_MM_LastBody					=	44;

/// ------ Arena fight ------
const int AIV_ArenaFight					=	45;
	const int AF_NONE					= 0;
	const int AF_Running				= 1;
	const int AF_After					= 2;
	const int AF_After_Plus_Damage		= 3;

/// ------ Crime absolution level ------
const int AIV_CrimeAbsolutionLevel			=	46;

/// ------ ????? ------
const int AIV_Reserved_47					=	47;
const int AIV_Reserved_48					=	48;

/// ------ Inventory ------
const int AIV_ChapterInv					=	49;
const int AIV_DeathInvGiven					=	50;

/// ------ Magic user ------
const int AIV_MagicUser						=	51;	/// changed!!!
	const int MAGIC_MYS					= 2;
	const int MAGIC_GEO					= 3;
	const int MAGIC_ELE					= 4;
	const int MAGIC_PYR					= 5;
	const int MAGIC_NEC					= 6;
	const int MAGIC_LUM					= 7;

/// ------ Drop unconscious ------
const int AIV_DropDeadAndKill				=	52;

/// ------ In-Fight ------
const int AIV_ComboHit						=	53;	/// new!!!

/// ------ Ignoring ------
const int AIV_IgnoreCrime					=	54;	/// changed!!!
	const int IGNORE_Murder				= 1 << 0;
	const int IGNORE_Theft				= 1 << 1;
	const int IGNORE_Sheepkiller		= 1 << 2;
	const int IGNORE_Fear				= 1 << 3;
const int AIV_IgnoreDisguise				=	55;	/// changed!!!
	const int IGNORE_Armor				= 1 << 0;
	const int IGNORE_FakeGuild			= 1 << 1;

/// ------ Dist ------
const int AIV_Dist							=	56;

/// ------ Ignore attack crime ------
const int AIV_ToughGuy						=	57;

/// ------ News override ------
const int AIV_NewsOverride					=	58;	/// changed!!!
	const int NEWS_Ambient				= 1 << 0;
	const int NEWS_ToughGuy				= 1 << 1;

/// ------ Attack ------
const int AIV_MaxDistToWp					=	59;
const int AIV_OriginalFightTactic			=	60;
const int AIV_EnemyOverride					=	61;
const int AIV_FightDistCancel				=	62;
const int AIV_LastFightComment				=	63;

/// ------ Special attributes ------
const int AIV_CritDamage					=	64;	/// new!!!
const int AIV_LifeSteal						=	65;	/// new!!!
const int AIV_AreaDamage					=	66; /// new!!!
const int AIV_DmgReflection					=	67; /// new!!!
const int AIV_MinDamage						=	68; /// new!!!
const int AIV_Reserved_69					=	69;

/// ------ States ------
const int AIV_StateTime						=	70;
const int AIV_MagicStateTime 				=	71;
const int AIV_SummonTime					=	72;
const int AIV_ShrinkState					=	73;
const int AIV_SlowTime						=	74;
const int AIV_Reserved_75					=	75;
const int AIV_Reserved_76					=	76;
const int AIV_Reserved_77					=	77;
const int AIV_Reserved_78					=	78;

/// ------ Team ------
const int AIV_PartyMember					=	79;
const int AIV_FollowDist					=	80;

/// ------ Stamina ------
const int AIV_Stamina						=	81;	/// new!!!
const int AIV_Stamina_MAX					=	82;	/// new!!!

/// ------ Story ------
const int AIV_NoFightParker					=	83;
const int AIV_Story							=	84;	/// changed!!!
	const int STORY_IsRanger			= 1 << 0;
	const int STORY_Bandit				= 1 << 1;
	const int STORY_Esteban				= 1 << 2;

/// ------ Visual ------
const int AIV_Gender						=	85;
	const int MALE						= 0;
	const int FEMALE					= 1;
	const int ORCMALE					= 2;
const int AIV_BodyTex	 					=	86;
const int AIV_SkinTex	 					=	87;
const int AIV_FaceTex	 					=	88;
const int AIV_TeethTex	 					=	89;

/// ...
const int AIV_Reserved_90					=	90;
const int AIV_Reserved_91					=	91;
const int AIV_Reserved_92					=	92;
const int AIV_Reserved_93					=	93;
const int AIV_Reserved_94					=	94;
const int AIV_Reserved_95					=	95;
const int AIV_Reserved_96					=	96;
const int AIV_Reserved_97					=	97;
const int AIV_Reserved_98					=	98;
const int AIV_Reserved_99					=	99;

///******************************************************************************************
///	Globalvariablen für Petzen/Absolution/News - System
///******************************************************************************************

var int ABSOLUTIONLEVEL_OldCamp;
var int ABSOLUTIONLEVEL_City;
var int ABSOLUTIONLEVEL_Monastery;
var int ABSOLUTIONLEVEL_Farm;
var int ABSOLUTIONLEVEL_BL;

var int PETZCOUNTER_OldCamp_Murder;
var int PETZCOUNTER_OldCamp_Theft;
var int PETZCOUNTER_OldCamp_Attack;
var int PETZCOUNTER_OldCamp_Sheepkiller;

var int PETZCOUNTER_City_Murder;
var int PETZCOUNTER_City_Theft;
var int PETZCOUNTER_City_Attack;
var int PETZCOUNTER_City_Sheepkiller;

var int PETZCOUNTER_Monastery_Murder;
var int PETZCOUNTER_Monastery_Theft;
var int PETZCOUNTER_Monastery_Attack;
var int PETZCOUNTER_Monastery_Sheepkiller;

var int PETZCOUNTER_Farm_Murder;
var int PETZCOUNTER_Farm_Theft;
var int PETZCOUNTER_Farm_Attack;
var int PETZCOUNTER_Farm_Sheepkiller;

var int PETZCOUNTER_BL_Murder;
var int PETZCOUNTER_BL_Theft;
var int PETZCOUNTER_BL_Attack;

///******************************************************************************************
///	Locations
///******************************************************************************************

const int LOC_NONE				=	0;
const int LOC_OLDCAMP			=	1;
const int LOC_CITY				=	2;
const int LOC_MONASTERY			=	3;
const int LOC_FARM				=	4;
const int LOC_BL				=	5;
const int LOC_ALL				=	6;

///******************************************************************************************
///	Districts
///******************************************************************************************

const int Q_KASERNE 			=	1;
const int Q_GALGEN 				=	2;
const int Q_MARKT 				=	3;
const int Q_TEMPEL 				=	4;
const int Q_UNTERSTADT 			=	5;
const int Q_HAFEN 				=	6;
const int Q_OBERSTADT 			=	7;

///******************************************************************************************
///	Aktive Wahrnehmung der MONSTER
///******************************************************************************************

const int PERC_DIST_SUMMONED_ACTIVE_MAX		=	2000;
const int PERC_DIST_MONSTER_ACTIVE_MAX		=	1500;
const int PERC_DIST_ORC_ACTIVE_MAX			=	2500;
const int PERC_DIST_DRAGON_ACTIVE_MAX		=	3500;

const int FIGHT_DIST_MONSTER_ATTACKRANGE	=	700;
const int FIGHT_DIST_MONSTER_FLEE			=	300;
const int FIGHT_DIST_DRAGON_MAGIC			=	700;

const int MONSTER_THREATEN_TIME				=	3;	//4
const int MONSTER_SUMMON_TIME				=	60;

///******************************************************************************************
///								Konstanten für Distanzen
///								    der Menschen-AI
///******************************************************************************************

const int TA_DIST_SELFWP_MAX			=	500;

const int PERC_DIST_ACTIVE_MAX			=	2000;

const int PERC_DIST_INTERMEDIAT			=	1000;
const int PERC_DIST_DIALOG				=	500;
const int PERC_DIST_HEIGHT				=	1000;
const int PERC_DIST_INDOOR_HEIGHT		=	250;

const int FIGHT_DIST_MELEE				=	600;
const int FIGHT_DIST_RANGED_INNER		=	900;
const int FIGHT_DIST_RANGED_OUTER		=	1000;
const int FIGHT_DIST_CANCEL				=	3500;

const int WATCHFIGHT_DIST_MIN			=	400;	//300
const int WATCHFIGHT_DIST_MAX			=	2000;

const int ZivilAnquatschDist 			=	400;

const float RANGED_CHANCE_MINDIST		=	2500;	//1500
const float RANGED_CHANCE_MAXDIST		=	5000;	//4500

///******************************************************************************************
///	Zeit-Konstanten
///******************************************************************************************

const int NPC_ANGRY_TIME 				=	120;
const int HAI_TIME_UNCONSCIOUS			=	20;
const int NPC_TIME_FOLLOW				=	10;

///******************************************************************************************
///	Mindestschaden
///******************************************************************************************

const int NPC_MINIMAL_DAMAGE			=	4;	//5
const int NPC_MINIMAL_PERCENT			=	20;	//10

///******************************************************************************************
///	Fight AI-Constanten
///******************************************************************************************

const int FAI_NAILED					=	1;

const int FAI_HUMAN_COWARD				=	2;
const int FAI_HUMAN_NORMAL				=	42;
const int FAI_HUMAN_STRONG				=	3;
const int FAI_HUMAN_MASTER				=	4;

const int FAI_MONSTER_COWARD			=	10;

const int FAI_GOBBO						=	7;
const int FAI_SCAVENGER					=	15;
const int FAI_GIANT_RAT					=	11;
const int FAI_GIANT_BUG					=	31;
const int FAI_BLOODFLY					=	24;
const int FAI_WARAN						=	21;
const int FAI_WOLF						=	22;
const int FAI_MINECRAWLER				=	5;
const int FAI_LURKER					=	9;
const int FAI_ZOMBIE					=	23;
const int FAI_SNAPPER					=	18;
const int FAI_SHADOWBEAST				=	16;
const int FAI_HARPY						=	36;
const int FAI_GOLEM						=	8;
const int FAI_DEMON						=	6;
const int FAI_TROLL						=	20;
const int FAI_SWAMPSHARK				=	19;
const int FAI_DRAGON					=	39;
const int FAI_MOLERAT					=	40;

const int FAI_ORC						=	12;
const int FAI_DRACONIAN					=	41;

const int FAI_Alligator					=	43;
const int FAI_Gargoyle					=	44;
const int FAI_Bear						=	45;
const int FAI_Stoneguardian				=	46;

///******************************************************************************************
/// Stats constants
///******************************************************************************************

const int MAX_LEVEL					=	100;
const int XP_PER_LEVEL				=	500;
const int XP_PER_VICTORY			=	10;

const int HP_PER_LEVEL				=	8;	//12
const int LP_PER_LEVEL				=	10;
const int GOLD_PER_LP				=	20;

const int HP_PER_LP					=	4;
const int MP_PER_LP					=	2;
const int SP_PER_LP					=	5;

/// for monsters
const int AR_PER_LEVEL				=	5;
const int MR_PER_LEVEL				=	5;

///******************************************************************************************
/// NPC types
///******************************************************************************************

const int NPCTYPE_AMBIENT			=	0;
const int NPCTYPE_MAIN				=	1;
const int NPCTYPE_FRIEND			=	2;
const int NPCTYPE_OCAMBIENT			=	3;
const int NPCTYPE_OCMAIN			=	4;
const int NPCTYPE_BL_AMBIENT		=	5;
const int NPCTYPE_TAL_AMBIENT		=	6;
const int NPCTYPE_BL_MAIN			=	7;
const int NPCTYPE_LOVE				=	8;	/// new!!!

///******************************************************************************************
/// Mobsis
///******************************************************************************************

const int MOBSI_NONE				=	0;

const int MOBSI_GoldHacken			=	1;
const int MOBSI_OreHacken			=	2;	/// new!!!
const int MOBSI_MakeAlcohol			=	3;	/// new!!!
const int MOBSI_MakeJoint			=	4;	/// new!!!
const int MOBSI_MakeRune			=	5;
const int MOBSI_MakeScroll			=	6;	/// new!!!
const int MOBSI_MakeTabak			=	7;	/// new!!!
const int MOBSI_MakeWood			=	8;	/// new!!!
const int MOBSI_MagicStone			=	9;	/// new!!!
const int MOBSI_PotionAlchemy		=	10;
const int MOBSI_PrayIdol			=	11;
const int MOBSI_PrayShrine			=	12;
const int MOBSI_SharpWeapon			=	13;	/// new!!!
const int MOBSI_SleepAbit			=	14;
const int MOBSI_SmithWeapon			=	15;
const int MOBSI_UseCauldron			=	16;	/// new!!!
const int MOBSI_UseFur				=	17;	/// new!!!
const int MOBSI_UsePan				=	18;	/// new!!!
const int MOBSI_UseStove			=	19;	/// new!!!
const int MOBSI_UseWood				=	20;	/// new!!!

const int MOBSI_LearnAttributes		=	21;	/// new!!!

var int PLAYER_MOBSI_PRODUCTION;

///******************************************************************************************
/// Visual constants
///******************************************************************************************

/// ------ Bodies ------
const int BodyTex_Default			=	0;
const int BodyTex_Player			=	1;
const int BodyTex_Tattoo			=	2;
const int BodyTex_Nude				=	3;
const int BodyTex_Dressed			=	10;

const int BodyTex_MAX			=	16;

/// ------ Skins ------
const int BodySkin_N				=	0;	/// Normal
const int BodySkin_P				=	1;	/// Pale
const int BodySkin_L				=	2;	/// Latino
const int BodySkin_B				=	3;	/// Black
const int BodySkin_A				=	4;	/// Asian (non-avaible yet)

const int BodySkin_MAX			=	5;

/// ------ Teeth ------
const int Teeth_Normal				=	0;
const int Teeth_Bad					=	1;
const int Teeth_Worse				=	2;
const int Teeth_Worst				=	3;
const int Teeth_Gold				=	4;
const int Teeth_Pretty				=	5;

const int TeethTex_MAX			=	6;

/// ------ Faces ------
const int Face_Player				=	0;

/// main
const int Face_N_Gomez 				=	1;
const int Face_N_Scar 				=	2;
const int Face_N_Raven				=	3;
const int Face_N_Bullit				=	4;
const int Face_B_Thorus				=	5;
const int Face_N_Corristo			=	6;
const int Face_N_Milten				=	7;
const int Face_N_Bloodwyn			=	8;
const int Face_L_Scatty				=	9;
const int Face_N_YBerion			=	10;
const int Face_N_CoolPock			=	11;
const int Face_B_CorAngar			=	12;
const int Face_B_Saturas			=	13;
const int Face_N_Xardas				=	14;
const int Face_N_Lares				=	15;
const int Face_L_Ratford			=	16;
const int Face_N_Drax				=	17;
const int Face_B_Gorn				=	18;
const int Face_P_Lester				=	19;
const int Face_N_Lee				=	20;
const int Face_N_Torlof				=	21;
const int Face_N_Mud				=	22;
const int Face_N_Ricelord			=	23;
const int Face_N_Horatio			=	24;
const int Face_N_Richter			=	25;
const int Face_N_Cipher				=	26;
const int Face_N_Homer				=	27;
const int Face_B_Cavalorn			=	28;
const int Face_L_Ian				=	29;
const int Face_L_Diego				=	30;
const int Face_N_MadPsi				=	31;
const int Face_N_Bartholo			=	32;
const int Face_N_Snaf				=	33;
const int Face_N_Mordrag			=	34;
const int Face_N_Lefty				=	35;
const int Face_N_Wolf				=	36;
const int Face_N_Fingers			=	37;
const int Face_N_Whistler			=	38;
const int Face_P_Gilbert			=	39;
const int Face_L_Jackal				=	40;
const int Face_N_Greg				=	41;
const int Face_N_Skip				=	42;
const int Face_N_Flail				=	43;
const int Face_N_Flex				=	44;
const int Face_N_Lutter				=	45;
const int Face_N_Pfeiffer			=	46;
const int Face_N_Pymonte			=	47;
const int Face_N_Thomas				=	48;
const int Face_N_Unicorn			=	49;

/// wza
const int Face_N_MikeKayne			=	50;
const int Face_N_OldMikeKayne		=	51;
const int Face_N_Burak				=	52;
const int Face_N_Witcher			=	53;
const int Face_N_Dolan				=	54;
const int Face_P_Kaczyn				=	55;
const int Face_N_Bronek				=	56;
const int Face_N_CichyMaciej		=	57;
const int Face_N_Hitler				=	58;
const int Face_N_Putin				=	59;
const int Face_L_BinLaden			=	60;
const int Face_P_Aharon				=	61;
const int Face_N_Balrog				=	62;
const int Face_N_China				=	63;
const int Face_N_Sect				=	64;
const int Face_N_SpecialPal			=	65;
const int Face_N_JangoFett			=	66;
const int Face_B_MaceWindu			=	67;
const int Face_Skull				=	68;
const int Face_N_Piotrek			=	69;
const int Face_N_Julius				=	70;
const int Face_N_Dooku				=	71;
const int Face_Agent				=	72;
const int Face_N_Kid				=	73;
const int Face_P_Grandpa			=	74;

/// normal
const int Face_P_ToughBald			=	100;
const int Face_P_Tough_Drago		=	101;
const int Face_P_Tough_Torrez		=	102;
const int Face_P_Tough_Rodriguez	=	103;
const int Face_P_ToughBald_Nek		=	104;
const int Face_P_NormalBald			=	105;
const int Face_P_Normal01			=	106;
const int Face_P_Normal02			=	107;
const int Face_P_Normal_Fletcher	=	108;
const int Face_P_Normal03			=	109;
const int Face_P_NormalBart01		=	110;
const int Face_P_NormalBart_Cronos	=	111;
const int Face_P_NormalBart_Nefarius=	112;
const int Face_P_NormalBart_Riordian=	113;
const int Face_P_OldMan_Gravo		=	114;
const int Face_P_Weak_Cutter		=	115;
const int Face_P_Weak_Ulf_Wohlers	=	116;
const int Face_N_Important_Arto		=	117;
const int Face_N_ImportantGrey		=	118;
const int Face_N_ImportantOld		=	119;
const int Face_N_Tough_Lee_ähnlich	=	120;
const int Face_N_Tough_Skip			=	121;
const int Face_N_ToughBart01		=	122;
const int Face_N_Tough_Okyl			=	123;
const int Face_N_Normal01			=	124;
const int Face_N_Normal_Cord		=	125;
const int Face_N_Normal_Olli_Kahn	=	126;
const int Face_N_Normal02			=	127;
const int Face_N_Normal_Spassvogel	=	128;
const int Face_N_Normal03			=	129;
const int Face_N_Normal04			=	130;
const int Face_N_Normal05			=	131;
const int Face_N_Normal_Stone		=	132;
const int Face_N_Normal06			=	133;
const int Face_N_Normal_Erpresser	=	134;
const int Face_N_Normal07			=	135;
const int Face_N_Normal_Blade		=	136;
const int Face_N_Normal08			=	137;
const int Face_N_Normal14			=	138;
const int Face_N_Normal_Sly			=	139;
const int Face_N_Normal16			=	140;
const int Face_N_Normal17			=	141;
const int Face_N_Normal18			=	142;
const int Face_N_Normal19			=	143;
const int Face_N_Normal20			=	144;
const int Face_N_NormalBart01		=	145;
const int Face_N_NormalBart02		=	146;
const int Face_N_NormalBart03		=	147;
const int Face_N_NormalBart04		=	148;
const int Face_N_NormalBart05		=	149;
const int Face_N_NormalBart06		=	150;
const int Face_N_NormalBart_Senyan	=	151;
const int Face_N_NormalBart08		=	152;
const int Face_N_NormalBart09		=	153;
const int Face_N_NormalBart10		=	154;
const int Face_N_NormalBart11		=	155;
const int Face_N_NormalBart12		=	156;
const int Face_N_NormalBart_Dexter	=	157;
const int Face_N_NormalBart_Graham	=	158;
const int Face_N_NormalBart_Dusty	=	159;
const int Face_N_NormalBart16		=	160;
const int Face_N_NormalBart17		=	161;
const int Face_N_NormalBart_Huno	=	162;
const int Face_N_NormalBart_Grim	=	163;
const int Face_N_NormalBart20		=	164;
const int Face_N_NormalBart21		=	165;
const int Face_N_NormalBart22		=	166;
const int Face_N_OldBald_Jeremiah	=	167;
const int Face_N_Weak_Ulbert		=	168;
const int Face_N_Weak_BaalNetbek	=	169;
const int Face_N_Weak_Herek			=	170;
const int Face_N_Weak04				=	171;
const int Face_N_Weak05				=	172;
const int Face_N_Weak_Orry			=	173;
const int Face_N_Weak_Asghan		=	174;
const int Face_N_Weak_Markus_Kark	=	175;
const int Face_N_Weak_Cipher_alt	=	176;
const int Face_N_NormalBart_Swiney	=	177;
const int Face_N_Weak12				=	178;
const int Face_L_ToughBald01		=	179;
const int Face_L_Tough01			=	180;
const int Face_L_Tough02			=	181;
const int Face_L_Tough_Santino		=	182;
const int Face_L_ToughBart_Quentin	=	183;
const int Face_L_Normal_GorNaBar	=	184;
const int Face_L_NormalBart01		=	185;
const int Face_L_NormalBart02		=	186;
const int Face_L_NormalBart_Rufus	=	187;
const int Face_B_ToughBald			=	188;
const int Face_B_Tough_Pacho		=	189;
const int Face_B_Tough_Silas		=	190;
const int Face_B_Normal01			=	191;
const int Face_B_Normal_Kirgo		=	192;
const int Face_B_Normal_Sharky		=	193;
const int Face_B_Normal_Orik		=	194;
const int Face_B_Normal_Kharim		=	195;

/// tattoo
const int Face_P_GorNaKosh			=	200;
const int Face_P_CorKalom			=	201;
const int Face_N_BaalLukor			=	202;
const int Face_N_Caine				=	203;
const int Face_N_Nyras				=	204;
const int Face_N_Psi01				=	205;
const int Face_N_BaalTyon			=	206;
const int Face_N_BaalParvez			=	207;
const int Face_N_Viran				=	208;
const int Face_N_Fortuno			=	209;
const int Face_N_Shrat				=	210;
const int Face_N_BaalTaran			=	211;
const int Face_N_Psi02				=	212;
const int Face_N_Psi03				=	213;
const int Face_N_Psi04				=	214;
const int Face_N_Psi05				=	215;
const int Face_N_Psi06				=	216;
const int Face_N_Psi07				=	217;
const int Face_N_Psi08				=	218;
const int Face_N_Psi09				=	219;
const int Face_N_Psi10				=	220;
const int Face_N_GorNaDrak			=	221;
const int Face_N_Psi11				=	222;
const int Face_N_Psi12				=	223;
const int Face_N_GorHanis			=	224;
const int Face_N_Joru				=	225;
const int Face_N_GorNaToth			=	226;
const int Face_L_Darrion			=	227;
const int Face_L_Psi01				=	228;
const int Face_L_Psi02				=	229;
const int Face_B_GorNaRan			=	230;

/// MOD - new
const int Face_N_New0				=	227;

/// main (BABE)
const int FaceBabe_N_Velaya			=	1;
const int FaceBabe_N_Syra			=	2;
const int FaceBabe_N_Seraphia		=	3;
const int FaceBabe_L_Charlotte		=	4;
const int FaceBabe_B_Chani			=	5;
const int FaceBabe_P_Natalia		=	6;
const int FaceBabe_L_Lidia			=	7;
const int FaceBabe_B_Edda			=	8;
const int FaceBabe_N_Amazon			=	9;

/// normal (BABE)
const int FaceBabe_N_PinkHair		=	10;
const int FaceBabe_N_HairAndCloth	=	11;
const int FaceBabe_N_WhiteCloth		= 	12;
const int FaceBabe_N_GreyCloth		=	13;
const int FaceBabe_N_Brown			=	14;
const int FaceBabe_N_VlkBlonde		=	15;
const int FaceBabe_N_BauBlonde		=	16;
const int FaceBabe_N_YoungBlonde	=	17;
const int FaceBabe_N_OldBlonde		=	18;
const int FaceBabe_P_MidBlonde		=	19;
const int FaceBabe_N_MidBauBlonde	=	20;
const int FaceBabe_N_OldBrown		=	21;
const int FaceBabe_N_Lilo			=	22;
const int FaceBabe_N_Hure			=	23;
const int FaceBabe_N_Anne			=	24;
const int FaceBabe_B_RedLocks2		=	25;
const int FaceBabe_L_Charlotte2		=	26;

/// wza (BABE)
const int FaceBabe_N_Lucyna			=	30;
const int FaceBabe_P_Angela			=	31;
const int FaceBabe_N_Sasha			=	32;
const int FaceBabe_P_Kate			=	33;
const int FaceBabe_N_Emmy			=	34;
const int FaceBabe_N_Nurse			=	35;
const int FaceBaby_P_Granny			=	36;

/// MOD - new (BABE)
const int FaceBaby_N_New0			=	50;

const int FaceTex_MAX			=	225;
