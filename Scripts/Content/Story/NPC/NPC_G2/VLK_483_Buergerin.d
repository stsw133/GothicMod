///******************************************************************************************
instance VLK_483_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Buergerin;
	guild								=	GIL_VLK;
	id									=	483;
	voice								=	16;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 15);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe4", FaceBabe_N_VlkBlonde, Teeth_Pretty, ItAr_Babe_VLK_L_01);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_483;
};

func void Rtn_Start_483()
{
	TA_Smalltalk	(08,00, 18,00, "NW_CITY_HABOUR_09");
	TA_Sleep		(18,00, 08,00, "NW_CITY_HABOUR_HUT_06_BED_01");
};
