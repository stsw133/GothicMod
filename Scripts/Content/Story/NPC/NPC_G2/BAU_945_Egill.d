///******************************************************************************************
instance BAU_945_Egill (Npc_Default)
{
	/// ------ General ------
	name								=	"Egill";
	guild								=	GIL_OUT;
	id									=	945;
	voice								=	8;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItPo_Health_02);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Pony", Face_P_Normal03, Teeth_Normal, ItAr_BAU_L_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_945;
};

func void Rtn_Start_945()
{
	TA_Pick_FP			(05,00, 21,00, "NW_FARM2_FIELD_02");
	TA_Stand_Drinking	(21,00, 00,02, "NW_FARM2_OUT_10");
	TA_Sit_Bench		(00,02, 05,00, "NW_FARM2_OUT_06");
};
