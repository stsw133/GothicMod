///******************************************************************************************
instance SLD_817_Soeldner (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_SOELDNER;
	guild								=	GIL_SLD;
	id									=	817;
	voice								=	6;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Sld_Axe);
	EquipItem (self, ItRw0_Bow_M_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_L_Tough01, Teeth_Normal, ItAr_SLD_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_817;
};

func void Rtn_Start_817()
{
	TA_Stand_Guarding	(08,00, 22,00, "NW_BIGFARM_VORPOSTEN1_02");
	TA_Stand_Guarding	(22,00, 08,00, "NW_BIGFARM_VORPOSTEN1_02");
};
func void Rtn_BengarsFarm_817()
{
	TA_Smalltalk	(08,00, 22,00, "NW_FARM3_PATH_02");
	TA_Smalltalk	(22,00, 08,00, "NW_FARM3_PATH_02");
};
