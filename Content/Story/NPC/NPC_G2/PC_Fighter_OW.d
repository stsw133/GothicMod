//******************************************************************************************
INSTANCE PC_Fighter_OW (Npc_Default)
{
	// ------ General ------
	name								=	"Gorn";
	guild 								=	GIL_NONE;
	id 									=	3;
	voice 								=	12;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_FRIEND;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Strong);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Fighter", Face_Gorn, 0, ITAR_SLD_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_3;
};

FUNC VOID Rtn_Start_3()
{
	TA_Sit_Campfire	(08,00,23,00, "OC_PRISON_CELL_03_SIT_GROUND");
	TA_Sit_Campfire	(23,00,08,00, "OC_PRISON_CELL_03_SIT_GROUND");
};
FUNC VOID Rtn_Free_3()
{
	TA_Smalltalk	(08,00,23,00, "OC_MAGE_LIBRARY_IN");
	TA_Smalltalk	(23,00,08,00, "OC_MAGE_LIBRARY_IN");
};
FUNC VOID Rtn_Tot_3()
{
	TA_Sit_Campfire	(08,00,23,00, "TOT");
	TA_Sit_Campfire	(23,00,08,00, "TOT");
};
