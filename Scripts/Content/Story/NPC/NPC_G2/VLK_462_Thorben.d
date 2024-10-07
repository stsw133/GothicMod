///******************************************************************************************
instance VLK_462_Thorben (Npc_Default)
{
	/// ------ General ------
	name								=	"Thorben";
	guild								=	GIL_VLK;
	id									=	462;
	voice								=	6;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItems (self, ItKe_Lockpick, 12);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal04, Teeth_Normal, ItAr_Vlk_L_15);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_462;
};

func void Rtn_Start_462()
{
	TA_Saw			(06,00, 09,00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut	(09,00, 13,05, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Smalltalk	(13,05, 14,00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut	(14,00, 16,00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Saw			(16,00, 17,05, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Smalltalk	(17,05, 18,00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Saw			(18,00, 19,00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut	(19,00, 20,00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Sit_Bench	(20,00, 00,00, "NW_CITY_MERCHANT_HUT_01_FRONT");
	TA_Sleep		(00,00, 06,00, "NW_CITY_BED_BOSPER");
};
