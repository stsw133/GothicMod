//******************************************************************************************
instance VLK_450_Buerger (Npc_Default)
{
	// ------ General ------
	name								=	NAME_BUERGER;
	guild 								=	GIL_VLK;
	id 									=	450;
	voice 								=	6;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal53, 0, ITAR_Vlk_L_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_450;
};

FUNC VOID Rtn_Start_450()
{
	TA_Stand_ArmsCrossed	(05,00,20,00, "NW_CITY_MERCHANT_PATH_15");
	TA_Smalltalk			(20,00,03,50, "NW_CITY_MERCHANT_STAND_01");
    TA_Smalltalk			(03,50,05,00, "NW_CITY_TAVERN_IN_06");
};
FUNC VOID Rtn_VatrasAway_450()
{
	TA_Smalltalk	(05,00,20,00, "NW_CITY_MERCHANT_PATH_14");
	TA_Smalltalk	(20,00,05,00, "NW_CITY_MERCHANT_STAND_01");
};
