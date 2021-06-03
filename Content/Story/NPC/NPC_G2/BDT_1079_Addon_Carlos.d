///******************************************************************************************
instance BDT_1079_Addon_Carlos (Npc_Default)
{
	/// ------ General ------
	name								=	"Carlos";
	guild 								=	GIL_BDT;
	id 									=	1079;
	voice 								=	12;
	npctype								=	NPCTYPE_BL_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Fighter", Face_Ian, 0, ITAR_RVN_M);
	Mdl_SetModelFatness	(self, 0.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_1079;
};

func void Rtn_PreStart_1079()
{
	TA_Stand_Guarding	(00,00,12,00, "BL_WAIT_CARLOS");
	TA_Stand_Guarding	(12,00,00,00, "BL_WAIT_CARLOS");
};
func void Rtn_Start_1079()
{
   TA_Stand_Guarding	(06,00,20,00, "ADW_PATH_TO_BL_02");
   TA_Stand_Guarding	(20,00,00,00, "BANDIT_FIGHT");
   TA_Stand_Eating		(00,00,03,00, "BANDIT_FIGHT");
   TA_Stand_Drinking	(03,00,06,00, "BANDIT_FIGHT");
};
