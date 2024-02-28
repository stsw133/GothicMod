///******************************************************************************************
instance VLK_419_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buerger;
	guild 								=	GIL_VLK;
	id 									=	419;
	voice 								=	1;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, FightTalent_Initiate+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Normal41, 0, ITAR_VLK_L_02);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_419;
};

func void Rtn_Start_419()
{	
	TA_Sit_Bench		(07,00,11,00, "NW_CITY_UPTOWN_PATH_23");
	TA_Stand_Drinking	(11,00,12,30, "NW_CITY_UPTOWN_HUT_02_ENTRY");
	TA_Stand_Eating		(12,30,15,00, "NW_CITY_UPTOWN_PATH_17");
	TA_Sit_Bench 		(15,00,18,00, "NW_CITY_UPTOWN_PATH_23");
	TA_Stand_Drinking	(18,00,20,00, "NW_CITY_UPTOWN_PATH_17");
	TA_Sit_Chair		(20,00,23,00, "NW_CITY_UPTOWN_HUT_03_IN");
	TA_Sleep			(23,00,07,00, "NW_CITY_UPTOWN_HUT_03_BED");
};
