///******************************************************************************************
instance BAU_902_Gunnar (Npc_Default)
{
	/// ------ General ------
	name								=	"Gunnar";
	guild								=	GIL_BAU;
	id									=	902;
	voice								=	10;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 25);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_NormalBart03, Teeth_Normal, ItAr_BAU_L_01);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_902;
};

func void Rtn_Start_902()
{
	TA_Smalltalk	(08,00, 19,59, "NW_BIGFARM_STABLE_OUT_01");
	TA_Sit_Chair	(19,59, 08,00, "NW_BIGFARM_STABLE_06");
};
