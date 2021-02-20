//******************************************************************************************
instance DMT_1206_Dementor (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Dementor;
	guild 								=	GIL_DMT;
	id 									=	1206;
	voice 								=	19;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	// ------ Aivars ------
	aivar[AIV_EnemyOverride]			=	true;
	bodyStateInterruptableOverride		=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Master-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_N, "Hum_Head_Bald", Face_MadPsi, 0, ITAR_Dementor);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1206;
};

FUNC VOID Rtn_Start_1206()
{
	TA_Circle	(08,00,23,00, "NW_TROLLAREA_RITUAL_01");
    TA_Circle	(23,00,08,00, "NW_TROLLAREA_RITUAL_01");
};
FUNC VOID Rtn_AfterRitual_1206()
{
	TA_Stand_Dementor	(06,00,07,00, "NW_TAVERN_TO_FOREST_05");
	TA_Stand_Dementor	(07,00,08,00, "NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(08,00,09,00, "NW_TAVERN_TO_FOREST_05");
	TA_Stand_Dementor	(09,00,10,00, "NW_PATH_TO_MONASTERY_07");

	TA_Stand_Dementor	(10,00,11,00, "NW_TAVERN_TO_FOREST_05");
	TA_Stand_Dementor	(11,00,12,00, "NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(12,00,13,00, "NW_TAVERN_TO_FOREST_05");
	TA_Stand_Dementor	(13,00,14,00, "NW_PATH_TO_MONASTERY_07");

	TA_Stand_Dementor	(14,00,15,00, "NW_TAVERN_TO_FOREST_05");
	TA_Stand_Dementor	(15,00,16,00, "NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(16,00,17,00, "NW_TAVERN_TO_FOREST_05");
	TA_Stand_Dementor	(17,00,18,00, "NW_PATH_TO_MONASTERY_07");

	TA_Stand_Dementor	(18,00,19,00, "NW_TAVERN_TO_FOREST_05");
	TA_Stand_Dementor	(19,00,20,00, "NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(20,00,21,00, "NW_TAVERN_TO_FOREST_05");
	TA_Stand_Dementor	(21,00,22,00, "NW_PATH_TO_MONASTERY_07");

	TA_Stand_Dementor	(22,00,23,00, "NW_TAVERN_TO_FOREST_05");
	TA_Stand_Dementor	(23,00,00,00, "NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(00,00,01,00, "NW_TAVERN_TO_FOREST_05");
	TA_Stand_Dementor	(01,00,02,00, "NW_PATH_TO_MONASTERY_07");

	TA_Stand_Dementor	(02,00,03,00, "NW_TAVERN_TO_FOREST_05");
	TA_Stand_Dementor	(03,00,04,00, "NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(04,00,05,00, "NW_TAVERN_TO_FOREST_05");
	TA_Stand_Dementor	(05,00,06,00, "NW_PATH_TO_MONASTERY_07");
};
