//******************************************************************************************
instance BDT_10011_Addon_Bandit (Npc_Default)
{
	// ------ General ------
	name								=	NAME_BANDIT;
	guild 								=	GIL_BDT;
	id 									=	10011;
	voice 								=	1;
	flags      							=	0;
	npctype								=	NPCTYPE_TAL_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Psionic", Face_Normal08, 0, ITAR_Bandit);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_10011;
};

FUNC VOID Rtn_Start_10011()
{
	TA_Sit_Bench	(22,02,06,00, "ADW_SWAMP_SIT_BENCH_02");
	TA_Smalltalk	(06,00,22,02, "BL_FIGHT_03");
};
