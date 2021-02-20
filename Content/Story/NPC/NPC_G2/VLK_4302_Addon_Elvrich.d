//******************************************************************************************
instance VLK_4302_Addon_Elvrich (Npc_Default)
{
	// ------ General ------
	name								=	"Elvrich";
	guild 								=	GIL_NONE;
	id 									=	4302;
	voice 								=	4;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_NoFightParker]			=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Axe);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Pony", Face_Normal03, 0, ITAR_BAU_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4302;
};

FUNC VOID Rtn_Start_4302()
{
	TA_Sit_Campfire	(08,00,23,00, "NW_BIGMILL_FARM3_RANGERBANDITS_ELVRICH");
    TA_Sit_Campfire	(23,00,08,00, "NW_BIGMILL_FARM3_RANGERBANDITS_ELVRICH");
};
FUNC VOID Rtn_BackInTheCity_4302()
{
	TA_Repair_Hut	(06,00,09,00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Saw			(09,00,13,05, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut	(13,05,14,00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Saw			(14,00,16,00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut	(16,00,17,05, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut	(17,05,18,00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut	(18,00,19,00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Saw			(19,00,20,00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut	(20,00,00,00, "NW_CITY_MERCHANT_HUT_01_FRONT");
	TA_Sit_Bench 	(00,00,06,00, "NW_CITY_MERCHANT_HUT_01_FRONT");
};
