///******************************************************************************************
instance VLK_484_Lehmar (Npc_Default)
{
	/// ------ General ------
	name								=	"Lehmar";
	guild								=	GIL_VLK;
	id									=	484;
	voice								=	9;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_SLD_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItWr_Schuldenbuch);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_Whistler, Teeth_Normal, ItAr_Vlk_L_09);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_484;
};

func void Rtn_Start_484()
{
	TA_Sit_Throne	(06,30, 00,30, "NW_CITY_HABOUR_HUT_08_IN_C");
	TA_Sleep		(00,30, 06,30, "NW_CITY_HABOUR_HUT_08_BED_02");
};
