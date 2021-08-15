///******************************************************************************************
instance BDT_1085_Addon_Bloodwyn (Npc_Default)
{
	/// ------ General ------
	name								=	"Bloodwyn";
	guild 								=	GIL_BDT;
	id 									=	1085;
	voice 								=	4;
	npctype								=	NPCTYPE_BL_MAIN;

	/// ------ AI vars ------
	aivar[AIV_StoryBandit]				=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Sword);

	/// ------ Inventory ------
	CreateInvItem (self, ITKE_Addon_Bloodwyn_01);
	CreateInvItem (self, ItMi_Addon_Bloodwyn_Kopf);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Bloodwyn, 0, ITAR_RVN_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1085;
};

func void Rtn_Start_1085()
{
    TA_Stand_WP	(08,00,16,00, "BL_RAVEN_09");
    TA_Stand_WP	(16,00,08,00, "BL_RAVEN_09");
};
func void Rtn_Mine_1085()
{
    TA_Stand_WP	(08,00,16,00, "ADW_MINE_TO_MC_01");
    TA_Stand_WP	(16,00,08,00, "ADW_MINE_TO_MC_01");
};
func void Rtn_Gold_1085()
{
    TA_Stand_WP	(08,00,16,00, "ADW_MINE_MC_07");
    TA_Stand_WP	(16,00,08,00, "ADW_MINE_MC_07");
};
