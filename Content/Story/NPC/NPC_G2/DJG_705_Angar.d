//******************************************************************************************
instance DJG_705_Angar (Npc_Default)
{
	// ------ General ------
	name								=	"Angar";
	guild 								=	GIL_DJG;
	id 									=	705;
	voice 								=	4;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Master-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_Zweihaender2);
	CreateInvItems (self, ItPo_Health_01, 6);
	CreateInvItem (self, ItMi_OldCoin);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_B, "Hum_Head_Bald", Face_CorAngar, 0, ITAR_SLT_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_705;
};

FUNC VOID Rtn_PreStart_705()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "OC_TO_MAGE");
    TA_Stand_ArmsCrossed	(23,00,08,00, "OC_TO_MAGE");
};
FUNC VOID Rtn_Start_705()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "OW_DJG_WATCH_STONEHENGE_01");
    TA_Stand_ArmsCrossed	(23,00,08,00, "OW_DJG_WATCH_STONEHENGE_01");
};
FUNC VOID Rtn_Zwischenstop_705()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "OW_PATH_3_13");
    TA_Stand_ArmsCrossed	(23,00,08,00, "OW_PATH_3_13");
};
FUNC VOID Rtn_GotoStonehendgeEntrance_705()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "OW_PATH_3_STONES");
    TA_Stand_ArmsCrossed	(23,00,08,00, "OW_PATH_3_STONES");
};
FUNC VOID Rtn_LeavingOW_705()
{
	TA_Sit_Campfire	(08,00,23,00, "OW_CAVALORN_01");
    TA_Sit_Campfire	(23,00,08,00, "OW_CAVALORN_01");
};
FUNC VOID Rtn_Angriff_705()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "OW_UNDEAD_DUNGEON_02");
    TA_Stand_ArmsCrossed	(23,00,08,00, "OW_UNDEAD_DUNGEON_02");
};
FUNC VOID Rtn_RunToEntrance_705()
{
	TA_RunToWP	(08,00,23,00, "OW_PATH_3_STONES");
    TA_RunToWP	(23,00,08,00, "OW_PATH_3_STONES");
};
FUNC VOID Rtn_Tot_705()
{
	TA_RunToWP	(08,00,23,00, "TOT");
    TA_RunToWP	(23,00,08,00, "TOT");
};
