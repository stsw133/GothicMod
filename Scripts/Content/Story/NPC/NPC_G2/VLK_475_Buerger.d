///******************************************************************************************
instance VLK_475_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buerger;
	guild								=	GIL_VLK;
	id									=	475;
	voice								=	1;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;	
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_VLK_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Weak_Herek, Teeth_Normal, ItAr_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_475;
};

func void Rtn_Start_475()
{
	TA_Stand_ArmsCrossed	(10,55, 18,50, "NW_CITY_WATCH_FIGHT_02");
	TA_Smalltalk			(18,50, 03,05, "NW_CITY_HABOUR_04");
	TA_Stand_Drinking		(03,05, 05,05, "NW_CITY_HABOUR_PUFF_IN_01");
	TA_Smalltalk			(05,05, 10,05, "NW_CITY_HABOUR_POOR_AREA_01");
};
