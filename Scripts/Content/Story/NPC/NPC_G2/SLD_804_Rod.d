///******************************************************************************************
instance SLD_804_Rod (Npc_Default)
{
	/// ------ General ------
	name								=	"Rod";
	guild								=	GIL_SLD;
	id									=	804;
	voice								=	6;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Rod);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_ToughBart01, Teeth_Normal, ItAr_SLD_M);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_804;
};

func void Rtn_Start_804()
{
	TA_Smalltalk	(07,55, 22,55, "NW_BIGFARM_PATH_02");
	TA_Sleep		(22,55, 07,55, "NW_BIGFARM_HOUSE_SLD_SLEEP");
};
func void Rtn_Tot_804()
{
	TA_Sleep	(08,00, 23,00, "TOT");
	TA_Sleep	(23,00, 08,00, "TOT");
};
