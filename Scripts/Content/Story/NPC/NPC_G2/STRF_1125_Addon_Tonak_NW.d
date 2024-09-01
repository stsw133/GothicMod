///******************************************************************************************
instance STRF_1125_Addon_Tonak_NW (Npc_Default)
{
	/// ------ General ------
	name								=	"Tonak";
	guild								=	GIL_OUT;
	id									=	1125;
	voice								=	3;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Thief", Face_B_Normal01, Teeth_Normal, ItAr_BAU_L_01);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1125;
};

func void Rtn_Start_1125()
{
	TA_Rake_FP	(00,00, 12,00, "NW_FARM2_FIELD_TANOK");
	TA_Rake_FP	(12,00, 00,00, "NW_FARM2_FIELD_TANOK");
};
