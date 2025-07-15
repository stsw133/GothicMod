///******************************************************************************************
instance Mil_302_Torwache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Torwache;
	guild								=	GIL_MIL;
	id									=	302;
	voice								=	6;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Mil_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_Normal05, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_302;
};

func void Rtn_Start_302()
{
	TA_Guard_Passage	(08,00, 23,00, "NW_CITY_GUARDOFFICE_GUARD_01");
	TA_Guard_Passage	(23,00, 08,00, "NW_CITY_GUARDOFFICE_GUARD_01");
};
