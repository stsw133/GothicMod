///******************************************************************************************
instance BDT_10024_Addon_Garaz (Npc_Default)
{
	/// ------ General ------
	name								=	"Garaz";
	guild								=	GIL_BDT;
	id									=	10024;
	voice								=	8;
	npctype								=	NPCTYPE_BL_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2h_Sld_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_Normal16, Teeth_Normal, ItAr_RVN_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10024;
};

func void Rtn_Start_10024()
{
	TA_Stand_Guarding	(06,00, 12,00, "ADW_MINE_TO_MC_04");
	TA_Stand_Guarding	(12,00, 06,00, "ADW_MINE_TO_MC_04");
};
func void Rtn_Attack_10024()
{
	TA_Guide_Player	(06,00, 12,00, "ADW_MINE_MC_07");
	TA_Guide_Player	(12,00, 06,00, "ADW_MINE_MC_07");
};
func void Rtn_Gold_10024()
{
	TA_Stand_Guarding	(06,00, 12,00, "ADW_MINE_MC_GARAZ");
	TA_Stand_Guarding	(12,00, 06,00, "ADW_MINE_MC_GARAZ");
};
