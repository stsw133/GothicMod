//******************************************************************************************
instance PAL_270_Ritter (Npc_Default)
{
	// ------ General ------
	name								=	NAME_RITTER;
	guild 								=	GIL_PAL;
	id 									=	270;
	voice 								=	6;
	flags       						=	0;
	npctype								=	NPCTYPE_OCMAIN;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Fighter", Face_Normal04, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_270;
};

FUNC VOID Rtn_Start_270()
{
	TA_Stand_Guarding	(08,00,23,00, "OC_EBR_STAND_THRONE_02");
	TA_Stand_Guarding	(23,00,08,00, "OC_EBR_BASE_TO_FLOOR");
};
