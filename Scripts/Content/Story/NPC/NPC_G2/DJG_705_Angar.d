///******************************************************************************************
instance DJG_705_Angar (Npc_Default)
{
	/// ------ General ------
	name								=	"Angar";
	guild								=	GIL_DJG;
	id									=	705;
	voice								=	4;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_AddFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_Zweihaender2);
	CreateInvItems (self, ItPo_Health_03, 6);
	CreateInvItem (self, ItMi_OldCoin);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_B_CorAngar, Teeth_Normal, ItAr_SLT_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_705;
};

func void Rtn_PreStart_705()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "OC_TO_MAGE");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "OC_TO_MAGE");
};
func void Rtn_Start_705()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "OW_DJG_WATCH_STONEHENGE_01");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "OW_DJG_WATCH_STONEHENGE_01");
};
func void Rtn_Zwischenstop_705()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "OW_PATH_3_13");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "OW_PATH_3_13");
};
func void Rtn_GotoStonehendgeEntrance_705()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "OW_PATH_3_STONES");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "OW_PATH_3_STONES");
};
func void Rtn_LeavingOW_705()
{
	TA_Sit_Campfire	(08,00, 23,00, "OW_CAVALORN_01");
	TA_Sit_Campfire	(23,00, 08,00, "OW_CAVALORN_01");
};
func void Rtn_Angriff_705()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "OW_UNDEAD_DUNGEON_02");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "OW_UNDEAD_DUNGEON_02");
};
func void Rtn_RunToEntrance_705()
{
	TA_RunToWP	(08,00, 23,00, "OW_PATH_3_STONES");
	TA_RunToWP	(23,00, 08,00, "OW_PATH_3_STONES");
};
func void Rtn_Tot_705()
{
	TA_RunToWP	(08,00, 23,00, "TOT");
	TA_RunToWP	(23,00, 08,00, "TOT");
};
