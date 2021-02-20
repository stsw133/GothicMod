//******************************************************************************************
instance PAL_254_Wache  (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Ritter;
	guild 								=	GIL_PAL;
	id 									=	254;
	voice 								=	4;
	flags       						=	0;
	npctype								=	NPCTYPE_OCAMBIENT;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_FatBald", Face_Normal05, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_254;
};

FUNC VOID Rtn_Start_254()
{
	TA_Guard_Passage	(08,00,23,00, "OC_GATE_GUARD_02");
	TA_Guard_Passage	(23,00,08,00, "OC_GATE_GUARD_02");
};
