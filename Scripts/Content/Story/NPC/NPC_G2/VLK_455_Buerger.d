///******************************************************************************************
instance VLK_455_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BUERGER;
	guild								=	GIL_VLK;
	id									=	455;
	voice								=	8;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_VLK_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pony", Face_N_NormalBart06, Teeth_Normal, ItAr_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_455;
};

func void Rtn_Start_455()
{
	TA_Stand_ArmsCrossed	(05,20, 20,20, "NW_CITY_MERCHANT_PATH_14_C");
	TA_Smalltalk			(20,20, 05,20, "NW_CITY_MERCHANT_SHOP03_FRONT_03");
};
func void Rtn_VatrasAway_455()
{
	TA_Sit_Bench	(07,20, 20,20, "NW_CITY_MERCHANT_TAVERN01_FRONT");
	TA_Smalltalk	(20,20, 07,20, "NW_CITY_MERCHANT_SHOP03_FRONT_03");
};
