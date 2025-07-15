///******************************************************************************************
instance STRF_1126_Addon_Telbor_NW (Npc_Default)
{
	/// ------ General ------
	name								=	"Telbor";
	guild								=	GIL_BAU;
	id									=	1126;
	voice								=	12;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2H_Axe_L_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_FatBald", Face_B_Normal01, Teeth_Normal, ItAr_BAU_L_00);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1126;
};

func void Rtn_Start_1126()
{
	TA_Rake_FP	(00,00, 12,00, "NW_FARM2_FIELD_TELBOR");
	TA_Rake_FP	(12,00, 00,00, "NW_FARM2_FIELD_TELBOR");
};
