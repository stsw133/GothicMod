///******************************************************************************************
instance VLK_450_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BUERGER;
	guild								=	GIL_VLK;
	id									=	450;
	voice								=	6;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Weak_Herek, Teeth_Normal, ItAr_Vlk_L_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_450;
};

func void Rtn_Start_450()
{
	TA_Stand_ArmsCrossed	(05,00, 20,00, "NW_CITY_MERCHANT_PATH_15");
	TA_Smalltalk			(20,00, 03,50, "NW_CITY_MERCHANT_STAND_01");
	TA_Smalltalk			(03,50, 05,00, "NW_CITY_TAVERN_IN_06");
};
func void Rtn_VatrasAway_450()
{
	TA_Smalltalk	(05,00, 20,00, "NW_CITY_MERCHANT_PATH_14");
	TA_Smalltalk	(20,00, 05,00, "NW_CITY_MERCHANT_STAND_01");
};
