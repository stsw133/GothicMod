///******************************************************************************************
instance BDT_1081_Addon_Wache_01 (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_EstebanGuard;
	guild 								=	GIL_BDT;
	id 									=	1081;
	voice 								=	4;
	npctype								=	NPCTYPE_BL_MAIN;

	/// ------ AI vars ------
	aivar[AIV_Story]					=	STORY_Bandit | STORY_Esteban;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);
	EquipItem (self, ItRw_Mil_Crossbow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_Normal21, 0, ITAR_RVN_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1081;
};

func void Rtn_Start_1081()
{
	TA_Stand_Guarding	(00,00,00,00, "BL_MID_07_B");
	TA_Stand_Guarding	(00,00,00,00, "BL_MID_07_B");
};
func void Rtn_Ambush_1081()
{
	TA_Stand_Guarding	(00,00,00,00, "BL_INN_OUTSIDE_01");
	TA_Stand_Guarding	(00,00,00,00, "BL_INN_OUTSIDE_01");
};
