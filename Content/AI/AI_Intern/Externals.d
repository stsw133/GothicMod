//******************************************************************************************
//	PRINT
//******************************************************************************************
func void Print 				(var string s0) { };
// Ausgabebefehl, der Text ins Game schreibt (wie OutputunitTexte)
func void PrintMulti 			(var string s0, var string s1, var string s2, var string s3, var string s4) { };
// Printbefehl, der aus den angegebenen Strings einen Ausw�hlt und auf den Bildschirm schreibt
func void PrintDebug			(var string s)	 { };
// Printausgabe, die nur bei eingeschaltetem Debugmodus (Alt+D) im Spy/logfile ausgegeben wird
func void PrintScreen           (var int dialogNr, var string msg, var int posx, var int posy, var string font, var int timeSec) { };
// Gibt den Text 'msg' auf dem Bildschrim aus und benutzt dabei den Font 'font'.
// Die Position ist f�r jede Koordinate eine Zahl zwischen 0 und 99 und gibt die prozentuale Position an.
// Der Ursprung befindet sich oben links (also 0% X und 0% Y)

//******************************************************************************************
//	MISC
//******************************************************************************************
func int 	Hlp_Random 			(var int n0) { return 0; };
// erzeugt einen Zufallswert (wobei n0 Obergrenze : [0..n0-1] ) R�ckgabewert integer
func int    Hlp_StrCmp			(var string s1, var string s2) { return 0; };
// Hilfsfunktion um zwei Strings miteinander zu vergleichen liefert bei Gleichheit eins zur�ck
func int  	Hlp_IsValidNpc			(var C_NPC self)					{ return 0; };
// Pr�fe ob NSC-Instanz g�ltig und initialisiert ist. True/False
func int  	Hlp_IsValidItem			(var C_ITEM item)					{ return 0; };
// Pr�fe ob Item-Instanz g�ltig und initialisiert ist True/False

func int 	Hlp_IsItem 				(var C_Item item, var int instanceName)
// Pr�ft, ob der Gegenstand 'item' den Instanznamen 'instanceName' tr�gt. Will man z.B. testen,
// ob die globale Variable item Pfeile sind (ItMuArrow) ruft man Hlp_IsItem(item,ItMuArrow) auf.
// Gribt bei Gleichheit true, sonst false zur�ck.
func C_NPC 	Hlp_GetNpc				(var int instanceName) { };
// Ermittle einen NSC �ber den Instanznamen. Dieser kann einer Variablen zugewiesen werden und ist somit gezielt verf�gbar
func int 	Hlp_GetInstanceID 		(var C_NPC npc) { return 0; };
// liefert die interne ID ( nicht var aus der Instanz) zur�ck, um z.B. other mit self vergleichen zu k�nnen ( integer Vergleich)
func int 	Hlp_GetInstanceID 		(var C_ITEM item) { return 0; };
// liefert die interne ID ( nicht var aus der Instanz) zur�ck, um zwei items miteinander vergleichen zu k�nnen ( integer Vergleich)

//******************************************************************************************
//	WARTEN / ZEIT
//******************************************************************************************
func void 	AI_Wait 			(var C_NPC n0, var float n1) { };
// Character wird f�r n1 Sekunden in einen Wait-Zustand versetzt,
// d.h. er tut nichts, aber Treffer etc.(passive Wahrnehmung) werden registriert

func int	Npc_GetStateTime		(var C_NPC self) { return 0; };
// Liefert Anzahl Sekunden, wie lange der NSC sich in diesem Zustand im "Loop" befindet.
func void	Npc_SetStateTime		(var C_NPC self, var int seconds) { };
// _Setzt_ Anzahl Sekunden, wie lange der NSC sich in diesem Zustand im "Loop" befindet.
//--> Das ist dann �ber Npc_GetStateTime abfragbar.

func int	Wld_GetDay			() {};
// Liefert den aktuellen Tag zur�ck (Z�hler), hierbei ist der StartTag (Gamestart) = 0.
func int    Wld_IsTime			(var int hour1, var int min1, var int hour2, var int min2) { return 0; };
// Liefert "1" wenn aktuelle Weltzeit zwischen den beiden angegebenen Zeiten liegt (von - bis)

//******************************************************************************************
//	NSC-STEUERUNG
//******************************************************************************************
func void 	Wld_InsertNpc				(var int npcInstance, var string spawnPoint) 		{ };
// F�ge NSC in Welt ein. Wobei SPawnpoint entweder ein WP oder ein FP sein darf.
func void 	Wld_InsertNpcAndRespawn (var int instance, var string spawnPoint, var float spawnDelay)
// !!!!!!!! wei� ich nicht Genau Ulf

func void 	AI_PlayAni 				(var C_NPC n0, var string s0) { };
// Npc-Instanz spielt die angegebene Animation ab
func void	AI_StandUp				(var C_NPC self) {};
// - Ist der Nsc in einem Animatinsstate, wird die passende R�cktransition abgespielt.
// - Benutzt der NSC gerade ein MOBSI, poppt er ins stehen.
func void	AI_StandUpQuick 		(var C_NPC self)
// Wie AI_StandUp(), jedoch werden keine R�cktransitionen abgespielt, sondern auch dort wird
// sofort in den Grundzustand "gepoppt". Wichtig f�r sehr eilige Situationen!
func void 	AI_Quicklook			(var C_NPC self, var C_NPC other) { };
// NSC kurz ( 2 sec) anschauen ( nur Kopf bewegt sich )
func void 	AI_LookAt				(var C_NPC self, var string name) { };
// Schaue auf einen Wegpunkt (Wegpunktname angeben) oder auf ein anderes Objekt (Vobname angeben)
func void 	AI_LookAtNpc			(var C_NPC self, var C_NPC other) { };
// Schaue zu einem NSC
func void 	AI_StopLookAt			(var C_NPC self) { };
// wieder geradeaus schauen
func void 	AI_PointAt				(var C_NPC self, var string name) { };
// Zeige auf einen Wegpunkt (Wegpunktname angeben) oder auf ein anderes Objekt (Vobname angeben)
func void 	AI_PointAtNpc			(var C_NPC self, var C_NPC other) { };
// Zeige auf einen NSC
func void 	AI_StopPointAt			(var C_NPC self) { };
// nicht mehr auf etwas zeigen

func void 	AI_TakeItem				(var C_NPC self, var C_ITEM item) {};
// der Npc nimmt mit dieser Funktion die globale Item-Instanz auf
func void	AI_DropItem				(var C_NPC self, var int itemid) {};
// Item(itemid) wird auf den Boden fallen gelassen

func void 	AI_UseItem				(var C_NPC self, var int itemInstance) { };
// Item bis zum Ende benutzen
func void 	AI_UseItemToState		(var C_NPC self, var int itemInstance, var int state) 	{ };
// Item benutzen bis zum angegebenen State

func int	AI_UseMob				(var C_NPC self, var string schemeName, var int targetState) { return 0; };
// Benutze Mob mit angegebenen Schema-Namen bis zum Zustand "targetState". Wird diese Funktion aufgerufen
// und der angegebene 'targetState' ist bereits vorhanden, l�uft der NSC zwar trotzdem zum MOB, tut dann aber nichts
func int  	Wld_IsMobAvailable		(var C_NPC self, var string schemeName) {};
// Sucht sich ein Mobsi im Umkreis von 10m und liefert true falls gefunden. MOB wird nur zur�ckgeliefert, wenn es nicht besetzt ist.
func int	Wld_GetMobState			(var C_NPC self, var string schemeName );
// Liefert den State zum n�chsten Mob mit 'schemeName' zur�ck bzw. '-1' wenn kein solches Mob gefunden wurde

func void 	AI_SetWalkmode 			(var C_NPC n, var int n0 ) { };
// gibt an mit welchem Walkmode Run etc der Character durch das Level l�uft
//NPC_RUN			: Rennen
//NPC_WALK			: Gehen
//NPC_SNEAK			: Schleichen
//NPC_RUN_WEAPON	: Rennen mit gezogener Waffe
//NPC_WALK_WEAPON	: Gehen mit gezogener Waffe
//NPC_SNEAK_WEAPON	: Schleichen mit gezogener Waffe

func void 	AI_GotoWP 				(var C_NPC n0, var string s0) { };
// Npc-Instanz l�uft zum namentlich angegeben Waypoint
func void 	AI_GotoFP				(var C_NPC self, var string fpName) {};
// Sucht sich einen Freepoint im Umkreis von 20m vom NSC, bewegt sich dorthin und richtet sich entsprechend aus.
// Suchkriterium wie bei Wld_IsFPAvailable()
func void AI_GotoNextFP 			(var C_NPC self, var string fpName) { };
//wie AI_GotoFP() allerdings Suchkriterium wie bei Wld_IsNextFPAvailable()
func void 	AI_GotoNpc				(var C_NPC self, var C_NPC other) {};
// "self" geht zu "other"
func void 	AI_GotoItem				(var C_NPC self, var C_ITEM item) {};
// "self" geht zu "item"
func void 	AI_GotoSound 			(var C_NPC n0) { };
// Npc l�uft zum Sound
func void AI_Teleport				(var C_NPC self, var string waypoint);
// teleportiert den NSC zur angegebenene Location

func string Npc_GetNearestWP		(var C_NPC self) { return ""; };
// liefert den Namen des am n�chsten gelegenen Waypoints zur�ck
func string	Npc_GetNextWP			(var C_NPC self) { return ""; };
// Liefert den zweitnahesten WP vom NSC zur�ck

func int  Wld_IsFPAvailable			(var C_NPC self, var string fpName) {};
// Sucht einen Freepoint im Umkreis von 20m vom NSC und liefert true falls vorhanden und frei ('self' z�hlt als Blockierer nicht!) und sichtbar
func int  Wld_IsNextFPAvailable     (var C_NPC self, var string fpName)
//  wie Wld_IsFPAvailable(), aber es wird immer der nahegelegenste genommen und 'self' z�hlt als Blockierer!
func int  Npc_IsOnFP				(var C_NPC self, var string name)
// Abfrage darauf, ob der Nsc auf einem Freepoint mit name Teilstring steht
func int  Npc_IsWayBlocked			(var C_NPC self) {};
// Liefert "1", falls Weg von NSC durch Hindernis versperrt ist.

func void 	AI_TurnToNpc 			(var C_NPC n0, var C_NPC n1) { };
// drehe Dich zum angegeben (zweiten) Npc um
func void 	AI_TurnAway 			(var C_NPC n0, var C_NPC n1) { };
//Der NSC "self" dreht dem NSC "other" den R�cken zu.
func void	AI_WhirlAround			(var C_NPC self, var C_NPC other) {};
// schnelle Drehung zu other
func void 	AI_TurnToSound			(var C_NPC self) { };
// Charakter dreht sich zur Ger�uschquelle
func void   AI_AlignToWP			(var C_NPC self) { };
// richtet den Nsc am Waypoint aus (im Spacer gesetzte Pfeilrichtung)
func void 	AI_Dodge 				(var C_NPC npc ) { };
// Der Nsc weicht ein St�ck nach hinten aus

func void 	Mdl_ApplyOverlayMds 	(var C_NPC n0, var string s1) { };
// mit diesem Befehl werden Animationen auf einem h�heren Layer gestartet
// (z.B. hat der Zombie ein Overlay �ber die normalen Human-Animationen)
func void 	Mdl_RemoveOverlayMDS	(var C_NPC self, var string overlayName) {};
// Entferne ein Overlay-MDS
func void	Mdl_ApplyOverlayMDSTimed	(var C_NPC self, var string overlayname, var float timeTicks);
// Overlay-MDS wird gestartet und automatisch nach der angegebenen Zeit abgeschaltet

func void 	Mdl_ApplyRandomAni 		(var C_NPC n0, var string s1, var string s2) { };
// F�gt Zufallsanimationen (am Kopf kratzen, an den Sack packen etc (s2)) f�r bestimmte Animationszust�nde (s1) ein
func void 	Mdl_ApplyRandomAniFreq 	(var C_NPC n0, var string s1, var float f2 ) { };
// hiermit kann die Frequenz betimmt werden, wie oft die f�r den Animationszustand (s1) deklarierten Randomanis abgespielt werden

func void	Mdl_StartFaceAni	(var C_NPC self, var string name, var float intensity, var float holdTime) {};
// Starte Gesichtsanimation // intensity 1 = 100% // holdTime -1 = forever
func void	Mdl_ApplyRandomFaceAni	(var C_NPC self, var string name, var float timeMin, var float timeMinVar, var float timeMax, var float timeMaxVar, var float probMin) {};
// Starte zuf�llige Gesichtsanimation
// Mdl_ApplyRandomFaceAni ( self, ANINAME, minTime, minTimeVar, maxTime, maxTimeVar, probMin)
// minTime  = Minimum an Zeit nachdem Ani startet (in Sekunden)
// maxTime  = Maximum an Zeit nachdem Ani startet (in Sekunden)
// minTimevar = Abweichung von minTime (in Sekunden)
// maxTimevar = Abweichung von maxTime (in Sekunden)
// probMin  = Wahrscheinlichkeit [0..1] ob obere oder untere Grenze der Abweichung benutzt wird

func int  	Npc_GetBodyState			(var C_NPC self)					{ return 0; };
// Ermittle BodyState ( Liefert BS_-Konstanten )
// !!! VORSICHT !!!: Diese Funktion gibt den Bodystate mit allen eventuellen
// ver-oderten Modifiern wie "brennend". Besser 'C_BodyStateContains(self,bodystate)' benutzen
func int 	Npc_HasBodyFlag				(var C_NPC self, var int bodyFlag) 			{};
// Liefert >0, falls BodyFlag gesetzt ist.
func void AI_PlayAniBS (var C_NPC npc, var string aniname, var int bodystate) { };
// Beim Abspielen einer Ani mit diesem Befehl kann ein Bodystate angemeldet werden

//******************************************************************************************
//	KAMPF
//******************************************************************************************
func void 	Npc_SetToFistMode 		(var C_NPC self) { };
// Setzt den NSC beim Start in den Faustkampfmodus (zB.Monster)
func void 	Npc_SetToFightMode 		(var C_NPC self, var int weapon) { };
// Setzt den NSC beim Start in den der Waffe entsprechenden Kampfmodus (Waffe wird erzeugt)
func int	Npc_IsInFightMode		(var C_NPC self, var int fmode)	  { return 0; };
// liefert eins zur�ck, wenn der Charakter im angegebenen Fightmode (z.B. FMODE_MAGIC) ist

func void 	AI_DrawWeapon 				(var C_NPC n0) { };
// Equipte Waffe wird gezogen
func void 	AI_ReadyMeleeWeapon			(var C_NPC self) {};
// Ziehe equippte Nahkampfwaffe
func void 	AI_ReadyRangedWeapon		(var C_NPC self) {};
// Ziehe equippte Fernkampfwaffe
func void 	AI_RemoveWeapon 			(var C_NPC n0) { };
// Gezogene Waffe wird weggesteckt

func C_Item Npc_GetReadiedWeapon		(var C_NPC n0) { };
// Liefert die gezogene Waffe des NSCs.

func int  	Npc_HasReadiedWeapon		(var C_NPC self) { return 0; };
// gibt eins zur�ck, wenn die Waffe schon in der Hand ist
func int  	Npc_HasReadiedMeleeWeapon 	(var C_NPC self) { return 0; };
// Nahkampfwaffe in der Hand
func int  	Npc_HasReadiedRangedWeapon	(var C_NPC self) { return 0; };
// Fernkampfwaffe in der Hand
func int	Npc_HasRangedWeaponWithAmmo	(var C_NPC npc)
// Gibt true zur�ck, wenn 'npc' irgendeine Fernkampfwaffe im Inventory oder in der Hand hat UND
// dazu auch passende Munition vorhanden ist. Sonst false.

func int  	Npc_GetTarget				(var C_NPC self)
// Bef�llt 'other' mit dem aktuellen Ziel. Das aktuelle Ziel wird intern gespeichert, wird
// durch Npc_SetTarget() bzw. Npc_GetNextTarget() gesetzt.
// - return:	aktuelles Ziel gespeichert 	-> true
//				kein Ziel gespeichert		-> false
func int 	Npc_GetNextTarget 			(var C_NPC self)
// Aktive Suche nach einem Gegner. Wird ein Gegner gefunden, so wird er als internes Ziel
// �bernommen und in 'other' geschrieben, wenn kein Gegner gefunden wurde wird das
// interne Ziel gel�scht und 'other' ung�ltig gemacht.
// Kriterien:	1. gesetzter Gegner, der nicht tot/bewu�tlos ist wird genommen...
//				2. ...dann der n�chstbeste aNSC demgegen�ber 'self' HOSTILE ist (auch weder tot noch bewu�tlos)
// - return:	neues Ziel gefunden	-> true
//				kein Ziel gefunden	-> false
// VORSICHT:	Beruht auf der aktuellsten VOB-Liste, die durch aktive Wahrnehmungen oder durch
//				Npc_PerceiveAll() erstellt wurde. Wird diese Funktion in einem Zustand ohne aktive
//				Wahrnehmungen benutzt, mu� vorher ein Npc_PerceiveAll() aufgerufen werden
func int 	Npc_IsNextTargetAvailable 	(var C_NPC self)
// Sucht genauso wie Npc_GetNextTarget nach einem neuen Ziel, �berschreibt aber weder
// das interne Ziel, noch 'other'
// - return:	neues Ziel gefunden	-> true
//				kein Ziel gefunden	-> false
// VORSICHT:	Beruht auf der aktuellsten VOB-Liste, die durch aktive Wahrnehmungen oder durch
//				Npc_PerceiveAll() erstellt wurde. Wird diese Funktion in einem Zustand ohne aktive
//				Wahrnehmungen benutzt, mu� vorher ein Npc_PerceiveAll() aufgerufen werden
func void 	Npc_SetTarget 				(var C_NPC self, var C_NPC other)
// Gibt dem Nsc 'self' das interne Ziel 'other'.
// QUATSCH bzw. klar: --> Nur wenn per GetTarget auch der other "geholt" wird ist er vorhanden, da hier interne Variablen,
// die in den Skripten nicht vorhanden sind verwendet werden
func void 	AI_Attack					(var C_NPC self)
// Startet Kampf AI (sollte in der ZS_Attack-Loop stehen)
// Es wird das interne Ziel verwendet, das mit Npc_SetTarget() oder Npc_GetNextTarget() gesetzt
// wurde.
func void 	AI_FinishingMove 			(var C_NPC self, var C_NPC other)
// F�hrt den logischen Finishing Move inklusive Anis aus den Skripten heraus aus
func void	AI_Defend					(var C_NPC self)
// Der Befehl ist als Overlay-Message implementiert. Das heisst, dass er neben anderen Nachrichten
// aktiv bleibt. Er wird erst beendet, wenn der NPC eine Parade (ausgeloest durch die Attacke eines
// anderen NPCs) durchgefuert hat.

func void	AI_Flee						(var C_NPC self) {};
// Der Befehl muss, wie AI_Attack(), in der ZS-Loop regelmaessig aufgerufen werden und setzt voraus, dass
// vorher mit Npc_SetTarget( self, <var c_npc enemy> ) ein Gegner gesetzt wurde, vor dem der Npc fliehen soll.
func void  	AI_AimAt					(var C_NPC attacker, var C_NPC target)	{};
// !!! zielen mit FK???
func void 	AI_ShootAt					(var C_NPC attacker, var C_NPC target)	{ };
// !!! schie�en mit FK
func void	AI_StopAim					(var C_NPC attacker)	{ };
// !!! stoppt das zielen mit FK ???

func int  	Npc_AreWeStronger			(var C_NPC self, var C_NPC other)			{ return 0; };
// ermittelt den st�rkeren Nsc,
//Wenn die Summe der Level aller NPCs (human, Monster), die zu mir feindlich sind und die zu <other> freundlich sind
//MEHR ALS DOPPELT SO HOCH ist (x  > 2*y), wie die Summe der Level aller Leute, die zu mir freundlich sind, und die
//zu <other> feindlich sind, dann NEIN,
//sonst JA (= wir SIND st�rker, nicht echt, aber ab doppelter Gegnerst�rke zu fliehen ist fr�h genug, sonst kommen
//die Jungs aus dem Rennen nicht mehr raus
//Beachten:
//1) Monster k�nnen feindlich zu beiden Menschen sein --> egal, z�hlen auf beiden Seiten
//2) Jemand, der z.B. zu mir freundlich und zu <other> feindlich ist, wird demnach doppelt gewertet --> ok so
func int	Npc_IsAiming				(var C_NPC self, var C_NPC other) { return 0; };
// liefert eins zur�ck, wenn der zweite Character auf den ersten zielt (Fernkampfwaffen und Zauber)

//******************************************************************************************
//	ITEMS
//******************************************************************************************
func void 	Wld_InsertItem				(var int itemInstance, var string spawnPoint) 		{ };
// F�ge Item in Welt ein entweder an einem WP oder einem FP
// Vorsicht, funktioniert nicht, Items werden immer im Mittelpunkt der Welt inserted
func void	AI_LookForItem				(var C_NPC self, var int instance) {};
// gibt die M�glichkeit nach bestimmten Items zu suchen (z.B.:Das goldene Schwert der Zerst�rung, wenn vorhanden)
func int  	Wld_RemoveItem          	(var C_ITEM item)		{ };
// !!! hiermit wird das globale Item aus der Welt gel�scht ???

func void 	CreateInvItem 				(var C_NPC n0, var int n1) { };
//  gibt der angegebenen Instanz (self oder other) ein Item ins Inventory
func void 	CreateInvItems 				(var C_NPC n0, var int n1, var int n2) { };
// wie vorherige Funktion, nur das Multi-Items (z.B.: 100 Pfeile) ins Inventory kreiert werden
func C_Item Npc_GetInvItem				(var C_NPC self, var int itemInstance) 	{};
// Ermittle ItemInstanz aus Inventory
func int	Npc_HasItems				(var C_NPC n0, var int itemInstance) { return 0; };
// Liefert "1", wenn NSC die angegebene Anzahl von Items besitzt.-> NpcHasItem ist damit obsolete
func int  	Npc_GetInvItemBySlot    	(var C_NPC self, var int category, var int slotNr)
// Mit diesem Befehl l��t sich nachsehen, ob in einem bestimmten Slot einer bestimmten Kategorie ein item vorhanden ist
// ist das der Fall, wird dieses Item in die globale Variable item geschrieben
// gibt jetzt die Anzahl zurueck, wenn das Item stackable ist
//. Den Transfer machst Du dann per Npc_RemoveInvItems() und Npc_CreateInvItems().
func void 	Npc_RemoveInvItem			(var C_NPC owner, var int itemInstance)	{};
// !!! das globale Item wird gel�scht ???
func void	Npc_RemoveInvItems			(var C_NPC owner, var int itemInstance, var int amount)	{ };
// !!! wie Npc_RemoveInvItem, nur das Multislotgegenst�nde gel�scht werden ???

func void 	Mob_CreateItems				(var string mobName, var int itemInstance, var int amount) {};
// Erzeuge "amount" Items der Instanz "itemInstance" in oCMobContainer mit angegebenen Vobnamen.
func int  	Mob_HasItems				(var string mobName, var int itemInstance) { return 0; };
// Liefere Anzahl der Items der Instanz "itemInstance" in oCMobContainer mit angegebenen Vobnamen

func void 	EquipItem 					(var C_NPC n0, var int n1) { };
// gibt dem Nsc direkt das angegebene Item an den G�rtel
func void 	AI_EquipBestMeleeWeapon		(var C_NPC self) {};
// sucht im Inventory nach der besten Nahkampfwaffe und h�ngt sie an den G�rtel
func void 	AI_EquipBestRangedWeapon	(var C_NPC self) {};
// sucht im Inventory nach der besten Fernkampfwaffe und ploppt sie auf den R�cken der Instanz
func void 	AI_EquipBestArmor			(var C_NPC self) {};
// Wunder, Wunder hier wird die beste im Inventory vorhandene R�stung angezogen
func void 	AI_UnequipWeapons			(var C_NPC self) {};
// Unequippe alle Waffen
func void 	AI_UnequipArmor				(var C_NPC self) {};
// Unequippe aktuelle R�stung
func void	AI_EquipArmor				(var C_NPC owner, var C_ITEM armor_from_owners_inventory)

func C_Item Npc_GetEquippedMeleeWeapon 	(var C_NPC n0) { };
// Liefert die gegurtete Nahkampfwaffe des NSCs.
func C_Item Npc_GetEquippedRangedWeapon (var C_NPC n0) { };
// Liefert die gegurtete Fernkampfwaffe des NSCs.
func C_Item Npc_GetEquippedArmor 		(var C_NPC n0) { };
// Liefert die angelegte R�stung des NSCs.

func int  	Npc_HasEquippedWeapon		(var C_NPC self) { return 0; };
// gibt eins zur�ck, wenn die abgefragte Instanz (self oder other) eine Waffe sichtbar mit sich rumtr�gt
func int  	Npc_HasEquippedMeleeWeapon	(var C_NPC self) { return 0; };
// gibt eins zur�ck, wenn eine Nahkampfwaffe Equipped ist
func int  	Npc_HasEquippedRangedWeapon	(var C_NPC self) { return 0; };
// Fernkampwaffe auf dem R�cken True/False
func int  	Npc_HasEquippedArmor		(var C_NPC self) { return 0; };
// Armor angezogen True/False

func int  	Npc_OwnedByNpc				(var C_ITEM item, var C_NPC npc) { return 0; };
// Liefert "1", wenn dem NSC das Item geh�rt ( pers�nliches Besitzflag )
func int  	Npc_OwnedByGuild			(var C_ITEM item, var int guild) { return 0; };
// Liefert "1", wenn der angegebenen Gilde das Item geh�rt ( Gildenbesitz )
func int 	Npc_IsDetectedMobOwnedByNpc	(var C_NPC user, var C_NPC owner) { return 0; };
// Liefert >0, falls "owner" der Besitzer des vom "user" benutzten Mob ist.
// VORSICHT: Diese Funktion ist nur in Verbindung mit PERC_MOVEMOB erlaubt !!!
func int 	Npc_IsDetectedMobOwnedByGuild(var C_NPC user, var int ownerguild) { return 0; };
//Liefert >0, falls "ownerguild" der Besitzer des vom "user" benutzten Mob ist.
// VORSICHT: Diese Funktion ist nur in Verbindung mit PERC_MOVEMOB erlaubt !!!

func void 	Npc_GiveItem 				(var C_NPC n0, var C_ITEM n1, var C_NPC n2) { };
//Der NSC "self" gibt den NSC "other" den angegebenen Gegenstand "item". Der Gegenstand wandert sofort ins Inventory des anderen.
func int 	Npc_StartItemReactModules	(var C_NPC self, var C_NPC other, var C_ITEM item) { return 0; };
// Pr�fe alle ItemReact-Module von "self" auf Gegenstand "item" von Geber "other" und starte passende Reaction-Funktion
//liefert True beim finden eines Moduls
func int  	Npc_HasOffered				(var C_NPC self, var C_NPC other, var int itemInstance) { return 0; };
//Bietet Spieler dem NSC einen Gegenstand �bers Trade-Modul an ? True/False

//////////////////////////////////////////////////////////////////////////////
//
//		GAME, SESSION, VIDEO, CHAPTER
//
//////////////////////////////////////////////////////////////////////////////
func void	ExitGame			() {};

								// Beendet Gothic.

func void	ExitSession			() {};

								// Beendet das laufende Spiel.

func int	PlayVideo			(var string Filename) {};

								// Spielt eine Videodatei ab.
								//
								//	Filename	- Dateiname des Videos (mit Dateierweiterung, relativ zu [VIDEOS]\ )
								//	[result]	- Boolean ob erfolgreich abgespielt

func int	PlayVideoEx			(var string Filename, var int ScreenBlend, var int ExitSession) {};

								// Spielt eine Videodatei mit erweiterten Optionen ab.
								//
								//	Filename	- Dateiname des Videos (mit Dateierweiterung, relativ zu [VIDEOS]\ )
								//	ScreenBlend	- Boolean ob Effekt 'BLACK_SCREEN' danach abgespielt wird (nicht bei ExitSession)
								//	ExitSession	- Boolean ob nach dem Video die Session beendet wird
								//	[result]	- Boolean ob erfolgreich abgespielt, bei ExitSession immer erfolgreich

func void	SetPercentDone		(var int PercentDone) {};

								// Setz die Fortschrittsanzeige im Ladebalken.
								//
								//	PercentDone	- Aktueller Fortschritt des Ladevorgangs in Prozent (0-100)

func void	IntroduceChapter	(var string Titel, var string Untertitel, var string Texture, var string Sound, var int WaitTime) {};

								// Zeigt den Kapitelwechsel-Bildschirm an.
								//
								//	Titel		- Text des Titels
								//	Untertitel	- text des Untertitels
								//	Texture		- Dateiname der Hintergrundtextur
								//	Sound		- Dateiname des abgespielten Sounds
								//	WaitTime	- Anzahl in Millisekunden, die der Bildschirm angezeigt wird

//////////////////////////////////////////////////////////////////////////////
//
//		MAPS and DOCUMENTS
//
//////////////////////////////////////////////////////////////////////////////
func int	Doc_Create			() {};

								// Erzeugt ein Dokument.
								//
								//	[result]	- Handle auf das Dokument (-1 = konnte nicht erzeugt werden)

func int	Doc_CreateMap		() {};

								// Erzeugt ein Dokument (Karte).
								//
								//	[result]	- Handle auf das Dokument (-1 = konnte nicht erzeugt werden)

func void	Doc_SetPages		(var int Document, var int Count) {};

								// Setzt die Anzahl der Seiten eines Dokuments.
								//
								//	Document	- Handle auf das Dokument
								//	Count		- Anzahl der Seiten

func void	Doc_SetPage			(var int Document, var int Page, var string Texture, var int Scale) {};

								// Setzt die Hintergrund-Textur der Seite eines Dokuments.
								//
								//	Document	- Handle auf das Dokument
								//	Page		- Index der Seite (beginnt mit 0, -1 = alle)
								//	Scale		- Flag ob Textur gestreckt werden soll

func void	Doc_SetMargins		(var int Document, var int Page, var int Left, var int Top, var int Right, var int Bottom, var int Pixels) {};

								// Setzt den jeweiligen Rand einer/aller Seite(n) (vom Rand der mit Doc_SetPage gesetzten Textur aus gesehen).
								//
								//	Document	- Handle auf das Dokument
								//	Page		- Index der Seite (beginnt mit 0, -1 = alle)
								//	Left		- linker Rand
								//	Top			- oberer Rand
								//	Right		- rechter Rand
								//	Bottom		- unterer Rand
								//	Pixel		- Flag ob Angaben in Pixeln (Bildschirm) oder virtuellen Koordinaten (0-8192)

func void	Doc_SetFont			(var int Document, var int Page, var string Font) {};

								// Setzt den Font einer/aller Seite(n).
								//
								//	Document	- Handle auf das Dokument
								//	Page		- Index der Seite (beginnt mit 0, -1 = alle)
								//	Font		- Dateiname der Font-Textur (ohne Pfad - z.B. 'Font_Default.tga')

func void	Doc_SetLevel		(var int Document, var string Level) {};

								// Setzt das Level-ZEN zur Anzeige der Spieler-Position (Karten).
								//
								// (als Grenze gilt die BBox des statischen Level-Meshes)
								//	Document	- Handle auf das Dokument
								//	Level		- Dateiname des Level-ZENs (mit Pfad ab WORLDS - z.B. 'NewWorld\NewWorld.zen')

func void	Doc_SetLevelCoords	(var int Document, var int Left, var int Top, var int Right, var int Bottom) {};

								// Setzt die Grenzen des Level-Bereichs, der durch die Textur abgedeckt wird (Karten).
								//
								// (als Grenzen werden _absolute_ Level-Koordinaten angegeben - z.B.: '..., -28000, 50500, 95500, -42500')
								//	Document	- Handle auf das Dokument
								//	Left		- linke Grenze
								//	Top			- obere Grenze
								//	Right		- rechte Grenze
								//	Bottom		- untere Grenze

func void	Doc_PrintLine		(var int Document, var int Page, var string Text) {};

								// Setzt den Text einer Seite. Der Text wird _nicht_ umgebrochen.
								//
								//	Document	- Handle auf das Dokument
								//	Page		- Index der Seite (beginnt mit 0)
								//	Text		- Textzeile

func void	Doc_PrintLines		(var int Document, var int Page, var string Text) {};

								// Setzt den Text einer Seite. Der Text wird umgebrochen falls notwendig.
								//
								//	Document	- Handle auf das Dokument
								//	Page		- Index der Seite (beginnt mit 0)
								//	Text		- Textzeilen

func void	Doc_Show			(var int Document) {};

								// Zeigt das Dokument auf dem Bildschirm an.
								//
								//	Document	- Handle auf das Dokument

// - OBSOLETE -
// func void	Doc_Open			(var string Texture) {};
// func void	Doc_Font			(var string Font) {};
// func void	Doc_Print			(var string Text) {};
// func void	Doc_MapCoordinates	(var string Level, var float GameX1, var float GameY1, var float PixelX1, var float PixelY1,
//									var float GameX2, var float GameY2, var float PixelX2, var float PixelY2) {};

//******************************************************************************************
//	DIALOGE
//******************************************************************************************
func void	AI_Output					(var C_NPC self, var C_NPC target, var string outputName) {};
// Cutscene mit entsprechender Id wird abgenudelt
func void	AI_OutputSVM				(var C_NPC self, var C_NPC target, var string svmname) {};
// Outputbefehl um Svms abzuspielen
func void	AI_OutputSVM_Overlay		(var C_NPC self, var C_NPC target, var string svmname) {};
// wie AI_OutputSVM, wartet jedoch NICHT mit der Ausf�hrung des n�chsten AI_...-Befehls, bis
// das SVM zuende gespielt wird. (F�r Kommentare kurz vor und w�hrend dem Kampf!)
func void	AI_WaitTillEnd				(var C_NPC self, var C_NPC other) {};
// 'self' wartet bis 'other' seinen laufenden AI-Befehl zu Ende gespielt hat (funzt allerdings nicht bei AI-Overlays!)

func void 	AI_Ask 						(var C_NPC self, var func anserYes, var func answerNo) { };
// die angegeben Instanz (self), gibt eine Frage aus und verweist auf die selbst zu definierenden Funktionen,
// die f�r die F�lle Spieler sagt ja (Daumen nach oben) und Spieler sagt nein (Daumen unten) vorhanden sein m�ssen
func void 	AI_AskText              	(var C_NPC self, var func funcYes, var func funcNo, var string strYes, var string strNo);
// wie AI_Ask, nur das au�er den Funktionen auch noch Strings f�r die Antworten Ja/Nein mit angegeben werden k�nnen
func void 	AI_WaitForQuestion			(var C_NPC self, var func scriptFunc) { };
// NSC wartet 20 Sekunden, wird er in dieser Zeit vom Spieler angesprochen, wird die angegebene SkriptFunktion ausgef�hrt.

func void 	Npc_SetRefuseTalk			(var C_NPC self, var int timeSec) { };
// Dialog Refuse Counter aus "x" Sekunden setzen
func int  	Npc_RefuseTalk				(var C_NPC self) { return 0; };
// Abfrage ob Dialog-Refuse Counter noch aktiv ist True/False

//******************************************************************************************
//	NEWS
//******************************************************************************************
func void	Npc_MemoryEntry				(var C_NPC self, var int source, var C_NPC offender, var int newsid, var C_NPC victim) { };
// mit dieser Funktion wird eine NSC bezogene News geschrieben newsid		:	News ID source >	0	:	"gossip", ansonsten	"witness",
// self:	NSC, bei dem News eingespeist werden soll, other:	T�ter victim :	Opfer
func void	Npc_MemoryEntryGuild		(var C_NPC self, var int source, var C_NPC offender, var int newsid, var C_NPC victimguild) { };
// wie MemoryEntry nur, das die Memory f�r die ganze Gilde kreiert wird
func int    Npc_HasNews					(var C_NPC self, var int newsID, var C_NPC offender, var C_NPC victim)	{};
// Liefert Newsnummer>0 (f�r weitere Referenzen) falls entsprechende News vorhanden.
// Nicht ben�tigte Parameter k�nnen mit "NULL" leergelassen werden
func int    Npc_IsNewsGossip			(var C_NPC self, var int newsNumber) {};
// Liefert >0, falls News "Gossip" ist
func C_NPC  Npc_GetNewsWitness			(var C_NPC self, var int newsNumber) {};
// Ermittle Zeuge der News und gibt eine INstanz der Klasse C_Npc zur�ck
func C_NPC  Npc_GetNewsVictim			(var C_NPC self, var int newsNumber) {};
// Ermittle Opfer der News und gibt eine INstanz der Klasse C_Npc zur�ck
func C_NPC 	Npc_GetNewsOffender 		(var C_NPC self, var int newsNumber) { return 0; };
// Ermittelt T�ter der News und gibt eine INstanz der Klasse C_Npc zur�ck

//******************************************************************************************
//	MISSIONS
//******************************************************************************************
func int 	Npc_IsDead 					(var C_NPC n0) { return 0; };
// Funktion liefert einen Wert zur�ck, falls Dead true ist
func int	Npc_KnowsInfo 				(var C_NPC self, var int infoInstance) { return 0; };
// Liefert true, wenn der angegebene Spieler die Info schon einmal erhalten hat.
// VORSICHT: auch wenn eine permanente Info schon einmal dem Spieler erz�hlt wurde, so gibt diese Funktion trotzdem false zur�ck!
func int  	Npc_CheckInfo				(var C_NPC npc, var int important) { return 0; };
// �berpr�ft,ob der NSC g�ltige Infos f�r den Spieler hat und startet diese gegebenenfalls (Returnwert "1").
func int  	NPC_GiveInfo				(var C_NPC npc, var int important) { return 0; };
// �berpr�ft,ob der NSC eine (!) g�ltige Info f�r den Spieler hat und startet diese gegebenenfalls (Returnwert "1").
func int  	Npc_CheckAvailableMission	(var C_NPC npc, var int missionState, var int important) { return 0; };
// Pr�fe ob zwischen dem NSC eine aktuelle Mission (AVAILABLE,RUNNING) besteht und vergleiche den Status mit den angegebenen.
// Falls dieser identisch ist, wird "1" geliefert.
func int  	Npc_CheckRunningMission		(var C_NPC npc, var int important) { return 0; };
// �berprueft ob zwischen dem NSC und dem Spieler eine laufende Mission besteht und startet den entsprechenden Skriptblock.
// (Returnwert 1 : Mission aktiv)
func int  	Npc_CheckOfferMission		(var C_NPC npc, var int important) { return 0; };
// �berprueft ob der NSC dem Spieler einen Auftrag anbieten kann, wenn ja, wird der Offer-Block gestartet und "1" zur�ckgeliefert.
func void 	Mis_SetStatus				(var int missionName, var int newStatus) {};
// Setzt den Status einer Mission ( Bezogen auf den Spieler ) -> RUNNING, SUCCESS, FAILED etc. )
func int  	Mis_GetStatus				(var int missionName) { return 0; };
// Liefert aktuellen Status einer Mission zur�ck ( Bezogen auf den Spieler ) -> RUNNING, SUCCESS, FAILED etc.
func int  	Mis_OnTime					(var int missionName) { return 0; };
// Liefert true, wenn sich Spieler noch innerhalb des Zeitlimits f�r diese Mission befindet
func void	AI_StopProcessInfos			(var C_NPC npc)
// ???

//******************************************************************************************
//	PLAYER
//******************************************************************************************
func int	Npc_IsPlayer				(var C_NPC player)			{ return 0; };
// liefert eins zur�ck, wenn der gepr�fte Charakter der Spieler himself ist
func int	Wld_DetectPlayer			(var C_NPC self) { return 0; };
// liefert eins zur�ck, wenn der Player in der N�he ist
func int	Npc_HasDetectedNpc			(var C_NPC self, var C_NPC other) { return 0; };
// liefert eins zur�ck, wenn der Spieler in Sinnesreichweite und entdeckt ist                                     // SPIELER ???

//******************************************************************************************
//	ENTFERNUNGEN
//******************************************************************************************
func int	Npc_IsNear					(var C_NPC self, var C_NPC other)	{ return 0; };
// liefert eins zur�ck, wenn gepr�fte Instanz sich im Bereich von drei Metern zur pr�fenden Instanz befindet
func int  	Npc_GetDistToNpc			(var C_NPC npc1, var C_NPC npc2) { return 0; };
// Liefert Entfernung ( �n cm ! ) zwischend den beiden NSCs
func int  	Npc_GetHeightToNpc			(var C_NPC npc1, var C_NPC npc2) { return 0; };
// Liefert H�hendifferenz ( �n cm ! ) zwischend den beiden NSCs

func int	Npc_GetDistToWP				(var C_NPC self, var string wpName)
// liefert die Entfernung vom NSC 'self' zum angegebenen Waypoint in cm
func int  	Npc_GetDistToItem			(var C_NPC npc, var C_ITEM item) { return 0; };
// Liefert Entfernung ( �n cm ! ) zwischend NSC und Gegenstand
func int  	Npc_GetDistToPlayer			(var C_NPC npc1) { return 0; };
// Liefert Entfernung ( �n cm ! ) zwischend den beiden NSCs
func int  	Snd_GetDistToSource			(var C_NPC self) { return 0; };
// Liefert Entfernung ( in cm ! ) zum letzten logischen Sound

//******************************************************************************************
//	GILDEN / ATTITUEDEN / KENNE SC
//******************************************************************************************
func int    Npc_GetTrueGuild			(var C_NPC npc)  { return 0; };
// liefert immer!!! die wahre Gilde zur�ck, ignoriert also auch ohne die Regeln die Verkleidung
func void	Npc_SetAttitude				(var C_NPC self, var int att) { };
//  setzt die permanente Attit�de auf einen festen Wert
func void	Npc_SetTempAttitude			(var C_NPC self, var int att) { };
//   setzt die tempor�re Attit�de auf einen Wert (att)
func int	Npc_GetAttitude				(var C_NPC self, var C_NPC other) { return 0; };
// Gibt die Attit�de von self zu other zur�ck (temp. / perm. / Gilden )
func int  	Npc_SetTrueGuild			(var C_NPC npc, var int guildID)  { };
// Setzt die wahre Gilde des NSCs
func void 	Wld_SetGuildAttitude		(var int guild1, var int attitude, var int guild2) { };
// Setze Gildenattitude neu
func int  	Wld_GetGuildAttitude		(var int guild1, var int guild2) { return 0; };
// Ermittle Gildenattitude
func int  	Npc_GetPermAttitude			(var C_NPC self, var C_NPC other) {};
// Ermittle die permanente Attitude von "self" zu "other"
func void 	Wld_ExchangeGuildAttitudes	(var string name) 					{ };
// Tausche Gilden-AttitudenTabelle aus.
func int 	Npc_GetGuildAttitude 		(var C_NPC npc, var C_NPC npc) { return 0; };
// Ermittelt die Gildenattit�de von zwei Nsc�s direkt im Gegensatz zu Wld_GetGuildAttitude

func void 	Npc_SetKnowsPlayer			(var C_NPC self, var C_NPC player) { };
// NSC kennt SC
func int  	Npc_KnowsPlayer				(var C_NPC self, var C_NPC player) { return 0; };
// Kennt der NSC den Spieler? True/False

//******************************************************************************************
//	TA / ZS
//******************************************************************************************
func void	AI_StartState				(var C_NPC self, var func what, var int stateBehaviour, var string wpName) {};
// Versetzt den Nsc aus den Skripten heraus in den entsprechenden ZS (what),
// stateBehaviour sagt : "0"-aktuellen Zustand abbrechen "1"-aktuellen Zustand erst ordnungsgem�� beenden (End-Funktion aufrufen) ).
func void 	Npc_ClearAIQueue 			(var C_NPC self) { };
// hiermit werden alle Befehle mit sofortiger Wirkung aus der AI_Queue rausgeworfen
func void   AI_SetNpcsToState			(var C_NPC self, var func aiStateFunc, var int radius) 	{};
// Setze alle NSCs im Umkreis von x cm in entsprechenden AI-Zustand
// VORSICHT: Diese Funktion ist Buggy, wird aber derzeit auch NICHT verwendet!
// -> FINGER WEG!!! (SN)

func int	Npc_IsInState				(var C_NPC self, var func state) { return 0; };
// Abfrage auf den aktuellen Zustand einer Spielfigur True/False
func int	Npc_WasInState				(var C_NPC self, var func state) { return 0; };
// Abfrage auf den vorherigen Zustand einer Spielfigur True/False

func void	TA							(var c_npc self, var int start_h, var int stop_h, var func state, var string waypoint) { };
// Mit _(Zustandsname) wird ein neuer Tagesablauf generiert, siehe TA.d
func void 	TA_Min						(var c_npc self, var int start_h, var int start_m, var int stop_h, var int stop_m, var func state, var string waypoint) { };
// Tagesablaufpunkt minutengenau angeben
func void 	AI_ContinueRoutine			(var C_NPC self) 					{ };
// Setze Tagesablauf fort
// Enth�lt Standup

func int	Npc_IsInRoutine				(var C_NPC self, var func state) { return 0; };
// Check ob der angegebene Zustand der aktuelle TA des NSCs ist. True/FAlse
func void 	Npc_ExchangeRoutine			(var C_NPC self, var string routineName) {};
// Tausche meherere Tagesabl�ufe aus

func void 	Wld_SetObjectRoutine		(var int hour1, var int min1, var string objName, var int state) { };
// _Ein_ Objekt mit diesem _Vobnamen_ wird getriggert
func void 	Wld_SetMobRoutine			(var int hour1, var int min1, var string objName, var int state) { };
// _Alle_ Mobs mit diesem _Schemanamen_ werden getriggert.

func void 	Rtn_Exchange				(var string oldRoutine, var string newRoutine) {};
// Tausche aktuellen Tagesablauf des NSC "self" gegen angegebenen aus
// (Name wird automatisch mit "RTN_" am Anfang und NSC-Skript-ID am Ende erg�nzt)
func void 	TA_BeginOverlay				(var C_NPC self) {};
// Melde einen Overlay-Tagesablauf an
func void 	TA_EndOverlay				(var C_NPC self) {};
// Beende einen Overlay-Tagesablauf
func void 	TA_RemoveOverlay			(var C_NPC self) {};
// Entferne aktiven TA-Overlay

//******************************************************************************************
//	SCALING
//******************************************************************************************
func void	Mdl_SetModelScale			(var C_NPC self, var float x, var float y, var float z) {};
// zum skalieren des Meshes (Breite,H�he,Tiefe) 1 = 100%, also Normalgr��e!
func void 	Mdl_SetModelFatness			(var C_NPC self, var float fatness) 	{};
// Setzt Model-Z-Skalierung

//******************************************************************************************
//	ATTRIBUTE
//******************************************************************************************
func void	Npc_ChangeAttribute			(var C_NPC self, var int atr, var int value) {};
// �ndert den Wert des Attributs (atr) um (value) Einheiten.

//******************************************************************************************
//	TALENTE
//******************************************************************************************
func int 	Npc_HasTalent				(var C_NPC self, var int tal) 		{ return 0; };
// liefert eins zur�ck, wenn der gepr�fte Charakter das Talent tal hat
func int 	Npc_HasFightTalent			(var C_NPC self, var int tal) 		{ return 0; };
// Spezialabfrage auf Kampftalente (z.B. 1hSword) ansonsten wie Npc_HasTalent

//******************************************************************************************
//	MAGIE
//******************************************************************************************
func void	Npc_CreateSpell				(var C_NPC self, var int spellnr) {};
// NSc bekommt Zauberspruch zugewiesen kann diesen aber noch nicht gebrauchen
// (erscheint ausgegraut im Auswahlkranz)
func void	Npc_LearnSpell				(var C_NPC self, var int spellnr) {};
// Was k�nnte das wohl hei�en ? Ich glaube damit kann man den (spellnr) Zauber zuweisen
func void	Npc_SetTeleportPos			(var C_NPC self) {};
// Magie/Zauberstein Teleport Spruch : letzte Position des NSCs merken, zwecks sp�teren dahinbeamens.
func int	Npc_GetActiveSpell			(var C_NPC self) { return 0; };
// liefert den Zauber zur�ck, der auf der Hand ist (self oder other)
// liefert -1 zur�ck, wenn kein Zauber auf der Hand ist
func int	Npc_GetActiveSpell			(var C_NPC self) { return 0; };
// liefert den Zauber zur�ck, der auf der Hand ist (self oder other)
// liefert -1 zur�ck, wenn kein Zauber auf der Hand ist
func int	Npc_GetLastHitSpellID		(var C_NPC self) { return 0; };
// liefert den Zauber zur�ck, der den NSC zuletzt getroffen hat 
func int	Npc_GetLastHitSpellCat		(var C_NPC self) { return 0; };
// liefert die Category des Zaubers zur�ck, der den NSC zuletzt getroffen hat 

func int	Npc_GetActiveSpellCat		(var C_NPC self) { return 0; };
// Unterscheidet zwischen den drei Kategorien (Spell_Bad, Spell_neutral,Spell_Good) Spellkat ist R�ckgabewert
func int 	Npc_SetActiveSpellInfo 		(var C_NPC npc, var int i1) { return 0; };
// liefert den Spell-Level des Zaubers zur�ck, der auf der Hand ist
func int	Npc_GetActiveSpellLevel		(var C_NPC self)

// ????
func void 	AI_ReadySpell  				(var C_NPC self, var int spellID, var int investMana);
func void 	AI_UnreadySpell				(var C_NPC self);

func int  	Npc_HasSpell   				(var C_NPC self, var int spellID); // --> liefert true oder false zur�ck

//******************************************************************************************
//	WAHRNEHMUNGEN
//******************************************************************************************
func void	Npc_PercEnable				(var C_NPC self, var int percID, var func function) { };
// Aktiviere Perception
func void 	Npc_PercDisable				(var C_NPC self, var int percID) { };
// Deaktiviere Perception
func void 	Npc_SetPercTime				(var C_NPC self, var float seconds)			{ };
// Setze Zeitdelta f�r aktive Wahrnehmungen, alle Zeitdelta-Sekunden wird  WN gesendet

func void 	Perc_SetRange				(var int percID, var int range)				{ };
// Setze Reichweite fuer eine passive Wahrnehmung int cm
func void 	Npc_SendPassivePerc 		(var C_NPC npc1, var int Perc_type, var C_NPC npc2, var C_NPC npc3 ) { };
// Sende eine passive Wahrnehmung aus.Npc1 = wer schickt Npc2 = Opfer, Npc3 = T�ter
func void   Npc_SendSinglePerc			(var C_NPC self, var C_NPC target, var int percID) 	{};
// verschicke Wahrnehmung an einzelnen NSC

func void 	Npc_PerceiveAll				(var C_NPC self) 		  {};
// Nimm alle Objekte in Wahrnehmungsreichweite wahr, die dann mit WLD_DetectNpc und Wld_DetectItem auswertbar sind
func int   	Wld_DetectNpc   			(var C_NPC self, var int instance, var func aiState, var int guild) { return 0; };
// Diese Methode initilisiert die globale Skriptvariable "other" mit einem NSC, den "self" beim letzten Warnehmungscheck wargenommen hat.
// instance      = Name der zu suchenden Instanz							( "-1" angeben, wenn Instanzname unwichtig )
// guild         = Der zu suchende NSC muss Mitglied dieser Gilde sein		( "-1" angeben, wenn Gilde unwichtig )
// aiState       = Der AI-Zustandsname, in dem sich der NSC befinden soll	( NOFUNC angeben, wenn AI-State unwichtig )
// Wenn die Methode einen entsprechenden NSC gefunden hat, liefert diese "1" und 'other' ist initialisiert
// ansonsten wird "0" geliefert und "other" wird nicht ver�ndert.
var int 	Wld_DetectNpcEx ( var C_NPC self, var int npcInstance, var func aiState, var int guild, var int detectPlayer)
// Wie Wld_DetectNpc(). Zus�tzlich kann per detectPlayer=0 der Spieler ignoriert werden.
func int 	Wld_DetectItem				(var C_NPC self, var int flags) { return 0; };
// liefert eins zur�ck, wenn ein Item mit dem Entsprechende Flag (z.B.ITEM_KAT_FOOD )gefunden wurde
// Globale Variable 'item' wird mit dem gefundenen Gegenstand initialisiert
func string Npc_GetDetectedMob 			(var C_NPC self) { return 0; };
// liefert den Schemanamen des Mobsi zur�ck, das der Nsc entdeckt hat.
// Schemaname ist das String-K�rzel des Mobs, da� im Visualnamen vor dem ersten "_"-Zeichen steht, also z.B. "DOOR" wenn der Visualname "DOOR_OCR__135" ist.
// VORSICHT: Diese Funktion ist nur in Verbindung mit PERC_MOVEMOB erlaubt !!!
// WORKAROUND: zur Zeit werden hiermit nur T�r-MOBSIs zur�ckgegeben, dies soll aber wieder zur�ckgebaut werden

func int  	Npc_CanSeeNpc				(var C_NPC npc1, var C_NPC npc2) { return 0; };
// Prueft ob Npc1 den Npc2 sehen kann ( ein Ray wird gecastet -> Bitte sparsam einsetzen ) True/False Blickwinkelabh�ngig (+,-100�)+LOS von der H�fte aus
func int  	Npc_CanSeeNpcFreeLOS		(var C_NPC self, var C_NPC other) 	{};
// Pr�ft ob NSC anderen NSC sehen kann, ohne dabei den Winkel zu ber�cksichtigen (nur LineOfSight-Check)
func int  	Npc_CanSeeItem				(var C_NPC npc1, var C_ITEM item) { return 0; };
// Prueft ob Npc1 den Gegenstand sehen kann ( ein Ray wird gecastet -> Bitte sparsam einsetzen ) True/False
func int  	Npc_CanSeeSource			(var C_NPC self) { return 0; };
// Checkt, ob NSC die Soundquelle sehen kann True/False

//******************************************************************************************
//	CUTSCENES
//******************************************************************************************
func void   TA_CS 						(var C_NPC self, var string csName, var string roleName) {};
// Cutscene an den zuletzt angegebenen Tagesablaufpunkt h�ngen
// csName	: Name der Cutscene ( der Name des "CS" - Files )
// roleName : Die Rolle die der NSC dabei �bernehmen soll.
func void   AI_PlayCutscene				(var C_NPC self, var string csName) {};
// Eine Cutscene aus den Scripten heraus starten
func int    Hlp_CutscenePlayed			(var string csName) { return 0; };
// Abfrage, ob Cutscene schon gespielt wurde (0 = Nein / 1 = Ja)
func int 	Npc_IsInCutscene 			(var C_NPC self) { return 0; };
// liefert eins zur�ck, wenn der entsprechende Nsc in einer Cutscene ist

//******************************************************************************************
//	SOUND
//******************************************************************************************
func void 	Snd_Play 					(var string s0) { };
// spielt einen Sound ab
func void 	Snd_Play3D 					(var C_NPC n0, var string s1) { };
// spielt einen 3D-Sound ab.

func int  	Snd_IsSourceNpc				(var C_NPC self) { return 0; };
// Check, ob Quelle des letzten Sound NPC war (Return >0) und setzt "other" auf diesen NPC
func int  	Snd_IsSourceItem			(var C_NPC self) { return 0; };
// Check, ob Quelle des letzten Sound Item war (Return >0) und setzt "item" auf diesen Gegenstand

//******************************************************************************************
//	PORTALR�UME
//******************************************************************************************
func void 	Wld_AssignRoomToGuild 		(var string s0, var int guild) { };
// Ordnet den Raum: 's0' der Gilde 'guild' zu
func void 	Wld_AssignRoomToNpc 		(var string s0, var C_NPC roomowner) { };
// Ordnet den Raum: 's0' dem  speziellen Nsc 'roomowner' zu
func C_NPC 	Wld_GetPlayerPortalOwner 	()
// liefert den NSC des aktiven Raums, in dem sich der SC gerade befindet, zur�ck
// - wenn der SC 'drau�en' ist, dann ist der R�ckgabe-Npc 'notValid'
// - wenn der aktive Raum besitzerlos ist, dann ist der R�ckgabe-Npc 'notValid'
func int 	Wld_GetPlayerPortalGuild 	()
// liefert Gilde des aktiven Raums, in dem sich der SC gerade befindet, zur�ck
// - wenn der SC 'drau�en' ist, dann wird GIL_NONE zur�ckgegeben
// - wenn der aktive Raum gildenlos ist, dann wird GIL_NONE zur�ckgeliefert
func C_NPC 	Wld_GetFormerPlayerPortalOwner ()
// liefert den NSC des Raums, in dem sich der SC vor dem letzten "Raumwechsel" befunden hat, zur�ck
// Raumwechsel ist dabei: Au�en->Raum1, Raum1->Raum2, -> Raum1->Au�en
// - wenn der SC 'drau�en' ist, dann ist der R�ckgabe-Npc 'notValid'
// - wenn der aktive Raum besitzerlos ist, dann ist der R�ckgabe-Npc 'notValid'
func int 	Wld_GetFormerPlayerPortalGuild ()
// liefert den NSC des Raums, in dem sich der SC vor dem letzten "Raumwechsel" befunden hat, zur�ck
// Raumwechsel ist dabei: Au�en->Raum1, Raum1->Raum2, -> Raum1->Au�en
// - wenn der SC 'drau�en' ist, dann wird GIL_NONE zur�ckgegeben
// - wenn der aktive Raum gildenlos ist, dann wird GIL_NONE zur�ckgeliefert
func int 	Npc_IsPlayerInMyRoom (var C_NPC npc)
// gibt true zur�ck, wenn sich SC im Raum des 'npc' oder seiner Gilde befindet, sonst false
func int 	Npc_WasPlayerInMyRoom (var C_NPC npc)
// gibt true zur�ck, wenn sich SC vor dem letzten Raumwechsel im Raum des 'npc' oder seiner Gilde befindet, sonst false
// Raumwechsel ist dabei: Au�en->Raum1, Raum1->Raum2, -> Raum1->Au�en

//******************************************************************************************
//	sonstige Hilfsfunktionen
//******************************************************************************************
func string	IntToString			(var int x) 	{ };
// !!!Funktion �bertr�gt eine Integer variable in eine Stringvariable (R�ckgabewert : string)???

func int	FloatToInt			(var float x)	{ };
// !!! konvertiert einen float in einen int, hier w�re es noch ganz sch�n zu wissen, wie mit dem float umgesprungen wird --> schneiden oder runden ???

func float	IntToFloat			(var int x)		{ };
// !!! wie float to int, nur da� ein integer in float umgewandelt wird ???
func string	ConcatStrings		(var string str1, var string str2)
// !!!Erzeugt eine Kopie von dem ersten angegebenen String, h�ngt den zweiten an diesen an und gibt den neuen String zur�ck ???

//Die folgenden Methoden geben den Text nur unter bestimmten zus�tzlichen Bedingungen aus.
//F�r die Methoden mit dem Suffix Inst trifft dies zu, wenn die Instanz von der die Debug-Methode aufgerufen wird, zum Debuggen aktiviert wurde.
//Die Methoden mit dem Suffix Ch geben den Text nur aus, wenn der angegebene Channel zum Debuggen aktiviert wurde.

func void PrintDebugInst		(String text) 	{ };
// !!! gibt nur den Debugtext der eingeschalteten (SetDebugFocus --> siehe Intranetpage Erweitertes Skript-Debugging) Instanz aus ???
func void PrintDebugInstCh		(int ch, String text)	{ };
// !!! gibt nur in einem bestimmten channel liegende Debuginfos einer Instanz aus ???
func void PrintDebugCh			(int ch, String text)	{ };
// gibt nur den Text eines bestimmten Channels wieder, unabh�ngig von der Instanz ???

//******************************************************************************************
//	Log-Entries (ab v1.01)
//******************************************************************************************
func void	Log_CreateTopic (var string name, var int section)
//	Der Befehl f�gt unter der Sektion 'section' ein neues Topic mit Namen 'name' ein.
//	Sollte bereits ein Topic dieses Names in irgendeiner Sektion existieren, wird das Topic nicht hinzugef�gt.
//
//	Parameter:
//	- name      Eine eindeutige Zeichenkette, die sowohl zur Identifikation als auch zur Anzeige des Topics verwendet wird.
//	- section	Eine, in der Constants.d definierte Konstante, die besagt, in welcher Sektion das Topic angezeigt werden soll.
//				Die Konstante kann folgende Werte annehmen:
//					- LOG_MISSION
//					- LOG_NOTE

func void	Log_SetTopicStatus (var string name, var int status)
//	Der Befehl �ndert den Status des Topics 'name' in 'status'.
//	Er sollte nur f�r Topics verwendet werden, die f�r die Sektion LOG_MISSION erzeugt wurden.
//
//	Parameter:
//	- name      Diejenige Zeichenkette, die bei der Erstellung des Topics per Log_CreateTopic() angegeben wurde.
//	- status	Eine, in der Constants.d definierte Konstante, die besagt, unter welchem Status die Mission dargestellt werden soll.
//				Folgende Werte sind m�glich:
//					- LOG_RUNNING
//					- LOG_SUCCESS
//					- LOG_FAILED
//					- LOG_OBSOLETE

func void	Log_AddEntry (var string topic, var string entry)
//	Der Befehl f�gt dem Topics topic ein neues Entrz namens entry hinzu. Wie auch bei der Erzeugung von Topics dient hier der
//	Name sowohl zur Identifikation als auch zur Anzeige und muss somit eindeutig sein. Doppelte Eintr�ge werden auch hier ignoriert.
//
//	Parameter
//	topic       Diejenige Zeichenkette, die bei der Erstellung des Topics per Log_CreateTopic() angegeben wurde.
//	entry		Eine eindeutige Zeichenkette, die sowohl zur Identifikation als auch zur Anzeige des Eintrags verwendet wird.

//******************************************************************************************
//	Languages (from 1.30)
//******************************************************************************************
func void	Game_InitGerman		() {};

								// Setzt die interne Engine-Variablen auf Deutsch.
								//
								//	[result]	- Zeigt an, ob die Sprache erfolgreich geladen wurde.

func void	Game_InitEnglish	() {};

								// Setzt die interne Engine-Variablen auf English.
								//
								//	[result]	- Zeigt an, ob die Sprache erfolgreich geladen wurde.
