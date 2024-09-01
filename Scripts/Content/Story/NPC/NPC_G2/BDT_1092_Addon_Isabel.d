///******************************************************************************************
instance BDT_1092_Addon_Isabel (Npc_Default)
{
	/// ------ General ------
	name								=	"Isabel";
	guild								=	GIL_BDT;
	id									=	1092;
	voice								=	17;
	npctype								=	NPCTYPE_BL_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 25);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
//	EquipItem (self, ItMw_1h_Vlk_Dagger);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Dressed+2, BodySkin_N, "Hum_Head_Babe", FaceBabe_N_Velaya, Teeth_Pretty, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1092;
};

func void Rtn_Start_1092()
{
	TA_Smalltalk		(07,01, 12,00, "BL_INN_UP_07");
	TA_Stand_Drinking	(12,00, 01,05, "BL_INN_UP_05");
	TA_Sleep			(01,05, 07,01, "BL_INN_UPSIDE_SLEEP_02");
};
