///******************************************************************************************
instance Mil_305_Torwache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_TORWACHE;
	guild								=	GIL_MIL;
	id									=	305;
	voice								=	3;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_NewsOverride]				=	NEWS_Ambient;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pony", Face_N_Normal01, Teeth_Normal, ItAr_ROY_L);
	Mdl_SetModelFatness	(self, 0.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_305;
};

func void Rtn_Start_305()
{
	TA_Guard_Passage	(08,00, 22,00, "NW_CITY_UPTOWN_GUARD_02");
	TA_Guard_Passage	(22,00, 08,00, "NW_CITY_UPTOWN_GUARD_02");
};
