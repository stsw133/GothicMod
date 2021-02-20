//******************************************************************************************
INSTANCE NOV_607_Novize (Npc_Default)
{
	// ------ General ------
	name								=	Name_Novize;
	guild 								=	GIL_NOV;
	id 									=	607;
	voice 								=	8;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Nov_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Pony", Face_Normal40, 0, ITAR_Nov_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_607;
};

FUNC VOID Rtn_Start_607()
{
	TA_Stomp_Herb		(08,00,12,00, "NW_MONASTERY_WINEMAKER_05");
	TA_Pray_Innos_FP	(12,00,13,00, "NW_MONASTERY_CHURCH_03");
    TA_Stomp_Herb		(13,00,22,15, "NW_MONASTERY_WINEMAKER_05");
    TA_Sleep			(22,15,08,00, "NW_MONASTERY_NOVICE03_05");
};
FUNC VOID Rtn_Exchange_607()
{
	TA_Smalltalk	(09,00,22,04, "NW_MONASTERY_GRASS_01");
    TA_Sleep		(22,04,09,00, "NW_MONASTERY_NOVICE03_05");
};
