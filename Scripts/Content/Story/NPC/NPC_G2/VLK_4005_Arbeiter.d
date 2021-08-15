///******************************************************************************************
instance VLK_4005_Arbeiter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Arbeiter;
	guild 								=	GIL_VLK;
	id 									=	4005;
	voice 								=	6;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal09, 0, ITAR_BAU_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4005;
};

func void Rtn_Start_4005()
{
	TA_Stand_Sweeping	(06,33,08,00, "NW_CITY_UPTOWN_PATH_07");
    TA_Stand_Sweeping	(08,00,10,00, "NW_CITY_UPTOWN_PATH_18");
	TA_Stand_Sweeping	(10,00,12,00, "NW_CITY_UPTOWN_PATH_03_B");

	TA_Sit_Bench		(12,00,15,00, "NW_CITY_UPTOWN_PATH_24_B");

	TA_Stand_Sweeping	(15,00,17,00, "NW_CITY_UPTOWN_PATH_07");
    TA_Stand_Sweeping	(17,00,19,00, "NW_CITY_UPTOWN_PATH_18");
	TA_Stand_Sweeping	(19,00,21,00, "NW_CITY_UPTOWN_PATH_03_B");

	TA_Sit_Bench		(21,00,00,04, "NW_CITY_UPTOWN_PATH_24_B");
	TA_Sit_Campfire 	(00,04,06,33, "NW_CITY_SMALLTALK_05");
}; 
