///******************************************************************************************
instance BAU_950_Lobart (Npc_Default)
{
	/// ------ General ------
	name								=	"Lobart";
	guild								=	GIL_OUT;
	id									=	950;
	voice								=	5;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 20);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart_Senyan, Teeth_Normal, ItAr_BAU_H_01);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_950;
};

func void Rtn_Start_950()
{
	TA_Stand_Guarding	(07,30, 23,00, "NW_FARM1_LOBART");
	TA_Sleep			(23,00, 07,30, "NW_FARM1_INHOUSE_BED_01");
};
func void Rtn_ObesessionRitual_950()
{
	TA_Stand_Guarding	(07,30, 23,00, "NW_FARM1_OUT_05");
	TA_Stand_Guarding	(23,00, 07,30, "NW_FARM1_OUT_05");
};
