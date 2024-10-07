///******************************************************************************************
/// MOD_Quests
///******************************************************************************************
func int aTrue()
{
	return true;
};
func int aTrueWhenTalk()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return true;
	};
};
func int aTrueIfNotRefuse()
{
	if (!Npc_RefuseTalk(self))
	{
		return true;
	};
};
func void aExit()
{
	AI_StopProcessInfos(self);
};

///******************************************************************************************

var int QuestStatus_AkilNeedHelp;				const string QuestName_AkilNeedHelp				=	"Farmer w potrzebie";
var int QuestStatus_AkilPeople;					const string QuestName_AkilPeople				=	"Tanok i Telbor";
var int QuestStatus_AkilSheeps;					const string QuestName_AkilSheeps				=	"Z³odzieje owiec";
var int QuestStatus_AlrikSword;					const string QuestName_AlrikSword				= 	"Miecz Alrika";
var int QuestStatus_AlwinFellan;				const string QuestName_AlwinFellan				= 	"Szalony Fellan";
var int QuestStatus_AngarAmulet;				const string QuestName_AngarAmulet				=	"Amulet Angara";
var int QuestStatus_AngusHank;					const string QuestName_AngusHank				=	"Angus i Hank";
var int QuestStatus_BaboDocs;					const string QuestName_BaboDocs					=	"Dokumenty Babo";
var int QuestStatus_BaboGarden;					const string QuestName_BaboGarden				=   "Babo i ogród";
var int QuestStatus_BaboTrain;					const string QuestName_BaboTrain				=	"Trening bojowy Babo";
var int QuestStatus_BackToShip;					const string QuestName_BackToShip				=	"Powrót na okrêt";
var int QuestStatus_BalthasarSheeps;			const string QuestName_BalthasarSheeps			=	"Zakazane pastwisko";
var int QuestStatus_BaltramPacket;				const string QuestName_BaltramPacket			=	"Dostawa Baltrama";
var int QuestStatus_BaltramPirates;				const string QuestName_BaltramPirates			=	"Piracki handel";
var int QuestStatus_BaltramTrade;				const string QuestName_BaltramTrade				=	"Handel z Baltramem";
var int QuestStatus_BanditArmor;				const string QuestName_BanditArmor				=	"Zbroja bandyty";
var int QuestStatus_BanditCampAccess;			const string QuestName_BanditCampAccess			=	"Dostêp do obozu bandytów";
var int QuestStatus_Bandits;					const string QuestName_Bandits					=	"Listy goñcze";
var int QuestStatus_BanditTower;				const string QuestName_BanditTower 				=	"Wie¿a bandytów";
var int QuestStatus_BanditTrader;				const string QuestName_BanditTrader				=	"Handlarz broni¹ dla bandytów";
var int QuestStatus_BecomeKDF;					const string QuestName_BecomeKDF				=	"Mag Ognia";
var int QuestStatus_BecomeMIL;					const string QuestName_BecomeMIL				=	"Cz³onek stra¿y miejskiej";
var int QuestStatus_BecomeSLD;					const string QuestName_BecomeSLD				=	"Jeden z najemników";
var int QuestStatus_BeliarWeapon;				const string QuestName_BeliarWeapon				=	"Szpon Beliara";
var int QuestStatus_BelieverPath;				const string QuestName_BelieverPath				=	"Œcie¿ka Wiernych";
var int QuestStatus_BengarMalak;				const string QuestName_BengarMalak				=	"Samotnoœæ i bezradnoœæ";
var int QuestStatus_BilgotEscort;				const string QuestName_BilgotEscort				=	"Kl¹twa Bilgota";
var int QuestStatus_BosperBow;					const string QuestName_BosperBow				=   "£uk Bospera";
var int QuestStatus_BosperFurs;					const string QuestName_BosperFurs				=   "Futra dla Bospera";
var int QuestStatus_BrandonBooze;				const string QuestName_BrandonBooze				=	"Gorza³ka dla Brandona";
var int QuestStatus_BringMiners;				const string QuestName_BringMiners				=	"Trzy kamienie – trzech kopaczy";
var int QuestStatus_BringRiordian;				const string QuestName_BringRiordian			=	"Riordian";
var int QuestStatus_BromorGold;					const string QuestName_BromorGold				=	"Z³ota misa Bromora";
var int QuestStatus_BrutusGold;					const string QuestName_BrutusGold				=	"Z³oto dla Brutusa";
var int QuestStatus_BrutusMeatbugs;				const string QuestName_BrutusMeatbugs			=	"Paskudna nora";
var int QuestStatus_BusterHorns;				const string QuestName_BusterHorns				=	"Rogi cieniostwora dla Bustera";
var int QuestStatus_CantharLetter;				const string QuestName_CantharLetter			=	"Wzglêdy Canthara";
var int QuestStatus_CanyonOrcs;					const string QuestName_CanyonOrcs				=	"Orkowie w kanionie";
var int QuestStatus_Captain;					const string QuestName_Captain					=	"Kto bêdzie dowodzi³ moim okrêtem?";
var int QuestStatus_CassiaCups;					const string QuestName_CassiaCups				= 	"Krwawe puchary";
var int QuestStatus_CassiaRing;					const string QuestName_CassiaRing				= 	"Pierœcieñ Constantina";
var int QuestStatus_CavalornHut;				const string QuestName_CavalornHut				=	"Stara chata Cavalorna";
var int QuestStatus_CavalornLetter;				const string QuestName_CavalornLetter			=	"List do Vatrasa";
var int QuestStatus_CipherHerb;					const string QuestName_CipherHerb				=	"Za kilka zió³ wiêcej";
var int QuestStatus_CipherPacket;				const string QuestName_CipherPacket				=	"Paczuszka z zielem";
var int QuestStatus_CityAccess;					const string QuestName_CityAccess				=	"Dostêp do miasta Khorinis";
var int QuestStatus_CityTopAccess;				const string QuestName_CityTopAccess			=   "Dostêp do górnego miasta";
var int QuestStatus_CityWork;					const string QuestName_CityWork					=   "Czeladnik z Khorinis";
var int QuestStatus_ClearCanyon;				const string QuestName_ClearCanyon				=	"Polowanie na brzytwiaki";
var int QuestStatus_ClearDemonTower;			const string QuestName_ClearDemonTower			=	"Powrót do wie¿y";
var int QuestStatus_ConstantinoPlants;			const string QuestName_ConstantinoPlants		=   "Zio³a dla Constantina";
var int QuestStatus_CoragonSilver;				const string QuestName_CoragonSilver			=	"Srebro Coragona";
var int QuestStatus_CordProve;					const string QuestName_CordProve				=	"Dobry wojownik";
var int QuestStatus_CrawlerArmor;				const string QuestName_CrawlerArmor				=	"Zbroja pe³zacza";
var int QuestStatus_Crew;						const string QuestName_Crew						=	"Nie mo¿na podró¿owaæ bez za³ogi";
var int QuestStatus_DarOrcRing;					const string QuestName_DarOrcRing				=	"Bajer dla Dana";
var int QuestStatus_Dementors;					const string QuestName_Dementors				=	"Poszukiwacze";
var int QuestStatus_DiegoGold;					const string QuestName_DiegoGold				=	"Z³oto Diega";
var int QuestStatus_DiegoResidence;				const string QuestName_DiegoResidence			=	"Sprawa Diega";
var int QuestStatus_DragomirCrossbow;			const string QuestName_DragomirCrossbow			=	"Kusza Dragomira";
var int QuestStatus_DragonEggs;					const string QuestName_DragonEggs				=	"Smocze jaja";
var int QuestStatus_DragonHunt;					const string QuestName_DragonHunt				=	"Polowanie na smoki";
var int QuestStatus_DragonHunters;				const string QuestName_DragonHunters			=	"£owcy smoków";
var int QuestStatus_DragonMaster;				const string QuestName_DragonMaster				=	"Pan smoków";
var int QuestStatus_DrinkChallenge;				const string QuestName_DrinkChallenge			=	"Do dna";
var int QuestStatus_DyrianCrime;				const string QuestName_DyrianCrime				=   "Zbrodnia Dyriana";
var int QuestStatus_ElvrichLucia;				const string QuestName_ElvrichLucia				=	"Lucia";
var int QuestStatus_EngorMeat;					const string QuestName_EngorMeat				=	"Miêso";
var int QuestStatus_ErolTheft;					const string QuestName_ErolTheft				=	"Napadniêci kupcy";
var int QuestStatus_Esteban;					const string QuestName_Esteban					=	"Próba zabójstwa Estebana";
var int QuestStatus_FajethSnappers;				const string QuestName_FajethSnappers			=	"Polowanie na zêbacze";
var int QuestStatus_FakeMineDocs;				const string QuestName_FakeMineDocs				=	"Fa³szywe udzia³y w kopalni";
var int QuestStatus_FarimFish;					const string QuestName_FarimFish				=	"Problemy ze stra¿¹";
var int QuestStatus_FarmerArmor;				const string QuestName_FarmerArmor				=	"Ubiór roboczy Lobarta";
var int QuestStatus_FernandoNews;				const string QuestName_FernandoNews				=	"Informacje dla Fernanda";
var int QuestStatus_FerrosSword;				const string QuestName_FerrosSword				=	"Miecz Ferosa";
var int QuestStatus_FesterGiantbugs;			const string QuestName_FesterGiantbugs			=	"Polne bestie Festera";
var int QuestStatus_FireContest;				const string QuestName_FireContest				=	"Próba Ognia";
var int QuestStatus_FiskPacket;					const string QuestName_FiskPacket				=	"Paczka dla Fiska";
var int QuestStatus_Flood;						const string QuestName_Flood					=	"Zatopione miasto";
var int QuestStatus_FrancoStoneplate;			const string QuestName_FrancoStoneplate			=	"Kamienna tablica na bagnie";
var int QuestStatus_GaanMonster;				const string QuestName_GaanMonster				=	"Prychaj¹ca istota";
var int QuestStatus_GarettCompass;				const string QuestName_GarettCompass			=	"Kompas Garetta";
var int QuestStatus_GarvellNews;				const string QuestName_GarvellNews				= 	"Informacje dla Garvella";
var int QuestStatus_GeroldFood;					const string QuestName_GeroldFood				=	"G³odny Gerold";
var int QuestStatus_GoraxFood;					const string QuestName_GoraxFood 				=	"Baranie kie³baski";
var int QuestStatus_GoraxWine;					const string QuestName_GoraxWine 				=	"Dostawa wina";
var int QuestStatus_GregNW;						const string QuestName_GregNW					=	"Cz³owiek z opask¹ na oku";
var int QuestStatus_GromFood;					const string QuestName_GromFood					=	"G³odny Grom";
var int QuestStatus_GuildOfThieves;				const string QuestName_GuildOfThieves			=	"Gildia zlodziei";
var int QuestStatus_HakonBandits;				const string QuestName_HakonBandits				=   "Najazdy bandytów";
var int QuestStatus_HannaMap;					const string QuestName_HannaMap					=	"Ktoœ coœ zgubi³?";
var int QuestStatus_HaradOrc;					const string QuestName_HaradOrc					=   "Wielkie wyzwanie";
var int QuestStatus_HealFortuno;				const string QuestName_HealFortuno				=	"Meandry umys³u";
var int QuestStatus_HealHilda;					const string QuestName_HealHilda				=	"Lekarstwo dla Hildy";
var int QuestStatus_HealRandolph;				const string QuestName_HealRandolph				=	"Lekarstwo dla Randolpha";
var int QuestStatus_HenryOwen;					const string QuestName_HenryOwen				= 	"Drewno na palisadê";
var int QuestStatus_HerbPacket;					const string QuestName_HerbPacket				= 	"Paczuszka pe³na ziela";
var int QuestStatus_HildaPan;					const string QuestName_HildaPan					=	"Patelnia dla Hildy";
var int QuestStatus_HousesOfRulers;				const string QuestName_HousesOfRulers			=	"Posiad³oœci budowniczych";
var int QuestStatus_HunoPacket;					const string QuestName_HunoPacket				=	"Stal Huna";
var int QuestStatus_HyglasBook;					const string QuestName_HyglasBook				=	"Potêga Gwiazd";
var int QuestStatus_IgnazExperiment;			const string QuestName_IgnazExperiment			= 	"Eksperyment";
var int QuestStatus_InnosEye;					const string QuestName_InnosEye					=	"Oko Innosa";
var int QuestStatus_InnosEyeRitual;				const string QuestName_InnosEyeRitual			=	"Rytua³ odwrócenia";
var int QuestStatus_Irdorath;					const string QuestName_Irdorath					=	"Dwór Irdorath";
var int QuestStatus_IsgarothMonster;			const string QuestName_IsgarothMonster			=	"Problemy Isgarotha";
var int QuestStatus_JackBandits;				const string QuestName_JackBandits				=	"Bandyci w latarni morskiej Jacka";
var int QuestStatus_JanSmith;					const string QuestName_JanSmith					=	"Jan i kuŸnia";
var int QuestStatus_JarvisChallenge;			const string QuestName_JarvisChallenge			=	"Wyzwanie Jarvisa";
var int QuestStatus_JoraGold;					const string QuestName_JoraGold					=	"Kupieckie z³oto";
var int QuestStatus_JoraTheft;					const string QuestName_JoraTheft				=	"Bezczelny z³odziej";
var int QuestStatus_KarrasCharm;				const string QuestName_KarrasCharm				=	"Krótka wycieczka do miasta";
var int QuestStatus_KerolothTheft;				const string QuestName_KerolothTheft			=	"Okradziony Keroloth";
var int QuestStatus_KervoKillLurker;			const string QuestName_KervoKillLurker			=	"Topielce przy rzece";
var int QuestStatus_KickBullco;					const string QuestName_KickBullco				=	"Skopaæ ty³ek Bullkowi";
var int QuestStatus_KillBrago;					const string QuestName_KillBrago				=	"Bandyci Cavalorna";
var int QuestStatus_KillGolem;					const string QuestName_KillGolem				=	"¯yj¹ca ska³a";
var int QuestStatus_KillHoshPak;				const string QuestName_KillHoshPak				=	"Hosh-Pak";
var int QuestStatus_KillJuan;					const string QuestName_KillJuan					= 	"Morderca Angusa i Hanka";
var int QuestStatus_KillRaven;					const string QuestName_KillRaven				=	"Kruk";
var int QuestStatus_KillTrollBlack;				const string QuestName_KillTrollBlack			=	"Skóra czarnego trolla";
var int QuestStatus_LaresReplace;				const string QuestName_LaresReplace				=	"Pomoc dla Laresa";
var int QuestStatus_LazyBronko;					const string QuestName_LazyBronko				=	"Leniwy farmer";
var int QuestStatus_LobartGiantbugs;			const string QuestName_LobartGiantbugs			= 	"Problemy na farmie Lobarta";
var int QuestStatus_LobartOrcProblem;			const string QuestName_LobartOrcProblem			=	"Lobarta problem z orkami";
var int QuestStatus_LoganSwampsharks;			const string QuestName_LoganSwampsharks			=	"Polowanie na b³otne wê¿e";
var int QuestStatus_LuteroClaws;				const string QuestName_LuteroClaws				=	"Pazury zêbacza dla Lutero";
var int QuestStatus_MakeRune;					const string QuestName_MakeRune					=	"Tworzenie runy";
var int QuestStatus_MalethBandits;				const string QuestName_MalethBandits			=	"Bandyci na farmie Lobarta";
var int QuestStatus_MalethChick;				const string QuestName_MalethChick				=	"Laska Maletha";
var int QuestStatus_MarcosProblem;				const string QuestName_MarcosProblem			=	"Pomoc dla Marcosa";
var int QuestStatus_MardukPray;					const string QuestName_MardukPray 				=	"Modlitwa za paladynów";
var int QuestStatus_MariaPlate;					const string QuestName_MariaPlate 				=	"Z³oty talerz Marii";
var int QuestStatus_MatteoGritta;				const string QuestName_MatteoGritta				=   "Matteo i Gritta";
var int QuestStatus_MissingPeople;				const string QuestName_MissingPeople			=	"Zaginieni ludzie";
var int QuestStatus_MissingSengrath;			const string QuestName_MissingSengrath			=	"Zguba w ciemnoœci";
var int QuestStatus_MonasteryAccess;			const string QuestName_MonasteryAccess			=	"Jak siê dostaæ do klasztoru";
var int QuestStatus_MonasteryService;			const string QuestName_MonasteryService			=	"S³u¿ba spo³ecznoœci";
var int QuestStatus_MorganBeach;				const string QuestName_MorganBeach				=	"Pla¿a na pó³nocy";
var int QuestStatus_MorganMeat;					const string QuestName_MorganMeat				=	"Miêso dla Morgana";
var int QuestStatus_MyCrew;						const string QuestName_MyCrew					=	"Moja za³oga";
var int QuestStatus_NagurPacket;				const string QuestName_NagurPacket				=	"Fa³szywy pos³aniec";
var int QuestStatus_NeorasDragonEgg;			const string QuestName_NeorasDragonEgg			=	"Mikstura Neorasa ze smoczych jaj";
var int QuestStatus_NeorasPlants;				const string QuestName_NeorasPlants				=	"Siedem zió³";
var int QuestStatus_NeorasRecipe;				const string QuestName_NeorasRecipe  			=	"Zaginiony przepis";
var int QuestStatus_OldWorld;					const string QuestName_OldWorld					=	"Dowody dla Hagena";
var int QuestStatus_OpolosLibrary;				const string QuestName_OpolosLibrary			=   "Opolos i biblioteka";
var int QuestStatus_OpolosRecipe;				const string QuestName_OpolosRecipe				=	"Opolos i przepis";
var int QuestStatus_OrcElite;					const string QuestName_OrcElite					=	"Hordy orkowych wojowników";
var int QuestStatus_OricBrother;				const string QuestName_OricBrother				=	"Wieœci dla Orica";
var int QuestStatus_Ornament;					const string QuestName_Ornament					=	"Portal";
var int QuestStatus_OwenMalcom;					const string QuestName_OwenMalcom				=	"Malcom";
var int QuestStatus_ParlanCleaning;				const string QuestName_ParlanCleaning			=	"Komnaty nowicjuszy";
var int QuestStatus_PeaceLetter;				const string QuestName_PeaceLetter				=	"Oferta pokoju";
var int QuestStatus_PepeWolves;					const string QuestName_PepeWolves				=	"Cztery wilki dla Pepe";
var int QuestStatus_PickForConstantino;			const string QuestName_PickForConstantino		=	"Zio³a dla Constantina";
var int QuestStatus_Quarhodron;					const string QuestName_Quarhodron				=	"Moc Stra¿nika Umar³ych";
var int QuestStatus_RamirezSextant;				const string QuestName_RamirezSextant			= 	"Sekstans";
var int QuestStatus_RangerHelpKDF;				const string QuestName_RangerHelpKDF			=	"U³atwione przyjêcie do klasztoru";
var int QuestStatus_RangerHelpMIL;				const string QuestName_RangerHelpMIL			=	"U³atwione przyjêcie do stra¿y";
var int QuestStatus_RangerHelpSLD;				const string QuestName_RangerHelpSLD			=	"U³atwione przyjêcie do najemników";
var int QuestStatus_RatHunt;					const string QuestName_RatHunt					= 	"Polowanie na szczury";
var int QuestStatus_RedLight;					const string QuestName_RedLight					= 	"Afera z zielem";
var int QuestStatus_Relicts;					const string QuestName_Relicts					=	"Relikty";
var int QuestStatus_RescueBennet;				const string QuestName_RescueBennet				=	"Bennet siedzi w wiêzieniu";
var int QuestStatus_RescueGorn;					const string QuestName_RescueGorn				=	"Uratowaæ Gorna";
var int QuestStatus_RichterButler;				const string QuestName_RichterButler			=	"Lokaj sêdziego";
var int QuestStatus_RichterHolyHammer;			const string QuestName_RichterHolyHammer		=	"Œwiêty M³ot dla sêdziego";
var int QuestStatus_RichterKillMorgahard;		const string QuestName_RichterKillMorgahard		=	"Zabójstwo Morgaharda dla sêdziego";
var int QuestStatus_RichterShipPermission;		const string QuestName_RichterShipPermission	=	"Przepustka na statek od sêdziego";
var int QuestStatus_RoastGrog;					const string QuestName_RoastGrog				=	"Grog dla kucharza";
var int QuestStatus_RodSword;					const string QuestName_RodSword					=	"Miecz Roda";
var int QuestStatus_RosiRun;					const string QuestName_RosiRun					=	"Ucieczka Rosi";
var int QuestStatus_SagittaHerb;				const string QuestName_SagittaHerb				=	"S³oneczny aloes";
var int QuestStatus_ScoutBandits;				const string QuestName_ScoutBandits				=	"Szpiegowanie bandytów";
var int QuestStatus_ScoutMine;					const string QuestName_ScoutMine				=	"Kopacze i ruda";
var int QuestStatus_SekobDMT;					const string QuestName_SekobDMT					=	"Wygnany farmer";
var int QuestStatus_SekobRosi;					const string QuestName_SekobRosi				=	"Sekob têskni za ¿on¹";
var int QuestStatus_SekobOnar;					const string QuestName_SekobOnar				=	"Porozmawiaæ z Onarem o czynszu";
var int QuestStatus_SenyanProblem;				const string QuestName_SenyanProblem			=	"Fatalna sytuacja";
var int QuestStatus_SerpentesBringSalandril;	const string QuestName_SerpentesBringSalandril	=	"Przyprowadziæ Salandrila do klasztoru";
var int QuestStatus_Ship;						const string QuestName_Ship						=	"Potrzebujê okrêtu";
var int QuestStatus_SkipGrog;					const string QuestName_SkipGrog					=	"Opuszczony Skip";
var int QuestStatus_Slaves;						const string QuestName_Slaves					=	"Niewolnicy Kruka";
var int QuestStatus_RespectSLD;					const string QuestName_RespectSLD				=	"Szacunek";
var int QuestStatus_Stoneplates;				const string QuestName_Stoneplates				=	"Kamienne tablice";
var int QuestStatus_StrongAlcohol;				const string QuestName_StrongAlcohol			=	"Mocna gorza³ka";
var int QuestStatus_SylvioGolems;				const string QuestName_SylvioGolems				=	"Dwa lodowe golemy dla Sylvia";
var int QuestStatus_TalbinRun;					const string QuestName_TalbinRun				=	"Muszê siê st¹d wydostaæ!";
var int QuestStatus_TeleportsADW;				const string QuestName_TeleportsADW				=	"Moc kamieni ogniskuj¹cych";
var int QuestStatus_TeleportsNW;				const string QuestName_TeleportsNW				=	"Kamienie teleportacyjne";
var int QuestStatus_TempleAccess;				const string QuestName_TempleAccess				=	"Dojœcie do œwi¹tyni";
var int QuestStatus_TempleChambers;				const string QuestName_TempleChambers			=	"Komnaty œwi¹tyni";
var int QuestStatus_TengronRing;				const string QuestName_TengronRing				=	"Pierœcieñ Tengrona";
var int QuestStatus_TheklaPacket;				const string QuestName_TheklaPacket				=	"Paczka zió³ dla Thekli";
var int QuestStatus_TheklaStew;					const string QuestName_TheklaStew				=	"Gulasz";
var int QuestStatus_ThorbenBless;				const string QuestName_ThorbenBless				=   "B³ogos³awieñstwo bogów";
var int QuestStatus_TorlofDMT;					const string QuestName_TorlofDMT				=	"Torlofa strach przed Z³ym";
var int QuestStatus_TorlofMilitia;				const string QuestName_TorlofMilitia			=	"Odpêdziæ stra¿";
var int QuestStatus_TorlofRent;					const string QuestName_TorlofRent				=	"Zebraæ czynsz";
var int QuestStatus_TraitorPedro;				const string QuestName_TraitorPedro				=	"Pedro zdrajca";
var int QuestStatus_TurnipsForHilda;			const string QuestName_TurnipsForHilda			=	"Zanieœæ rzepy Hildzie";
var int QuestStatus_TurnipsForLobart;			const string QuestName_TurnipsForLobart			=	"Zebraæ rzepê z pola";
var int QuestStatus_UltharChapels;				const string QuestName_UltharChapels			=	"Zbezczeszczone kapliczki";
var int QuestStatus_Urshak;						const string QuestName_Urshak					=	"Ur-Shak";
var int QuestStatus_VatrasMessage;				const string QuestName_VatrasMessage			=	"Wiadomoœæ Vatrasa";
var int QuestStatus_VatrasReplace;				const string QuestName_VatrasReplace			=	"Pomoc dla Vatrasa";
var int QuestStatus_VinoWine;					const string QuestName_VinoWine					=	"Za buletkê wina";
var int QuestStatus_VinoWinery;					const string QuestName_VinoWinery				=	"Winiarnia";
var int QuestStatus_WaterMages;					const string QuestName_WaterMages				=	"Magowie Wody";
var int QuestStatus_WaterRing;					const string QuestName_WaterRing				=	"Wodny Kr¹g";
var int QuestStatus_WhereIsJoe;					const string QuestName_WhereIsJoe				=	"Joe";
var int QuestStatus_WhereIsLance;				const string QuestName_WhereIsLance				=	"Stra¿ przednia Magów Wody";
var int QuestStatus_WhereIsPeck;				const string QuestName_WhereIsPeck				= 	"Gdzie jest Peck?";
var int QuestStatus_WhoStolePeople;				const string QuestName_WhoStolePeople			=	"Gdzie s¹ zaginieni ludzie?";

const string Note_Special					=   "Miejsca specjalne";
const string Note_Talents					=   "Opis talentów";
const string Note_Teachers					=	"Lista nauczycieli";
const string Note_Traders					=   "Lista handlarzy";

///******************************************************************************************
/// SetQuestStatus
///******************************************************************************************
func int SetQuestStatus (var string questName, var int oldStatus, var int newStatus)
{
	/// nowe zadanie
	if (oldStatus == LOG_NONE)
	&& (newStatus == LOG_RUNNING)
	{
		Log_CreateTopic (questName, LOG_MISSION);
		Log_SetTopicStatus (questName, LOG_RUNNING);
		Print_ExtPrcnt (-1, YPOS_QuestEntry, ConcatStrings(PRINT_QuestRunning, questName), FONT_ScreenSmall, COL_QuestRunning, TIME_Print);
		return LOG_RUNNING;
	};
	
	/// zadanie w trakcie
	if (oldStatus == LOG_RUNNING)
	&& (newStatus == LOG_RUNNING || newStatus == LOG_PROGRESS)
	{
		Print_ExtPrcnt (-1, YPOS_QuestEntry, ConcatStrings(PRINT_QuestProgress, questName), FONT_ScreenSmall, COL_QuestProgress, TIME_Print);
		return LOG_RUNNING;
	};
	
	/// zadanie wykonane
	if (oldStatus == LOG_NONE || oldStatus == LOG_RUNNING)
	&& (newStatus == LOG_SUCCESS)
	{
		Log_SetTopicStatus (questName, LOG_SUCCESS);
		Print_ExtPrcnt (-1, YPOS_QuestEntry, ConcatStrings(PRINT_QuestSuccess, questName), FONT_ScreenSmall, COL_QuestSuccess, TIME_Print);
		return LOG_SUCCESS;
	};
	
	/// zadanie nieudane
	if (oldStatus == LOG_RUNNING)
	&& (newStatus == LOG_FAILED)
	{
		Log_SetTopicStatus (questName, LOG_FAILED);
		Print_ExtPrcnt (-1, YPOS_QuestEntry, ConcatStrings(PRINT_QuestFailed, questName), FONT_ScreenSmall, COL_QuestFailed, TIME_Print);
		return LOG_FAILED;
	};
	
	/// zadanie anulowane
	if (oldStatus == LOG_RUNNING)
	&& (newStatus == LOG_CANCELED)
	{
		Log_SetTopicStatus (questName, LOG_NONE);
		Print_ExtPrcnt (-1, YPOS_QuestEntry, ConcatStrings(PRINT_QuestCanceled, questName), FONT_ScreenSmall, COL_QuestCanceled, TIME_Print);
		return LOG_NONE;
	};
	
	/// przestarza³e zadanie
	if (oldStatus == LOG_RUNNING)
	&& (newStatus == LOG_OBSOLETE)
	{
		Log_SetTopicStatus (questName, LOG_OBSOLETE);
		Print_ExtPrcnt (-1, YPOS_QuestEntry, ConcatStrings(PRINT_QuestObsolete, questName), FONT_ScreenSmall, COL_QuestObsolete, TIME_Print);
		return LOG_OBSOLETE;
	};
	
	return oldStatus;
};

///******************************************************************************************
/// SetNoteEntry
///******************************************************************************************
func void SetNoteEntry (var int type, var string topic, var string entry)
{
	if (type == LOG_NOTE)
	{
		Log_CreateTopic (topic, type);
	};
	Log_AddEntry (topic, entry);
	
	Print_ExtPrcnt (-1, YPOS_LogEntry, PRINT_NewLogEntry, FONT_ScreenSmall, COL_White, TIME_Print);
	//Snd_Play("LogEntry");	/// disabled simply because this sound is annoying
};
