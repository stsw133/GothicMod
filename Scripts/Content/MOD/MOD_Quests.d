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
var int QuestStatus_AkilSheeps;					const string QuestName_AkilSheeps				=	"Z�odzieje owiec";
var int QuestStatus_AlrikSword;					const string QuestName_AlrikSword				= 	"Miecz Alrika";
var int QuestStatus_AlwinFellan;				const string QuestName_AlwinFellan				= 	"Szalony Fellan";
var int QuestStatus_AngarAmulet;				const string QuestName_AngarAmulet				=	"Amulet Angara";
var int QuestStatus_AngusHank;					const string QuestName_AngusHank				=	"Angus i Hank";
var int QuestStatus_BaboDocs;					const string QuestName_BaboDocs					=	"Dokumenty Babo";
var int QuestStatus_BaboGarden;					const string QuestName_BaboGarden				=   "Babo i ogr�d";
var int QuestStatus_BaboTrain;					const string QuestName_BaboTrain				=	"Trening bojowy Babo";
var int QuestStatus_BackToShip;					const string QuestName_BackToShip				=	"Powr�t na okr�t";
var int QuestStatus_BalthasarSheeps;			const string QuestName_BalthasarSheeps			=	"Zakazane pastwisko";
var int QuestStatus_BaltramPacket;				const string QuestName_BaltramPacket			=	"Dostawa Baltrama";
var int QuestStatus_BaltramPirates;				const string QuestName_BaltramPirates			=	"Piracki handel";
var int QuestStatus_BaltramTrade;				const string QuestName_BaltramTrade				=	"Handel z Baltramem";
var int QuestStatus_BanditArmor;				const string QuestName_BanditArmor				=	"Zbroja bandyty";
var int QuestStatus_BanditCampAccess;			const string QuestName_BanditCampAccess			=	"Dost�p do obozu bandyt�w";
var int QuestStatus_Bandits;					const string QuestName_Bandits					=	"Listy go�cze";
var int QuestStatus_BanditTower;				const string QuestName_BanditTower 				=	"Wie�a bandyt�w";
var int QuestStatus_BanditTrader;				const string QuestName_BanditTrader				=	"Handlarz broni� dla bandyt�w";
var int QuestStatus_BecomeKDF;					const string QuestName_BecomeKDF				=	"Mag Ognia";
var int QuestStatus_BecomeMIL;					const string QuestName_BecomeMIL				=	"Cz�onek stra�y miejskiej";
var int QuestStatus_BecomeSLD;					const string QuestName_BecomeSLD				=	"Jeden z najemnik�w";
var int QuestStatus_BeliarWeapon;				const string QuestName_BeliarWeapon				=	"Szpon Beliara";
var int QuestStatus_BelieverPath;				const string QuestName_BelieverPath				=	"�cie�ka Wiernych";
var int QuestStatus_BengarMalak;				const string QuestName_BengarMalak				=	"Samotno�� i bezradno��";
var int QuestStatus_BilgotEscort;				const string QuestName_BilgotEscort				=	"Kl�twa Bilgota";
var int QuestStatus_BosperBow;					const string QuestName_BosperBow				=   "�uk Bospera";
var int QuestStatus_BosperFurs;					const string QuestName_BosperFurs				=   "Futra dla Bospera";
var int QuestStatus_BrandonBooze;				const string QuestName_BrandonBooze				=	"Gorza�ka dla Brandona";
var int QuestStatus_BringMiners;				const string QuestName_BringMiners				=	"Trzy kamienie � trzech kopaczy";
var int QuestStatus_BringRiordian;				const string QuestName_BringRiordian			=	"Riordian";
var int QuestStatus_BromorGold;					const string QuestName_BromorGold				=	"Z�ota misa Bromora";
var int QuestStatus_BrutusGold;					const string QuestName_BrutusGold				=	"Z�oto dla Brutusa";
var int QuestStatus_BrutusMeatbugs;				const string QuestName_BrutusMeatbugs			=	"Paskudna nora";
var int QuestStatus_BusterHorns;				const string QuestName_BusterHorns				=	"Rogi cieniostwora dla Bustera";
var int QuestStatus_CantharLetter;				const string QuestName_CantharLetter			=	"Wzgl�dy Canthara";
var int QuestStatus_CanyonOrcs;					const string QuestName_CanyonOrcs				=	"Orkowie w kanionie";
var int QuestStatus_Captain;					const string QuestName_Captain					=	"Kto b�dzie dowodzi� moim okr�tem?";
var int QuestStatus_CassiaCups;					const string QuestName_CassiaCups				= 	"Krwawe puchary";
var int QuestStatus_CassiaRing;					const string QuestName_CassiaRing				= 	"Pier�cie� Constantina";
var int QuestStatus_CavalornHut;				const string QuestName_CavalornHut				=	"Stara chata Cavalorna";
var int QuestStatus_CavalornLetter;				const string QuestName_CavalornLetter			=	"List do Vatrasa";
var int QuestStatus_CipherHerb;					const string QuestName_CipherHerb				=	"Za kilka zi� wi�cej";
var int QuestStatus_CipherPacket;				const string QuestName_CipherPacket				=	"Paczuszka z zielem";
var int QuestStatus_CityAccess;					const string QuestName_CityAccess				=	"Dost�p do miasta Khorinis";
var int QuestStatus_CityTopAccess;				const string QuestName_CityTopAccess			=   "Dost�p do g�rnego miasta";
var int QuestStatus_CityWork;					const string QuestName_CityWork					=   "Czeladnik z Khorinis";
var int QuestStatus_ClearCanyon;				const string QuestName_ClearCanyon				=	"Polowanie na brzytwiaki";
var int QuestStatus_ClearDemonTower;			const string QuestName_ClearDemonTower			=	"Powr�t do wie�y";
var int QuestStatus_ConstantinoPlants;			const string QuestName_ConstantinoPlants		=   "Zio�a dla Constantina";
var int QuestStatus_CoragonSilver;				const string QuestName_CoragonSilver			=	"Srebro Coragona";
var int QuestStatus_CordProve;					const string QuestName_CordProve				=	"Dobry wojownik";
var int QuestStatus_CrawlerArmor;				const string QuestName_CrawlerArmor				=	"Zbroja pe�zacza";
var int QuestStatus_Crew;						const string QuestName_Crew						=	"Nie mo�na podr�owa� bez za�ogi";
var int QuestStatus_DarOrcRing;					const string QuestName_DarOrcRing				=	"Bajer dla Dana";
var int QuestStatus_Dementors;					const string QuestName_Dementors				=	"Poszukiwacze";
var int QuestStatus_DiegoGold;					const string QuestName_DiegoGold				=	"Z�oto Diega";
var int QuestStatus_DiegoResidence;				const string QuestName_DiegoResidence			=	"Sprawa Diega";
var int QuestStatus_DragomirCrossbow;			const string QuestName_DragomirCrossbow			=	"Kusza Dragomira";
var int QuestStatus_DragonEggs;					const string QuestName_DragonEggs				=	"Smocze jaja";
var int QuestStatus_DragonHunt;					const string QuestName_DragonHunt				=	"Polowanie na smoki";
var int QuestStatus_DragonHunters;				const string QuestName_DragonHunters			=	"�owcy smok�w";
var int QuestStatus_DragonMaster;				const string QuestName_DragonMaster				=	"Pan smok�w";
var int QuestStatus_DrinkChallenge;				const string QuestName_DrinkChallenge			=	"Do dna";
var int QuestStatus_DyrianCrime;				const string QuestName_DyrianCrime				=   "Zbrodnia Dyriana";
var int QuestStatus_ElvrichLucia;				const string QuestName_ElvrichLucia				=	"Lucia";
var int QuestStatus_EngorMeat;					const string QuestName_EngorMeat				=	"Mi�so";
var int QuestStatus_ErolTheft;					const string QuestName_ErolTheft				=	"Napadni�ci kupcy";
var int QuestStatus_Esteban;					const string QuestName_Esteban					=	"Pr�ba zab�jstwa Estebana";
var int QuestStatus_FajethSnappers;				const string QuestName_FajethSnappers			=	"Polowanie na z�bacze";
var int QuestStatus_FakeMineDocs;				const string QuestName_FakeMineDocs				=	"Fa�szywe udzia�y w kopalni";
var int QuestStatus_FarimFish;					const string QuestName_FarimFish				=	"Problemy ze stra��";
var int QuestStatus_FarmerArmor;				const string QuestName_FarmerArmor				=	"Ubi�r roboczy Lobarta";
var int QuestStatus_FernandoNews;				const string QuestName_FernandoNews				=	"Informacje dla Fernanda";
var int QuestStatus_FerrosSword;				const string QuestName_FerrosSword				=	"Miecz Ferosa";
var int QuestStatus_FesterGiantbugs;			const string QuestName_FesterGiantbugs			=	"Polne bestie Festera";
var int QuestStatus_FireContest;				const string QuestName_FireContest				=	"Pr�ba Ognia";
var int QuestStatus_FiskPacket;					const string QuestName_FiskPacket				=	"Paczka dla Fiska";
var int QuestStatus_Flood;						const string QuestName_Flood					=	"Zatopione miasto";
var int QuestStatus_FrancoStoneplate;			const string QuestName_FrancoStoneplate			=	"Kamienna tablica na bagnie";
var int QuestStatus_GaanMonster;				const string QuestName_GaanMonster				=	"Prychaj�ca istota";
var int QuestStatus_GarettCompass;				const string QuestName_GarettCompass			=	"Kompas Garetta";
var int QuestStatus_GarvellNews;				const string QuestName_GarvellNews				= 	"Informacje dla Garvella";
var int QuestStatus_GeroldFood;					const string QuestName_GeroldFood				=	"G�odny Gerold";
var int QuestStatus_GoraxFood;					const string QuestName_GoraxFood 				=	"Baranie kie�baski";
var int QuestStatus_GoraxWine;					const string QuestName_GoraxWine 				=	"Dostawa wina";
var int QuestStatus_GregNW;						const string QuestName_GregNW					=	"Cz�owiek z opask� na oku";
var int QuestStatus_GromFood;					const string QuestName_GromFood					=	"G�odny Grom";
var int QuestStatus_GuildOfThieves;				const string QuestName_GuildOfThieves			=	"Gildia zlodziei";
var int QuestStatus_HakonBandits;				const string QuestName_HakonBandits				=   "Najazdy bandyt�w";
var int QuestStatus_HannaMap;					const string QuestName_HannaMap					=	"Kto� co� zgubi�?";
var int QuestStatus_HaradOrc;					const string QuestName_HaradOrc					=   "Wielkie wyzwanie";
var int QuestStatus_HealFortuno;				const string QuestName_HealFortuno				=	"Meandry umys�u";
var int QuestStatus_HealHilda;					const string QuestName_HealHilda				=	"Lekarstwo dla Hildy";
var int QuestStatus_HealRandolph;				const string QuestName_HealRandolph				=	"Lekarstwo dla Randolpha";
var int QuestStatus_HenryOwen;					const string QuestName_HenryOwen				= 	"Drewno na palisad�";
var int QuestStatus_HerbPacket;					const string QuestName_HerbPacket				= 	"Paczuszka pe�na ziela";
var int QuestStatus_HildaPan;					const string QuestName_HildaPan					=	"Patelnia dla Hildy";
var int QuestStatus_HousesOfRulers;				const string QuestName_HousesOfRulers			=	"Posiad�o�ci budowniczych";
var int QuestStatus_HunoPacket;					const string QuestName_HunoPacket				=	"Stal Huna";
var int QuestStatus_HyglasBook;					const string QuestName_HyglasBook				=	"Pot�ga Gwiazd";
var int QuestStatus_IgnazExperiment;			const string QuestName_IgnazExperiment			= 	"Eksperyment";
var int QuestStatus_InnosEye;					const string QuestName_InnosEye					=	"Oko Innosa";
var int QuestStatus_InnosEyeRitual;				const string QuestName_InnosEyeRitual			=	"Rytua� odwr�cenia";
var int QuestStatus_Irdorath;					const string QuestName_Irdorath					=	"Dw�r Irdorath";
var int QuestStatus_IsgarothMonster;			const string QuestName_IsgarothMonster			=	"Problemy Isgarotha";
var int QuestStatus_JackBandits;				const string QuestName_JackBandits				=	"Bandyci w latarni morskiej Jacka";
var int QuestStatus_JanSmith;					const string QuestName_JanSmith					=	"Jan i ku�nia";
var int QuestStatus_JarvisChallenge;			const string QuestName_JarvisChallenge			=	"Wyzwanie Jarvisa";
var int QuestStatus_JoraGold;					const string QuestName_JoraGold					=	"Kupieckie z�oto";
var int QuestStatus_JoraTheft;					const string QuestName_JoraTheft				=	"Bezczelny z�odziej";
var int QuestStatus_KarrasCharm;				const string QuestName_KarrasCharm				=	"Kr�tka wycieczka do miasta";
var int QuestStatus_KerolothTheft;				const string QuestName_KerolothTheft			=	"Okradziony Keroloth";
var int QuestStatus_KervoKillLurker;			const string QuestName_KervoKillLurker			=	"Topielce przy rzece";
var int QuestStatus_KickBullco;					const string QuestName_KickBullco				=	"Skopa� ty�ek Bullkowi";
var int QuestStatus_KillBrago;					const string QuestName_KillBrago				=	"Bandyci Cavalorna";
var int QuestStatus_KillGolem;					const string QuestName_KillGolem				=	"�yj�ca ska�a";
var int QuestStatus_KillHoshPak;				const string QuestName_KillHoshPak				=	"Hosh-Pak";
var int QuestStatus_KillJuan;					const string QuestName_KillJuan					= 	"Morderca Angusa i Hanka";
var int QuestStatus_KillRaven;					const string QuestName_KillRaven				=	"Kruk";
var int QuestStatus_KillTrollBlack;				const string QuestName_KillTrollBlack			=	"Sk�ra czarnego trolla";
var int QuestStatus_LaresReplace;				const string QuestName_LaresReplace				=	"Pomoc dla Laresa";
var int QuestStatus_LazyBronko;					const string QuestName_LazyBronko				=	"Leniwy farmer";
var int QuestStatus_LobartGiantbugs;			const string QuestName_LobartGiantbugs			= 	"Problemy na farmie Lobarta";
var int QuestStatus_LobartOrcProblem;			const string QuestName_LobartOrcProblem			=	"Lobarta problem z orkami";
var int QuestStatus_LoganSwampsharks;			const string QuestName_LoganSwampsharks			=	"Polowanie na b�otne w�e";
var int QuestStatus_LuteroClaws;				const string QuestName_LuteroClaws				=	"Pazury z�bacza dla Lutero";
var int QuestStatus_MakeRune;					const string QuestName_MakeRune					=	"Tworzenie runy";
var int QuestStatus_MalethBandits;				const string QuestName_MalethBandits			=	"Bandyci na farmie Lobarta";
var int QuestStatus_MalethChick;				const string QuestName_MalethChick				=	"Laska Maletha";
var int QuestStatus_MarcosProblem;				const string QuestName_MarcosProblem			=	"Pomoc dla Marcosa";
var int QuestStatus_MardukPray;					const string QuestName_MardukPray 				=	"Modlitwa za paladyn�w";
var int QuestStatus_MariaPlate;					const string QuestName_MariaPlate 				=	"Z�oty talerz Marii";
var int QuestStatus_MatteoGritta;				const string QuestName_MatteoGritta				=   "Matteo i Gritta";
var int QuestStatus_MissingPeople;				const string QuestName_MissingPeople			=	"Zaginieni ludzie";
var int QuestStatus_MissingSengrath;			const string QuestName_MissingSengrath			=	"Zguba w ciemno�ci";
var int QuestStatus_MonasteryAccess;			const string QuestName_MonasteryAccess			=	"Jak si� dosta� do klasztoru";
var int QuestStatus_MonasteryService;			const string QuestName_MonasteryService			=	"S�u�ba spo�eczno�ci";
var int QuestStatus_MorganBeach;				const string QuestName_MorganBeach				=	"Pla�a na p�nocy";
var int QuestStatus_MorganMeat;					const string QuestName_MorganMeat				=	"Mi�so dla Morgana";
var int QuestStatus_MyCrew;						const string QuestName_MyCrew					=	"Moja za�oga";
var int QuestStatus_NagurPacket;				const string QuestName_NagurPacket				=	"Fa�szywy pos�aniec";
var int QuestStatus_NeorasDragonEgg;			const string QuestName_NeorasDragonEgg			=	"Mikstura Neorasa ze smoczych jaj";
var int QuestStatus_NeorasPlants;				const string QuestName_NeorasPlants				=	"Siedem zi�";
var int QuestStatus_NeorasRecipe;				const string QuestName_NeorasRecipe  			=	"Zaginiony przepis";
var int QuestStatus_OldWorld;					const string QuestName_OldWorld					=	"Dowody dla Hagena";
var int QuestStatus_OpolosLibrary;				const string QuestName_OpolosLibrary			=   "Opolos i biblioteka";
var int QuestStatus_OpolosRecipe;				const string QuestName_OpolosRecipe				=	"Opolos i przepis";
var int QuestStatus_OrcElite;					const string QuestName_OrcElite					=	"Hordy orkowych wojownik�w";
var int QuestStatus_OricBrother;				const string QuestName_OricBrother				=	"Wie�ci dla Orica";
var int QuestStatus_Ornament;					const string QuestName_Ornament					=	"Portal";
var int QuestStatus_OwenMalcom;					const string QuestName_OwenMalcom				=	"Malcom";
var int QuestStatus_ParlanCleaning;				const string QuestName_ParlanCleaning			=	"Komnaty nowicjuszy";
var int QuestStatus_PeaceLetter;				const string QuestName_PeaceLetter				=	"Oferta pokoju";
var int QuestStatus_PepeWolves;					const string QuestName_PepeWolves				=	"Cztery wilki dla Pepe";
var int QuestStatus_PickForConstantino;			const string QuestName_PickForConstantino		=	"Zio�a dla Constantina";
var int QuestStatus_Quarhodron;					const string QuestName_Quarhodron				=	"Moc Stra�nika Umar�ych";
var int QuestStatus_RamirezSextant;				const string QuestName_RamirezSextant			= 	"Sekstans";
var int QuestStatus_RangerHelpKDF;				const string QuestName_RangerHelpKDF			=	"U�atwione przyj�cie do klasztoru";
var int QuestStatus_RangerHelpMIL;				const string QuestName_RangerHelpMIL			=	"U�atwione przyj�cie do stra�y";
var int QuestStatus_RangerHelpSLD;				const string QuestName_RangerHelpSLD			=	"U�atwione przyj�cie do najemnik�w";
var int QuestStatus_RatHunt;					const string QuestName_RatHunt					= 	"Polowanie na szczury";
var int QuestStatus_RedLight;					const string QuestName_RedLight					= 	"Afera z zielem";
var int QuestStatus_Relicts;					const string QuestName_Relicts					=	"Relikty";
var int QuestStatus_RescueBennet;				const string QuestName_RescueBennet				=	"Bennet siedzi w wi�zieniu";
var int QuestStatus_RescueGorn;					const string QuestName_RescueGorn				=	"Uratowa� Gorna";
var int QuestStatus_RichterButler;				const string QuestName_RichterButler			=	"Lokaj s�dziego";
var int QuestStatus_RichterHolyHammer;			const string QuestName_RichterHolyHammer		=	"�wi�ty M�ot dla s�dziego";
var int QuestStatus_RichterKillMorgahard;		const string QuestName_RichterKillMorgahard		=	"Zab�jstwo Morgaharda dla s�dziego";
var int QuestStatus_RichterShipPermission;		const string QuestName_RichterShipPermission	=	"Przepustka na statek od s�dziego";
var int QuestStatus_RoastGrog;					const string QuestName_RoastGrog				=	"Grog dla kucharza";
var int QuestStatus_RodSword;					const string QuestName_RodSword					=	"Miecz Roda";
var int QuestStatus_RosiRun;					const string QuestName_RosiRun					=	"Ucieczka Rosi";
var int QuestStatus_SagittaHerb;				const string QuestName_SagittaHerb				=	"S�oneczny aloes";
var int QuestStatus_ScoutBandits;				const string QuestName_ScoutBandits				=	"Szpiegowanie bandyt�w";
var int QuestStatus_ScoutMine;					const string QuestName_ScoutMine				=	"Kopacze i ruda";
var int QuestStatus_SekobDMT;					const string QuestName_SekobDMT					=	"Wygnany farmer";
var int QuestStatus_SekobRosi;					const string QuestName_SekobRosi				=	"Sekob t�skni za �on�";
var int QuestStatus_SekobOnar;					const string QuestName_SekobOnar				=	"Porozmawia� z Onarem o czynszu";
var int QuestStatus_SenyanProblem;				const string QuestName_SenyanProblem			=	"Fatalna sytuacja";
var int QuestStatus_SerpentesBringSalandril;	const string QuestName_SerpentesBringSalandril	=	"Przyprowadzi� Salandrila do klasztoru";
var int QuestStatus_Ship;						const string QuestName_Ship						=	"Potrzebuj� okr�tu";
var int QuestStatus_SkipGrog;					const string QuestName_SkipGrog					=	"Opuszczony Skip";
var int QuestStatus_Slaves;						const string QuestName_Slaves					=	"Niewolnicy Kruka";
var int QuestStatus_RespectSLD;					const string QuestName_RespectSLD				=	"Szacunek";
var int QuestStatus_Stoneplates;				const string QuestName_Stoneplates				=	"Kamienne tablice";
var int QuestStatus_StrongAlcohol;				const string QuestName_StrongAlcohol			=	"Mocna gorza�ka";
var int QuestStatus_SylvioGolems;				const string QuestName_SylvioGolems				=	"Dwa lodowe golemy dla Sylvia";
var int QuestStatus_TalbinRun;					const string QuestName_TalbinRun				=	"Musz� si� st�d wydosta�!";
var int QuestStatus_TeleportsADW;				const string QuestName_TeleportsADW				=	"Moc kamieni ogniskuj�cych";
var int QuestStatus_TeleportsNW;				const string QuestName_TeleportsNW				=	"Kamienie teleportacyjne";
var int QuestStatus_TempleAccess;				const string QuestName_TempleAccess				=	"Doj�cie do �wi�tyni";
var int QuestStatus_TempleChambers;				const string QuestName_TempleChambers			=	"Komnaty �wi�tyni";
var int QuestStatus_TengronRing;				const string QuestName_TengronRing				=	"Pier�cie� Tengrona";
var int QuestStatus_TheklaPacket;				const string QuestName_TheklaPacket				=	"Paczka zi� dla Thekli";
var int QuestStatus_TheklaStew;					const string QuestName_TheklaStew				=	"Gulasz";
var int QuestStatus_ThorbenBless;				const string QuestName_ThorbenBless				=   "B�ogos�awie�stwo bog�w";
var int QuestStatus_TorlofDMT;					const string QuestName_TorlofDMT				=	"Torlofa strach przed Z�ym";
var int QuestStatus_TorlofMilitia;				const string QuestName_TorlofMilitia			=	"Odp�dzi� stra�";
var int QuestStatus_TorlofRent;					const string QuestName_TorlofRent				=	"Zebra� czynsz";
var int QuestStatus_TraitorPedro;				const string QuestName_TraitorPedro				=	"Pedro zdrajca";
var int QuestStatus_TurnipsForHilda;			const string QuestName_TurnipsForHilda			=	"Zanie�� rzepy Hildzie";
var int QuestStatus_TurnipsForLobart;			const string QuestName_TurnipsForLobart			=	"Zebra� rzep� z pola";
var int QuestStatus_UltharChapels;				const string QuestName_UltharChapels			=	"Zbezczeszczone kapliczki";
var int QuestStatus_Urshak;						const string QuestName_Urshak					=	"Ur-Shak";
var int QuestStatus_VatrasMessage;				const string QuestName_VatrasMessage			=	"Wiadomo�� Vatrasa";
var int QuestStatus_VatrasReplace;				const string QuestName_VatrasReplace			=	"Pomoc dla Vatrasa";
var int QuestStatus_VinoWine;					const string QuestName_VinoWine					=	"Za buletk� wina";
var int QuestStatus_VinoWinery;					const string QuestName_VinoWinery				=	"Winiarnia";
var int QuestStatus_WaterMages;					const string QuestName_WaterMages				=	"Magowie Wody";
var int QuestStatus_WaterRing;					const string QuestName_WaterRing				=	"Wodny Kr�g";
var int QuestStatus_WhereIsJoe;					const string QuestName_WhereIsJoe				=	"Joe";
var int QuestStatus_WhereIsLance;				const string QuestName_WhereIsLance				=	"Stra� przednia Mag�w Wody";
var int QuestStatus_WhereIsPeck;				const string QuestName_WhereIsPeck				= 	"Gdzie jest Peck?";
var int QuestStatus_WhoStolePeople;				const string QuestName_WhoStolePeople			=	"Gdzie s� zaginieni ludzie?";

const string Note_Special					=   "Miejsca specjalne";
const string Note_Talents					=   "Opis talent�w";
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
	
	/// przestarza�e zadanie
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
