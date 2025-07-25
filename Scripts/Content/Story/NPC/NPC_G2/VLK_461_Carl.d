///******************************************************************************************
instance VLK_461_Carl (Npc_Default)
{
	/// ------ General ------
	name								=	"Carl";
	guild								=	GIL_VLK;
	id									=	461;
	voice								=	5;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1H_Mace_L_04);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Thief", Face_L_NormalBart01, Teeth_Normal, ItAr_Smith);
	Mdl_SetModelFatness	(self, 0);
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_461;
};

func void Rtn_Start_461()
{	
	TA_Smalltalk		(20,00, 22,00, "NW_CITY_HABOUR_POOR_AREA_PATH_06");
	TA_Stand_Drinking	(22,00, 01,00, "NW_CITY_HABOUR_POOR_AREA_PATH_06");
	TA_Sleep			(01,00, 05,00, "NW_CITY_HABOUR_HUT_03_BED_02");
	TA_Sit_Bench		(05,00, 06,00, "NW_CITY_HABOUR_POOR_AREA_HUT_03_B");
	
	TA_Smith_Fire	(06,00, 06,10, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(06,10, 06,20, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire	(06,20, 06,30, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(06,30, 06,40, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool	(06,40, 06,50, "NW_CITY_POOR_SMITH_03");
	TA_Smith_Anvil	(06,50, 07,00, "NW_CITY_POOR_SMITH_01");
	
	TA_Smith_Fire	(07,00, 07,10, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(07,10, 07,20, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire	(07,20, 07,30, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(07,30, 07,40, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool	(07,40, 07,50, "NW_CITY_POOR_SMITH_03");
	TA_Smith_Anvil	(07,50, 08,00, "NW_CITY_POOR_SMITH_01");
	
	TA_Smith_Fire	(08,00, 08,10, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(08,10, 08,20, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire	(08,20, 08,30, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(08,30, 08,40, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool	(08,40, 08,50, "NW_CITY_POOR_SMITH_03");
	TA_Smith_Anvil	(08,50, 09,00, "NW_CITY_POOR_SMITH_01");
	
	TA_Smith_Fire	(09,00, 09,10, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(09,10, 09,20, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire	(09,20, 09,30, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(09,30, 09,40, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool	(09,40, 09,50, "NW_CITY_POOR_SMITH_03");
	TA_Smith_Anvil	(09,50, 10,00, "NW_CITY_POOR_SMITH_01");
	
	TA_Smith_Fire	(10,00, 10,10, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(10,10, 10,20, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire	(10,20, 10,30, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(10,30, 10,40, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool	(10,40, 10,50, "NW_CITY_POOR_SMITH_03");
	TA_Smith_Anvil	(10,50, 11,00, "NW_CITY_POOR_SMITH_01");
	
	TA_Smith_Fire	(11,00, 11,10, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(11,10, 11,20, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire	(11,20, 11,30, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(11,30, 11,40, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool	(11,40, 11,50, "NW_CITY_POOR_SMITH_03");
	TA_Smith_Anvil	(11,50, 12,00, "NW_CITY_POOR_SMITH_01");
	
	TA_Smith_Fire	(12,00, 12,10, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(12,10, 12,20, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire	(12,20, 12,30, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(12,30, 12,40, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool	(12,40, 12,50, "NW_CITY_POOR_SMITH_03");
	TA_Smith_Anvil	(12,50, 13,00, "NW_CITY_POOR_SMITH_01");
	
	TA_Smith_Fire	(13,00, 13,10, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(13,10, 13,20, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire	(13,20, 13,30, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(13,30, 13,40, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool	(13,40, 13,50, "NW_CITY_POOR_SMITH_03");
	TA_Smith_Anvil	(13,50, 14,00, "NW_CITY_POOR_SMITH_01");
	
	TA_Smith_Fire	(14,00, 14,10, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(14,10, 14,20, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire	(14,20, 14,30, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(14,30, 14,40, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool	(14,40, 14,50, "NW_CITY_POOR_SMITH_03");
	TA_Smith_Anvil	(14,50, 15,00, "NW_CITY_POOR_SMITH_01");
	
	TA_Smith_Fire	(15,00, 15,10, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(15,10, 15,20, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire	(15,20, 15,30, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(15,30, 15,40, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool	(15,40, 15,50, "NW_CITY_POOR_SMITH_03");
	TA_Smith_Anvil	(15,50, 16,00, "NW_CITY_POOR_SMITH_01");
	
	TA_Smith_Fire	(16,00,	16,10, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(16,10,	16,20, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire	(16,20,	16,30, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(16,30,	16,40, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool	(16,40,	16,50, "NW_CITY_POOR_SMITH_03");
	TA_Smith_Anvil	(16,50,	17,00, "NW_CITY_POOR_SMITH_01");
	
	TA_Smith_Fire	(17,00,	17,10, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(17,10,	17,20, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire	(17,20,	17,30, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(17,30,	17,40, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool	(17,40,	17,50, "NW_CITY_POOR_SMITH_03");
	TA_Smith_Anvil	(17,50,	18,00, "NW_CITY_POOR_SMITH_01");
	
	TA_Smith_Fire	(18,00,	18,10, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(18,10,	18,20, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire	(18,20,	18,30, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(18,30,	18,40, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool	(18,40,	18,50, "NW_CITY_POOR_SMITH_03");
	TA_Smith_Anvil	(18,50,	19,00, "NW_CITY_POOR_SMITH_01");
	
	TA_Smith_Fire	(19,00,	19,10, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(19,10,	19,20, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire	(19,20,	19,30, "NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil	(19,30,	19,40, "NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool	(19,40,	19,50, "NW_CITY_POOR_SMITH_03");
	TA_Smith_Anvil	(19,50,	20,00, "NW_CITY_POOR_SMITH_01");
};
