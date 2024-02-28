///******************************************************************************************
instance BDT_1082_Addon_Skinner (Npc_Default)
{
	/// ------ General ------
	name								=	"Skinner";
	guild 								=	GIL_BDT;
	id 									=	1082;
	voice 								=	8;
	npctype								=	NPCTYPE_BL_MAIN;

	/// ------ AI vars ------
	aivar[AIV_Story]					=	STORY_Bandit;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Addon_Betty);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ITKE_ADDON_SKINNER);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_Normal01, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1082;
};

func void Rtn_Start_1082()
{
    TA_Sleep	(09,00,21,00, "BL_DOWN_HUT_02_SLEEP");
    TA_Sleep	(21,00,09,00, "BL_DOWN_HUT_02_SLEEP");
};
