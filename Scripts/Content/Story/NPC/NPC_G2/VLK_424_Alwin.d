///******************************************************************************************
instance Vlk_424_Alwin (Npc_Default)
{
	/// ------ General ------
	name								=	"Alwin";
	guild								=	GIL_VLK;
	id									=	424;
	voice								=	12;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Vlk_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_NormalBart_Riordian, Teeth_Normal, ItAr_Butcher);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_424;
};

func void Rtn_Start_424()
{
	TA_Sit_Bench	(08,00, 22,00, "NW_CITY_PATH_HABOUR_18");
	TA_Sleep		(22,00, 08,00, "NW_CITY_HABOUR_HUT_07_BED_01");
};
