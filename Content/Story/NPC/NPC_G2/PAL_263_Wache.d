//******************************************************************************************
instance PAL_263_Wache (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Ritter;
	guild 								=	GIL_PAL;
	id 									=	263;
	voice 								=	4;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Medium);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Bloodwyn, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_263;
};

FUNC VOID Rtn_Start_263()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "OC_EBR_GUARDPASSAGE_02");
	TA_Stand_ArmsCrossed	(23,00,08,00, "OC_EBR_GUARDPASSAGE_02");
};
