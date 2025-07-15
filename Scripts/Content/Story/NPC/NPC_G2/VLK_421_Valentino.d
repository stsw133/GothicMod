///******************************************************************************************
instance VLK_421_Valentino (Npc_Default)
{
	/// ------ General ------
	name								=	"Valentino";
	guild								=	GIL_VLK;
	id									=	421;
	voice								=	3;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Vlk_Mace);
	
	/// ------ Inventory ------
	CreateInvItems (self, ItMi_Gold, 200);
	CreateInvItem (self, ItKe_Valentino);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal03, Teeth_Normal, ItAr_VLK_L_14);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_421;
};

func void Rtn_Start_421()
{
	TA_Stand_ArmsCrossed	(10,00, 20,00, "NW_CITY_MERCHANT_PATH_16");
	TA_Sit_Chair			(20,00, 04,00, "NW_CITY_MERCHANT_TAVERN01_BACKROOM");
	TA_Sleep				(04,00, 10,00, "NW_CITY_REICH03_BED_01");
};
func void Rtn_VatrasAway_421()
{
	TA_Smalltalk	(10,00, 20,00, "NW_CITY_MERCHANT_TAVERN01_01");
	TA_Sit_Chair	(20,00, 04,00, "NW_CITY_MERCHANT_TAVERN01_BACKROOM");
	TA_Sleep		(04,00, 10,00, "NW_CITY_REICH03_BED_01");
};
