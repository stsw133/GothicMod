//******************************************************************************************
INSTANCE KDF_507_Talamon (Npc_Default)
{
	// ------ General ------
	name								=	"Talamon";
	guild 								=	GIL_KDF;
	id 									=	507;
	voice 								=	4;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_MagicUser]				=	MAGIC_PYR;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Bald", Face_Saturas, 0, ITAR_Mag_A);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_507;
};

FUNC VOID Rtn_Start_507()
{
	TA_Guard_Passage	(08,00,23,00, "NW_MONASTERY_CELLAR_15");
    TA_Guard_Passage	(23,00,08,00, "NW_MONASTERY_CELLAR_15");
};
