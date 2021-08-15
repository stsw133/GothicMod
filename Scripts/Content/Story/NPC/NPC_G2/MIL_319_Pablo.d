///******************************************************************************************
instance Mil_319_Pablo (Npc_Default)
{
	/// ------ General ------
	name								=	"Pablo";
	guild 								=	GIL_MIL;
	id 									=	319;
	voice 								=	12;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItKe_City_Tower_01);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Normal42, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_319;
};

func void Rtn_Start_319()
{
	TA_Stand_Guarding	(01,00,03,00, "NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(03,00,05,00, "NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(05,00,07,00, "NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(07,00,09,00, "NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(09,00,11,00, "NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(11,00,13,00, "NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(13,00,15,00, "NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(15,00,17,00, "NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(17,00,19,00, "NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(19,00,21,00, "NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(21,00,23,00, "NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(23,00,01,00, "NW_CITY_MERCHANT_PATH_22");
};
