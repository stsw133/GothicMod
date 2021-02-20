//******************************************************************************************
instance DMT_1299_OberDementor_DI (Npc_Default)
{
	// ------ General ------
	name								=	"Czarny mag";
	guild 								=	GIL_DMT;
	id 									=	1299;
	voice 								=	9;
	voicepitch							=	-3;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	// ------ Aivars ------
	aivar[AIV_EnemyOverride]			=	true;
	bodyStateInterruptableOverride		=	true; 

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Master);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItWr_LastDoorToUndeadDrgDI_MIS);
	CreateInvItem (self, ItKe_ChestMasterDementor_MIS);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_N, "Hum_Head_Bald", /*Face_MadPsi*/ Face_Skull, 0, ITAR_Demaster);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1299;
};

FUNC VOID Rtn_Start_1299()
{
	TA_Stand_Dementor	(08,00,23,00, "DI_SCHWARZMAGIER");
    TA_Stand_Dementor	(23,00,08,00, "DI_SCHWARZMAGIER");
};
