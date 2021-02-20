//******************************************************************************************
instance BDT_10013_Addon_Bandit (Npc_Default)
{
	// ------ General ------
	name								=	NAME_BANDIT;
	guild 								=	GIL_BDT;
	id 									=	10013;
	voice 								=	13;
	flags      							=	0;
	npctype								=	NPCTYPE_TAL_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Fighter", Face_Normal04, 0, ITAR_Bandit);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_10013;
};

FUNC VOID Rtn_Start_10013()
{
	TA_Stand_Guarding	(00,00,12,00, "XXX");
	TA_Stand_Guarding	(00,00,12,00, "XXX");
};
