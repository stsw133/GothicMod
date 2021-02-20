//******************************************************************************************
instance PAL_253_Wache (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Ritter;
	guild 								=	GIL_PAL;
	id 									=	253;
	voice 								=	9;
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
	EquipItem (self, ItRw_Mil_Crossbow);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Fighter", Face_Normal01, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_253;
};

FUNC VOID Rtn_Start_253()
{
	TA_Stand_Guarding	(08,00,23,00, "OC_GATE_GUARD_01");
	TA_Stand_Guarding	(23,00,08,00, "OC_GATE_GUARD_01");
};
FUNC VOID Rtn_Marcos_253()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_STAND_GUARDS");
	TA_Stand_Guarding	(23,00,08,00, "OW_STAND_GUARDS");
};
