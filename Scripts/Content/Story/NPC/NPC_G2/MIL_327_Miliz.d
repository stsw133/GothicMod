///******************************************************************************************
instance Mil_327_Miliz (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Miliz;
	guild 								=	GIL_MIL;
	id 									=	327;
	voice 								=	6;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal27, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_327;
};

func void Rtn_Start_327()
{
	TA_Smalltalk		(21,00,23,59, "NW_CITY_BARRACK02_SMALLTALK_01");
    TA_Sleep			(23,59,06,30, "NW_CITY_BARRACK01_BED_02");

	TA_Stand_Guarding	(06,30,07,30, "NW_CITY_HABOUR_KASERN_14");
	TA_Stand_Guarding	(07,30,08,30, "NW_CITY_HABOUR_KASERN_12");
	TA_Stand_Guarding	(08,30,09,30, "NW_CITY_HABOUR_KASERN_10");
	TA_Stand_Guarding	(09,30,10,30, "NW_CITY_HABOUR_KASERN_08");

	TA_Stand_Guarding	(10,30,11,30, "NW_CITY_HABOUR_KASERN_14");
	TA_Stand_Guarding	(11,30,12,30, "NW_CITY_HABOUR_KASERN_12");
	TA_Stand_Guarding	(12,30,13,30, "NW_CITY_HABOUR_KASERN_10");
	TA_Stand_Guarding	(13,30,14,30, "NW_CITY_HABOUR_KASERN_08");

	TA_Stand_Guarding	(14,30,15,30, "NW_CITY_HABOUR_KASERN_14");
	TA_Stand_Guarding	(15,30,16,30, "NW_CITY_HABOUR_KASERN_12");
	TA_Stand_Guarding	(16,30,17,30, "NW_CITY_HABOUR_KASERN_10");
	TA_Stand_Guarding	(17,30,18,30, "NW_CITY_HABOUR_KASERN_08");

	TA_Stand_Guarding	(18,30,19,30, "NW_CITY_HABOUR_KASERN_14");
	TA_Stand_Guarding	(19,30,21,00, "NW_CITY_HABOUR_KASERN_12");
};
