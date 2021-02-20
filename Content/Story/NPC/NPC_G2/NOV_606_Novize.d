//******************************************************************************************
INSTANCE NOV_606_Novize (Npc_Default)
{
	// ------ General ------
	name								=	Name_Novize;
	guild 								=	GIL_NOV;
	id 									=	606;
	voice 								=	3;
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
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal20, 0, ITAR_Nov_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_606;
};

FUNC VOID Rtn_Start_606()
{
	TA_Stomp_Herb		(08,00,11,00, "NW_MONASTERY_WINEMAKER_04");
	TA_Pray_Innos_FP	(11,00,12,00, "NW_MONASTERY_CHURCH_03");
    TA_Stomp_Herb		(12,00,22,30, "NW_MONASTERY_WINEMAKER_04");
    TA_Sleep			(22,30,08,00, "NW_MONASTERY_NOVICE03_04");
};
