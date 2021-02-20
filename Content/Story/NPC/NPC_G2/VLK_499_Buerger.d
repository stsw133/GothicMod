//******************************************************************************************
instance VLK_499_Buerger (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Buerger;
	guild 								=	GIL_VLK;
	id 									=	499;
	voice 								=	1;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal52, 0, ITAR_Vlk_L_02);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_499;
};

FUNC VOID Rtn_Start_499()
{
	TA_Stand_Eating 	(06,00,08,00, "NW_CITY_MERCHANT_TRADE_04");
	TA_Stand_Drinking	(08,00,10,00, "NW_CITY_UPTOWN_PATH_27");
	TA_Stand_Eating 	(10,00,12,00, "NW_CITY_MERCHANT_TRADE_04");
	TA_Sit_Bench		(12,00,14,00, "NW_CITY_UPTOWN_PATH_03_C");
	TA_Stand_Eating 	(14,00,16,00, "NW_CITY_MERCHANT_TRADE_04");
	TA_Sit_Bench		(16,00,18,00, "NW_CITY_GUARD_01");
	TA_Stand_Eating 	(18,00,19,55, "NW_CITY_MERCHANT_TRADE_04");
	TA_Sit_Bench		(19,55,22,00, "NW_CITY_GUARD_01");
	TA_Sleep			(22,00,06,00, "NW_CITY_UPTOWN_HUT_BED_02");
};
