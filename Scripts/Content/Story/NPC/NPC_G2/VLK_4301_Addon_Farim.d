///******************************************************************************************
instance VLK_4301_Addon_Farim (Npc_Default)
{
	/// ------ General ------
	name								=	"Farim";
	guild								=	GIL_VLK;
	id									=	4301;
	voice								=	11;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Mace);
	CreateInvItem (self, ItMi_Aquamarine);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_NormalBart08, Teeth_Normal, ItAr_BAU_L_00);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4301;
};

func void Rtn_Start_4301()
{
	TA_Repair_Hut		(08,00, 12,00, "NW_CITY_WAY_TO_SHIP_FISCHER_05");
	TA_Stand_Guarding	(12,00, 16,00, "NW_CITY_WAY_TO_SHIP_FISCHER_06");
	TA_Repair_Hut		(16,00, 20,00, "NW_CITY_WAY_TO_SHIP_FISCHER_05");
	TA_Stand_Guarding	(20,00, 01,30, "NW_CITY_WAY_TO_SHIP_FISCHER_06");
	TA_Sleep			(01,30, 08,00, "NW_CITY_WAY_TO_SHIP_FISCHER_04");
};
