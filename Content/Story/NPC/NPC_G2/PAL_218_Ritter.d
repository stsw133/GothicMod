//******************************************************************************************
instance Pal_218_Ritter (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Ritter;
	guild 								=	GIL_OUT;
	id 									=	218;
	voice 								=	4;
	flags       						=	0;
	npctype								=	NPCTYPE_OCAMBIENT;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_1H_Pal_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal32, 0, ITAR_PAL_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_218;
};

FUNC VOID Rtn_Start_218()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_PATH_148_A");
	TA_Stand_Guarding	(23,00,08,00, "OW_PATH_148_A");
};
