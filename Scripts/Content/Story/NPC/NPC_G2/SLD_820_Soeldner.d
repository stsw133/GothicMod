///******************************************************************************************
instance SLD_820_Soeldner (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_SOELDNER;
	guild								=	GIL_SLD;
	id									=	820;
	voice								=	7;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Sld_Bow);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_Normal01, Teeth_Normal, ItAr_SLD_M);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_820;
};

func void Rtn_Start_820()
{
	TA_Stand_Guarding	(08,00, 22,00, "NW_BIGFARM_HOUSE_OUT_03");
	TA_Stand_Guarding	(22,00, 08,00, "NW_BIGFARM_HOUSE_OUT_03");
};
