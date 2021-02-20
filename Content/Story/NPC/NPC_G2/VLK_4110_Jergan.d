//******************************************************************************************
instance VLK_4110_Jergan (Npc_Default)
{
	// ------ General ------
	name								=	"Jergan";
	guild 								=	GIL_NONE;
	id 									=	4110;
	voice 								=	13;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_ToughGuy]					=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Strong+5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Axe);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Whistler, 0, ITAR_LEATHER_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4110;
};

FUNC VOID Rtn_Start_4110()
{
	TA_Sit_Campfire	(08,00,23,00, "OW_STAND_JERGAN");
    TA_Sit_Campfire	(23,00,08,00, "OW_STAND_JERGAN");
};
FUNC VOID Rtn_Fajeth_4110()
{
	TA_Sit_Campfire	(08,00,23,00, "OW_NEWMINE_04");
    TA_Sit_Campfire	(23,00,08,00, "OW_NEWMINE_04");
};
