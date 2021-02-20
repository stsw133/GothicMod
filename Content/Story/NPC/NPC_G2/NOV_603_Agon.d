//******************************************************************************************
INSTANCE NOV_603_Agon (Npc_Default)
{
	// ------ General ------
	name								=	"Agon";
	guild 								=	GIL_NOV;
	id 									=	603;
	voice 								=	7;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 12);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Nov_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal07, 0, ITAR_Nov_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_603;
};

FUNC VOID Rtn_Start_603()
{
	TA_Rake_FP			(08,00,09,00, "NW_MONASTERY_HERB_05");
    TA_Pray_Innos_FP	(09,00,10,00, "NW_MONASTERY_CHURCH_03");
    TA_Rake_FP			(10,00,22,10, "NW_MONASTERY_HERB_05");
    TA_Sleep			(22,10,08,00, "NW_MONASTERY_NOVICE03_07");
};
FUNC VOID Rtn_GolemLives_603()
{
	TA_Stand_Guarding	(08,00,23,10, "NW_TROLLAREA_PATH_02");
    TA_Stand_Guarding	(23,10,08,00, "NW_TROLLAREA_PATH_02");
};
FUNC VOID Rtn_GolemDead_603()
{
	TA_Stand_Guarding	(08,00,23,10, "NW_MAGECAVE_RUNE");
    TA_Stand_Guarding	(23,10,08,00, "NW_MAGECAVE_RUNE");
};
FUNC VOID Rtn_StillAlive_603()	
{
	TA_Stand_Guarding	(08,00,23,10, "TAVERN");
    TA_Stand_Guarding	(23,10,08,00, "TAVERN");
};
