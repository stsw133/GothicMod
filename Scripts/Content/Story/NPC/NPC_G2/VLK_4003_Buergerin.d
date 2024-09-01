///******************************************************************************************
instance VLK_4003_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buergerin;
	guild								=	GIL_VLK;
	id									=	4003;
	voice								=	17;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe1", FaceBabe_N_OldBrown, Teeth_Pretty, ItAr_Babe_VLK_L_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4003;
};

func void Rtn_Start_4003()
{
	TA_Sleep			(22,00, 07,45, "NW_CITY_REICH02_BED_02");
	
	TA_Cook_Stove		(07,45, 10,00, "NW_CITY_REICH02_COOK");
	TA_Sit_Chair		(10,00, 12,30, "NW_CITY_REICH02_SIT");
	TA_Stand_Sweeping	(12,30, 14,00, "NW_CITY_REICH02_SIT");
	
	TA_Cook_Stove		(14,00, 16,00, "NW_CITY_REICH02_COOK");
	TA_Sit_Chair		(16,00, 18,00, "NW_CITY_REICH02_SIT");
	TA_Stand_Sweeping	(18,00, 19,00, "NW_CITY_REICH02_SIT");
	
	TA_Smalltalk		(19,00, 22,00, "NW_CITY_SMALLTALK_02");
};
