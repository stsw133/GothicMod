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

/// ------ Monster ID / Sub-guild ------
const int AIV_MM_Real_ID					=	43;
const int AIV_SubGuild						=	43;

	/// PAL
	const int ID_PAL					= 100*GIL_PAL + 0;
	const int ID_TPL					= 100*GIL_PAL + 1;
	/// MIL
	const int ID_GRD					= 100*GIL_MIL + 0;
	const int ID_MIL					= 100*GIL_MIL + 1;
	/// VLK
	const int ID_VLK					= 100*GIL_VLK + 0;
	/// KDF
	const int ID_AMG					= 100*GIL_KDF + 0;
	const int ID_MAG					= 100*GIL_KDF + 1;
	/// NOV
	const int ID_NOV					= 100*GIL_NOV + 0;
	/// DJG
	const int ID_DJG					= 100*GIL_DJG + 0;
	const int ID_SLD					= 100*GIL_DJG + 1;
	/// SLD
	const int ID_PRI					= 100*GIL_SLD + 0;
	const int ID_ASA					= 100*GIL_SLD + 1;
	/// BAU
	const int ID_BAU					= 100*GIL_BAU + 0;
	/// BDT
	const int ID_BDT					= 100*GIL_BDT + 0;
	/// STRF
	const int ID_STRF					= 100*GIL_STRF + 0;
	/// DMT
	const int ID_DMT					= 100*GIL_DMT + 0;
	/// OUT
	const int ID_OUT					= 100*GIL_OUT + 0;
	/// PIR
	const int ID_PIR					= 100*GIL_PIR + 0;
	/// KDW
	const int ID_KDW					= 100*GIL_KDW + 0;
	/// MEATBUG
	const int ID_MEATBUG				= 100*GIL_MEATBUG + 0;
	const int ID_INKBUG					= 100*GIL_MEATBUG + 1;
	/// LIVESTOCK
	const int ID_SHEEP					= 100*GIL_LIVESTOCK + 0;
	const int ID_GOAT					= 100*GIL_LIVESTOCK + 1;
	const int ID_DOG					= 100*GIL_LIVESTOCK + 2;
	/// GOBLIN
	const int ID_GOBBO					= 100*GIL_GOBBO + 0;
	const int ID_GOBBO_YELLOW			= 100*GIL_GOBBO + 1;
	const int ID_GOBBO_BLACK			= 100*GIL_GOBBO + 2;
	const int ID_GOBBO_BANDIT			= 100*GIL_GOBBO + 3;
	const int ID_GOBBO_WARRIOR			= 100*GIL_GOBBO + 4;
	const int ID_GOBBO_SHAMAN			= 100*GIL_GOBBO + 5;
	/// GOBLIN-SKELETON
	const int ID_GOBBO_SKELETON			= 100*GIL_GOBBO_SKELETON + 0;
	/// SCAVENGER
	const int ID_SPINT					= 100*GIL_SCAVENGER + 0;
	const int ID_SCAVENGER				= 100*GIL_SCAVENGER + 1;
	const int ID_SCAVENGER_DEMON		= 100*GIL_SCAVENGER + 2;
	const int ID_BITER					= 100*GIL_SCAVENGER + 3;
	/// GIANT RAT
	const int ID_GIANT_RAT				= 100*GIL_GIANT_RAT + 0;
	/// GIANT BUG
	const int ID_GIANT_BUG				= 100*GIL_GIANT_BUG + 0;
	/// BLOODFLY
	const int ID_BLOODFLY				= 100*GIL_BLOODFLY + 0;
	const int ID_DRAGONFLY				= 100*GIL_BLOODFLY + 1;
	const int ID_SWAMPDRONE				= 100*GIL_BLOODFLY + 2;
	const int ID_WISP					= 100*GIL_BLOODFLY + 3;
	/// WARAN
	const int ID_WARAN					= 100*GIL_WARAN + 0;
	const int ID_FIREWARAN				= 100*GIL_WARAN + 1;
	/// WOLF
	const int ID_WOLF					= 100*GIL_WOLF + 0;
	const int ID_WOLF_SKELETON			= 100*GIL_WOLF + 1;
	const int ID_ICEWOLF				= 100*GIL_WOLF + 2;
	const int ID_WARG					= 100*GIL_WOLF + 3;
	const int ID_KEILER					= 100*GIL_WOLF + 4;
	const int ID_JACKAL					= 100*GIL_WOLF + 5;
	/// MINECRAWLER
	const int ID_GIANT_SPIDER			= 100*GIL_MINECRAWLER + 0;
	const int ID_MINECRAWLER			= 100*GIL_MINECRAWLER + 1;
	const int ID_MINECRAWLERWARRIOR		= 100*GIL_MINECRAWLER + 2;
	const int ID_MINECRAWLERQUEEN		= 100*GIL_MINECRAWLER + 3;
	const int ID_BLATTCRAWLER			= 100*GIL_MINECRAWLER + 4;
	/// LURKER
	const int ID_LURKER					= 100*GIL_LURKER + 0;
	/// SKELETON
	const int ID_SKELETON				= 100*GIL_SKELETON + 0;
	const int ID_SKELETON_WARRIOR		= 100*GIL_SKELETON + 1;
	const int ID_SKELETON_DARK			= 100*GIL_SKELETON + 2;
	const int ID_SKELETON_LORD			= 100*GIL_SKELETON + 3;
	/// SKELETON-MAGE
	const int ID_SKELETON_MAGE			= 100*GIL_SKELETON_MAGE + 0;
	/// ZOMBIE
	const int ID_ZOMBIE					= 100*GIL_ZOMBIE + 0;
	const int ID_MUMMY					= 100*GIL_ZOMBIE + 1;
	/// SNAPPER
	const int ID_SNAPPER				= 100*GIL_SNAPPER + 0;
	const int ID_RAZOR					= 100*GIL_SNAPPER + 1;
	const int ID_DRAGONSNAPPER			= 100*GIL_SNAPPER + 2;
	const int ID_MONSTERSNAPPER			= 100*GIL_SNAPPER + 3;
	/// SHADOWBEAST
	const int ID_SHADOWBEAST			= 100*GIL_SHADOWBEAST + 0;
	const int ID_BLOODHOUND				= 100*GIL_SHADOWBEAST + 1;
	/// SHADOWBEAST-SKELETON
	const int ID_SHADOWBEAST_SKELETON	= 100*GIL_SHADOWBEAST_SKELETON + 0;
	const int ID_SHADOWBEAST_DEMON		= 100*GIL_SHADOWBEAST_SKELETON + 1;
	/// HARPY
	const int ID_HARPY					= 100*GIL_HARPY + 0;
	const int ID_VAMPHARPY				= 100*GIL_HARPY + 1;
	const int ID_DRAGONHARPY			= 100*GIL_HARPY + 2;
	/// GOLEM
	const int ID_GOLEM					= 100*GIL_GOLEM + 0;
	const int ID_FIREGOLEM				= 100*GIL_GOLEM + 1;
	const int ID_ICEGOLEM				= 100*GIL_GOLEM + 2;
	const int ID_AVATAR					= 100*GIL_GOLEM + 3;
	/// TREANT
	const int ID_TREANT					= 100*GIL_TREANT + 0;
	/// TIGER
	const int ID_TIGER					= 100*GIL_TIGER + 0;
	/// DEMON
	const int ID_DEMON					= 100*GIL_DEMON + 0;
	const int ID_DEMON_LORD				= 100*GIL_DEMON + 1;
	const int ID_DEMONICON				= 100*GIL_DEMON + 2;
	/// TROLL
	const int ID_TROLL					= 100*GIL_TROLL + 0;
	const int ID_TROLL_BLACK			= 100*GIL_TROLL + 1;
	const int ID_TROLL_DEMON			= 100*GIL_TROLL + 2;
	const int ID_GORILLA				= 100*GIL_TROLL + 3;
	/// SWAMPSHARK
	const int ID_SWAMPSHARK				= 100*GIL_SWAMPSHARK + 0;
	/// DRAGON
	const int ID_DRAGON					= 100*GIL_DRAGON + 0;
	const int ID_DRAGON_SWAMP			= 100*GIL_DRAGON + 1;
	const int ID_DRAGON_ROCK			= 100*GIL_DRAGON + 2;
	const int ID_DRAGON_FIRE			= 100*GIL_DRAGON + 3;
	const int ID_DRAGON_ICE				= 100*GIL_DRAGON + 4;
	const int ID_DRAGON_GOLD			= 100*GIL_DRAGON + 5;
	const int ID_DRAGON_BLACK			= 100*GIL_DRAGON + 6;
	const int ID_DRAGON_UNDEAD			= 100*GIL_DRAGON + 7;
	const int ID_SLEEPER				= 100*GIL_DRAGON + 8;
	/// MOLERAT
	const int ID_MOLERAT				= 100*GIL_MOLERAT + 0;
	/// ALLIGATOR
	const int ID_ALLIGATOR				= 100*GIL_ALLIGATOR + 0;
	/// SWAMPGOLEM
	const int ID_SWAMPGOLEM				= 100*GIL_SWAMPGOLEM + 0;
	/// STONEGUARDIAN
	const int ID_STONEGUARDIAN			= 100*GIL_STONEGUARDIAN + 0;
	/// GARGOYLE
	const int ID_GARGOYLE				= 100*GIL_GARGOYLE + 0;
	/// OGRE
	const int ID_OGRE					= 100*GIL_OGRE + 0;
	/// WILD
	const int ID_HARE					= 100*GIL_WILD + 0;
	/// SUMMONED
	const int ID_SUMMONED				= 100*GIL_SUMMONED + 0;
	const int ID_SUMMONED_EVIL			= 100*GIL_SUMMONED + 1;
	const int ID_SUMMONED_UNDEAD		= 100*GIL_SUMMONED + 2;
	/// ORC
	const int ID_ORC					= 100*GIL_ORC + 0;
	const int ID_ORCSOLDIER				= 100*GIL_ORC + 1;
	const int ID_ORCWARRIOR				= 100*GIL_ORC + 2;
	const int ID_ORCSHAMAN				= 100*GIL_ORC + 3;
	const int ID_ORCELITE				= 100*GIL_ORC + 4;
	const int ID_ORCCOMMANDER			= 100*GIL_ORC + 5;
	/// UNDEAD-ORC
	const int ID_UNDEADORCWARRIOR		= 100*GIL_UNDEADORC + 0;
	/// DRACONIAN
	const int ID_DRACONIAN				= 100*GIL_DRACONIAN + 0;

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
const int AIV_LifeSteal						=	64;	/// new!!!
const int AIV_DmgReflection					=	65;	/// new!!!
const int AIV_AreaDmg						=	66; /// new!!!
const int AIV_Reserved_67					=	67;
const int AIV_Reserved_68					=	68;

/// ------ Love! ------
const int AIV_Love							=	69; /// new (OBSOLETE) between 0 (0%) and 100'000 (100%), if girl have under 0 then she will not want to talk to you

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

const int HP_PER_LEVEL				=	2;	//12
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
const int MOBSI_UsePan				=	17;	/// new!!!
const int MOBSI_UseStove			=	18;	/// new!!!
const int MOBSI_UseWood				=	19;	/// new!!!

const int MOBSI_LearnAttributes		=	20;	/// new!!!

var int PLAYER_MOBSI_PRODUCTION;

///******************************************************************************************
/// Visual constants
///******************************************************************************************

const int BodyTex_Default			=	0;
const int BodyTex_Player			=	1;
const int BodyTex_Nude				=	2;
const int BodyTex_Dressed			=	10;

const int BodyTex_MAX			=	16;

/// ------ Skin ------
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

/// ------ Main Faces 0-100 ------
const int Face_Player				= 	0;
const int Face_Gomez 				=	1;		/// N - - -
const int Face_Scar 				= 	2;		/// N - - -
const int Face_Raven				= 	3;		/// N - - -
const int Face_Bullit				= 	4;		/// N - - -
const int Face_Thorus				= 	5;		/// - - - B
const int Face_Corristo				= 	6;		/// N - - -
const int Face_Milten				= 	7;		/// N - - -
const int Face_Bloodwyn				= 	8;		/// N - - -
const int Face_Scatty				= 	9;		/// - - L -
const int Face_YBerion				= 	10;		/// N - - -
const int Face_CoolPock				= 	11;		/// N - - -
const int Face_CorAngar				= 	12;		/// - - - B
const int Face_Saturas				= 	13;		/// - - - B
const int Face_Xardas				= 	14;		/// N - - -
const int Face_Lares				= 	15;		/// N - - -
const int Face_Ratford				= 	16;		/// - - L -
const int Face_Drax					= 	17;		/// N - - -
const int Face_Gorn					= 	18;		/// - - - B
const int Face_Lester				= 	19;		/// - P - -
const int Face_Lee					= 	20;		/// N - - -
const int Face_Torlof				= 	21;		/// N - - -
const int Face_Mud					= 	22;		/// N - - -
const int Face_Ricelord				= 	23;		/// N - - -
const int Face_Horatio				= 	24;		/// N - - -
const int Face_Richter				= 	25;		/// N - - -
const int Face_Cipher				= 	26;		/// N - - -
const int Face_Homer				= 	27;		/// N - - -
const int Face_Cavalorn				= 	28;		/// - - - B
const int Face_Ian					= 	29;		/// - - L -
const int Face_Diego				= 	30;		/// - - L -
const int Face_MadPsi				= 	31;		/// N - - -
const int Face_Bartholo				= 	32;		/// N - - -
const int Face_Snaf					= 	33;		/// N - - -
const int Face_Mordrag				= 	34;		/// N - - -
const int Face_Lefty				= 	35;		/// N - - -
const int Face_Wolf					= 	36;		/// N - - -
const int Face_Fingers				= 	37;		/// N - - -
const int Face_Whistler				= 	38;		/// N - - -
const int Face_Gilbert				= 	39;		/// - P - -
const int Face_Jackal				= 	40;		/// - - L -
const int Face_Greg					= 	41;		/// N - - -
const int Face_Skip					= 	42;		/// N - - -
const int Face_Flail				= 	43;		/// N - - -
const int Face_Flex					= 	44;		/// N - - -
const int Face_Lutter				= 	45;		/// N - - -
const int Face_Pfeiffer				= 	46;		/// N - - -
const int Face_Pymonte				= 	47;		/// N - - -
const int Face_Thomas				= 	48;		/// N - - -
const int Face_Unicorn				= 	49;		/// N - - -

const int Face_MikeKayne			=	50;		/// N - - -
const int Face_OldMikeKayne			=	51;		/// N - - -
const int Face_Burak				=	52;		/// N - - -
const int Face_Witcher				=	53;		/// N - - -
const int Face_Dolan				=	54;		/// N - - -
const int Face_Kaczyn				=	55;		/// - P - -
const int Face_Bronek				=	56;		/// N - - -
const int Face_CichyMaciej			=	57;		/// N - - -
const int Face_Hitler				=	58;		/// N - - -
const int Face_Putin				=	59;		/// N - - -
const int Face_BinLaden				=	60;		/// - - L -
const int Face_Aharon				=	61;		/// - P - -
const int Face_Balrog				=	62;		/// N - - -
const int Face_China				=	63;		/// N - - -
const int Face_Sect					=	64;		/// N - - -
const int Face_SpecialPal			=	65;		/// N - - -
const int Face_JangoFett			=	66;		/// N - - -
const int Face_MaceWindu			=	67;		/// - - - B
const int Face_Skull				=	68;		/// N
const int Face_Piotrek				=	69;		/// N - - -
const int Face_Julius				=	70;		/// N - - -
const int Face_Dooku				=	71;		/// N - - -
const int Face_Agent				=	72;		/// N P L B
const int Face_Kid					=	73;		/// N - - -
const int Face_Grandpa				=	74;		/// - P - -

/// ------ Normal Faces 100-199 ------
const int Face_Normal00				=	100;		/// N P L B
const int Face_Normal01				=	101;		/// N P L B
const int Face_Normal02				=	102;		/// N P L B
const int Face_Normal03				=	103;		/// N P L B
const int Face_Normal04				=	104;		/// N P L B
const int Face_Normal05				=	105;		/// N P L B
const int Face_Normal06				=	106;		/// N P L B
const int Face_Normal07				=	107;		/// N P L B
const int Face_Normal08				=	108;		/// N P L B
const int Face_Normal09				=	109;		/// N P L B
const int Face_Normal10				=	110;		/// N P L B
const int Face_Normal11				=	111;		/// N P - B
const int Face_Normal12				=	112;		/// N P - -
const int Face_Normal13				=	113;		/// N P - -
const int Face_Normal14				=	114;		/// N P - -
const int Face_Normal15				=	115;		/// N P - -
const int Face_Normal16				=	116;		/// N P - -
const int Face_Normal17				=	117;		/// N P - -
const int Face_Normal18				=	118;		/// N P - -
const int Face_Normal19				=	119;		/// N P - -
const int Face_Normal20				=	120;		/// N P - -
const int Face_Normal21				=	121;		/// N - - -
const int Face_Normal22				=	122;		/// N - - -
const int Face_Normal23				=	123;		/// N - - -
const int Face_Normal24				=	124;		/// N - - -
const int Face_Normal25				=	125;		/// N - - -
const int Face_Normal26				=	126;		/// N - - -
const int Face_Normal27				=	127;		/// N - - -
const int Face_Normal28				=	128;		/// N - - -
const int Face_Normal29				=	129;		/// N - - -
const int Face_Normal30				=	130;		/// N - - -
const int Face_Normal31				=	131;		/// N - - -
const int Face_Normal32				=	132;		/// N - - -
const int Face_Normal33				=	133;		/// N - - -
const int Face_Normal34				=	134;		/// N - - -
const int Face_Normal35				=	135;		/// N - - -
const int Face_Normal36				=	136;		/// N - - -
const int Face_Normal37				=	137;		/// N - - -
const int Face_Normal38				=	138;		/// N - - -
const int Face_Normal39				=	139;		/// N - - -
const int Face_Normal40				=	140;		/// N - - -
const int Face_Normal41				=	141;		/// N - - -
const int Face_Normal42				=	142;		/// N - - -
const int Face_Normal43				=	143;		/// N - - -
const int Face_Normal44				=	144;		/// N - - -
const int Face_Normal45				=	145;		/// N - - -
const int Face_Normal46				=	146;		/// N - - -
const int Face_Normal47				=	147;		/// N - - -
const int Face_Normal48				=	148;		/// N - - -
const int Face_Normal49				=	149;		/// N - - -
const int Face_Normal50				=	150;		/// N - - -
const int Face_Normal51				=	151;		/// N - - -
const int Face_Normal52				=	152;		/// N - - -
const int Face_Normal53				=	153;		/// N - - -
const int Face_Normal54				=	154;		/// N - - -
const int Face_Normal55				=	155;		/// N - - -
const int Face_Normal56				=	156;		/// N - - -
const int Face_Normal57				=	157;		/// N - - -
const int Face_Normal58				=	158;		/// N - - -
const int Face_Normal59				=	159;		/// N - - -
const int Face_Normal60				=	160;		/// N - - -
const int Face_Normal61				=	161;		/// N - - -
const int Face_Normal62				=	162;		/// N - - -
const int Face_Normal63				=	163;		/// N - - -
const int Face_Normal64				=	164;		/// N - - -
const int Face_Normal65				=	165;		/// N - - -
const int Face_Normal66				=	166;		/// N - - -
const int Face_Normal67				=	167;		/// N - - -
const int Face_Normal68				=	168;		/// N - - -
const int Face_Normal69				=	169;		/// N - - -
const int Face_Normal70				=	170;		/// N - - -
const int Face_Normal71				=	171;		/// N - - -
const int Face_Normal72				=	172;		/// N - - -
const int Face_Normal73				=	173;		/// N - - -
const int Face_Normal74				=	174;		/// N - - -
const int Face_Normal75				=	175;		/// N - - -
const int Face_Normal76				=	176;		/// N - - -
const int Face_Normal77				=	177;		/// N - - -
const int Face_Normal78				=	178;		/// N - - -
const int Face_Normal79				=	179;		/// N - - -
const int Face_Normal80				=	180;		/// N - - -
const int Face_Normal81				=	181;		/// N - - -
const int Face_Normal82				=	182;		/// N - - -
const int Face_Normal83				=	183;		/// N - - -
const int Face_Normal84				=	184;		/// N - - -
const int Face_Normal85				=	185;		/// N - - -
const int Face_Normal86				=	186;		/// N - - -
const int Face_Normal87				=	187;		/// N - - -
const int Face_Normal88				=	188;		/// N - - -
const int Face_Normal89				=	189;		/// N - - -
const int Face_Normal90				=	190;		/// N - - -
const int Face_Normal91				=	191;		/// N - - -
const int Face_Normal92				=	192;		/// N - - -
const int Face_Normal93				=	193;		/// N - - -
const int Face_Normal94				=	194;		/// N - - -
const int Face_Normal95				=	195;		/// N - - -
const int Face_Normal96				=	196;		/// N - - -
const int Face_Normal97				=	197;		/// N - - -
const int Face_Normal98				=	198;		/// N - - -
const int Face_Normal99				=	199;		/// N - - -

const int Face_Tattoo00				=	200;		/// N P L B
const int Face_Tattoo01				=	201;		/// N P L -
const int Face_Tattoo02				=	202;		/// N - L -
const int Face_Tattoo03				=	203;		/// N - - -
const int Face_Tattoo04				=	204;		/// N - - -
const int Face_Tattoo05				=	205;		/// N - - -
const int Face_Tattoo06				=	206;		/// N - - -
const int Face_Tattoo07				=	207;		/// N - - -
const int Face_Tattoo08				=	208;		/// N - - -
const int Face_Tattoo09				=	209;		/// N - - -
const int Face_Tattoo10				=	210;		/// N - - -
const int Face_Tattoo11				=	211;		/// N - - -
const int Face_Tattoo12				=	212;		/// N - - -
const int Face_Tattoo13				=	213;		/// N - - -
const int Face_Tattoo14				=	214;		/// N - - -
const int Face_Tattoo15				=	215;		/// N - - -
const int Face_Tattoo16				=	216;		/// N - - -
const int Face_Tattoo17				=	217;		/// N - - -
const int Face_Tattoo18				=	218;		/// N - - -
const int Face_Tattoo19				=	219;		/// N - - -
const int Face_Tattoo20				=	220;		/// N - - -
const int Face_Tattoo21				=	221;		/// N - - -
const int Face_Tattoo22				=	222;		/// N - - -
const int Face_Tattoo23				=	223;		/// N - - -
const int Face_Tattoo24				=	224;		/// N - - -

/// ------ Babe Main Faces 0-99 ------
const int FaceBabe_Velaya			= 	0;		/// N - - -
const int FaceBabe_Syra				= 	1;		/// N - - -
const int FaceBabe_Seraphia			= 	2;		/// N - - -
const int FaceBabe_Charlotte		= 	3;		/// - - L -
const int FaceBabe_Chani			= 	4;		/// - - - B
const int FaceBabe_Natalia			= 	5;		/// - P - -
const int FaceBabe_Sagitta			= 	6;		/// N - - -
const int FaceBabe_Lidia			= 	7;		/// - - L -
const int FaceBabe_Edda				= 	8;		/// - - - B
const int FaceBabe_Amazone			= 	9;		/// N - - -
const int FaceBabe_Servant			= 	10;		/// N - - -
const int FaceBabe_Isabel			= 	11;		/// N - - -
const int FaceBabe_Princess			= 	12;		/// - P - -
const int FaceBabe_Anna				= 	13;		/// N - - -

const int FaceBabe_Lucyna			=	50;		/// N - - -
const int FaceBabe_Angela			=	51;		/// - P - -
const int FaceBabe_Sasha			=	52;		/// N - - -
const int FaceBabe_Kate				=	53;		/// N - - -
const int FaceBabe_Emmy				=	54;		/// N - - -
const int FaceBabe_Nurse			=	55;		/// N - - -
const int FaceBaby_Granny			=	56;		/// - P - -

/// ------ Babe Normal Faces 100-199 ------
const int FaceBabe_Normal00			= 	100;		/// N P L B
const int FaceBabe_Normal01			= 	101;		/// N - - -
const int FaceBabe_Normal02			= 	102;		/// N - - -
const int FaceBabe_Normal03			= 	103;		/// N - - -
const int FaceBabe_Normal04			= 	104;		/// N - - -
const int FaceBabe_Normal05			= 	105;		/// N - - -
const int FaceBabe_Normal06			= 	106;		/// N - - -
const int FaceBabe_Normal07			= 	107;		/// N - - -
const int FaceBabe_Normal08			= 	108;		/// N - - -
const int FaceBabe_Normal09			= 	109;		/// N - - -
const int FaceBabe_Normal10			= 	110;		/// N - - -
const int FaceBabe_Normal11			= 	111;		/// N - - -
const int FaceBabe_Normal12			= 	112;		/// N - - -

/// ------ FaceMAX ------
const int FaceTex_MAX			=	225;
