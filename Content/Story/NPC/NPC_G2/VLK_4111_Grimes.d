//******************************************************************************************
instance VLK_4111_Grimes (Npc_Default)
{
	// ------ General ------
	name								=	"Grimes";
	guild 								=	GIL_OUT;
	id 									=	4111;
	voice 								=	5;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Medium-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+0, BodySkin_N, "Hum_Head_Thief", Face_Normal01, 0, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4111;
};

FUNC VOID Rtn_Start_4111()
{
	TA_Pick_Ore	(08,00,23,00, "OW_MINE2_GRIMES");
    TA_Pick_Ore	(23,00,08,00, "OW_MINE2_GRIMES");
};
