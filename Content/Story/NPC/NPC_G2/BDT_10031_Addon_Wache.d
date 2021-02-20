//******************************************************************************************
instance BDT_10031_Addon_Wache (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Wache;
	guild 								=	GIL_BDT;
	id 									=	10031;
	voice 								=	6;
	flags      							=	0;
	npctype								=	NPCTYPE_BL_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Axe);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal36, 0, ITAR_RVN_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_10031;
};

FUNC VOID Rtn_Start_10031()
{
	TA_Stand_Eating	(06,00,12,00, "BL_MINELAGER_03");
	TA_Stand_Eating	(12,00,06,00, "BL_MINELAGER_03");
};
