//******************************************************************************************
instance Pal_219_Ritter (Npc_Default)
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
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium+5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	// ------ Weapons ------
	EquipItem (self, ItMw_1H_Pal_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Fighter", Face_Normal00, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_219;
};

FUNC VOID Rtn_Start_219()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_PATH_264");
	TA_Stand_Guarding	(23,00,08,00, "OW_PATH_264");
};
