///******************************************************************************************
instance Mil_326_Miliz (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Miliz;
	guild 								=	GIL_MIL;
	id 									=	326;
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
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Torlof, 0, ITAR_MIL_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_326;
};

func void Rtn_Start_326()
{
	TA_Stand_Guarding		(12,00,14,00, "NW_CITY_UPTOWN_PATH_09");
    TA_Stand_ArmsCrossed	(14,00,16,00, "NW_CITY_UPTOWN_PATH_13");
	TA_Stand_Guarding		(16,00,18,00, "NW_CITY_UPTOWN_PATH_05");
    TA_Stand_Guarding		(18,00,20,00, "NW_CITY_UPTOWN_PATH_09");
    TA_Stand_ArmsCrossed	(20,00,22,00, "NW_CITY_UPTOWN_PATH_13");

    TA_Stand_Guarding		(22,00,23,30, "NW_CITY_UPTOWN_PATH_14");
    TA_Stand_Guarding		(23,30,01,00, "NW_CITY_UPTOWN_PATH_09");
    TA_Stand_ArmsCrossed	(01,00,02,30, "NW_CITY_UPTOWN_PATH_14");
    TA_Stand_Guarding		(02,30,04,00, "NW_CITY_UPTOWN_PATH_09");
    TA_Stand_Guarding		(04,00,05,30, "NW_CITY_UPTOWN_PATH_13");

    TA_Stand_Guarding		(05,30,08,00, "NW_CITY_UPTOWN_PATH_09");
    TA_Stand_ArmsCrossed	(08,00,10,00, "NW_CITY_UPTOWN_PATH_13");
    TA_Stand_Guarding		(10,00,12,00, "NW_CITY_UPTOWN_PATH_05");
};  
