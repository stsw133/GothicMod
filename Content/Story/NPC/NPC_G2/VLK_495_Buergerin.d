//******************************************************************************************
instance VLK_495_Buergerin (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Magd;
	guild 								=	GIL_VLK;
	id 									=	495;
	voice 								=	16;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_BabeHair", FaceBabe_Servant70, Teeth_Pretty, ITAR_WD_L_03);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_495;
};

FUNC VOID Rtn_Start_495()
{
	TA_Smalltalk		(06,00,08,00, "NW_CITY_MERCHANT_PATH_28_B");
    TA_Stand_Eating		(08,00,09,00, "NW_CITY_MERCHANT_PATH_30");
    TA_Smalltalk		(09,00,11,00, "NW_CITY_MERCHANT_PATH_28_B");
    TA_Stand_Eating		(11,00,12,00, "NW_CITY_MERCHANT_PATH_30");
    TA_Smalltalk		(12,00,14,00, "NW_CITY_MERCHANT_PATH_28_B");
    TA_Stand_Eating		(14,00,15,00, "NW_CITY_MERCHANT_PATH_30");
    TA_Smalltalk		(15,00,17,00, "NW_CITY_MERCHANT_PATH_28_B");
    TA_Stand_Eating		(17,00,18,00, "NW_CITY_MERCHANT_PATH_30");
	TA_Cook_Stove		(18,00,01,00, "TAVERN02");
	TA_Stand_Drinking	(01,00,05,00, "NW_CITY_TAVERN_IN_04");
	TA_Stand_Sweeping	(05,00,06,00, "NW_CITY_MERCHANT_TAVERN01_IN");
};
