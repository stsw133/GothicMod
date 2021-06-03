///******************************************************************************************
///	Aivars
///******************************************************************************************

const int AIV_LastFightAgainstPlayer		=	0;
const int	FIGHT_NONE					= 0;
const int	FIGHT_Lost					= 1;
const int	FIGHT_Won					= 2;
const int	FIGHT_Cancel				= 3;

/// ------ Crimes ------
const int AIV_NpcSawPlayerCommit			=	1;
const int	CRIME_NONE					= 0;
const int	CRIME_SheepKiller			= 1;
const int	CRIME_Attack				= 2;
const int	CRIME_Theft					= 3;
const int	CRIME_Murder				= 4;

const int AIV_NpcSawPlayerCommitDay			=	2;

/// ------ Talk ------
const int AIV_NpcStartedTalk				=	3;
const int AIV_TalkedToPlayer				=	4;
const int AIV_Invincible					=	5;

/// ------ Pickpocket ------
const int AIV_PlayerHasPickedMyPocket		=	6;

/// ------ ZS_Attack ------
const int AIV_LastTarget					=	7;
const int AIV_PursuitEnd					=	8;

/// ------ B_SayAttackReason ------
const int AIV_AttackReason					=	9;
const int	AR_NONE						= 0;
const int	AR_LeftPortalRoom			= 1;
const int	AR_ClearRoom				= 2;
const int	AR_GuardCalledToRoom		= 3;
const int	AR_MonsterVsHuman			= 4;
const int	AR_MonsterMurderedHuman 	= 5;
const int	AR_SheepKiller				= 6;
const int	AR_Theft					= 7;
const int	AR_UseMob					= 8;
const int	AR_GuardCalledToThief 		= 9;
const int	AR_ReactToWeapon			= 10;
const int	AR_ReactToDamage			= 11;
const int	AR_GuardStopsFight			= 12;
const int	AR_GuardCalledToKill		= 13;
const int	AR_GuildEnemy				= 14;
const int	AR_HumanMurderedHuman		= 15;
const int	AR_MonsterCloseToGate 		= 16;
const int	AR_GuardStopsIntruder		= 17;
const int	AR_SuddenEnemyInferno		= 18;
const int	AR_KILL						= 19;

/// ------ RansackBody ------
const int AIV_Ransacked						=	10;

/// ------ GuardPassage ------
const int AIV_GuardPassage_Status			=	11;
const int	GP_NONE						= 0;
const int	GP_FirstWarnGiven			= 1;
const int	GP_SecondWarnGiven			= 2;
const int	GP_PassGate					= 3;

const int AIV_LastDistToWP					=	12;

/// ------  TA position ------
const int AIV_TaPosition					=	13;
const int	IsInPos						= 0;
const int	NotInPos					= 1;
const int	NotInPos_Walk				= 2;

/// ------ Defeated or Killed by Player ------
const int AIV_DefeatedByPlayer				=	14;
const int	DBP_NONE					= 0;
const int	DBP_Defeated				= 1;
const int	DBP_Killed					= 2;

const int AIV_VictoryXPGiven				=	15;

/// ------ LoadGame ------
const int AIV_LoadGame						=	16;

/// ------ RESERVED ------
const int AIV_Reserved_17					=	17;
const int AIV_Reserved_18					=	18;

/// ------ Spells ------
const int AIV_SpellLevel					=	19;
const int AIV_SelectSpell					=	20;

/// ------ ZS_ObservePlayer ------
const int AIV_SeenLeftRoom					=	21;

var int Player_SneakerComment;
var int Player_LeftRoomComment;
var int Player_DrawWeaponComment;
var int Player_GetOutOfMyBedComment;

/// ------ ZS_Attack ------
const int AIV_HitByOtherNpc					=	22;
const int AIV_WaitBeforeAttack				=	23;
const int AIV_LastAbsolutionLevel			=	24;

/// ------ ToughGuyNewsOverride ------
const int AIV_ToughGuyNewsOverride			=	25;

/// ------ Monster Aivars ------
const int AIV_MM_ThreatenBeforeAttack		=	26;
const int AIV_MM_FollowTime 				=	27;
const int	FOLLOWTIME_SHORT			= 5;
const int	FOLLOWTIME_MEDIUM			= 10;
const int	FOLLOWTIME_LONG				= 20;

const int AIV_MM_FollowInWater 				=	28;
const int AIV_MM_Priority 					=	29;
const int	PRIO_EAT 					= 0;
const int	PRIO_ATTACK 				= 1;

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
const int	OnlyRoutine 				= -1;

const int AIV_MM_Packhunter					=	42;

const int AIV_MM_Real_ID					=	43;
const int	ID_SHEEP					= 1;
const int	ID_GOAT						= 2;
//const int	ID_CHICKEN					= 3;
//const int	ID_RABBIT					= 4;
//const int	ID_PIG						= 5;
//const int	ID_COW						= 6;
//const int	ID_HORSE					= 7;
const int	ID_DOG						= 8;

const int	ID_SPINT					= 11;
const int	ID_HARE						= 12;
//const int	ID_DEER						= 13;
//const int	ID_DUCK						= 14;
const int	ID_RAT						= 15;
const int	ID_SPIDER					= 16;

const int	ID_GIANT_RAT				= 21;
const int	ID_MOLERAT					= 22;
const int 	ID_SWAMPRAT					= 22;

const int	ID_WOLF						= 31;
const int 	ID_ICEWOLF					= 31;
const int	ID_JACKAL					= 32;
const int	ID_KEILER					= 33;
const int	ID_WARG						= 34;
const int	ID_TIGER					= 35;
const int 	ID_BLOODHOUND				= 35;
//const int	ID_BEAR						= 36;

const int	ID_GOBBO					= 41;
const int 	ID_GOBBO_BLACK				= 41;
const int	ID_GOBBO_BANDIT				= 42;
const int	ID_GOBBO_WARRIOR			= 43;

const int	ID_SCAVENGER				= 51;
const int 	ID_SCAVENGER_DEMON			= 51;
const int	ID_BITER					= 52;

const int 	ID_GIANT_SPIDER				= 61;
const int	ID_GIANT_BUG				= 62;
const int 	ID_MINECRAWLER				= 63;
const int 	ID_MINECRAWLERWARRIOR		= 64;
const int	ID_MINECRAWLERQUEEN			= 65;
const int	ID_BLATTCRAWLER				= 66;

const int 	ID_BLOODFLY					= 71;
const int 	ID_DRAGONFLY				= 72;
const int 	ID_SWAMPDRONE				= 73;

const int	ID_WARAN					= 81;
const int	ID_FIREWARAN				= 81;
const int	ID_LURKER					= 82;
const int 	ID_SWAMPSHARK				= 83;
const int 	ID_ALLIGATOR				= 84;

const int 	ID_SNAPPER					= 91;
const int   ID_RAZOR					= 92;
const int 	ID_DRAGONSNAPPER			= 93;
const int 	ID_ANCIENTSNAPPER			= 94;

const int 	ID_SKELETON					= 101;
const int 	ID_GOBBO_SKELETON			= 101;
const int 	ID_SKELETON_MAGE			= 102;
const int 	ID_SKELETON_LORD			= 103;
const int	ID_ZOMBIE					= 104;
const int	ID_MUMMY					= 105;

const int 	ID_SHADOWBEAST				= 111;
const int 	ID_SHADOWBEAST_SKELETON		= 112;

const int 	ID_HARPY					= 121;

const int 	ID_STONEGUARDIAN			= 131;
const int 	ID_GARGOYLE					= 132;
const int 	ID_GOLEM					= 133;
const int 	ID_AVATAR					= 134;
const int	ID_TREANT					= 135;

const int 	ID_TROLL					= 141;
const int 	ID_TROLL_BLACK				= 142;

const int 	ID_DEMON					= 151;
const int 	ID_DEMON_LORD				= 151;
const int	ID_DEMONICON				= 152;

const int 	ID_ORCWARRIOR				= 161;
const int 	ID_ORCSHAMAN				= 162;
const int 	ID_ORCELITE					= 163;
const int 	ID_ORCCOMMANDER				= 164;
const int 	ID_UNDEADORCWARRIOR			= 165;
const int 	ID_DRACONIAN				= 166;

const int 	ID_DRAGON					= 171;
const int 	ID_DRAGON_UNDEAD			= 172;
const int	ID_SLEEPER					= 173;

const int	ID_SHADOW					= 181;
const int	ID_CHAOS					= 182;
const int	ID_MOROK					= 183;
const int	ID_SUMMONED					= 183;
const int 	ID_SUMMONED_GOBBO_SKELETON 	= 183;
const int 	ID_SUMMONED_WOLF			= 183;
const int 	ID_SUMMONED_SKELETON		= 183;
const int 	ID_SUMMONED_GOLEM			= 183;
const int 	ID_SUMMONED_DEMON			= 183;
const int	ID_SummonedGuardian			= 183;
const int	ID_SummonedZombie			= 183;

const int AIV_MM_LastBody					=	44;

/// ------ ArenaFight ------
const int AIV_ArenaFight					=	45;
const int	AF_NONE						= 0;
const int	AF_Running					= 1;
const int	AF_After					= 2;
const int	AF_After_Plus_Damage		= 3;

/// ------ zusätzlich zur CRIME merken ------
const int AIV_CrimeAbsolutionLevel			=	46;

/// ------ ZS_Attack ------
const int AIV_LastPlayerAR					=	47;

/// ------ ZS_Unconscious ------
const int AIV_DuelLost						=	48;

/// ------ Inventory ------
const int AIV_ChapterInv					=	49;
const int AIV_DeathInvGiven					=	50;

/// ------ MagicUser ------
const int AIV_MagicUser						=	51;
const int	MAGIC_NEVER					= 0;
const int	MAGIC_MYS					= 1;
const int	MAGIC_GEO					= 2;
const int	MAGIC_ELE					= 3;
const int	MAGIC_PYR					= 4;
const int	MAGIC_NEC					= 5;
const int	MAGIC_OTHER					= 6;
const int	MAGIC_ALWAYS				= 7;

/// ------ C_DropUnconscious ------
const int AIV_DropDeadAndKill				=	52;

/// ------ ZS_MagicFreeze ------
const int AIV_FreezeStateTime				=	53;

/// ------ Ignoring ------
const int AIV_IgnoreCrime					=	54;
const int	IGNORE_Murder				= 1 << 0;
const int	IGNORE_Theft				= 1 << 1;
const int	IGNORE_Sheepkiller			= 1 << 2;
const int	IGNORE_Fear					= 1 << 3;

const int AIV_IgnoreDisguise				=	55;
const int	IGNORE_Armor				= 1 << 0;
const int	IGNORE_FakeGuild			= 1 << 1;

const int AIV_IGNORE_Murder					= 54;
const int AIV_IGNORE_Theft					= 55;
const int AIV_IGNORE_Sheepkiller			= 56;

/// ------ RESERVED ------
const int AIV_Reserved_56					=	56;

/// ------ ToughGuy IGNORIERT Attack-Crime ------
const int AIV_ToughGuy						=	57;

/// ------ News Override (petzen aber nicht labern) ------
const int AIV_NewsOverride					=	58;

/// ------ ZS_MM_Attack ------
const int AIV_MaxDistToWp					=	59;
const int AIV_OriginalFightTactic			=	60;

/// ------ B_AssessEnemy ------
const int AIV_EnemyOverride					=	61;

/// ------ für beschworene Monster ------
const int AIV_SummonTime					=	62;

/// ------ ZS_Attack ------
const int AIV_FightDistCancel				=	63;
const int AIV_LastFightComment				=	64;

/// ------ diverse ZS ------
const int AIV_StateTime						=	65;

// ------ ZS_Dead ------
const int AIV_KilledByPlayer				= 18;

const int AIV_IgnoresFakeGuild				= 67;

/// ------ AIV_Dist ------
const int AIV_Dist							=	66;

const int AIV_Reserved_67					=	67;

/// ------ AIV_Story ------
const int AIV_NoFightParker					=	68;
const int AIV_NpcIsRanger					=	69;
const int AIV_StoryBandit					=	70;
const int AIV_StoryBandit_Esteban			=	71;

const int AIV_IgnoresArmor					= 55;
const int AIV_MM_ShrinkState 				= 95;

// ------ ZS_Whirlwind --------
const int AIV_WhirlwindStateTime			= 96;	//added by kairo

// ------ ZS_Inflate --------
const int AIV_InflateStateTime				= 97;	//added by kairo

// ------ ZS_Swarm --------
const int AIV_SwarmStateTime				= 98;	//added by kairo

// ------ ZS_SuckEnergy	--------
const int AIV_SuckEnergyStateTime			= 99;	//added by kairo

/// ------ TA_Stand_Eating ------
const int AIV_Food							=	72;
const int	FOOD_Apple					= 0;
const int	FOOD_Cheese					= 1;
const int	FOOD_Bacon					= 2;
const int	FOOD_Bread					= 3;

/// ------ Visual ------
const int AIV_Race	 						=	73;
const int	RACE_Human					= 0;
const int	RACE_Elf					= 1;	/// non-avaible yet
const int	RACE_Dwarf					= 2;	/// non-avaible yet
const int	RACE_Orc					= 3;	/// female non-avaible yet or never
const int	RACE_Draconian				= 4;	/// female non-avaible yet or never
const int	RACE_Demon					= 5;	/// non-avaible yet
const int	RACE_Zombie					= 6;	/// non-avaible yet
const int	RACE_Beast					= 7;	/// non-avaible yet

const int AIV_Gender						=	74;
const int	MALE						= 0;
const int	FEMALE						= 1;

const int AIV_BodyTex	 					=	75;
const int AIV_SkinTex	 					=	76;
const int AIV_FaceTex	 					=	77;
const int AIV_TeethTex	 					=	78;

/// ------ Team ------
const int AIV_PartyMember					=	79;
const int AIV_FollowDist					=	80;

/// ------ NEW ------
const int AIV_Love							=	81; /// pomiêdzy 0 (0%) a 100.000 (100%), jeœli dziewczyna ma poni¿ej 0 to nie bêdzie z tob¹ rozmawiaæ
const int AIV_Power 						=	82;	/// bazowy poziom mocy
const int AIV_GuildLevel					=	83;	/// poziom zaawansowania gildii (np. 0 = stra¿nik miejski, 1 = gwardzista królewski || 0 = mag, 1 = arcymag ...)
const int AIV_Location						=	84; /// okreœla do jakiej lokacji nale¿y postaæ
const int AIV_ActiveRoutine					=	85; /// numer aktywnej rutyny (zmieniaj¹cej siê losowo ka¿dej pó³nocy)

const int AIV_ComboHit						=	86; /// okreœla który cios z kolei odda³eœ (zeruje siê gdy nie jesteœ w walce)
const int AIV_TrueDamage					=	87; /// okreœla ile dodatkowych nieuchronnych obra¿eñ zadaje postaæ
const int AIV_LifeSteal						=	88; /// okreœla % i punkty leczenia podczas atakowania
//const int AIV_Penetrated					=	89; /// okreœla ile punktów przebicia pancerza zosta³o zaaplikowanych
//const int AIV_mPenetrated					=	90; /// okreœla ile punktów przebicia odpornoœci zosta³o zaaplikowanych

const int AIV_CanTeach						=	91; /// okreœla czy postaæ jest w stanie uczyæ umiejêtnoœci lub atrybutów
const int AIV_CanTrade						=	92; /// okreœla czy postaæ jest w stanie handlowaæ towarami

/// ------ MagicStones ------
const int AIV_TelStone						=	93; /// okreœla który kamieñ teleportacji ma za³o¿ony NPC
const int AIV_TrfStone						=	94; /// okreœla który kamieñ transformacji ma za³o¿ony NPC
const int AIV_SumStone						=	95; /// okreœla który kamieñ przyzwania ma za³o¿ony NPC

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
///	Location Konstanten
///******************************************************************************************

const int LOC_NONE			=	0;
const int LOC_OLDCAMP		=	1;
const int LOC_CITY			=	2;
const int LOC_MONASTERY		=	3;
const int LOC_FARM			=	4;
const int LOC_BL			=	5;
const int LOC_ALL			=	6;

///******************************************************************************************
///	Stadtviertel Konstanten
///******************************************************************************************

const int Q_KASERNE 		=	1;
const int Q_GALGEN 			=	2;
const int Q_MARKT 			=	3;
const int Q_TEMPEL 			=	4;
const int Q_UNTERSTADT 		=	5;
const int Q_HAFEN 			=	6;
const int Q_OBERSTADT 		=	7;

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

const int MONSTER_THREATEN_TIME				=	4;
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

const float RANGED_CHANCE_MINDIST		=	1500;
const float RANGED_CHANCE_MAXDIST		=	4500;

///******************************************************************************************
///	Zeit-Konstanten
///******************************************************************************************

const int NPC_ANGRY_TIME 			=	120;
const int HAI_TIME_UNCONSCIOUS		=	20;
const int NPC_TIME_FOLLOW			=	10;

///******************************************************************************************
///	Mindestschaden
///******************************************************************************************

const int NPC_MINIMAL_DAMAGE		=	5;
const int NPC_MINIMAL_PERCENT		=	20;	//10

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
///	Constants
///******************************************************************************************

const int default			=	0;

const int false				=	0;
const int true				=	1;
const int DONE				=	2;

const int LOOP_CONTINUE 	=	0;
const int LOOP_END			=	1;

const int DECREASE			=	0;
const int INCREASE			=	1;

///******************************************************************************************

const int START_LEVEL		=	1;
const int MAX_LEVEL			=	100;
const int XP_PER_LEVEL		=	500;
const int XP_PER_VICTORY	=	10;

const int HP_PER_LEVEL		=	0;	//12
const int LP_PER_LEVEL		=	10;
const int GOLD_PER_LP		=	20;

const int HP_PER_LP			=	4;
const int AR_PER_LEVEL		=	5;
const int MR_PER_LEVEL		=	3;

///******************************************************************************************

const int NPCTYPE_AMBIENT		=	0;
const int NPCTYPE_MAIN			=	1;
const int NPCTYPE_FRIEND		=	2;
const int NPCTYPE_OCAMBIENT		=	3;
const int NPCTYPE_OCMAIN		=	4;
const int NPCTYPE_BL_AMBIENT	=	5;
const int NPCTYPE_TAL_AMBIENT	=	6;
const int NPCTYPE_BL_MAIN		=	7;
const int NPCTYPE_LOVE			=	8;
const int NPCTYPE_VILLAIN		=	9;

///******************************************************************************************

const int MOBSI_NONE			=	0;
const int MOBSI_SmithWeapon		=	1;
const int MOBSI_SleepAbit		=	2;
const int MOBSI_MakeRune		=	3;
const int MOBSI_PotionAlchemy	=	4;
const int MOBSI_PrayShrine		=	5;
const int MOBSI_GoldHacken		=	6;
const int MOBSI_PrayIdol		=	7;

const int MOBSI_iMonologue		=	8;

const int MOBSI_OreHacken		=	9;
const int MOBSI_MakeWood		=	10;
const int MOBSI_SharpWeapon		=	11;
const int MOBSI_UseStove		=	12;
const int MOBSI_UsePan			=	13;
const int MOBSI_UseCauldron		=	14;
const int MOBSI_PrayAdanos		=	15;
const int MOBSI_MagicStone		=	16;
const int MOBSI_Wood			=	17;
const int MOBSI_Tabak			=	18;
const int MOBSI_MakeAlcohol		=	19;

var int PLAYER_MOBSI_PRODUCTION;

///******************************************************************************************
///	Visual Constants
///******************************************************************************************

const int BodyTex_Normal			=	0;
const int BodyTex_Player			=	1;
const int BodyTex_Nude				=	2;
const int BodyTex_Dressed			=	10;

const int BodyTex_MAX			=	16;

const int BodyTex_P			= 0;	//Pale
const int BodyTex_N			= 1;	//Normal
const int BodyTex_L			= 2;	//Latino
const int BodyTex_B			= 3;	//Black 	- die gleichen Kennungen haben auch die Gesichter (zum direkten Vergleich)
const int BodyTexBabe_P		= 4;	//Pale Babe
const int BodyTexBabe_N		= 5;	//Normal Babe	
const int BodyTexBabe_L		= 6;	//Latino Babe 
const int BodyTexBabe_B		= 7;	//Black Babe   //Frauen werden auch mit den "Männer"-Konstanten angegeben, dann vom Script +4 addiert, d.h. diese Konstanten werden nicht gebraucht

//---------ADD ON----------------------
const int BodyTex_T	= 10; //tätowierte psionikerhaut
const int BodyTexBabe_F	= 11; //Fellkragen Babe 
const int BodyTexBabe_S	= 12;//das kleine Schwarze 

/// ------ Skin ------
const int BodySkin_N				=	0;	/// Normal	/	Forest Elf	/	Red Demon		/	Gray Furry
const int BodySkin_P				=	1;	/// Pale	/	Snow Elf	/	Gray Demon		/	White Furry
const int BodySkin_L				=	2;	/// Latino	/	Latino Elf	/	Orange Demon	/	Brown Furry
const int BodySkin_B				=	3;	/// Black	/	Dark Elf	/	Dark-red Demon	/	Black Furry
const int BodySkin_A				=	4;	/// Asian 	/	Ancient Elf	/	Green Demon		/	Gold Furry	/	(non-avaible yet)

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

const int Face_MaxKayne				=	50;		/// N - - -
const int Face_OldMikeKayne			=	51;		/// N - - -
const int Face_Bardon				=	52;		/// N - - -
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
const int Face_Pietrok				=	69;		/// N - - -
const int Face_Julius				=	70;		/// N - - -
const int Face_Dooku				=	71;		/// N - - -
const int Face_Agent				=	72;		/// N P L B
const int Face_Kid					=	73;		/// N - - -
const int Face_Grandpa				=	74;		/// - P - -

/// ------ Normal Faces 100-199 ------
const int Face_Normal00				=	100;	/// N P L B
const int Face_Normal01				=	101;	/// N P L B
const int Face_Normal02				=	102;	/// N P L B
const int Face_Normal03				=	103;	/// N P L B
const int Face_Normal04				=	104;	/// N P L B
const int Face_Normal05				=	105;	/// N P L B
const int Face_Normal06				=	106;	/// N P L B
const int Face_Normal07				=	107;	/// N P L B
const int Face_Normal08				=	108;	/// N P L B
const int Face_Normal09				=	109;	/// N P L B
const int Face_Normal10				=	110;	/// N P L B
const int Face_Normal11				=	111;	/// N P - B
const int Face_Normal12				=	112;	/// N P - -
const int Face_Normal13				=	113;	/// N P - -
const int Face_Normal14				=	114;	/// N P - -
const int Face_Normal15				=	115;	/// N P - -
const int Face_Normal16				=	116;	/// N P - -
const int Face_Normal17				=	117;	/// N P - -
const int Face_Normal18				=	118;	/// N P - -
const int Face_Normal19				=	119;	/// N P - -
const int Face_Normal20				=	120;	/// N P - -
const int Face_Normal21				=	121;	/// N - - -
const int Face_Normal22				=	122;	/// N - - -
const int Face_Normal23				=	123;	/// N - - -
const int Face_Normal24				=	124;	/// N - - -
const int Face_Normal25				=	125;	/// N - - -
const int Face_Normal26				=	126;	/// N - - -
const int Face_Normal27				=	127;	/// N - - -
const int Face_Normal28				=	128;	/// N - - -
const int Face_Normal29				=	129;	/// N - - -
const int Face_Normal30				=	130;	/// N - - -
const int Face_Normal31				=	131;	/// N - - -
const int Face_Normal32				=	132;	/// N - - -
const int Face_Normal33				=	133;	/// N - - -
const int Face_Normal34				=	134;	/// N - - -
const int Face_Normal35				=	135;	/// N - - -
const int Face_Normal36				=	136;	/// N - - -
const int Face_Normal37				=	137;	/// N - - -
const int Face_Normal38				=	138;	/// N - - -
const int Face_Normal39				=	139;	/// N - - -
const int Face_Normal40				=	140;	/// N - - -
const int Face_Normal41				=	141;	/// N - - -
const int Face_Normal42				=	142;	/// N - - -
const int Face_Normal43				=	143;	/// N - - -
const int Face_Normal44				=	144;	/// N - - -
const int Face_Normal45				=	145;	/// N - - -
const int Face_Normal46				=	146;	/// N - - -
const int Face_Normal47				=	147;	/// N - - -
const int Face_Normal48				=	148;	/// N - - -
const int Face_Normal49				=	149;	/// N - - -
const int Face_Normal50				=	150;	/// N - - -
const int Face_Normal51				=	151;	/// N - - -
const int Face_Normal52				=	152;	/// N - - -
const int Face_Normal53				=	153;	/// N - - -
const int Face_Normal54				=	154;	/// N - - -
const int Face_Normal55				=	155;	/// N - - -
const int Face_Normal56				=	156;	/// N - - -
const int Face_Normal57				=	157;	/// N - - -
const int Face_Normal58				=	158;	/// N - - -
const int Face_Normal59				=	159;	/// N - - -
const int Face_Normal60				=	160;	/// N - - -
const int Face_Normal61				=	161;	/// N - - -
const int Face_Normal62				=	162;	/// N - - -
const int Face_Normal63				=	163;	/// N - - -
const int Face_Normal64				=	164;	/// N - - -
const int Face_Normal65				=	165;	/// N - - -
const int Face_Normal66				=	166;	/// N - - -
const int Face_Normal67				=	167;	/// N - - -
const int Face_Normal68				=	168;	/// N - - -
const int Face_Normal69				=	169;	/// N - - -
const int Face_Normal70				=	170;	/// N - - -

const int Face_Pirat71				=	171;	/// N P - B
const int Face_Pirat72				=	172;	/// N - - B
const int Face_Pirat73				=	173;	/// N - - B

const int Face_Tattoo74				=	174;	/// N P L B
const int Face_Tattoo75				=	175;	/// N P L -
const int Face_Tattoo76				=	176;	/// N - L -
const int Face_Tattoo77				=	177;	/// N - - -
const int Face_Tattoo78				=	178;	/// N - - -
const int Face_Tattoo79				=	179;	/// N - - -
const int Face_Tattoo80				=	180;	/// N - - -
const int Face_Tattoo81				=	181;	/// N - - -
const int Face_Tattoo82				=	182;	/// N - - -
const int Face_Tattoo83				=	183;	/// N - - -
const int Face_Tattoo84				=	184;	/// N - - -
const int Face_Tattoo85				=	185;	/// N - - -
const int Face_Tattoo86				=	186;	/// N - - -
const int Face_Tattoo87				=	187;	/// N - - -
const int Face_Tattoo88				=	188;	/// N - - -
const int Face_Tattoo89				=	189;	/// N - - -
const int Face_Tattoo90				=	190;	/// N - - -
const int Face_Tattoo91				=	191;	/// N - - -
const int Face_Tattoo92				=	192;	/// N - - -
const int Face_Tattoo93				=	193;	/// N - - -
const int Face_Tattoo94				=	194;	/// N - - -
const int Face_Tattoo95				=	195;	/// N - - -
const int Face_Tattoo96				=	196;	/// N - - -
const int Face_Tattoo97				=	197;	/// N - - -
const int Face_Tattoo98				=	198;	/// N - - -
const int Face_Tattoo99				=	199;	/// N - - -

/// ------ Babe Main Faces 0-99 ------
const int FaceBabe_Velaya			= 	0;	/// N - - -
const int FaceBabe_Syra				= 	1;	/// N - - -
const int FaceBabe_Seraphia			= 	2;	/// N - - -
const int FaceBabe_Charlotte		= 	3;	/// - - L -
const int FaceBabe_Chani			= 	4;	/// - - - B
const int FaceBabe_Natalia			= 	5;	/// - P - -
const int FaceBabe_Sagitta			= 	6;	/// N - - -
const int FaceBabe_Amazone			= 	7;	/// N - - -
const int FaceBabe_Isabel			= 	8;	/// N - - -
const int FaceBabe_Princess			= 	9;	/// - P - -
const int FaceBabe_Anna				= 	10;	/// N - - -

const int FaceBabe_Lucyna			=	50;	/// N - - -
const int FaceBabe_Angela			=	51;	/// - P - -
const int FaceBabe_Sasha			=	52;	/// N - - -
const int FaceBabe_Kate				=	53;	/// N - - -
const int FaceBabe_Emmy				=	54;	/// N - - -
const int FaceBaby_Granny			=	55;	/// - P - -

/// ------ Babe Normal Faces 100-199 ------
const int FaceBabe_Normal00			= 	100;	/// N P L B
const int FaceBabe_Normal01			= 	101;	/// N - L -
const int FaceBabe_Normal02			= 	102;	/// N - - -
const int FaceBabe_Normal03			= 	103;	/// N - - -
const int FaceBabe_Normal04			= 	104;	/// N - - -
const int FaceBabe_Normal05			= 	105;	/// N - - -
const int FaceBabe_Normal06			= 	106;	/// N - - -
const int FaceBabe_Normal07			= 	107;	/// N - - -
const int FaceBabe_Normal08			= 	108;	/// N - - -
const int FaceBabe_Normal09			= 	109;	/// N - - -
const int FaceBabe_Normal10			= 	110;	/// N - - -
const int FaceBabe_Normal11			= 	111;	/// N - - -

const int FaceBabe_Servant70		= 	170;	/// N - - -

const int FaceBabe_Nurse90			=	190;	/// N - - -

/// ------ FaceMAX ------
const int FaceTex_MAX			=	200;


// ------- Gesichter für Männer ------
const int Face_N_Gomez 				=	0	;
const int Face_N_Scar 				= 	1	;
const int Face_N_Raven				= 	2	;
const int Face_N_Bullit				= 	3	;	//zu lieb!
const int Face_B_Thorus				= 	4	;
const int Face_N_Corristo			= 	5	;
const int Face_N_Milten				= 	6	;
const int Face_N_Bloodwyn			= 	7	;	//zu lieb!
const int Face_L_Scatty				= 	8	;
const int Face_N_YBerion			= 	9	;
const int Face_N_CoolPock			= 	10	;
const int Face_B_CorAngar			= 	11	;
const int Face_B_Saturas			= 	12	;
const int Face_N_Xardas				= 	13	;
const int Face_N_Lares				= 	14	;
const int Face_L_Ratford			= 	15	;
const int Face_N_Drax				= 	16	;	//Buster
const int Face_B_Gorn				= 	17	;
const int Face_N_Player				= 	18	;
const int Face_P_Lester				= 	19	;
const int Face_N_Lee				= 	20	;
const int Face_N_Torlof				= 	21	;
const int Face_N_Mud				= 	22	;
const int Face_N_Ricelord			= 	23	;
const int Face_N_Horatio			= 	24	;
const int Face_N_Richter			= 	25	;
const int Face_N_Cipher_neu			= 	26	;
const int Face_N_Homer				= 	27	;	//Headmesh thief
const int Face_B_Cavalorn			= 	28	;
const int Face_L_Ian				= 	29	;
const int Face_L_Diego				= 	30	;
const int Face_N_MadPsi				= 	31	;
const int Face_N_Bartholo			= 	32	;
const int Face_N_Snaf				= 	33	;
const int Face_N_Mordrag			= 	34	;
const int Face_N_Lefty				= 	35	;
const int Face_N_Wolf				= 	36	;
const int Face_N_Fingers			= 	37	;
const int Face_N_Whistler			= 	38	;
const int Face_P_Gilbert			= 	39	;
const int Face_L_Jackal				= 	40	;

//Pale
const int Face_P_ToughBald			= 	41	;
const int Face_P_Tough_Drago		= 	42	;
const int Face_P_Tough_Torrez		= 	43	;
const int Face_P_Tough_Rodriguez	= 	44	;
const int Face_P_ToughBald_Nek		= 	45	;
const int Face_P_NormalBald 		= 	46	;
const int Face_P_Normal01			= 	47	;
const int Face_P_Normal02			= 	48	;
const int Face_P_Normal_Fletcher	= 	49	;
const int Face_P_Normal03			= 	50	;
const int Face_P_NormalBart01		= 	51	;
const int Face_P_NormalBart_Cronos	= 	52	;
const int Face_P_NormalBart_Nefarius= 	53	;
const int Face_P_NormalBart_Riordian= 	54	;
const int Face_P_OldMan_Gravo		= 	55	;
const int Face_P_Weak_Cutter		= 	56	;
const int Face_P_Weak_Ulf_Wohlers	= 	57	;

//Normal
const int Face_N_Important_Arto		= 	58	;
const int Face_N_ImportantGrey		= 	59	;
const int Face_N_ImportantOld		= 	60	;
const int Face_N_Tough_Lee_ähnlich	= 	61	;
const int Face_N_Tough_Skip			= 	62	;
const int Face_N_ToughBart01		= 	63	;
const int Face_N_Tough_Okyl			= 	64	;
const int Face_N_Normal01			= 	65	;
const int Face_N_Normal_Cord		= 	66	;
const int Face_N_Normal_Olli_Kahn	= 	67	;	
const int Face_N_Normal02			= 	68	;
const int Face_N_Normal_Spassvogel	= 	69	;
const int Face_N_Normal03			= 	70	;
const int Face_N_Normal04			= 	71	;
const int Face_N_Normal05			= 	72	;
const int Face_N_Normal_Stone		= 	73	;
const int Face_N_Normal06			= 	74	;
const int Face_N_Normal_Erpresser	= 	75	;
const int Face_N_Normal07			= 	76	;
const int Face_N_Normal_Blade		= 	77	;
const int Face_N_Normal08			= 	78	;
const int Face_N_Normal14			= 	79	;
const int Face_N_Normal_Sly			= 	80	;
const int Face_N_Normal16			= 	81	;
const int Face_N_Normal17			= 	82	;
const int Face_N_Normal18			= 	83	;
const int Face_N_Normal19			= 	84	;
const int Face_N_Normal20			= 	85	;
const int Face_N_NormalBart01		= 	86	;
const int Face_N_NormalBart02		= 	87	;
const int Face_N_NormalBart03		= 	88	;
const int Face_N_NormalBart04		= 	89	;
const int Face_N_NormalBart05		= 	90	;
const int Face_N_NormalBart06		= 	91	;
const int Face_N_NormalBart_Senyan	= 	92	;
const int Face_N_NormalBart08		= 	93	;
const int Face_N_NormalBart09		= 	94	;
const int Face_N_NormalBart10		= 	95	;
const int Face_N_NormalBart11		= 	96	;
const int Face_N_NormalBart12		= 	97	;
const int Face_N_NormalBart_Dexter	= 	98	;
const int Face_N_NormalBart_Graham	= 	99	;
const int Face_N_NormalBart_Dusty	= 	100	;
const int Face_N_NormalBart16		= 	101	;
const int Face_N_NormalBart17		= 	102	;
const int Face_N_NormalBart_Huno	= 	103	;
const int Face_N_NormalBart_Grim	= 	104	;
const int Face_N_NormalBart20		= 	105	;
const int Face_N_NormalBart21		=	106	;
const int Face_N_NormalBart22		= 	107	;
const int Face_N_OldBald_Jeremiah	= 	108	;
const int Face_N_Weak_Ulbert		= 	109	;
const int Face_N_Weak_BaalNetbek	= 	110	;
const int Face_N_Weak_Herek			= 	111	;
const int Face_N_Weak04				= 	112	;
const int Face_N_Weak05				= 	113	;
const int Face_N_Weak_Orry			= 	114	;
const int Face_N_Weak_Asghan		= 	115	;
const int Face_N_Weak_Markus_Kark	= 	116	;
const int Face_N_Weak_Cipher_alt	= 	117	;
const int Face_N_NormalBart_Swiney 	= 	118	;
const int Face_N_Weak12				= 	119	;

//Latinos
const int Face_L_ToughBald01		= 	120	;
const int Face_L_Tough01			= 	121	;
const int Face_L_Tough02			= 	122	;
const int Face_L_Tough_Santino		= 	123	;
const int Face_L_ToughBart_Quentin	=	124	;
const int Face_L_Normal_GorNaBar	= 	125	;
const int Face_L_NormalBart01		= 	126	;
const int Face_L_NormalBart02		= 	127	;
const int Face_L_NormalBart_Rufus	= 	128	;

//Black
const int Face_B_ToughBald			= 	129	;
const int Face_B_Tough_Pacho		= 	130	;
const int Face_B_Tough_Silas		= 	131	;
const int Face_B_Normal01			= 	132	;
const int Face_B_Normal_Kirgo		= 	133	;
const int Face_B_Normal_Sharky		= 	134	;
const int Face_B_Normal_Orik		= 	135	;
const int Face_B_Normal_Kharim		= 	136	;

// ------ Gesichter für Frauen ------

const int FaceBabe_N_BlackHair		= 	137	;
const int FaceBabe_N_Blondie		= 	138	;
const int FaceBabe_N_BlondTattoo	= 	139	;
const int FaceBabe_N_PinkHair		= 	140	;
const int FaceBabe_L_Charlotte		= 	141	;
const int FaceBabe_B_RedLocks		= 	142	;
const int FaceBabe_N_HairAndCloth	= 	143	;
//
const int FaceBabe_N_WhiteCloth		= 	144	;
const int FaceBabe_N_GreyCloth		= 	145	;
const int FaceBabe_N_Brown			= 	146	;
const int FaceBabe_N_VlkBlonde		= 	147	;
const int FaceBabe_N_BauBlonde		= 	148 ;
const int FaceBabe_N_YoungBlonde	= 	149	;
const int FaceBabe_N_OldBlonde		= 	150 ;
const int FaceBabe_P_MidBlonde		= 	151 ;
const int FaceBabe_N_MidBauBlonde	= 	152 ;
const int FaceBabe_N_OldBrown		= 	153 ;
const int FaceBabe_N_Lilo			= 	154 ;
const int FaceBabe_N_Hure			= 	155 ;
const int FaceBabe_N_Anne			= 	156 ;
const int FaceBabe_B_RedLocks2		= 	157	;
const int FaceBabe_L_Charlotte2		= 	158 ;


//-----------------ADD ON---------------------------------
const int Face_N_Fortuno		= 	159;

//Piraten
const int Face_P_Greg		= 	160;
const int Face_N_Pirat01	= 	161;
const int Face_N_ZombieMud	= 	162;
