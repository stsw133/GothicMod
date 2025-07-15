///******************************************************************************************
instance VLK_405_Fernando (Npc_Default)
{
	/// ------ General ------
	name								=	"Fernando";
	guild								=	GIL_VLK;
	id									=	405;
	voice								=	14;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Vlk_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItSe_GoldPocket100);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Corristo, Teeth_Normal, ItAr_VLK_H_11);
	Mdl_SetModelFatness	(self, 3);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_405;
};

func void Rtn_Start_405()
{
	TA_Sleep			(22,05, 07,59, "NW_CITY_REICH02_BED_01");
	TA_Smalltalk		(07,59, 11,00, "NW_CITY_UPTOWN_PATH_08");
	TA_Stand_WP			(11,00, 14,59, "NW_CITY_UPTOWN_PATH_04");
	TA_Smalltalk		(14,59, 18,00, "NW_CITY_UPTOWN_PATH_08");
	TA_Read_Bookstand	(18,00, 20,00, "NW_CITY_REICH02_READ");
	TA_Read_Bookstand	(20,00, 22,05, "NW_CITY_REICH02_READ");
};
func void Rtn_Wait_405()
{
	TA_Smalltalk	(07,59, 11,00, "NW_CITY_UPTOWN_PATH_08");
	TA_Stand_WP		(11,00, 14,59, "NW_CITY_UPTOWN_PATH_04");
	TA_Smalltalk	(14,59, 18,00, "NW_CITY_UPTOWN_PATH_08");
	TA_Stand_WP		(18,00, 07,59, "NW_CITY_UPTOWN_PATH_04");
};
func void Rtn_Prison_405()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "NW_CITY_HABOUR_KASERN_RENGARU");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "NW_CITY_HABOUR_KASERN_RENGARU");
};
