///******************************************************************************************
instance VLK_4004_Arbeiter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Arbeiter;
	guild								=	GIL_VLK;
	id									=	4004;
	voice								=	6;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_B_Cavalorn, Teeth_Normal, ItAr_BAU_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4004;
};

func void Rtn_Start_4004()
{
	TA_Stand_Sweeping	(06,35, 08,00, "NW_CITY_UPTOWN_PATH_11");
	TA_Stand_Sweeping	(08,00, 10,00, "NW_CITY_UPTOWN_PATH_12");
	TA_Stand_Sweeping	(10,00, 12,00, "NW_CITY_SMALLTALK_04");
	
	TA_Sit_Bench		(12,00, 15,00, "NW_CITY_UPTOWN_PATH_24");
	
	TA_Stand_Sweeping	(15,00, 17,00, "NW_CITY_UPTOWN_PATH_11");
	TA_Stand_Sweeping	(17,00, 19,00, "NW_CITY_UPTOWN_PATH_12");
	TA_Stand_Sweeping	(19,00, 21,00, "NW_CITY_SMALLTALK_04");
	
	TA_Sit_Bench		(21,00, 00,05, "NW_CITY_UPTOWN_PATH_24");
	TA_Sit_Campfire		(00,05, 06,35, "NW_CITY_UPTOWN_PATH_20_B");
};
