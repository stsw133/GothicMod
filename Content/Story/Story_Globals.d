//******************************************************************************************
//	Globalvariablen f�r Story
//******************************************************************************************
var int Saturas_AboutWilliam;
var int MIS_Eremit_Klamotten;
var int Diego_angekommen;
var int Diego_IsDead;
var int PlayerTalkedToSkipNW;
var int PlayerTalkedToGregNW;

var int MIS_Addon_Lester_PickForConstantino;		//SC Alternativweg in die Stadt.
var int MIS_Addon_Greg_BringMeToTheCity;			//SC verhilft Greg in die Stadt zu kommen.
var int MIS_Addon_Lares_Ornament2Saturas;			//Lares : bring datt ding zu SAturas
var int Lares_Angekommen;							//Lares beim Mayatempel
var int SC_GotLaresRing;							//Lares hat SC seinen Aquamarinring gegeben.

var int MIS_Addon_Saturas_BringRiordian2Me;			//Saturas schickt nach Riordian
var int MIS_Addon_Nefarius_BringMissingOrnaments;	//SC soll die 3 restlichen Ornamente finden.
var int MIS_Addon_Martin_GetRangar;					//SC soll den Lagerdieb f�r Martin erwischen.
var int MIS_Addon_Vatras_Go2Daron;					//SC soll zu Daron gehen wegen seinem Gebetsbuch
var int MIS_Addon_Daron_GetStatue;					//SC soll Daron die Statue von den Gobbos bei Taverne besorgen
var int MIS_Addon_Cord_Look4Patrick;				//SC soll bei Dexter nachsehen, ob sich Patrick immer noch dort aufh�lt.
var int MIS_Addon_Farim_PaladinFisch;				//SC soll daf�r sorgen, dass die Miliz nicht mehr seinen Fisch pf�ndet.
var int MIS_Addon_Cavalorn_GetOrnamentFromPAL;		//Hol das fehlende Ornament von Lord Hagen
var int MIS_Lares_BringRangerToMe;					//Besorge eine Abl�se f�r Lares, damit er vom Hafen weg kann.
var int MIS_Addon_Lares_ComeToRangerMeeting;		//SC soll bei Orlan erscheinen um seine R�stung zu kriegen.
var int MIS_Addon_Greg_RakeCave;					//SC soll f�r Greg buddeln
var int MIS_Addon_Greg_RakeCave_Day;				
var int MIS_Addon_Baltram_Paket4Skip;				//SC soll Handel zwischen Baltram und Skip abwickeln
var int MIS_Addon_Erol_BanditStuff;					//SC soll dem H�ndler Erol seine Waren von den Banditen zur�ck bringen.

const int MinimumPassagePlants = 10;			//Anzahl der zu sammelnden Planzen f�r Constantino um in die Stadt zu kommen (Spielstart)
var int SaturasFirstMessageOpened;				//= true wenn den Brief ge�ffnet
var int Vatras_SC_Liar;							//L�gencounter f�r Vatras
var int Vatras_ToMartin;
var int SC_GotWisp;
var int Vatras_GehZuLares;						//Vatras schickt SC zu Lares
var int Lares_RangerHelp;						//Lares hilft dem Spieler
var int LaresGuide_ZumPortal;					//Lares bringt im moment den SC zu...
var int LaresGuide_ZuOnar;						//Lares bringt im moment den SC zu...
var int LaresGuide_OrnamentForest;				//Lares bringt im moment den SC zu...
var int Andre_Knows_MartinEmpfehlung;			//= true Lord Andre l�sst SC zu bei Miliz wegen Martins Empfehlung
var int SC_KnowsKlosterTribut;					//= true Pedro hat ihm die Klosterkosten (Schaf und 1000 GM) offenbart
var int Pedro_NOV_Aufnahme_LostInnosStatue_Daron;	//= true Pedro l�sst SC ein aufgrund des LostInnosStatue von Daron
var int SC_GotRangar;							//= true SC hat Rangar beim Pl�dern des Proviantlagers erwischt!
var int SC_MeetsGregTime;						//wann und wo hat der SC Greg_NW schon getroffen
var int GregLocation;							//Wo befindet sich Greg_NW gerade
const int Greg_Farm1 	= 0;					//Vor der Stadt
const int Greg_Taverne 	= 1;					//Orlans Kneipe
const int Greg_Bigcross	= 2;					//Auf den Feldern von Onar
const int Greg_Dexter	= 3;					//Dexter
var int SC_KnowsGregsSearchsDexter;			//= true SC wei�, dass Greg Dexter sucht.
var int SC_KnowsConnectionSkipGreg;			//= true SC wei�, dass Greg und Skip zusammen geh�ren.
var int SC_SawGregInTaverne;				//= true SC hat mit Greg in der Taverne gesprochen.
var int Greg_SuchWeiter;					//= true SC soll auch die anderen Sch�tze f�r ihn finden.
var int Skip_Rum4Baltram;					//= true Skip gibt Rum f�r Baltram mit
var int Skip_Rum4Baltram_All;
var int Knows_GregsHut;
var int Francis_ausgeschissen;				//bei Greg
var int MIS_Brandon_BringHering;

//Missing People
var int Lares_CanBringScToPlaces;				//= true Lares braucht die Boote im Hafen nicht mehr im Auge behalten.
var int SC_HearedAboutMissingPeople;			//= true SC wei�, dass in der Stadt Leute verschwinden.
var int SC_KnowsDexterAsKidnapper;				//= true SC wei�, dass Dexter in der Sache mit den verschwundenen Leuten mit drin h�ngt
var int Ranger_SCKnowsDexter;					//= true SC wei�, dass Dexter im Castlemine sitzt von einem AddonNPC
var int Dexter_KnowsPatrick;					//= true Dexter kennt Patrick
var int SCKnowsFarimAsWilliamsFriend;			//= true SC kann Farim nach dem verschwundenen William befragen
var int SCKnowsSkipAsKidnapper;					//= true die Spur f�hrt den SC zu Skip
var int SCKnowsMissingPeopleAreInAddonWorld;	//= true die Spur f�hrt den SC zur Addonworld
var int SCKnowsExactlyWhereMissingPeopleAre;	//  wird nicht verwendet
var int SCMetMissingPeople;						//	wird nicht verwendet
var int MissingPeopleReturnedHome;				//= true SC hat die Leute befreit und nach Hause gebracht.
var int MIS_Akil_BringMissPeopleBack;			//Akil will Tonak und Telbor wieder zur�ck.
var int MIS_Bengar_BringMissPeopleBack;			//Bengar will Pardos wieder zur�ck.
var int MIS_Addon_Andre_MissingPeople;			//(nur MIL) Andre will die Leute zur�ck.
var int MIS_Addon_Vatras_WhereAreMissingPeople;	//Vatras will wissen, was mit den Vermissten passiert ist.
var int MIS_Bromor_LuciaStoleGold;				//= true Bromor vermisst seine Ersparnisse. Lucia hat sie mitgehen lassen.
var int Bromor_Hausverbot;						//= true Bromor schmei�t den Spieler aus seinem Laden.
var int MIS_Thorben_BringElvrichBack;			//= true Thorben will Elvrich wieder zur�ck bei der Arbeit haben.
var int Elvrich_GoesBack2Thorben;				//= true Elvrich geht zur�ck zu Thorben
var int MIS_LuciasLetter;						//= true Elvrich hat den Abschiedsbrief von Lucia gelesen.
var int MIS_Bartok_MissingTrokar;				//= true Bartok will seinen J�gerfreund Trokar wieder haben.
var int SC_KnowsLuciaCaughtByBandits;			//= true Lucia ist mit den Banditen hinter Sekobs Hof verschwunden.
var int Elvrich_SCKnowsPirats;					//= true Elvrich erz�hlt von Skip!
var int Dexter_NoMoreSmallTalk;					//= true Noch einmal Dexter anlabern und Dexter greift an.
var int Saturas_WillVertrauensBeweis;			//= true saturas wartet auf antwort von Vatras!
var int SC_GotPORTALTEMPELWALKTHROUGHKey;		//= true SC kann die T�r PORTALTEMPELWALKTHROUGH in NW potentiel �ffnen.

//Ranger 
var int SC_KnowsRanger;							//= true SC hat vom RING des Wassers geh�rt.
var int SC_IsRanger;							//= true  Name ist programm
var int SaturasKnows_SC_IsRanger;				//= true  Saturas akzeptiert die Aufnahme des SC bei den Rangern
var int SCIsWearingRangerRing;					//= true  Name ist programm
var int RangerRingIsLaresRing;					//= true  Name ist programm
var int SC_KnowsCordAsRangerFromLares;			//= true  SC wei� von Lares, dass Cord zum RING geh�rt
var int SC_KnowsCordAsRangerFromLee;			//= true  SC wei� von Lares, dass Cord zum RING geh�rt
var int Cavalorn_RangerHint;					//= true  Cavalorn gibt Hint auf Ranger!
var int SC_KnowsBaltramAsRanger;				//= true  Baltram geh�rt zum RING
var int Lares_GotRingBack;						//= true  Lares hat seinen Aquamarinring wieder
var int Lares_HaltsMaul;						//= true  Lares h�lts Maul nach Ranger meeting
var int RangerHelp_gildeSLD;					//= true Lares hilft dem Spieler schneller bei SLD aufgenommen zu werden.
var int RangerHelp_gildeMIL;					//= true Lares hilft dem Spieler schneller bei MIL aufgenommen zu werden.
var int RangerHelp_gildeKDF;					//= true Lares hilft dem Spieler schneller bei KDF aufgenommen zu werden.
var int RangerHelp_LehmarKohle;					//= true Lares zahlt Schulden des SC bei Lehmar
var int RangerHelp_OrnamentForest;				//= true Lares Boxt SC durch den Medium Wald
var int Orlan_RangerHelpZimmer;					//= true SC kann umsonst bei Orlan wohnen.
var int Cord_RangerHelp_GetSLD;					//= true Cord hilft dem SC SLD zu werden.
var int Cord_RangerHelp_TorlofsProbe;			//= true Cord erledigt die SC Probe von Torlof
var int RangerMeetingRunning;					//= true Die Ranger meeten in Orlans Taverne
var int Lares_ComeToRangerMeeting;				//= true Lares schickt den Spieler zum Rangermeeting.
var int Lares_TakeFirstMissionFromVatras;		//= true Lares schickt den Spieler zum Vatras um seinen ersten Auftrag abzuholen.
var int MIS_Vatras_FindTheBanditTrader;			//Vatras will den Namen des H�ndler aus dem oberen Viertel, der den Banditen Waffen liefert.
var int MIs_Martin_FindTheBanditTrader;			//Martin will den Namen des H�ndler aus dem oberen Viertel, der den Banditen Waffen liefert.
var int BanditTrader_Lieferung_Gelesen;			//= true SC hat den Lieferungsschein gelesen.
var int Fernando_HatsZugegeben;					//Fernando hat zugegeben Waffen an die Banditen geliefert zu haben.
var int Fernando_ImKnast;						//Fernando Wird inhaftiert
var int SC_ShowedRangerArmor;					//SC Hat die RangerR�stung angehabt als er mit einem NSC geredet hat, der nicht zum 'Ring' geh�rt.
var int Orlan_KnowsSCAsRanger;					//= true Orlan wei�, dass SC Ranger ist!
var int Orlan_Hint_Lares;						//= true Lares erz�hlt von Orlan.
var int Martin_KnowsFarim;						//= true  Martin hilft Farim bei seinem Milizproblem
var int MadKillerCount;							//SC's Counter f�r Ermordung unschuldiger Zivilisten.
var int VatrasPissedOffForever;
var int VatrasMadKillerCount;


// Ornamnet Portal
var int RitualRingRuns;							//= LOG_RUNNING Ritual den Ornamentring zu heilen.
var int SC_KnowsOrnament;						//= true SC wei�, was es mit den Ornamenten auf sich hat.
var int ORNAMENT_SWITCHED_BIGFARM;				//= true  Das Steinkreis-Ornamentevent bei Onars Hof ist aktiviert worden
var int ORNAMENT_SWITCHED_FARM;					//= true  Das Steinkreis-Ornamentevent bei Lobarts Hof ist aktiviert worden
var int ORNAMENT_SWITCHED_FOREST;				//= true  Das Steinkreis-Ornamentevent im Medium Wald ist aktiviert worden
var int SCUsed_AllNWTeleporststones;			//= true SC benutzte alle Teleportstationen in der Newworld
var int SC_SAW_ORNAMENT_MAP;					//= true  SC hat gesehen, wo er hin muss zu den teinkreisen
var int Lord_Hagen_GotOrnament;					//= true  SC hat das fehlende Ornament von hagen bekommen
var int Hagen_BringProof;						// Ohne Guild reinflippern FIX
var int Vatras2Saturas_FindRaven_Open;			//= true SC hat den Brief von Vatras an Saturas ge�ffnet.

//Teleportsteine
var int SCUsed_TELEPORTER;						//= true SC benutzte irgendeinen Teleporter
var int SCUsed_NW_TELEPORTSTATION_CITY;			//= true SC benutzte die Teleportstation bei...
var int SCUsed_NW_TELEPORTSTATION_TAVERNE;		//= true SC benutzte die Teleportstation bei...
var int SCUsed_NW_TELEPORTSTATION_MAYA;			//= true SC benutzte die Teleportstation bei...
var int SCUsed_ADW_TELEPORTSTATION_PORTALTEMPEL;//= true SC benutzte die Teleportstation bei...
var int SCUsed_ADW_TELEPORTSTATION_ADANOSTEMPEL;//= true SC benutzte die Teleportstation bei...
var int SCUsed_ADW_TELEPORTSTATION_SOUTHEAST;	//= true SC benutzte die Teleportstation bei...
var int SCUsed_ADW_TELEPORTSTATION_SOUTHWEST;	//= true SC benutzte die Teleportstation bei...
var int SCUsed_ADW_TELEPORTSTATION_PIRATES;		//= true SC benutzte die Teleportstation bei...
var int SCUsed_ADW_TELEPORTSTATION_RAVENTELEPORT_OUT;		//= true RAUS AUS aDANOSTEMPEL

var int SCUsed_ADW_TELEPORTSTATION_PIRATES_JACKSMONSTER;//= true Monster gespawnt, die bei AlligatorJack st�ren

var int SC_ADW_ActivatedAllTelePortStones;		//= true Alle ADW Teleporter sind aktiviert.

//ADDONWORLD KDW
var int NefariusADW_Talk2Saturas;				//= true Infos �ber die Flut
var int MIS_ADDON_Myxir_GeistBeschwoeren;		//Myxir will, dass SC Quarhodron beschw�rt
var int SC_KnowsRavensGoldmine;					//SC h�rte von der Goldmine.
var int StPl_nDocID;
var int Myxir_CITY_IstDa;						//Abl�se von Vatras ist da.
var int MIS_Saturas_LookingForHousesOfRulers;	//SC soll die 5 Herrenh�user finden.
var int MIS_Riordian_HousesOfRulers;			//SC soll die 5 Herrenh�user finden.


var int 	ENTERED_ADDONWORLD;					//= true war schon in der Addonworld
var int 	VatrasCanLeaveTown_Kap3;			//= true Vatras kann nun zum Umkehrritual aufbrechen (Kapitelbremse f�rs Addon)
var int 	VatrasAbloeseIstDa;					//= true Vatras Abl�sung (ein KDW aus der ADW) ist in Khorinis eingetroffen.
var int 	Ghost_SCKnowsHow2GetInAdanosTempel;	//= true Quarhodron erz�hlt SC wie man Ravens T�r aufmacht und in den Tempel kommt.
var int 	Saturas_KnowsHow2GetInTempel;		//= true Saturas wei� wie man Ravens T�r aufmacht und in den Tempel kommt.
var int 	MIS_ADDON_Saturas_GoToRaven; 		//= true SC muss einen Weg finden zu Raven zu gelangen.
var int 	Saturas_RiesenPlan;					//= true SC soll zu Myxir, Geist erwecken geschichte abholen.
var int 	SC_Knows_WeaponInAdanosTempel;		//= true SC wei� vom Schwert im Tempel
var int 	Saturas_KnowsWeaponIsInAdanosTempel;//= true Saturas wei� vom Schwert im Tempel
var int		SC_SummonedAncientGhost;			//= true Quarhodron ist erschienen.
var int 	SC_TalkedToGhost;					//= true SC hat mit Ghost gesprochen.

var int 	RavenIsInTempel;					//= true Raven Video. Raven haut ab in den Temepl Adanos
var int 	GhostAttackWarn;
var int 	SC_TookRhademesTrap;				//= true SC ist an Rhademes vorbei gekommen
var int 	SC_TalkedToRhademAfter;				//= true SC hat danach nochmal mit Rhademes gesprochen
var int 	RavenIsDead;						//= true Raven ist tot und das Hauptziel vom Addon erreicht. 
var int  	BeliarsWeaponSpecialDamage;			//Grundwert f�r Speziellen Schaden Beliars Klaue
var int  	BeliarDamageChance;					//Chance auf Extraschaden
var int  	SC_FailedToEquipBeliarsWeapon;		//= true SC hat versucht die Waffe anzulegen. -> Blitz in Arsch.
var int  	BeliarsWeaponUpgrated;				//= true SC hat die Waffe wenigstens einmal verbessert!

//--------------Banditenlager (Addonwelt)------------------
var int 	Player_HasTalkedToBanditCamp;				//Spieler war schon mal im BDT Camp

var int 	Franco_Exit;
var int 	MIS_HlpLogan;
var int		MIS_HlpEdgor;
var int 	Logan_Inside;
var int 	Sumpfi_Counter;

var int 	Emilio_TellAll;
var int 	Paul_TellAll;
var int 	Finn_TellAll;
var int 	Finn_Petzt;
var int 	Senyan_Called;
var int		Huno_zuSnaf;
var int 	Huno_MEGA_Angepisst;
var int 	Snaf_Tip_Senyan;

var int		Ramon_News;
var int 	MIS_Judas;
var int 	Judas_Counter;
var int 	Bodyguard_Killer;
var int		Snaf_Rechnung;

var int 	Snaf_Einmal;
var int		MIS_SnafHammer;
var int		Snaf_Amount;
var int 	Knows_Finn;
var int		Knows_Huno;
var int		Knows_Fisk;
var int		Knows_Esteban;
var int		Knows_Senyan;

var int		Finn_CONTRA;
var int 	Paul_CONTRA;					

var int 	Senyan_Erpressung;
var int 	Senyan_CONTRA;
var int		Senyan_Gold;

var int 	PC_KnowsRedStone;
var int 	MIS_Huno_Stahl;
var int		MIS_Lennar_Lockpick;
const int	Lennar_picklock_amount = 12; //Anzahl seiner dietriche
var int 	Lockpick_gegeben;
var int 	Lennar_Trust;
var int 	Senyan_Start;
var int 	Huno_ArmorCheap;
var int		BDT_Armor_H_Value;

var int		SC_KnowsFortunoInfos;

var int 	Torwache_Greetings;
var int		MIS_Send_Buddler;
var int		Player_SentBuddler;

var int		Juan_Parole;
var int		BDT_100018_Einmal;
var int 	BDT_100018_Tells;
var int 	MIS_BloodwynRaus;

var int		Crimson_SayBeliar;
var int		Patrick_trust;
var int 	Sklaven_Flucht;
var int		Sklaven_weg;
var int		Ready_Togo;
//----Tom-----
var int 	knows_losung;
var int 	knows_petze;
var int 	Tom_Angebot;
var int 	Tom_Tells;

//----Fortuno-----
var int		Green_Extrem;
var int 	Fortuno_Einmal;
var int 	Fortuno_Info;						
var int 	Fortuno_Geheilt_01;

//Sklaven
var int 	RemoveSklaven;

//----Ambient BDT-------------
var int 	BDT_13_Nerver;						//Wenn Spieler zu oft das gleiche in EINEM Dialog fragt (bei Voice 13 Lager Banditen)
var int 	BDT_13_Kill;						//und wenn er es dann auf die Spitze treibt...
var int		BDT_13_einmal;						//ein Ambient_13_bandit lacht nur einmal
var int		BDT_1_Ausbuddeln;
//----MC t�ten (ZS_DEad) Damit bloodwyn rauskommt-----------
var int		Minecrawler_Killed;
var int		Bloodwyn_Spawn;

//-------------GOLDHACKEN---------------------------------
var int 	Hero_HackChance;
var int 	Knows_Truemmerschlag;

//----------------Piratenlager (Addonwelt) -------------------------------
var int MIS_LookForMorgan;						// Suche Morgan
var int MIS_MorganRumBringen;					// Bring Morgan seinen Rum wieder
var int MIS_KrokoJagd;							// Alligator Jagd mit Jack
var int AlligatorJack_KrokosKilled;				// Wieviel Alligatoren hat der Player get�tet?
var int AlligatorJackTrustYou;					//Er vertraut dir ;-)
var int AlligatorJack_JagdStart;
var int AlligatorJack_PlayersTriesAlone;
var int SC_Knows_JuanMurderedAngus;	
var int MIS_AlligatorJack_BringMeat;	
var int MIS_ADDON_SkipsGrog;	
var int MIS_Addon_MorganLurker;	
var int SC_MadeStunt;
var int TowerBanditsDead;	

var int Francis_100_Told;
var int Francis_500_Told;
var int Francis_HasProof;						//Player hat Beweise f�r Schmuggel
var int MIS_Francis_FreeBDTTower; //RAUS
var int MIS_Henry_FreeBDTTower;
var int Knows_HenrysEntertrupp;
var int Henry_GetPartyMember;
var int Francis_NoGrog;							// Es gibt kein Grog auf Hawai!
var int Owen_ComesToHenry;
var int Owen_Sc_FoundMalcom; //RAUS
var int MALCOMEXIDENT; //RAUS
var int Malcom_Accident;
var int MIS_Owen_FindMalcom;
var int MIS_Henry_HolOwen;

VAR int Bill_addon_deal;
var int MIS_Addon_Morgan_SeekTraitor;

var int MIS_Addon_JoinHenrysCrew;
var int Henrys_CrewCount;
var int MIS_Addon_JoinMorgansCrew;
var int MalcomBotschaft;

var int MIS_ADDON_GARett_BringKompass;
var int MIS_Addon_Bill_SearchAngusMurder;
var int MIS_Addon_Bill_SearchEsteban;
var int MIS_Addon_Bill_KillEsteban;

var int MIS_ADDON_PIR_6_Duell;
var int MIS_ADDON_PIR_6_BringGrog;
var int MIS_Addon_PIR_7_BringJoint;
var int MIS_Addon_PIR_7_BringGrog;

var int Greg_GaveArmorToBones;
var int PlayerKnowsAboutMIne;
var int MIS_BONES_SCOUTBANDITS;
var int MIS_DuellWithGreg;

var int GregIsBack;
var int Read_JuansText;
var int Skip_Addon_PlayerKnowsAboutBigBusiness;

var int MIS_Addon_Greg_ClearCanyon;
var int CanyonRazorBodyCount ;
var int MIS_Greg_ScoutBandits;
var int SC_KnowsGoldmine;
var int Player_KnowsSchnellerHering;

//diese hier wegmachen!! Sobald es m�glich ist!!
var int MIS_Addon_HenryCrewMember;
var int MIS_Addon_MorganCrewMember;
var int MIS_ADDON_ProofHenryCrew;
var int MIS_Addon_ProofHenryCrew_Count;
var int MIS_ADDON_ProofMorganCrew;
var int MIS_Addon_ProofMorganCrew_Count;

//--------------- SCHNAPSBRENNEN - Rezept Kenntnis -----------------------
var int 	Knows_LousHammer;						//Lous Rezept
var int 	Knows_Schlafhammer;						//erweitertes Rezept von Lou mit doppelter Menge Rum 
var int 	Knows_SchnellerHering;					//verbesserte SpeedPotionSchnaps von Samuel
 
//---obligatorisch angelegt -----------------------------

var int 	Knows_RuebenSchnaps;
var int 	Knows_VinoSchnaps;
var int 	Knows_PiratenSchnaps;	//Wei�er Rum				
var int 	Knows_Magierschnaps;
var int 	Knows_Sumpfkrautschnaps;

//--- Stunt Bonus ----

var int StuntBonus_Once;

//Lehrer
var int Myxir_Addon_TeachPlayer; 			//TeachLanguage
var int Francis_Addon_TeachPlayer;			//St�rke und Geschick bis 90
var int Henry_Addon_TeachPlayer;			//2h bis 90
var int Morgan_Addon_TeachPlayer;			//1h bis 75
var int Erol_Addon_TeachPlayer;				//St�rke
var int Riordian_Addon_TeachPlayer;			//Irrlicht F�higkeiten
var int Riordian_ADW_ADDON_TeachWisp;		//Irrlicht F�higkeiten
var int Riordian_ADW_ADDON_TeachAlchemy;	//Alchemy
var int Saturas_Addon_TeachCircle;			//magische Kreise
var int Merdarion_Addon_TeachMana;			//Mana
var int Nefarius_Addon_TeachRunes;			//Runen erschaffen
var int Bill_Addon_TeachPickPocket;

//**************
// Gothic 2
//**************
var int Kapitel;

// ------ Petzmaster ------
var int Lee_Schulden;	//wieviel Gold schuldet der SC Lee
var int Hagen_Schulden;	//wieviel Gold schuldet der SC Hagen
var int Andre_Schulden;	//wieviel Gold schuldet der SC Andre
var int Garond_Schulden;	//wieviel Gold schuldet der SC Garond
var int Parlan_Schulden;	//wieviel Gold schuldet der SC Parlan

// *************************
// Globalvariablen f�r Diebstahl 
// *************************

const int Theftdiff = 10; //DEX Diff Wert ab dem der Dialog erscheint
var int TheftDexGlob;  //ben�tigte Geschicklichkeit um NSC auszupl�ndern
var int TheftGoldGlob; //Gold Anzahl die NSC in der Tasche hat

//*******************
//	Missionsvariablen		//sollten alle mit "MIS_" anfangen
//*******************

var int DG_gefunden; 

// ------ KAPITEL 1 ------

var int Bdt13_Friend;			//erster Bandit spuckt Infos aus  
var int Bdt13_Dexter_verraten;
var int Bdt_1013_Away;			//weggeschickt wegen Cavalorn ODER Maleth
var int Knows_Dexter;		 	//Spieler hat bei Wache korrekt geantwortet 
var int MIS_Steckbriefe;
// ------ Farm 1 ------
var int Lobart_Kleidung_Verkauft;
var int Lobart_Kleidung_gestohlen;


var int MIS_Maleth_Bandits;
var int MIS_Vino_Wein;
var int MIS_Lobart_Rueben;
var int MIS_Lobart_RuebenToHilda;
var int	MIS_Hilda_PfanneKaufen;

var int	MIS_LobartKillBugs;			//Lobart: T�te alle Feldr�uber

//*********************
//	Punkte f�r Aufnahme
//********************* 

var int MIL_Aufnahme;
var int SLD_Aufnahme;
var int KDF_Aufnahme;
var int NOV_Aufnahme;

//******************************
var int Player_IsApprentice;
const int APP_NONE 			= 0;
const int APP_Bosper 		= 1;
const int APP_Harad			= 2;
const int APP_Constantino 	= 3;

var int   MIS_Apprentice; //f�rs Log
//-------------------------------
var int Bosper_Lehrling_Day;
var int Harad_Lehrling_Day;
var int Constantino_Lehrling_Day;
//*******************************

var int 	MIS_Harad_Orc;
var int 	Harad_HakonMission; //Verweis auf HakonMission
var int 	MIS_HakonBandits;

var int 	MIS_Constantino_BringHerbs;
var int 	MIS_Constantino_Mushrooms;
var int 	Constantino_DunkelpilzCounter;

var int 	Points_Farm;
var int 	Points_Monastery;

// ------ City ------
var int 	Mil_310_Scheisse_erzaehlt;
var int 	Player_TalkedAboutDragons;
var int 	Player_KnowsLordHagen;
var int 	Hagen_FriedenAbgelehnt;
// -------------------
var int 	Mil_310_schonmalreingelassen;
var int 	Mil_333_schonmalreingelassen;
// -------------------
var int 	Lothar_Regeln;
var int 	Canthar_InStadt;
var int 	Canthar_Gefallen;
var int		Canthar_Sperre;
var int 	Canthar_WiederRaus;
var int 	Canthar_Pay;
const int 	Canthar_Gold = 500;

var int Andre_EyeInnos;

const int 	Kopfgeld = 100;			//Gold pro ausgeleifertem Verbrecher (*3 f�r Diebesgilde)
var int 	Andre_Diebesgilde_aufgeraeumt; 	//Wenn Andre sich selbst drum k�mmert...
var int 	Diebesgilde_Verraten;			//Wenn man Andre vom Versteck erz�hlt hat...
var int 	MIS_AndreHelpLobart;		//Andre schickt SC zum ersten Bauerhof. Er soll Lobart helfen!
var int 	Andre_GivesChance;			//Spieler will der Miliz beitreten (Vorraussetzung f�r weitere Missionen )
var int     Andre_Bonus;				//f�r spezielle Andre Abfrage ;)
var int		Rengaru_Ausgeliefert;
var int		Nagur_Ausgeliefert;
var int		Halvor_Ausgeliefert;
var int 	Canthar_Ausgeliefert;
var int 	Sarah_Ausgeliefert;
var int		Undercover_Failed;
const int	Andre_Sold = 200;
var int 	MIS_Andre_REDLIGHT;
var int 	MIS_Andre_WAREHOUSE;
var int 	MIS_Andre_FISH;
var int 	MIS_Andre_Peck;
var int 	MIS_AndreGotThief;			//SC hat den Dieb gefangen oder die Kohle wieder geschafft!
var int     MIS_Baltram_ScoutAkil;   	//H�ndler Baltram schickt dich los um Akils Hof zu untersuchen!
var int		MIS_Canthars_KomproBrief; 	//Canthar sagt SC er soll Sarah den KomproBrief unterjubeln um seine H�ndlerstand wieder zu kriegen. LOG_SUCCESS = Sarah sitzt im Knast, LOG_OBSOLETE = SC hat Canthar bei Andre verraten!
var int		MIS_Canthars_KomproBrief_Day;
var int 	MIS_Meldor_BringGold;		//SC kann Geld von Meldor an Gedlverleiher abgeben
var int 	MIS_Meldor_BringGold_Day;
var int 	Pablo_AndreMelden;

var int 	Alrik_Kaempfe;				//wie oft schon mit Alrik gek�mpft
var int 	Alrik_ArenaKampfVerloren;	//wie oft - Counter
var int 	Alrik_VomSchwertErzaehlt;
var int 	MIS_Alrik_Sword;			//Alrik will sein Schwert zur�ck

var int 	MIS_Bosper_Bogen;
var int 	MIS_Bosper_WolfFurs;

var int 	Abuyin_Zukunft;
var int 	Abuyin_Erzaehlt;
var int		Abuyin_Honigtabak;
var int		Abuyin_Score;
var int		Bromor_Pay;
var int 	Nadja_Nacht;
var int 	Nadja_tot;

var int 	Diebesgilde_Okay;
var int 	Charm_Test;
var int 	MIS_Ignaz_Charm;
var int 	Alchemy_Explain;

// --------- DIEBE & CO ---------------------------------
var int 	MIS_Andre_GuildOfThieves;

//---------- Halvor der Hehler ---------------------
var int		Knows_Halvor;				//Spieler hat Zettel von Halvor gelesen
var int 	Betrayal_Halvor;			//Spieler hat Halvor verraten
var int     Halvor_Deal;				//Spieler ist Deal mit Halvor eingegangen (mehr Waren zum Kaufen)

//--------- Kardif Hafenkneipe Wirt ----------------
var int 	Kardif_Deal;				//wird mit dem Gold-Betrag gef�llt, den der Spieler f�r die Infos bezahlen muss
//--------- Nagur (Akil's Bote)  ----------------
var int 	MIS_Nagur_Bote;
var int 	Nagur_Deal;					//Nagur Baltrams Lieferung Mission  
var int 	NagurDay;
//--------- Attila  ----------------
var int 	Knows_Attila_Wer;
var int 	Knows_Attila_Was;
//----------Jora-------------------------
var int  	Jora_Dieb; 
var int 	Jora_Gold;

var int 	Thorben_Deal;
var int 	Dietrichgeben;	
var int 	Wulfgar_First;
//----------Diebesgilde--------------------
var int 	Cassia_Day ;
var int		MIS_CassiaKelche;
var int 	Join_Thiefs;
var int 	Cassia_Frist;
var int		Cassia_Gildencheck;
var int 	Ramirez_Cost;
var int		Ramirez_Sextant;
var int 	MIS_RamirezSextant;
var int 	Ramirez_Zweimal;
var int     Jesper_Cost;
var int 	MIS_CassiaRing;
var int    	Knows_SecretSign;
var int     Halvor_Score;
var int		Halvor_Day;
var int 	Attila_Key;

var int 	Edda_Day;
var int		Edda_Schlafplatz;

var int     Knows_Ork;					//Spieler hat vom Ork vor der Stadt geh�rt
var int 	MIS_Matteo_Gold;			//Schulden von Gritta eintreiben (von Matteo)
var int 	Gritta_GoldGiven;			//Gritta hat Gold per Dialog rausger�ckt!
var int 	Thorben_GotGold;

var int 	MIS_Thorben_GetBlessings;
var int 	Vatras_Segen;
var int 	Daron_Segen;
var int 	Vatras_Return;

var int		MIS_PayAlwin;				//Erpressung von Alwin 
var int 	FellanGeschlagen;			//Fellan im Auftrag von Alwin auf's Maul gegeben
var int 	MIS_AttackFellan;			

var int     Vatras_Trust;				//Vatras vertraut dir (ehrlich!) und gibt dir den KDF - Auftrag
var int  	Vatras_Chance;				//wenn der Spieler Vatras Schwachsinn erz�hlt
var int  	Vatras_Influence;			//Spieler hat Vatras �berzeugt, dieser setzt sich f�r ihn ein	
var int  	Vatras_First;				//Abfrage zum Dialog basteln
var int  	Vatras_Second;
var int  	Vatras_Third;
var int     MIS_Vatras_Message;			//f�r die KDF Send Mission 

var int 	MIl_309_News;				//F�r die Vergabe der verschiedenen Infos

var int 	Mil_305_schonmalreingelassen;

var int 	Knows_Paladins;				//kennt der Spieler die Infos �ber die Paladine 
var int 	MIS_Garvell_Infos;			//Mission von Garvell (wer h�tte das gedacht?)
var int     Tell_Garvell;				//eine var die sich reimt, kann nicht schlecht sein;) --> damit der Spieler nur einmal den Sermon erz�hlen muss M.F.
var int 	KnowsPaladins_Ore;			//Wei� warum die paladine da sind

var int  	Lares_Guide; 				//Wie lange ist Spieler mit Lares unterwegs?

var int 	MIS_Lee_Friedensangebot;
var int 	MIS_Bennet_BringOre;
var int 	MIS_Sekob_RedeMitOnar;

var int Sekob_RoomFree; //wenn Xardas dich zur Truhe schickt (f�r Portalraum)

var int Torlof_TheOtherMission_TooLate;
var int MIS_Cipher_BringWeed;
var int MIS_Cipher_Paket;			//hat "Andres" Paket bekommen
var int Dar_Dieb;
var int Dar_Verdacht;
var int Dar_LostAgainstCipher;
var int 	MIS_Thekla_Paket;  			//Kr�uterp�ckchen von Sagitta besorgen.
var int Sylvio_MenDefeated;
var int Sylvio_angequatscht;
var int Sld_Duelle_gewonnen;	//In ZS_Unconscious 
var int Torlof_GenugStimmen;
var int Onar_Approved;
var int Lee_SendToOnar;
var int SOLD;
var int Onar_WegenSldWerden;
var int Onar_WegenPepe;
var int Maria_MehrGold;
var int MIS_Maria_BringPlate;

var int MIS_Torlof_Dmt;
var int Wolf_ProduceCrawlerArmor;

var int		MIS_ThiefGuild_sucked; 		//Wenn SC Rengaru, Halvor oder anderes Mitglied verknackt => true		
var int     Knows_Ruga_Answer;			// f�r interne Dialogauswahl	
var int		Miliz_Points;				//Punkte f�r Milizaufnahme 
var int 	Nadja_Money;				//Je nach Spieler Antwort muss er mehr Kohle f�r die Info locker machen
var int     Knows_Borka_Dealer;			//Spieler wei� von Nadja, das Borka der Dealer ist
var int 	Borka_Deal;					//Borka hat sich auf einen Deal mit dem Spieler eingelassen, Beweis f�r Mission 
var int 	Nadja_Victim;				//Spieler opfert Nadja, was nicht zu ihrer Gesundheit beitr�gt 
var int 	GernodsDrink;				//Getr�nk f�r Gerond
var int		GernodHappy;				//Hats ihm auch geschmeckt?					
var int		MIS_DragomirsArmbrust;		//Dragomirs Armbrust beim Ritualkreis				

//---------------------------
//	KLOSTER
//---------------------------
var int 	MIS_KlosterArbeit; 			//Spieler ist Novize und nimmt Arbeiten der Magier entgegen 
var int 	Kloster_Punkte;				//f�r Abfrage wieviel Punkte hat Spieler um in die Bibliothek zu d�rfen
var int 	MIS_NeorasPflanzen;			//f�r Neoras 7 Feuernesseln besorgen	
var int 	MIS_NeorasRezept;			//Rezept f�r Neoras
var int 	MIS_ParlanFegen; 			//Novizenkammern ausfegen
var int 	NOV_Helfer;					//Anzahl der Novizen, die dem Spieler helfen die Kammern zu fegen
var int 	MIS_GoraxEssen;				//Essen f�r die Novizen verteilen 
var int 	Gorax_Gold;
var int 	Wurst_Gegeben;				//
var int 	MIS_MardukBeten;			//Marduk fordert den Spieler zum Gebet auf
var int  	MIS_IsgarothWolf;			//Schwarzer Wolf
var int 	Sergio_Sends;
var int 	Sergio_Follow;
var int		Parlan_Erlaubnis;			//Spieler hat sich Bibliothek freigespielt
var int 	Isgaroth_Segen;
var int 	Parlan_Sends;
var int 	MIS_GoraxWein;
var int 	MIS_KarrasVergessen;
const int 	Summe_Kloster = 1000;

var int 	Fire_Contest;

var int 	Opolos_Rezept;
var int 	Babo_Training;

var int 	MIS_GuardSheep;				//Schafe h�ten f�r Opolos 
var int 	MIS_PickHerb;				//Unkraut j�ten mit Agon
var int 	MIS_SweepLibrary;			//Sc soll Bibliothek fegen
var int		ShrineconfessCost;			//Beicht kosten am Wegschrein
var	int		KNOWS_FIRE_CONTEST;			//Spieler kennt das alte Gesetz 
var int 	MIS_HelpDyrian;				//Sc soll ein gutes Wort f�r Dyraian einlegen.
var int		MIS_HelpBabo;				//Babo will G�rtner werden
var int 	MIS_HelpOpolos;				//Opolos will in die Stadt

var int 	Wegelagerer_Surprise;		//Wegelagerer nach Novizen gefragt
var int   	MIS_SCHNITZELJAGD;			// die Pr�fung des Feuers
var int   	MIS_GOLEM;
var int   	MIS_RUNE;
 
var int		MIS_RescueGorn;				//Die "Befreie Gorn" Mission. Wir von Lee und Milten vergeben!
const int   CostRescueGorn  = 500;      //Preis f�r Gorns Freilassung f�r Garond!!!!

var int 	Canthar_GotMe;				//== true : Canthar wei�, da� SC Str�fling ist!
var int 	Canthar_Passierschein_Accept; //Deal mit dem Passierschein ist abgeschlossen worden => true
var int 	Canthar_Passierschein_Accept_Day; // Tag des Abschlusses!
var int 	Canthar_AccusePlayerAndre;		//== True wenn Canthar den Player bei Andre angschw�rzt hat (Str�fling)
var int 	Canthar_AccusePlayerAndre_Day;	// Tag des Verrats

var int 	Sentenza_GoldTaken;
var int 	Torlof_SentenzaCounted; 
var int 	MIS_Jarvis_SldKO;
var int 	MIS_Fester_KillBugs;
var int 	Festers_Giant_Bug_Killed;		//Wieviele hat SC gekillt?
var int		BennetLOG;

var int 	MIS_Pepe_KillWolves;				//SC soll f�r Pepe die W�lfe t�ten.
var int 	MIS_Pepe_KickBullco;
var int 	MIS_Torlof_HolPachtVonSekob;		//Torlof schickt SC zu Sekobs Hof um die Pacht einzutreiben!
var int		MIS_Torlof_BengarMilizKlatschen; 	//SC soll Hof 4 von den Milizen befeien.
var int 	MIS_Gaan_Snapper;					//ersten Dragon snapper in der NW platt machen!

var int 	MIS_Sekob_Bronko_eingeschuechtert;	//Bronko wurde mit den SLD gedroht und geht wieder arbeiten.
var int 	MIS_Balthasar_BengarsWeide;			//Balthasar darf nicht mehr auf Bengars Weide. SC mu� Bengar �berreden.
var int 	MIS_Gaan_Deal;						//Kohledeal mit Gaan wegen Monster im Wald.
var int 	MIS_Rukhar_Wettkampf;				//Wettsaufen in der Taverne
var int 	MIS_Rukhar_Wettkampf_Day;
var int 	Rukhar_Won_Wettkampf;				//Rukhar hat gewonnen
var int 	Rukhar_Einsatz;
var int 	Rukhar_Gewinn;

var int 	Soeldner_Points;			//Punkte-Sammeln zur Sld-Aufnahme
var int 	Sentenza_Friend;			//Wenn Sentenza dir seine Stimme gegeben hat
var int 	Buster_Friend;

var int 	Liesel_Giveaway;			// ob Spieler Liesel abgegeben hat
var int		MIS_Gorax_Ambient;			// Gorax f�r Ambeint Mission freigeschaltet
var int 	Thief_Absolution;			//Spieler mu� b��en
var int 	Hammer_Taken;				//Spieler hat Hammer Innos geklaut
var	int		Igaraz_Anger;				//Spieler erz�rnt Igaraz
var int 	Igaraz_Wait;
var int     MIS_Gorax_Bote;				//Ambient Auftrag von Gorax
var int 	Paket_Opend;				//Spieler hat das Paket f�r Gorax ge�ffnet
var int		Goraxday; 					//Goarx hat nach einem Tag einen Auftrag f�r den Spieler

var int		MIS_Jack_KillLighthouseBandits; //Jack will, dass die Banditen aus seinem Leuchturm weg sind.
var int		MIS_Wasili_BringOldCoin; 	//Wasili sammelt OLDCOINs
var int 	MIS_Sagitta_Herb; 			//Sonnenaloe f�r Sagitta

// ------ KAPITEL 2 ------
var int 	Lutero_Krallen;
var int 	Fernando_Erz;
var int		MIS_ScoutMine;				// AL Kommandant Garond schickt SC in die neue Mine!
var int		MIS_Fajeth_Kill_Snapper;	//Fajeth in der neuen Mine will die Sapper los werden SC soll sie beseitigen!
var int     MIS_Fed_GetRidOfTengron;	//Fed will f�r Info �ber Diego Tenron los werden
var int 	MIS_BaltramTrade;			//Baltram handelt wieder mit dir!

var int     MIS_Engor_BringMeat;	// Burg im Minental Ambient Mission Kapitel 2
var int 	Meat_Counter; 			// Burg im Minental Ambient Mission Kapitel 2 
const int 	Meat_Amount = 24;		// Burg im Minental Ambient Mission Kapitel 2 

var int 	MIS_OLDWORLD; 			// HAUPT- MISSION KAPITEL2 Lord Hagen schickt den Spieler in die alte Welt
var int 	MIS_Marcos_Jungs;
var int 	MIS_Brutus_Kasse;	
var int 	MIS_ReadyForChapter3; 	//Mit dieser Varible in den Levelchange zur NW -> Kapitel 3

var int 	Marcos_einmalig;
var int 	Dobar_einmalig;
var int 	Brutus_einmalig;

var int 	Garond_Kerkerauf;
var int		TengronRing;
var int		OricBruder;

// ------ KAPITEL 3 ------
var int 	MIS_NovizenChase;					//Pyrokar schickt SC hinter den Novizen her, der das Auge Innos gestohlen hat.
var int 	MIS_Pyrokar_GoToVatrasInnoseye; 	//Pyrokar schickt SC zu Vatras, wegen dem kaputten Auge Innos.
var int 	MIS_RitualInnosEyeRepair; 			//Vatras wartet auf Xardas und Pyrokar am Sonnenkreis 
var int 	MIS_ReadyforChapter4; 				//Mit dieser Varible in den Levelchange zur OW -> Kapitel 4
var int		MIS_Bennet_InnosEyeRepairedSetting; //Bennet hat die Fassung des Auge Innos repariert.
var int 	MIS_SCKnowsInnosEyeIsBroken; 		//SC wei�, dass DMT, das Ding zerst�rt.
var int 	MIS_RescueBennet;					//Berfreie Bennet aus dem Knast
var int 	MIS_FindTheObesessed;				//Finde alle Besessenen 
var int 	MIS_HealHilda;						//Heile Lobarts Frau Hilda!	
var int 	MIS_BabosDocs;						//Babo wird erpresst
var int 	MIS_BengarsHelpingSLD;				//SC kann SLD anheuern, die auf seinen Hof achten!
var int 	MIS_GetMalakBack;					//Malak ist ausgeb�ckst. SC kann ihn zu Bengar zur�ck schicken.
var int 	MIS_HyglasBringBook;				//Hyglas will das hero ihm ein Buch besorgt.
var int 	MIS_HannaRetrieveLetter;			//besorge das alte Schriftst�ck f�r Hanna
var int     MIS_HelpDiegoNW;					//Diego will seinen Schatz haben!
VAR int		MIS_DiegoNWSendsYouToJudge;			//Diego schickt dich zum Richter
var int		MIS_DiegosResidence;				//Diego hat ein neues Haus!
var int		MIS_Akil_SchafDiebe;				//banditen haben Akils schafe gestohlen.
var int 	MIS_Lee_JudgeRichter;  				//Beweise gegen Richter finden.
var int 	MIS_Richter_BringHolyHammer;  		//Dem Richter den heiligen Hammer der Magier bringen.
var int 	MIS_InnosEyeStolen;  				//die Kacke is am Dampfen. DMT\Pedro haben das Auge geklaut.
var int 	MIS_RescueBilgot;					//Bilgot aus OW rausholen

//Gildenabh�ngig
var int		MIS_Buster_KillShadowbeasts_DJG;	//Buster schickt dich los Shadowbiester zu erledigen. 					SLD oder DJG
var int		MIS_Ulthar_HeileSchreine_PAL;		//Ulthar schickt dich los die verhexten Schreine zu heilen. 			PAL oder MIL
var int		MIS_Serpentes_MinenAnteil_KDF;		//Serpentes schickt dich los die gef�lschten Minenanteile einzusammeln. KDF

// ------ KAPITEL 4 ------
var int 	MIS_DJG_Sylvio_KillIceGolem;//Sylvio will, da� der SC ihm den Weg frei killt.
var int 	MIS_JanBecomesSmith;		//Jan sucht Arbeit
var int 	MIS_FErrosSword;			//Ferros sucht sein Schwert
var int 	MIS_GeroldGiveFood;			//SC kann Gerold mit Food versorgen!
var int 	MIS_KillHoshPak;			//Hosh-Pak t�ten
var int 	MIS_Tabin_LookForEngrom;	//Finde Engrom den J�ger!
var int 	MIS_KillOrkOberst;			//Kill den Ork Oberst.
var int 	MIS_Neoras_DragonEgg;		//Bring das Ei zu Neoras 		(PAL und KDF)
var int 	MIS_Dar_BringOrcEliteRing;	//Bring das OrkEliteRing zu Dar (DJG und KDF)
var int 	MIS_KarrasResearchDMT;

// ------ KAPITEL 5 ------
var int 	MIS_Xardas_SCCanOpenIrdorathBook; //SC kann Buch "Die Hallen von Irdorath" lesen
var int 	MIS_SCKnowsWayToIrdorath;	//SC wei� jetzt, dass er das Schiff braucht und kennt den Weg zur Dracheninsel
var int 	MIS_PyrokarClearDemonTower;	//Pyrokar will, dass SC dem DT aufr�umt, als Tribut f�r Jorgens freilassung.->==LOG_SUCCESS Jorgen kann nun als Kapit�n angeheuert werden.
var int 	ItWr_HallsofIrdorathIsOpen;	//SC hat das Buch ge�ffnet
var int 	ItWr_SCReadsHallsofIrdorath;//SC hat das Buch durchgelesen
var int 	MIS_ScoutLibrary;		//Erkunde das Gew�lbe Huhu!
var int 	PlayerGetsAmulettOfDeath;
var int 	PlayergetsFinalDJGArmor;
var int 	MIS_bringRosiBackToSekob;
var int 	MIS_HealRandolph;
var int 	MIS_SCvisitShip;
var int 	MIS_Raoul_KillTrollBlack;
var int 	MIS_Raoul_DoesntPayTrollFur;
var int 	MIS_RichtersPermissionForShip;	//Erm�chtigungsschreiben f�rs Schiff beim Richter erpressen.
var int 	MIS_RosisFlucht;		

var int 	Crewmember_Count;			//Die Anzahl der Crewmitglieder
const int 	Max_Crew = 9;				//Max. Crewmitglieder
const int   Min_Crew = 5;				//Min. Crewmitglieder //Joly: wenn dieser Wert ge�ndert wird, m�ssen auch die Dialoge angepasst werden!!!!!!!!!

// Crewmembers
var int 	Lee_IsOnBoard;				//Ist Lee an Bord?			-> == LOG_SUCCESS
var int		MiltenNW_IsOnBoard;			//Ist Milten an Bord?		-> == LOG_SUCCESS
var int		Lester_IsOnBoard;			//Ist Lester an Bord?		-> == LOG_SUCCESS
var int		Mario_IsOnBoard;			//Ist Mario an Bord?		-> == LOG_SUCCESS
var int		Wolf_IsOnBoard;				//Ist Wolf an Bord?			-> == LOG_SUCCESS
var int		Lares_IsOnBoard;			//Ist Lares an Bord?		-> == LOG_SUCCESS
var int		Diego_IsOnBoard;			//Ist Diego an Bord?		-> == LOG_SUCCESS
var int		Bennet_IsOnBoard;			//Ist Bennet an Bord?		-> == LOG_SUCCESS
var int		Vatras_IsOnBoard;			//Ist Vatras an Bord?		-> == LOG_SUCCESS
var int		Gorn_IsOnBoard;				//Ist Gorn an Bord?			-> == LOG_SUCCESS
var int		Biff_IsOnBoard;				//Ist Biff an Bord?			-> == LOG_SUCCESS
var int		Angar_IsOnBoard;			//Ist Angar an Bord?		-> == LOG_SUCCESS
var int 	Girion_IsOnBoard;  			//Ist Girion an Bord?		-> == LOG_SUCCESS

var int 	MIS_ShipIsFree;				//Das Schiff ist frei und SC kann mit seinen Jungs draufgehen.
var int 	SCGotCaptain;	 			//== true ->SC hat sich f�r einen Kapit�n entschieden.
var int 	JorgenIsCaptain;  			//== true Jorgen ist der K�ptain!
var int 	TorlofIsCaptain;  			// == true Torlof ist der K�ptain!
var int 	JackIsCaptain;  			// == true Jack ist der K�ptain!

var int 	MIS_ReadyforChapter6; 		//Alles klar f�r Kapitel 6
var int 	MIS_OCGateOpen;				//== true -> Das Tor vom OC ist ge�ffnet worden (ORCSturm)
var int 	MIS_Jack_NewLighthouseOfficer; //Jack braucht jemanden, der auf seinen Leuchtturm auspasst!

//**************************
// Allgemeine Hilfsvariablen
//**************************
var int B_Chapter3_OneTime;
var int B_Chapter4_OneTime;
var int B_Chapter5_OneTime;

// ------ KAPITEL 1 ------
var int	Lobart_DIA_HALT_WegDamit;	//Important Info ausschalten!
var int Lobart_MILCHANGEBOT;		//Lobart bietet SC den MilchholAuftrag an!

//--------Matteo und Gritta --------------
var int	SCPaysForGritta;			//SC bezahlt f�r Gritta
var int Matteo_Deal; 				//Spieler l��t sich von Matteo bezahlen
var int Matteo_Day;					//wenn Spieler sich entscheiden sollte, nicht zu Matteo zur�ckzukehren

var int HannaGaveSword;				//Hanna hat dem Sc das Schwert gegeben
var int DayMeetAlwin;				//Tag der Erpressung
var int MoeOfferedTrain;			//F�r 30 Gold trainier ich dich.
var int Kardif_OneQuestion;			//Kardif will 5 Goldm�nzen f�r jede Frage, die der SC stellt.

var int Bartok_Deal;				//Spieler macht einen Deal mit Bartok
var int Bartok_Day;					//und die Tage werden wieder gez�hlt... - wenn mehr als 10, haut Bartok den Spieler um 
var int Bartok_OrkGesagt;			

var int Constantino_Gehilfe;		//Name ist Programm
var int Constantino_Logpatch1;		//Sermon kommt nur einmal
var int Constantino_Logpatch2;		//Sermon kommt nur einmal

var int Sonja_Says;
	
var int Sarah_WaffenGesehen;		//SC hat sich den Ramsch angesehen, den Sarah verkauft!
var int Lehmar_GeldGeliehen; 		//Geldbetrag den sich SC von Lehmar leiht!
var int Lehmar_GeldGeliehen_MitZinsen;
var int Lehmar_GeldGeliehen_Day;	//Der Tag an dem sich SC von Lehmar Geld leiht!
var int EddaPaid;					//Du hast Edda Geld gegeben
var int Coragon_Trade;				//SC zahlt seine Zeche und Coragon handelt mit SC

var int HelpOpolos;					//Spieler hilft Opolios beim Schafeh�ten				
var int HelpAgon;					//Spieler hilft Agon bim Kr�utergarten
var int	HelpBabo;					//Spieler hilft Babo beim Fegen
var int BaboLikesYou;				//Babo mag den Spieler

var int Rengaru_InKnast;			//Andre fragt ab ob Rengaru in den Knast ging!
var int Nagur_UmsGeldBeschissen;	//F�r minuspunkte bei Andre
var int wulfgarWantsMoney;			//Wulfgar will bezahlt werden!!

var int Hagen_GaveInfoKnight;		//Nachfragen wie man Paladin wird

// Bauerh�fe
var int Torlof_Probe;
	const int Probe_Sekob = 1;		//Joly: 0 wird verwendet//ADDON
	const int Probe_Bengar = 2;
var int Torlof_ProbeBestanden;
// ---------------------------
var int Buster_Duell;
var int Sentenza_Stimme;
var int Fester_Paid;
var int Cord_Approved;

// ---------------------------

var int Thekla_SCNaughty;			//=True SC war frech zur guten K�chenfee!
var int Torlof_PissedOff;			//SC hat Torlof ver�rgert und mu� ihm einen Fisch bringen!
var int Torlof_SC_DarfZuLee;		//Torlof l�sst SC ins Haupthaus von Onar
var int Torlof_SauerWegenSekob;  	//Torlof verteilt R�ffel, weilSC Sekob zu sanft angefasst hat!
var int Babera_BronkoKeinBauer;		//Babera verr�t dem Spieler, da� Bronko gar nicht der Bauer ist!
var int Sekob_ersteChancevertan;  	//falls SC erste mal schon Weichei raush�ngen l��t, mu� er zu Torlof gehen und sich R�ffel abholen.
var int Bengar_MILIZKLATSCHEN_Kohle;//Lohn f�rs Milizenklatschen auf Hof 4.
var int Rumbold_Bezahlt;			//Miliz von Farm3 bekommen durch Bezahlung.

// ---------------------------
var int Mika_Helps;					//Miliz Mika hilft SC bei den SLD auf Akils Hof.
var int Akil_Sauer;					//SC ver�rgert Akil, weil er ihn um Kohle erpresst.
var int Akils_SLDStillthere;
var int Engardo_SchonAngeredet;		//Engarde sollte man besser nur einmal ansprechen.
var int	Kati_Mahlzeit;	
var int Lieferung_Geholt;

// ------ KAPITEL 2 ------
var int KnowsGerold;			//SC wei� dass, er mit Gerold sprechen muss.(DIA_PC_Mage und DIA_PAL_267_Sengrath gesetzt, wird  bei DIA_PAL_261_Gerold abgefragt
var int KnowsAboutGorn;			//Sc wei� dass Gorn im Kerker ist. (DIA_PC_Mage und DIA_PAL_267_Sengrath gesetzt, wird  bei DIA_PAL_261_Gerold abgefragt
var int DayContactGorn;			//Tag der Bestechung von Gerold 
var int PriceForGorn;			//Preis f�r Gorn, wird auf True gesetzt, wenn der SC Gorn freikaufen will.
var int	Gorns_Beutel;
VAR int SLDChooseMoreMoney;		//Sld hat 1000 Gold f�r die MinenMission bekommen.
var int FoodForGerold;			//Die Bestechung von Gerold (DIA_PAL_261_Gerod)
VAR int WantinDungeon;			//da man keine Permanenten Infos abfragen kann wird sie im DIA_PAL_261_Gerold abgefragt
var int	SetGornFree; 			//Jetzt kann Gerold sir den Schl�ssel f�r Gorn geben!
var int GornsTreasure;			//Gorns Schatzversteck
var int GornDJG_WhatMonsters;	//Gorn berichtet �ber Draconier
var int Knows_Diego;
var int SearchForDiego;         //Milten (und Sengrath) sagt dem Player Diego sei in der Mine
var int FajethSendsYouBack;		//Snapper erledigt, Fajeth schickt den SC zur�ck in die Burg im Minental
var int Milten_Equipment;

var int Fajeth_Pay;
var int Fajeth_Ore;
var int Marcos_Ore;
var int Silvestro_Ore;

var int Ore_Counter;

var int Knows_WEAPON_1H_Special_01;	// (f�r ItWr_Silverblade) Spieler lernt WEAPON_1H_Special_01)

// ------ KAPITEL 3 ------
var int Pedro_Traitor;			//SC erf�hrt von Pedros Auge Innos Klau
var int RitualInnosEyeRuns;		//Das Umkehrritual l�uft
var int Bennet_RepairDay;		//Repariere das Auge Innos
var int heroGIL_KDF2;			//== true -> SC ist hoher KDF
var int Xardas_GoesToRitualInnosEye; //Xardas geht zum Umkehrritual
var int Pyrokar_GoesToRitualInnosEye; //Pyrokar geht zum Umkehrritual
var int CorneliusFlee;			//Cornelius macht die Biege


var int MiltenNW_GivesMonasteryKey; //Der SC hat den Klosterschl�ssel erhalten.
var int Parlan_DontTalkToNovice;	//Rede nicht mit den Novizen
var int NeorasBrewsForYou;			//Neoras braut Tr�nke f�r dich!
var int BabosDocsOpen;				//Player hat sich Babos Schmuddelhelt angeguckt
var int Igaraz_ISPartner;			//igaraz und Player erpressen babo
var int MIS_Gorax_KillPedro;		//Serpentes gibt Gorax Geld den SLD-SC dazu zu bringen Pedro zu t�ten.
var int OpenedDiegosBag;			//Player hat den Sack ge�ffnet!
const int DiegosTreasure	= 2000;	//Diegos Schatz!
var int SC_KnowsProspektorSalandril;	//== true MinanteilBetrug von Salandril ist aufgeflogen.
var int PyrokarToldKarrasToResearchDMT;	//== true Karras macht DMT Research
var int Pyrokar_AskKarrasAboutDMTAmulett;	//== true Karras fragen, wegen Schutzamulett gegen den Schwarzen Blick
var int MIS_Karras_FindBlessedStone;		//== LOG_SUCCESS SC bringt Karras gesegnetes Gestein, f�r Schutzamulett gegen den Schwarzen Blick
var int Angar_KnowsMadPsi;			//== true Angar kennt die Wahrheit �ber die Bruderschaft des Schl�fers.
var int Cornelius_IsLiar;
var int RescueBennet_KnowsWitness;	//Der SC hat erfahren, dass es einen Zeugen f�r den Mord gibt
var int RecueBennet_KnowsCornelius;	//Der SC hat erfahren, dass Cornelius der Zeuge ist.
var int Cornelius_ThreatenByMilSC;

var int SCFoundMorgahard;
const int CostForPAlSpells = 5; //Soviel kosten Pal Spells!!
var int SalandrilMinenAnteil_MAINCounter; 
var int SalandrilVerteilteMinenAnteil;


var int Girion_Labercount;
var int TschuessBilgot;

// ------ KAPITEL 4 ------
var int DJG_SwampParty;			//Rod und Cipher greifen mit SC den Drachen an.
var int DJG_BiffParty;			//SCs eigener kleiner S�ldner.
var int Angar_willDJGwerden;	//Angar will DJG werden 
var int DJG_Angar_SentToStones; //Angar macht sich auf zum STonehenge
var int DJG_AngarGotAmulett;	//SC gibt Angar das Amulett zur�ck.
var int DJG_AngarAngriff;		//SC greift SkeletonMage zusammen mit Angar an!

var int HokurnLastDrink;		//Wann hat Hokurn letztes mal getrunken
var int	HokurnGetsDrink;		//Er hat was zu trrinken bekommen
var int HokurnTellsDragon;		//Erz�hlt dir was �ber drachen
var int GodarLikesYou;			//Wir wettern gegen die Oberviertelfuzzies!
var int KjornToldDragon;		//erz�hlt dir was �ber drachen
var int KjorntoldOrks;			//erz�hlt was �ber Orks
var int KjornToldOldCamp;		//erz�hlt �ber Burg im Minental
var int KjornToldColony;		//erz�hlt �ber das Minental

var int DragonTalk_Exit_Free;	
var int DJG_Biff_Stay; 				//zu nah am Drachen bleibt Biff stehen.
var int Keroloth_HasPayed;			//Keroloth hat Finderlohn bezahlt
var int Keroloths_BeutelLeer; 		//Beutel ist leer
var int OrikToldMissionChapter4;	//Orik hat dem SC den Auftrga erkl�hrt
var int Sengrath_Missing;			//Sengrath ist auf der Suche nach seiner Armbrust gestorben.
var int Talbin_FollowsThroughPass;	//SC bringt Talbin �ber den Pass!
var int Biff_FollowsThroughPass;	//SC bringt Talbin �ber den Pass!
var int EngromIsGone;				//Engrom lebte zu Kapitel 4 noch. ist jetzt verschwunden!
var int TalkedTo_AntiPaladin;		//Paladin SC hat mit den Eliteorkanf�hrer gesprochen.
var int Hyglas_SendsToKarras;		//Karras soll dir �ber die Sterne erz�hlen
var int Jan_WantsDragonBlood;		//== true Jan kauft (PAL und KDF) Drachenblut ab.
const int Garond_KilledDragonGeld = 300;	//Geld f�r jeden get�teten Drachen.

var int DJG_BiffParty_nomore;
var int DJG_Biff_HalbeHalbe;	
var int DJG_Biff_SCGold;		//Joly: Biffs Check, wieviel Kohle der SC in der Tasche hat, damit er seinen Anteil bekommt.
var int BiffsAnteil;
var int DJG_Biff_HalbeHalbe_again;

// ------ KAPITEL 5 ------
var int Pyrokar_LetYouPassTalamon;	//Pyrokar gew�hrt dir Zugang zum Bibliotheks Vorraum.
var int SecretLibraryIsOpen; 		//Geheimt�r zur Bibliothek wurde ge�ffnet
var int	HeroWasInLibrary;			//Spieler war im Keller des klosters
var int DayForFinalDJGArmor;		//Dann kanst du dir deine R�stung abholen
var int PlayerHasFinalArmor;		//Sc hat DJG R�stung
var int RosiFoundKap5;				//Rosi steht in der Wildnis
var int PAL_KnowsAbout_FINAL_BLESSING; //Paladine Sc hat rezept f�r Finale Waffensegnung gelesen!

// ------ KAPITEL 6 ------
var int ORkSturmDI;					//Ork haben das Schiff angegriffen.
var int Angar_DI_Party;				//Angar followt dem SC
var int SC_InnosEyeVergessen_DI;    //Spieler hat das Ding nicht zur DI mitgenommen!
var int SCFoundPedro;
var int UndeadDragonIsDead;			//UndeadDragon ist tot
var int DiegAndGornAreOnboard;		//f�rs Video Extro_AllesWirdGut!

//-------------  Sonstige Variablen -------------------------------------
var int Knows_Bloodfly;
var int Player_KnowsDunkelpilzBonus;
var int Skelett_Spawn;
var int TruheSfx;

var int CurrentLevel; 	//Newworld_zen, Oldworld_Zen, Dragonisland_zen -> Level in dem sich der Player befindet!
