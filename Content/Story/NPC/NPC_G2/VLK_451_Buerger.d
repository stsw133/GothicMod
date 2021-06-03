///******************************************************************************************
instance VLK_451_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BUERGER;
	guild 								=	GIL_VLK;
	id 									=	451;
	voice 								=	8;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Dagger);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Lefty, 0, ITAR_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_451;
};

func void Rtn_Start_451()
{
	TA_Smalltalk	(06,10,13,00, "NW_CITY_MERCHANT_SHOP01_FRONT_03");
	TA_Smalltalk	(13,00,14,02, "NW_CITY_MAINSTREET_05");
	TA_Smalltalk	(14,02,17,00, "NW_CITY_MERCHANT_SHOP01_FRONT_03");
	TA_Smalltalk	(17,00,18,02, "NW_CITY_MAINSTREET_05");
	TA_Smalltalk	(18,02,20,10, "NW_CITY_MERCHANT_SHOP01_FRONT_03");
	TA_Sit_Chair	(20,10,06,10, "NW_CITY_TAVERN_IN_05");
};
