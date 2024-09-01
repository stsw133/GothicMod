///******************************************************************************************
instance BAU_914_Baeuerin (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_MAGD;
	guild								=	GIL_BAU;
	id									=	914;
	voice								=	16;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 20);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe", FaceBabe_N_Velaya, 0, ItAr_Babe_BAU_H_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_914;
};

func void Rtn_Start_914()
{
	TA_Cook_Stove	(07,00, 20,00, "NW_BIGFARM_HOUSE_UP1_COOK");
	TA_Stand_Eating	(20,00, 07,00, "NW_BIGFARM_STABLE_05");
};
