///******************************************************************************************
instance VLK_452_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BUERGER;
	guild								=	GIL_VLK;
	id									=	452;
	voice								=	6;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Weak_Asghan, Teeth_Normal, ItAr_Vlk_L_02);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_452;
};

func void Rtn_Start_452()
{
	TA_Smalltalk	(06,05, 20,15, "NW_CITY_MERCHANT_SHOP01_FRONT_03_C");
	TA_Sleep		(20,15, 06,05, "NW_CITY_LEOMAR_BED_07");
};
