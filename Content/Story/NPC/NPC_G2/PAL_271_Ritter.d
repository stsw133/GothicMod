//******************************************************************************************
instance PAL_271_Ritter (Npc_Default)
{
	// ------ General ------
	name								=	NAME_RITTER;
	guild 								=	GIL_PAL;
	id 									=	271;
	voice 								=	4;
	flags       						=	0;
	npctype								=	NPCTYPE_OCAMBIENT;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Pal_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal48, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_271;
};

FUNC VOID Rtn_Start_271()
{
	TA_Stand_Guarding	(08,00,23,00, "OC_EBR_FLOOR_STAND");
	TA_Stand_Guarding	(23,00,08,00, "OC_EBR_FLOOR_STAND");
};
