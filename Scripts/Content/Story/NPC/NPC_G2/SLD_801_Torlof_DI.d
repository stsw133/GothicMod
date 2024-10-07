///******************************************************************************************
instance SLD_801_Torlof_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Torlof";
	guild								=	GIL_SLD;
	id									=	8010;
	voice								=	1;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_PARTYMEMBER]				=	true;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Sword);
	EquipItem (self, ItRw_Sld_Bow);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pony", Face_N_Torlof, Teeth_Normal, ItAr_SLD_H);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_8010;
};

func void Rtn_Start_8010()
{
	TA_Stand_WP	(08,00, 23,00, "SHIP_CREW_CAPTAIN");
	TA_Sleep	(23,00, 08,00, "SHIP_IN_06");
};
func void Rtn_OrkSturmDI_8010()
{
	TA_Stand_WP	(08,00, 23,00, "DI_SHIP_03");
	TA_Stand_WP	(23,00, 08,00, "DI_SHIP_03");
};
