///******************************************************************************************
instance BDT_1082_Addon_Skinner (Npc_Default)
{
	/// ------ General ------
	name								=	"Skinner";
	guild								=	GIL_BDT;
	id									=	1082;
	voice								=	8;
	npctype								=	NPCTYPE_BL_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_Story]					=	STORY_Bandit;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_Addon_Betty);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItKe_Addon_Skinner);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_L_Tough01, Teeth_Normal, ItAr_BDT_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1082;
};

func void Rtn_Start_1082()
{
	TA_Sleep	(09,00, 21,00, "BL_DOWN_HUT_02_SLEEP");
	TA_Sleep	(21,00, 09,00, "BL_DOWN_HUT_02_SLEEP");
};
