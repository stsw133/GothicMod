///******************************************************************************************
instance VLK_480_Fellan (Npc_Default)
{
	/// ------ General ------
	name								=	"Fellan";
	guild 								=	GIL_VLK;
	id 									=	480;
	voice 								=	6;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 5);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_ShortSword2);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal26, 0, ITAR_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_480;
};

func void Rtn_Start_480()
{
	TA_Repair_Hut	(04,30,08,00, "NW_CITY_PATH_HABOUR_09");
	TA_Repair_Hut	(08,00,12,00, "NW_CITY_HABOUR_REPAIR_04");
	TA_Repair_Hut	(12,00,16,00, "NW_CITY_PATH_HABOUR_09");
	TA_Repair_Hut	(16,00,20,00, "NW_CITY_HABOUR_REPAIR_04");
	TA_Repair_Hut	(20,00,01,30, "NW_CITY_PATH_HABOUR_09");
	TA_Sleep		(01,30,04,30, "NW_CITY_HABOUR_HUT_05_BED_01");
};
func void Rtn_OhneHammer_480()
{
	TA_Sit_Bench	(06,00,23,00, "NW_CITY_HABOUR_REPAIR_03");
    TA_Sleep		(23,00,06,00, "NW_CITY_HABOUR_HUT_05_BED_01");
};
