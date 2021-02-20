//******************************************************************************************
instance Mil_335_Rumbold (Npc_Default)
{
	// ------ General ------
	name								=	"Rumbold";
	guild 								=	GIL_NONE;	
	id 									=	335;
	voice 								=	10;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_DropDeadAndKill]			=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 12);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal00, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_335;
};

FUNC VOID Rtn_Start_335()
{
	TA_Smalltalk	(08,00,22,00, "NW_FARM3_PATH_02");
    TA_Smalltalk	(22,00,08,00, "NW_FARM3_PATH_02");
};
FUNC VOID Rtn_MilComing_335()
{
	TA_Smalltalk 	(08,00,22,00, "NW_FARM3_BENGAR");
    TA_Smalltalk	(22,00,08,00, "NW_FARM3_BENGAR");
};
FUNC VOID Rtn_Flucht2_335()
{
	TA_Smalltalk 	(08,00,22,00, "NW_RUMBOLD_FLUCHT2");
    TA_Smalltalk	(22,00,08,00, "NW_RUMBOLD_FLUCHT2");
};
FUNC VOID Rtn_Flucht3_335()
{
	TA_Smalltalk 	(08,00,22,00, "NW_RUMBOLD_FLUCHT3");
    TA_Smalltalk	(22,00,08,00, "NW_RUMBOLD_FLUCHT3");
};
