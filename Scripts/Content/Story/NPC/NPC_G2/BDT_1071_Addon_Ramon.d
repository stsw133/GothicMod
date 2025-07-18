///******************************************************************************************
instance BDT_1071_Addon_Ramon (Npc_Default)
{
	/// ------ General ------
	name								=	"Ramon";
	guild								=	GIL_BDT;
	id									=	1071;
	voice								=	7;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_NewsOverride]				=	NEWS_Ambient | NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_AddFightSkills (self, 55);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2h_Sld_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_L_ToughBald01, Teeth_Normal, ItAr_RVN_M);
	Mdl_SetModelFatness	(self, 0.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1071;
};

func void Rtn_Start_1071()
{
 	TA_Guard_Passage	(09,00, 21,00, "BL_ENTRANCE_04");
	TA_Guard_Passage	(21,00, 09,00, "BL_ENTRANCE_04");
};
