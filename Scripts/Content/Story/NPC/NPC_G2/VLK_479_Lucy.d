///******************************************************************************************
instance VLK_479_Lucy (Npc_Default)
{
	/// ------ General ------
	name								=	"Lucy";
	guild								=	GIL_VLK;
	id									=	479;
	voice								=	17;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 35);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe1", FaceBabe_N_Anne, Teeth_Pretty, ItAr_Babe_BAU_H_00);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_479;
};

func void Rtn_Start_479()
{
	TA_Rake_FP		(05,00, 19,00, "NW_CITY_PICK_02");
	TA_Cook_Stove	(19,00, 22,00, "NW_CITY_HABOUR_HUT_07_IN");
	TA_Sleep		(22,00, 05,00, "NW_CITY_HABOUR_HUT_07_BED_01");
};
