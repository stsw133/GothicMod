///******************************************************************************************
instance SLD_840_Alvares (Npc_Default)
{
	/// ------ General ------
	name								=	"Alvares";
	guild								=	GIL_BDT;
	id									=	840;
	voice								=	11;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_EnemyOverride]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 25);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2h_Sld_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_FatBald", Face_B_Tough_Silas, Teeth_Normal, ItAr_SLD_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_840;
};

func void Rtn_PreStart_840()
{
	TA_Smalltalk	(08,00, 22,00, "NW_FARM2_PATH_02");
	TA_Smalltalk	(22,00, 08,00, "NW_FARM2_PATH_02");
};
func void Rtn_Start_840()
{
	TA_Smalltalk	(08,00, 22,00, "NW_FARM2_TO_TAVERN_08");
	TA_Smalltalk	(22,00, 08,00, "NW_FARM2_TO_TAVERN_08");
};
func void Rtn_Bigfarm_840()
{
	TA_Smalltalk	(08,00, 22,00, "NW_BIGFARM_HOUSE_OUT_05");
	TA_Sit_Chair	(22,00, 08,00, "NW_BIGFARM_HOUSE_12");
};
