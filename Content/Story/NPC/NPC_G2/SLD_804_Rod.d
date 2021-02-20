//******************************************************************************************
instance SLD_804_Rod (Npc_Default)
{
	// ------ General ------
	name								=	"Rod";
	guild 								=	GIL_SLD;
	id 									=	804;
	voice 								=	6;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Medium);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Rod);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal05, 0, ITAR_SLD_M);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_804;
};

FUNC VOID Rtn_Start_804()
{
	TA_Smalltalk	(07,55,22,55, "NW_BIGFARM_PATH_02");
    TA_Sleep		(22,55,07,55, "NW_BIGFARM_HOUSE_SLD_SLEEP");
};
FUNC VOID Rtn_Tot_804()
{
	TA_Sleep	(08,00,23,00, "TOT");
    TA_Sleep	(23,00,08,00, "TOT");
};
