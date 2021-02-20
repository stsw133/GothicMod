//******************************************************************************************
INSTANCE KDF_509_Isgaroth (Npc_Default)
{
	// ------ General ------
	name								=	"Isgaroth";
	guild 								=	GIL_KDF;
	id 									=	509;
	voice 								=	1;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_MagicUser]				=	MAGIC_PYR;

	// ------ Attribute ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Master);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal06, 0, ITAR_Mag_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_509;
};

FUNC VOID Rtn_Start_509()
{
	TA_Pray_Innos_FP	(06,00,21,00, "NW_MONASTERY_SHRINE_04");
    TA_Sit_Bench		(21,00,06,00, "NW_MONASTERY_SHRINE_05");
};
