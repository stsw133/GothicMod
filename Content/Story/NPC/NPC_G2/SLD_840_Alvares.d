//******************************************************************************************
instance SLD_840_Alvares (Npc_Default)
{
	// ------ General ------
	name								=	"Alvares";
	guild 								=	GIL_BDT;
	id 									=	840;
	voice 								=	11;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_EnemyOverride]			=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate-5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Axe);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_FatBald", Face_Normal02, 0, ITAR_SLD_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_840;
};

FUNC VOID Rtn_PreStart_840()
{
	TA_Smalltalk	(08,00,22,00, "NW_FARM2_PATH_02");
    TA_Smalltalk	(22,00,08,00, "NW_FARM2_PATH_02");
};
FUNC VOID Rtn_Start_840()
{
	TA_Smalltalk	(08,00,22,00, "NW_FARM2_TO_TAVERN_08");
    TA_Smalltalk	(22,00,08,00, "NW_FARM2_TO_TAVERN_08");
};
FUNC VOID Rtn_Bigfarm_840()
{
	TA_Smalltalk	(08,00,22,00, "NW_BIGFARM_HOUSE_OUT_05");
    TA_Sit_Chair	(22,00,08,00, "NW_BIGFARM_HOUSE_12");
};
