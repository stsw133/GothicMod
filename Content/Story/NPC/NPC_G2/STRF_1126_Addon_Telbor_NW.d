//******************************************************************************************
instance STRF_1126_Addon_Telbor_NW (Npc_Default)
{
	// ------ General ------
	name								=	"Telbor";
	guild 								=	GIL_BAU;
	id 									=	1126;
	voice 								=	12;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_FatBald", Face_Normal03, 0, ITAR_BAU_00);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1126;
};

FUNC VOID Rtn_Start_1126()
{
	TA_Rake_FP	(00,00,12,00, "NW_FARM2_FIELD_TELBOR");
	TA_Rake_FP	(12,00,00,00, "NW_FARM2_FIELD_TELBOR");
};
