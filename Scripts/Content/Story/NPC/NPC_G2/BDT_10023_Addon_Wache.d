///******************************************************************************************
instance BDT_10023_Addon_Wache (Npc_Default)
{
	/// ------ General ------
	name								=	"Strażnik niewolników";
	guild								=	GIL_BDT;
	id									=	10023;
	voice								=	11;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_L_Tough01, Teeth_Normal, ItAr_RVN_M);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10023;
};

func void Rtn_Start_10023()
{
	TA_Stand_Guarding	(06,00, 12,00, "ADW_MINE_LAGER_01");
	TA_Stand_Guarding	(12,00, 06,00, "ADW_MINE_LAGER_01");
};
func void Rtn_SOUP_10023()
{
	TA_Stand_Eating	(06,00, 12,00, "ADW_MINE_27");
	TA_Stand_Eating	(12,00, 06,00, "ADW_MINE_27");
};
