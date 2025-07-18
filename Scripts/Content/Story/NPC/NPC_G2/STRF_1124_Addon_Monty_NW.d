///******************************************************************************************
instance STRF_1124_Addon_Monty_NW (Npc_Default)
{
	/// ------ General ------
	name								=	"Monty";
	guild								=	GIL_VLK;
	id									=	1124;
	voice								=	8;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_ToughGuy]					=	true;
	
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
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_NormalBart04, Teeth_Normal, ItAr_BAU_L_00);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1124;
};

func void Rtn_Start_1124()
{
	TA_Read_Bookstand	(00,00, 12,00, "NW_CITY_HABOUR_WERFT_IN_01");
	TA_Read_Bookstand	(12,00, 00,00, "NW_CITY_HABOUR_WERFT_IN_01");
};
