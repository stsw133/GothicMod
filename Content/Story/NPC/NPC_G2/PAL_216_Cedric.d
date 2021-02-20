//******************************************************************************************
instance Pal_216_Cedric (Npc_Default)
{
	// ------ General ------
	name								=	"Cedrik";
	guild 								=	GIL_PAL;
	id 									=	216;
	voice 								=	12;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Medium+5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_1H_Pal_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal37, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_216;
};

FUNC VOID Rtn_Start_216()
{
	TA_Practice_Sword	(07,00,19,00, "NW_CITY_TRAIN_01");
	TA_Sleep			(19,00,07,00, "NW_CITY_LEOMAR_BED_03");
};
