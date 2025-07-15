///******************************************************************************************
instance SLD_841_Engardo (Npc_Default)
{
	/// ------ General ------
	name								=	"Engardo";
	guild								=	GIL_BDT;
	id									=	841;
	voice								=	13;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_EnemyOverride]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 25);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2h_Sld_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pony", Face_N_Normal_Erpresser, Teeth_Normal, ItAr_SLD_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_841;
};

func void Rtn_PreStart_841()
{
	TA_Stand_Guarding	(08,00, 22,00, "NW_FARM2_PATH_02");
	TA_Stand_Guarding	(22,00, 08,00, "NW_FARM2_PATH_02");
};
func void Rtn_Start_841()
{
	TA_Smalltalk	(08,00, 22,00, "NW_FARM2_TO_TAVERN_08");
	TA_Smalltalk	(22,00, 08,00, "NW_FARM2_TO_TAVERN_08");
};
func void Rtn_Bigfarm_841()
{
	TA_Smalltalk	(08,00, 22,00, "NW_BIGFARM_HOUSE_OUT_05");
	TA_Sit_Chair	(22,00, 08,00, "NW_BIGFARM_HOUSE_12");
};
