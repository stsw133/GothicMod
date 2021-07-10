///******************************************************************************************
instance Pal_240_Ritter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Ritter;
	guild 								=	GIL_PAL;
	id 									=	240;
	voice 								=	9;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Pal_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal27, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_240;
};

func void Rtn_Start_240()
{
	TA_Stand_Guarding 	(06,00,07,00, "NW_CITY_PALCAMP_08");
	TA_Stand_Guarding	(07,00,08,00, "NW_CITY_WAY_TO_SHIP_23");
	TA_Stand_Guarding	(08,00,09,00, "NW_CITY_PALCAMP_08");
	TA_Stand_Guarding	(09,00,10,00, "NW_CITY_WAY_TO_SHIP_23");

	TA_Stand_Guarding	(10,00,11,00, "NW_CITY_PALCAMP_08");
	TA_Stand_Guarding	(11,00,12,00, "NW_CITY_WAY_TO_SHIP_23");
	TA_Stand_Guarding	(12,00,13,00, "NW_CITY_PALCAMP_08");
	TA_Stand_Guarding	(13,00,14,00, "NW_CITY_WAY_TO_SHIP_23");

	TA_Stand_Guarding	(14,00,15,00, "NW_CITY_PALCAMP_08");
	TA_Stand_Guarding	(15,00,16,00, "NW_CITY_WAY_TO_SHIP_23");
	TA_Stand_Guarding	(16,00,17,00, "NW_CITY_PALCAMP_08");
	TA_Stand_Guarding	(17,00,18,00, "NW_CITY_WAY_TO_SHIP_23");

	TA_Stand_Guarding	(18,00,19,00, "NW_CITY_PALCAMP_08");
	TA_Stand_Guarding	(19,00,20,00, "NW_CITY_WAY_TO_SHIP_23");
	TA_Stand_Guarding	(20,00,21,00, "NW_CITY_PALCAMP_08");
	TA_Stand_Guarding	(21,00,22,00, "NW_CITY_WAY_TO_SHIP_23");

	TA_Stand_Guarding	(22,00,23,00, "NW_CITY_PALCAMP_08");
	TA_Stand_Guarding	(23,00,00,00, "NW_CITY_WAY_TO_SHIP_23");
	TA_Stand_Guarding	(00,00,01,00, "NW_CITY_PALCAMP_08");
	TA_Stand_Guarding	(01,00,02,00, "NW_CITY_WAY_TO_SHIP_23");

	TA_Stand_Guarding	(02,00,03,00, "NW_CITY_PALCAMP_08");
	TA_Stand_Guarding	(03,00,04,00, "NW_CITY_WAY_TO_SHIP_23");
	TA_Stand_Guarding	(04,00,05,00, "NW_CITY_PALCAMP_08");
	TA_Stand_Guarding	(05,00,06,00, "NW_CITY_WAY_TO_SHIP_23");
};
func void Rtn_ShipFree_240()
{
	TA_Stand_WP	(08,00,23,00, "NW_CITY_UPTOWNPARADE_04");
	TA_Stand_WP	(23,00,08,00, "NW_CITY_UPTOWNPARADE_04");
};
