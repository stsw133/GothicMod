///******************************************************************************************
instance VLK_426_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Buergerin;
	guild								=	GIL_VLK;
	id									=	426;
	voice								=	17;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
		
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Vlk_Dagger);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe8", FaceBabe_N_Lilo, Teeth_Pretty, ItAr_Babe_VLK_L_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_426;
};

func void Rtn_Start_426()
{
	TA_Stand_ArmsCrossed	(05,05, 20,05, "NW_CITY_MERCHANT_PATH_15");
	TA_Smalltalk			(20,05, 03,55, "NW_CITY_MERCHANT_TAVERN01_01");
	TA_Smalltalk			(03,55, 05,05, "NW_CITY_TAVERN_IN_05");
};
func void Rtn_VatrasAway_426()
{
	TA_Smalltalk	(05,05, 20,00, "NW_CITY_MERCHANT_STAND_01");
	TA_Smalltalk	(20,00, 05,05, "NW_CITY_MERCHANT_TAVERN01_01");
};
