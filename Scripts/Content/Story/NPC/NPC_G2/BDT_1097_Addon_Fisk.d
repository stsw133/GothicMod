///******************************************************************************************
instance BDT_1097_Addon_Fisk (Npc_Default)
{
	/// ------ General ------
	name								=	"Fisk";
	guild 								=	GIL_BDT;
	id 									=	1097;
	voice 								=	12;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_Cavalorn, 0, ITAR_RVN_L);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_1097;
};

func void Rtn_PreStart_1097()
{
  	TA_Stand_WP	(08,00,20,00, "BL_MID_05");
  	TA_Stand_WP	(20,00,08,00, "BL_MID_05");
};
func void Rtn_Start_1097()
{
  	TA_Stand_Guarding	(08,00,20,00, "BL_MERCHANT_01");
  	TA_Stand_Guarding	(20,00,08,00, "BL_MERCHANT_01");
};
func void Rtn_Meeting_1097()
{
  	TA_Stand_Guarding	(08,00,20,00, "BL_INN_UP_06");
  	TA_Stand_Guarding	(20,00,08,00, "BL_INN_UP_06");
};
func void Rtn_Ambush_1097()
{
  	TA_Stand_WP	(08,00,20,00, "BL_INN_07");
  	TA_Stand_WP	(20,00,08,00, "BL_INN_07");
};
