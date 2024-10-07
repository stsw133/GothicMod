///******************************************************************************************
instance Mil_322_Miliz (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Miliz;
	guild								=	GIL_MIL;
	id									=	322;
	voice								=	6;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_L_Tough01, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_322;
};

func void Rtn_Start_322()
{
	TA_Stand_Guarding	(01,00, 03,00, "NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(03,00, 05,00, "NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(05,00, 07,00, "NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(07,00, 09,00, "NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(09,00, 11,00, "NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(11,00, 13,00, "NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(13,00, 15,00, "NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(15,00, 17,00, "NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(17,00, 19,00, "NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(19,00, 21,00, "NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(21,00, 23,00, "NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(23,00, 01,00, "NW_CITY_MAINSTREET_07");
};
