///******************************************************************************************
instance VLK_465_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BUERGER;
	guild								=	GIL_VLK;
	id									=	465;
	voice								=	1;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Psionic", Face_N_Normal_Erpresser, Teeth_Normal, ItAr_Vlk_L_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_465;
};

func void Rtn_Start_465()
{
	TA_Stand_Eating	(08,00, 22,00, "NW_CITY_HABOUR_FIREPLACE_01");
	TA_Sleep		(22,00, 08,00, "NW_CITY_HABOUR_POOR_AREA_HUT_05_BED_01");
};
