///******************************************************************************************
instance BDT_1086_Addon_Scatty (Npc_Default)
{
	/// ------ General ------
	name								=	"Scatty";
	guild 								=	GIL_BDT;
	id 									=	1086;
	voice 								=	1;
	npctype								=	NPCTYPE_BL_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Strong+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Schwert5);

	/// ------ Inventory ------
	CreateInvItems (self, ItMi_GoldNugget_Addon, 5);
	CreateInvItems (self, ItPo_Health_01, 2);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_FatBald", Face_Scatty, 0, ITAR_RVN_L);
	Mdl_SetModelFatness	(self, 1.6);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1086;
};

func void Rtn_Start_1086()
{
	TA_Stand_Guarding	(19,00,20,00, "BL_MINELAGER_06");
	TA_Stand_Guarding	(20,00,09,00, "BL_MINELAGER_06");
};
