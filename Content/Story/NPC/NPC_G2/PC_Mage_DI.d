//******************************************************************************************
INSTANCE PC_Mage_DI (Npc_Default)
{
	// ------ General ------
	name								=	"Milten";
	guild 								=	GIL_KDF;
	id 									=	22;
	voice 								=	3;
	flags       						=	0;
	npctype								=	NPCTYPE_FRIEND;
	aivar[AIV_MagicUser]				=	MAGIC_PYR;

	// ------ Aivars ------
	aivar[AIV_PARTYMEMBER]				=	true;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Milten, 0, ITAR_Mag_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_22;
};

FUNC VOID Rtn_Start_22()
{
	TA_Smalltalk	(08,00,23,00, "SHIP_CREW_19");
	TA_Smalltalk	(23,00,08,00, "SHIP_CREW_19");
};
FUNC VOID Rtn_UNDEADDRAGONDEAD_22()
{
	TA_Stand_WP	(08,00,23,00, "SKELETTE");
	TA_Stand_WP	(23,00,08,00, "SKELETTE");
};
FUNC VOID Rtn_SittingShipDI_22()
{
	TA_Sit_Bench	(08,00,23,00, "SHIP_CREW_19");
	TA_Sit_Bench	(23,00,08,00, "SHIP_CREW_19");
};
