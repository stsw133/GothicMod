//******************************************************************************************
INSTANCE NOV_608_Garwig (Npc_Default)
{
	// ------ General ------
	name								=	"Garwig";
	guild 								=	GIL_NOV;
	id 									=	608;
	voice 								=	6;
	flags      							=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Nov_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Bald", Face_Normal02, 0, ITAR_Nov_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_608;
};

FUNC VOID Rtn_Start_608()
{
	TA_Guard_Hammer	(08,00,23,00, "NW_MONASTERY_SANCTUM_02");
	TA_Guard_Hammer	(23,00,08,00, "NW_MONASTERY_SNACTUM_02");
};
