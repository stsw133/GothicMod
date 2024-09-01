///******************************************************************************************
instance BDT_10014_Addon_Thorus (Npc_Default)
{
	/// ------ General ------
	name								=	"Thorus";
	guild								=	GIL_BDT;
	id									=	10014;
	voice								=	12;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, 65);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItKe_Addon_Thorus);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Fighter", Face_B_Thorus, Teeth_Normal, ItAr_RVN_H);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PReStart_10014;
};

func void Rtn_Prestart_10014()
{
	TA_Stand_Guarding	(00,00, 12,00, "BL_STAIRS_03");
	TA_Stand_Guarding	(12,00, 00,00, "BL_STAIRS_03");
};
func void Rtn_Start_10014()
{
	TA_Read_Bookstand	(00,00, 12,00, "BL_BLOODWYN_BOOK");
	TA_Stand_Guarding	(12,00, 20,00, "BL_BLOODWYN_04");
	TA_Stand_Guarding	(20,00, 00,00, "BL_STAIRS_03");
};
func void Rtn_TALK_10014()
{
	TA_Stand_WP	(00,00, 12,00, "BL_UP_PLACE_03");
	TA_Stand_WP	(12,00, 00,00, "BL_UP_PLACE_03");
};
