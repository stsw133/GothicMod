//******************************************************************************************
instance STRF_1106_Fed (Npc_Default)
{
	// ------ General ------
	name								=	"Fed";
	guild 								=	GIL_OUT;
	id 									=	1106;
	voice 								=	8;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Weak+5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+1, BodySkin_P, "Hum_Head_Bald", Face_Gilbert, 0, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1106;
};

FUNC VOID Rtn_Start_1106()
{
	TA_Pick_Ore	(08,00,23,00, "OW_NEWMINE_06_B");
    TA_Pick_Ore	(23,00,08,00, "OW_NEWMINE_06_B");
};
