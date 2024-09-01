///******************************************************************************************
instance Mil_310_Stadtwache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Stadtwache;
	guild								=	GIL_MIL;
	id									=	310;
	voice								=	7;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_NewsOverride]				=	NEWS_Ambient;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Psionic", Face_N_Raven, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_310;
};

func void Rtn_Start_310()
{
	TA_Guard_Passage	(08,00, 22,00, "NW_CITY_ENTRANCE_GUARD_02");
	TA_Guard_Passage	(22,00, 08,00, "NW_CITY_ENTRANCE_GUARD_02");
};
