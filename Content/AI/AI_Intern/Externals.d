///******************************************************************************************
///	Externals
///******************************************************************************************

/// ------ Prints ------
func void	Print 						(var string s0) { };
func void	PrintMulti 					(var string s0, var string s1, var string s2, var string s3, var string s4) { };
func void	PrintDebug					(var string s) { };
func void	PrintScreen					(var int dialogNr, var string msg, var int posx, var int posy, var string font, var int timeSec) { };

/// ------ Helpers ------
func int	Hlp_Random					(var int n0) { return 0; };
func int	Hlp_StrCmp					(var string s1, var string s2) { return 0; };
func int	Hlp_IsValidNpc				(var C_NPC self) { return 0; };
func int	Hlp_IsValidItem				(var C_Item item) { return 0; };
func int	Hlp_IsItem					(var C_Item item, var int instanceName)
func C_NPC	Hlp_GetNpc					(var int instanceName) { };
func int	Hlp_GetInstanceID			(var C_NPC npc) { return 0; };
func int	Hlp_GetInstanceID			(var C_Item item) { return 0; };

/// ------ Time ------
func void	AI_Wait 					(var C_NPC n0, var float n1) { };
func int	Npc_GetStateTime			(var C_NPC self) { return 0; };
func void	Npc_SetStateTime			(var C_NPC self, var int seconds) { };
func int	Wld_GetDay					() { };
func int	Wld_IsTime					(var int hour1, var int min1, var int hour2, var int min2) { return 0; };

/// ------ Spawn ------
func void 	Wld_InsertNpc				(var int npcInstance, var string spawnPoint) { };
func void 	Wld_InsertNpcAndRespawn 	(var int instance, var string spawnPoint, var float spawnDelay)

func void	Wld_InsertItem				(var int itemInstance, var string spawnPoint) { };
func int	Wld_RemoveItem          	(var C_Item item) { };

/// ------ Animations ------
func void	AI_PlayAni 					(var C_NPC n0, var string s0) { };
func void	AI_StandUp					(var C_NPC self) { };
func void	AI_StandUpQuick 			(var C_NPC self)
func void	AI_Quicklook				(var C_NPC self, var C_NPC other) { };
func void	AI_LookAt					(var C_NPC self, var string name) { };
func void	AI_LookAtNpc				(var C_NPC self, var C_NPC other) { };
func void	AI_StopLookAt				(var C_NPC self) { };
func void	AI_PointAt					(var C_NPC self, var string name) { };
func void	AI_PointAtNpc				(var C_NPC self, var C_NPC other) { };
func void	AI_StopPointAt				(var C_NPC self) { };

/// ------ Items ------
func void	AI_TakeItem					(var C_NPC self, var C_Item item) {};
func void	AI_DropItem					(var C_NPC self, var int itemid) {};
func void	AI_UseItem					(var C_NPC self, var int itemInstance) { };
func void	AI_UseItemToState			(var C_NPC self, var int itemInstance, var int state) { };
func void	AI_LookForItem				(var C_NPC self, var int instance) { };

/// ------ Mobs ------
func int	AI_UseMob					(var C_NPC self, var string schemeName, var int targetState) { return 0; };
func int	Wld_IsMobAvailable			(var C_NPC self, var string schemeName) { };
func int	Wld_GetMobState				(var C_NPC self, var string schemeName);

/// ------ Moving ------
func void	AI_SetWalkmode				(var C_NPC n, var int n0) { };
func void	AI_GotoWP					(var C_NPC n0, var string s0) { };
func void	AI_GotoFP					(var C_NPC self, var string fpName) { };
func void	AI_GotoNextFP 				(var C_NPC self, var string fpName) { };
func void	AI_GotoNpc					(var C_NPC self, var C_NPC other) { };
func void	AI_GotoItem					(var C_NPC self, var C_Item item) { };
func void	AI_GotoSound 				(var C_NPC n0) { };
func void	AI_Teleport					(var C_NPC self, var string waypoint);

func string	Npc_GetNearestWP			(var C_NPC self) { return ""; };
func string	Npc_GetNextWP				(var C_NPC self) { return ""; };

func int	Wld_IsFPAvailable			(var C_NPC self, var string fpName) { };
func int	Wld_IsNextFPAvailable   	(var C_NPC self, var string fpName)
func int	Npc_IsOnFP					(var C_NPC self, var string name)
func int	Npc_IsWayBlocked			(var C_NPC self) { };

/// ------ Turn ------
func void	AI_TurnToNpc 				(var C_NPC n0, var C_NPC n1) { };
func void	AI_TurnAway 				(var C_NPC n0, var C_NPC n1) { };
func void	AI_WhirlAround				(var C_NPC self, var C_NPC other) { };
func void	AI_TurnToSound				(var C_NPC self) { };
func void	AI_AlignToWP				(var C_NPC self) { };
func void	AI_Dodge 					(var C_NPC npc) { };

/// ------ MDS ------
func void	Mdl_ApplyOverlayMds			(var C_NPC n0, var string s1) { };
func void	Mdl_RemoveOverlayMDS		(var C_NPC self, var string overlayName) { };
func void	Mdl_ApplyOverlayMDSTimed	(var C_NPC self, var string overlayname, var float timeTicks);

/// ------ Random animations ------
func void	Mdl_ApplyRandomAni			(var C_NPC n0, var string s1, var string s2) { };
func void	Mdl_ApplyRandomAniFreq		(var C_NPC n0, var string s1, var float f2) { };

/// ------ Face animations ------
func void	Mdl_StartFaceAni			(var C_NPC self, var string name, var float intensity, var float holdTime) { };
func void	Mdl_ApplyRandomFaceAni		(var C_NPC self, var string name, var float timeMin, var float timeMinVar, var float timeMax, var float timeMaxVar, var float probMin) { };

/// ------ Body states ------
func int	Npc_GetBodyState			(var C_NPC self) { return 0; };
func int	Npc_HasBodyFlag				(var C_NPC self, var int bodyFlag) { };
func void	AI_PlayAniBS				(var C_NPC npc, var string aniname, var int bodystate) { };

/// ------ Fight modes ------
func void	Npc_SetToFistMode			(var C_NPC self) { };
func void	Npc_SetToFightMode			(var C_NPC self, var int weapon) { };
func int	Npc_IsInFightMode			(var C_NPC self, var int fmode) { return 0; };

/// ------ Weapons ------
func void	AI_DrawWeapon 				(var C_NPC n0) { };
func void	AI_ReadyMeleeWeapon			(var C_NPC self) { };
func void	AI_ReadyRangedWeapon		(var C_NPC self) { };
func void	AI_RemoveWeapon 			(var C_NPC n0) { };

func C_Item	Npc_GetReadiedWeapon		(var C_NPC n0) { };

func int	Npc_HasReadiedWeapon		(var C_NPC self) { return 0; };
func int	Npc_HasReadiedMeleeWeapon 	(var C_NPC self) { return 0; };
func int	Npc_HasReadiedRangedWeapon	(var C_NPC self) { return 0; };
func int	Npc_HasRangedWeaponWithAmmo	(var C_NPC npc)

/// ------ Targets ------
func int	Npc_GetTarget				(var C_NPC self)
func int	Npc_GetNextTarget 			(var C_NPC self)
func int	Npc_IsNextTargetAvailable 	(var C_NPC self)
func void	Npc_SetTarget 				(var C_NPC self, var C_NPC other)
func void	AI_Attack					(var C_NPC self)
func void	AI_FinishingMove 			(var C_NPC self, var C_NPC other)
func void	AI_Defend					(var C_NPC self)

func void	AI_Flee						(var C_NPC self) { };
func void	AI_AimAt					(var C_NPC attacker, var C_NPC target) { };
func void	AI_ShootAt					(var C_NPC attacker, var C_NPC target) { };
func void	AI_StopAim					(var C_NPC attacker) { };

func int	Npc_AreWeStronger			(var C_NPC self, var C_NPC other) { return 0; };
func int	Npc_IsAiming				(var C_NPC self, var C_NPC other) { return 0; };

/// ------ Inventory ------
func void	CreateInvItem				(var C_NPC n0, var int n1) { };
func void	CreateInvItems				(var C_NPC n0, var int n1, var int n2) { };
func C_Item Npc_GetInvItem				(var C_NPC self, var int itemInstance) {};
func int	Npc_HasItems				(var C_NPC n0, var int itemInstance) { return 0; };
func int	Npc_GetInvItemBySlot		(var C_NPC self, var int category, var int slotNr)
func void	Npc_RemoveInvItem			(var C_NPC owner, var int itemInstance) {};
func void	Npc_RemoveInvItems			(var C_NPC owner, var int itemInstance, var int amount) { };

/// ------ Mob items ------
func void	Mob_CreateItems				(var string mobName, var int itemInstance, var int amount) { };
func int	Mob_HasItems				(var string mobName, var int itemInstance) { return 0; };

/// ------ Equip items ------
func void	EquipItem 					(var C_NPC n0, var int n1) { };
func void	AI_EquipBestMeleeWeapon		(var C_NPC self) { };
func void	AI_EquipBestRangedWeapon	(var C_NPC self) { };
func void	AI_EquipBestArmor			(var C_NPC self) { };
func void	AI_UnequipWeapons			(var C_NPC self) { };
func void	AI_UnequipArmor				(var C_NPC self) { };
func void	AI_EquipArmor				(var C_NPC owner, var C_Item armor_from_owners_inventory)

func C_Item	Npc_GetEquippedMeleeWeapon 	(var C_NPC n0) { };
func C_Item	Npc_GetEquippedRangedWeapon (var C_NPC n0) { };
func C_Item	Npc_GetEquippedArmor 		(var C_NPC n0) { };

func int	Npc_HasEquippedWeapon		(var C_NPC self) { return 0; };
func int	Npc_HasEquippedMeleeWeapon	(var C_NPC self) { return 0; };
func int	Npc_HasEquippedRangedWeapon	(var C_NPC self) { return 0; };
func int	Npc_HasEquippedArmor		(var C_NPC self) { return 0; };

/// ------ Ownership ------
func int  	Npc_OwnedByNpc				(var C_Item item, var C_NPC npc) { return 0; };
func int  	Npc_OwnedByGuild			(var C_Item item, var int guild) { return 0; };
func int 	Npc_IsDetectedMobOwnedByNpc	(var C_NPC user, var C_NPC owner ) { return 0; };
func int 	Npc_IsDetectedMobOwnedByGuild(var C_NPC user, var int ownerguild ) { return 0; };

/// ------ Trade ------
func void	Npc_GiveItem 				(var C_NPC n0, var C_Item n1, var C_NPC n2) { };
func int	Npc_StartItemReactModules	(var C_NPC self, var C_NPC other, var C_Item item) { return 0; };
func int	Npc_HasOffered				(var C_NPC self, var C_NPC other, var int itemInstance) { return 0; };

///******************************************************************************************
///	GAME, SESSION, VIDEO, CHAPTER
///******************************************************************************************

func void	ExitGame					() { };
func void	ExitSession					() { };
func int	PlayVideo					(var string Filename) { };
func int	PlayVideoEx					(var string Filename, var int ScreenBlend, var int ExitSession) { };
func void	SetPercentDone				(var int PercentDone) { };
func void	IntroduceChapter			(var string Titel, var string Untertitel, var string Texture, var string Sound, var int WaitTime) { };

///******************************************************************************************
///	MAPS and DOCUMENTS
///******************************************************************************************

func int	Doc_Create					() { };
func int	Doc_CreateMap				() { };
func void	Doc_SetPages				(var int Document, var int Count) { };
func void	Doc_SetPage					(var int Document, var int Page, var string Texture, var int Scale) { };
func void	Doc_SetMargins				(var int Document, var int Page, var int Left, var int Top, var int Right, var int Bottom, var int Pixels) { };
func void	Doc_SetFont					(var int Document, var int Page, var string Font) { };
func void	Doc_SetLevel				(var int Document, var string Level) { };
func void	Doc_SetLevelCoords			(var int Document, var int Left, var int Top, var int Right, var int Bottom) { };
func void	Doc_PrintLine				(var int Document, var int Page, var string Text) { };
func void	Doc_PrintLines				(var int Document, var int Page, var string Text) { };
func void	Doc_Show					(var int Document) { };

///******************************************************************************************
///	DIALOGS
///******************************************************************************************

func void	AI_Output					(var C_NPC self, var C_NPC target, var string outputName) { };
func void	AI_OutputSVM				(var C_NPC self, var C_NPC target, var string svmname) { };
func void	AI_OutputSVM_Overlay		(var C_NPC self, var C_NPC target, var string svmname) { };
func void	AI_WaitTillEnd				(var C_NPC self, var C_NPC other) { };
func void	AI_Ask 						(var C_NPC self, var func anserYes, var func answerNo) { };
func void	AI_AskText              	(var C_NPC self, var func funcYes, var func funcNo, var string strYes, var string strNo);
func void	AI_WaitForQuestion			(var C_NPC self, var func scriptFunc) { };
func void	Npc_SetRefuseTalk			(var C_NPC self, var int timeSec) { };
func int	Npc_RefuseTalk				(var C_NPC self) { return 0; };

///******************************************************************************************
///	NEWS
///******************************************************************************************

func void	Npc_MemoryEntry				(var C_NPC self, var int source, var C_NPC offender, var int newsid, var C_NPC victim) { };
func void	Npc_MemoryEntryGuild		(var C_NPC self, var int source, var C_NPC offender, var int newsid, var C_NPC victimguild) { };
func int	Npc_HasNews					(var C_NPC self, var int newsID, var C_NPC offender, var C_NPC victim) { };
func int	Npc_IsNewsGossip			(var C_NPC self, var int newsNumber) { };
func C_NPC	Npc_GetNewsWitness			(var C_NPC self, var int newsNumber) { };
func C_NPC	Npc_GetNewsVictim			(var C_NPC self, var int newsNumber) { };
func C_NPC	Npc_GetNewsOffender 		(var C_NPC self, var int newsNumber) { return 0; };

///******************************************************************************************
///	MISSIONS
///******************************************************************************************

func int	Npc_IsDead 					(var C_NPC n0) { return 0; };
func int	Npc_KnowsInfo 				(var C_NPC self, var int infoInstance) { return 0; };
func int	Npc_CheckInfo				(var C_NPC npc, var int important) { return 0; };
func int	NPC_GiveInfo				(var C_NPC npc, var int important) { return 0; };
func int	Npc_CheckAvailableMission	(var C_NPC npc, var int missionState, var int important) { return 0; };
func int	Npc_CheckRunningMission		(var C_NPC npc, var int important) { return 0; };
func int	Npc_CheckOfferMission		(var C_NPC npc, var int important) { return 0; };
func void	Mis_SetStatus				(var int missionName, var int newStatus) { };
func int	Mis_GetStatus				(var int missionName) { return 0; };
func int	Mis_OnTime					(var int missionName) { return 0; };
func void	AI_StopProcessInfos			(var C_NPC npc)

///******************************************************************************************
///	PLAYER
///******************************************************************************************

func int	Npc_IsPlayer				(var C_NPC player) { return 0; };
func int	Wld_DetectPlayer			(var C_NPC self) { return 0; };
func int	Npc_HasDetectedNpc			(var C_NPC self, var C_NPC other) { return 0; };

///******************************************************************************************
///	Get distances
///******************************************************************************************

func int	Npc_IsNear					(var C_NPC self, var C_NPC  other) { return 0; };
func int	Npc_GetDistToNpc			(var C_NPC npc1, var C_NPC npc2) { return 0; };
func int	Npc_GetHeightToNpc			(var C_NPC npc1, var C_NPC npc2) { return 0; };
func int	Npc_GetDistToWP				(var C_NPC self, var string wpName)
func int	Npc_GetDistToItem			(var C_NPC npc, var C_Item item) { return 0; };
func int	Npc_GetDistToPlayer			(var C_NPC npc1) { return 0; };
func int	Snd_GetDistToSource			(var C_NPC self) { return 0; };

///******************************************************************************************
///	GUILDS and ATTITUDE
///******************************************************************************************

func int	Npc_GetTrueGuild			(var C_NPC npc) { return 0; };
func int	Npc_SetTrueGuild			(var C_NPC npc, var int guildID) { };

func int	Npc_GetAttitude				(var C_NPC self, var C_NPC other) { return 0; };
func void	Npc_SetAttitude				(var C_NPC self, var int att) { };

func int	Npc_GetPermAttitude			(var C_NPC self, var C_NPC other) { };
func void	Npc_SetTempAttitude			(var C_NPC self, var int att) { };

func int	Wld_GetGuildAttitude		(var int guild1, var int guild2) { return 0; };
func void	Wld_SetGuildAttitude		(var int guild1, var int attitude, var int guild2) { };

func void	Wld_ExchangeGuildAttitudes	(var string name) { };
func int	Npc_GetGuildAttitude 		(var C_NPC npc, var C_NPC npc) { return 0; };
func void	Npc_SetKnowsPlayer			(var C_NPC self, var C_NPC player) { };
func int	Npc_KnowsPlayer				(var C_NPC self, var C_NPC player) { return 0; };

///******************************************************************************************
///	TA / ZS
///******************************************************************************************

func void	AI_StartState				(var C_NPC self, var func what, var int stateBehaviour, var string wpName) { };
func void	Npc_ClearAIQueue 			(var C_NPC self) { };
func void	AI_SetNpcsToState			(var C_NPC self, var func aiStateFunc, var int radius) {};

func int	Npc_IsInState				(var C_NPC self, var func state) { return 0; };
func int	Npc_WasInState				(var C_NPC self, var func state) { return 0; };

func void	TA							(var C_NPC self, var int start_h, var int stop_h, var func state, var string waypoint) { };
func void	TA_Min						(var C_NPC self, var int start_h, var int start_m, var int stop_h, var int stop_m, var func state, var string waypoint) { };
func void	AI_ContinueRoutine			(var C_NPC self) { };

func int	Npc_IsInRoutine				(var C_NPC self, var func state) { return 0; };
func void	Npc_ExchangeRoutine			(var C_NPC self, var string routineName) { };

func void	Wld_SetObjectRoutine		(var int hour1, var int min1, var string objName, var int state) { };
func void	Wld_SetMobRoutine			(var int hour1, var int min1, var string objName, var int state) { };

func void	Rtn_Exchange				(var string oldRoutine, var string newRoutine) { };
func void	TA_BeginOverlay				(var C_NPC self) { };
func void	TA_EndOverlay				(var C_NPC self) { };
func void	TA_RemoveOverlay			(var C_NPC self) { };

///******************************************************************************************
///	SCALING
///******************************************************************************************

func void	Mdl_SetModelScale			(var C_NPC self, var float x, var float y, var float z) { };
func void	Mdl_SetModelFatness			(var C_NPC self, var float fatness) { };

///******************************************************************************************
///	ATTRIBUTES, TALENTS
///******************************************************************************************

func void	Npc_ChangeAttribute			(var C_NPC self, var int atr, var int value) { };
func int	Npc_HasTalent				(var C_NPC self, var int tal) { return 0; };
func int	Npc_HasFightTalent			(var C_NPC self, var int tal) { return 0; };

///******************************************************************************************
///	MAGIC
///******************************************************************************************

func void	Npc_CreateSpell				(var C_NPC self, var int spellnr) { };
func void	Npc_LearnSpell				(var C_NPC self, var int spellnr) { };
func void	Npc_SetTeleportPos			(var C_NPC self) { };
func int	Npc_GetActiveSpell			(var C_NPC self) { return 0; };
func int	Npc_GetActiveSpell			(var C_NPC self) { return 0; };
func int	Npc_GetLastHitSpellID		(var C_NPC self) { return 0; };
func int	Npc_GetLastHitSpellCat		(var C_NPC self) { return 0; };

func int	Npc_GetActiveSpellCat		(var C_NPC self) { return 0; };
func int	Npc_SetActiveSpellInfo 		(var C_NPC npc, var int i1) { return 0; };
func int	Npc_GetActiveSpellLevel		(var C_NPC self)

func void	AI_ReadySpell  				(var C_NPC self, var int spellID, var int investMana);
func void	AI_UnreadySpell				(var C_NPC self);

func int	Npc_HasSpell   				(var C_NPC self, var int spellID);

///******************************************************************************************
///	PERCEPTION
///******************************************************************************************

func void	Npc_PercEnable				(var C_NPC self, var int percID, var func function) { };
func void	Npc_PercDisable				(var C_NPC self, var int percID) { };
func void	Npc_SetPercTime				(var C_NPC self, var float seconds) { };

func void	Perc_SetRange				(var int percID, var int range) { };
func void	Npc_SendPassivePerc 		(var C_NPC npc1, var int Perc_type, var C_NPC npc2, var C_NPC npc3) { };
func void	Npc_SendSinglePerc			(var C_NPC self, var C_NPC target, var int percID) { };

func void	Npc_PerceiveAll				(var C_NPC self) { };
func int	Wld_DetectNpc   			(var C_NPC self, var int instance, var func aiState, var int guild) { return 0; };
var int		Wld_DetectNpcEx				(var C_NPC self, var int npcInstance, var func aiState, var int guild, var int detectPlayer)
func int	Wld_DetectItem				(var C_NPC self, var int flags) { return 0; };
func string	Npc_GetDetectedMob 			(var C_NPC self) { return 0; };

func int	Npc_CanSeeNpc				(var C_NPC npc1, var C_NPC npc2) { return 0; };
func int	Npc_CanSeeNpcFreeLOS		(var C_NPC self, var C_NPC other) { };
func int	Npc_CanSeeItem				(var C_NPC npc1, var C_Item item) { return 0; };
func int	Npc_CanSeeSource			(var C_NPC self) { return 0; };

///******************************************************************************************
///	CUTSCENES
///******************************************************************************************

func void	TA_CS 						(var C_NPC self, var string csName, var string roleName) { };
func void	AI_PlayCutscene				(var C_NPC self, var string csName) { };
func int	Hlp_CutscenePlayed			(var string csName) { return 0; };
func int	Npc_IsInCutscene 			(var C_NPC self) { return 0; };

///******************************************************************************************
///	SOUND
///******************************************************************************************

func void	Snd_Play 					(var string s0) { };
func void	Snd_Play3D 					(var C_NPC n0, var string s1) { };

func int	Snd_IsSourceNpc				(var C_NPC self) { return 0; };
func int	Snd_IsSourceItem			(var C_NPC self) { return 0; };

///******************************************************************************************
///	ROOM
///******************************************************************************************

func void	Wld_AssignRoomToGuild 		(var string s0, var int guild) { };
func void	Wld_AssignRoomToNpc 		(var string s0, var C_NPC roomowner) { };
func C_NPC	Wld_GetPlayerPortalOwner 	()
func int	Wld_GetPlayerPortalGuild 	()
func C_NPC	Wld_GetFormerPlayerPortalOwner	()
func int	Wld_GetFormerPlayerPortalGuild	()
func int	Npc_IsPlayerInMyRoom		(var C_NPC npc)
func int	Npc_WasPlayerInMyRoom		(var C_NPC npc)

///******************************************************************************************
///	System functions
///******************************************************************************************

func string	IntTostring					(var int x) { };
func int	FloatToInt					(var float x) { };
func float	IntToFloat					(var int x) { };
func string	Concatstrings				(var string str1, var string str2)

func void	PrintDebugInst				(string text) { };
func void	PrintDebugInstCh			(int ch, string text) { };
func void	PrintDebugCh				(int ch, string text) { };

///******************************************************************************************
///	Log entries
///******************************************************************************************

func void	Log_CreateTopic				(var string name, var int section)
func void	Log_SetTopicStatus			(var string name, var int status)
func void	Log_AddEntry				(var string topic, var string entry)

///******************************************************************************************
///	LANGUAGES
///******************************************************************************************

func void	Game_InitGerman				() { };
func void	Game_InitEnglish			() { };
