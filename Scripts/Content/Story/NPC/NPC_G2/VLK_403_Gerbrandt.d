///******************************************************************************************
instance VLK_403_Gerbrandt (Npc_Default)
{
	/// ------ General ------
	name								=	"Gerbrandt";
	guild 								=	GIL_VLK;
	id 									=	403;
	voice 								=	10;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItSe_GoldPocket100);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_FatBald", Face_Normal03, 0, ITAR_VLK_H_13);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_403;
};

func void Rtn_Start_403()
{
	TA_Sleep		(22,00,08,00, "NW_CITY_GERBRANDT_BED_01");
	TA_Smalltalk	(08,00,11,00, "NW_CITY_SMALLTALK_02");
    TA_Sit_Bench	(11,00,15,00, "NW_CITY_UPTOWN_PATH_23_B");
    TA_Smalltalk	(15,00,18,00, "NW_CITY_SMALLTALK_02");
	TA_Sit_Bench	(18,00,22,00, "NW_CITY_UPTOWN_PATH_23_B");
};
func void Rtn_WaitForDiego_403()
{
	TA_Sleep	(22,00,08,00, "NW_CITY_GERBRANDT_BED_01");
	TA_Stand_WP	(08,00,22,00, "NW_CITY_UPTOWN_PATH_23");
};
func void Rtn_NewLife_403()		
{
	TA_Smalltalk	(22,00,08,00, "NW_CITY_HABOUR_POOR_AREA_PATH_03");
	TA_Smalltalk	(08,00,11,00, "NW_CITY_HABOUR_POOR_AREA_PATH_03");
    TA_Smalltalk 	(11,00,15,00, "NW_CITY_HABOUR_POOR_AREA_PATH_03");
    TA_Smalltalk	(15,00,18,00, "NW_CITY_HABOUR_POOR_AREA_PATH_03");
	TA_Smalltalk 	(18,00,22,00, "NW_CITY_HABOUR_POOR_AREA_PATH_03");
};
