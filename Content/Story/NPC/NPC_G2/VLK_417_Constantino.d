//******************************************************************************************
instance VLK_417_Constantino (Npc_Default)
{
	// ------ General ------
	name								=	"Constantino";
	guild 								=	GIL_VLK;
	id 									=	417;
	voice 								=	10;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Initiate+5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Psionic", Face_Normal50, 0, ITAR_Alchemist);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_417;
};

FUNC VOID Rtn_Start_417()
{
	TA_Potion_Alchemy	(08,00,22,00, "NW_CITY_ALCHEMY_VELAX");
	TA_Sleep			(22,00,08,00, "NW_CITY_BED_VELAX");
};
