///******************************************************************************************
instance SLD_803_Cipher (Npc_Default)
{
	/// ------ General ------
	name								=	"Cipher";
	guild								=	GIL_SLD;
	id									=	803;
	voice								=	7;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItems (self, ItRw_Arrow, 50);
	CreateInvItem (self, ItRw_Bow_L_02);
	CreateInvItem (self, ItRw_Sld_Bow);
	CreateInvItem (self, ItMw_2H_OrcAxe_01);
	CreateInvItems (self, ItLsTorch, 8);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart10, Teeth_Normal, ItAr_SLD_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_803;
};

func void Rtn_Start_803()
{
	TA_Smalltalk	(07,35, 23,35, "NW_BIGFARM_PATH_04_1");
	TA_Sleep		(23,35, 07,35, "NW_BIGFARM_HOUSE_SLD_SLEEP");
};
func void Rtn_Tot_803()
{
	TA_Sleep	(08,00, 23,00, "TOT");
	TA_Sleep	(23,00, 08,00, "TOT");
};
