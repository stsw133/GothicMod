///******************************************************************************************
instance BDT_10018_Addon_Torwache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_TORWACHE;
	guild								=	GIL_BDT;
	id									=	10018;
	voice								=	4;
	npctype								=	NPCTYPE_BL_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_NewsOverride]				=	NEWS_Ambient | NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Fighter", Face_L_Jackal, Teeth_Normal, ItAr_RVN_H);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10018;
};

func void Rtn_Start_10018()
{
	TA_Guard_Passage	(00,00, 12,00, "BL_RAVEN_GUARD_01");
	TA_Guard_Passage	(12,00, 00,00, "BL_RAVEN_GUARD_01");
};
