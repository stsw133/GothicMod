//******************************************************************************************
INSTANCE BAU_981_Grom (Npc_Default)
{
	// ------ General ------
	name								=	"Grom";
	guild 								=	GIL_OUT;
	id 									=	981;
	voice 								=	8;
	flags       						=	0;																	
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_SLD_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_FatBald", Face_Gilbert, 0, ITAR_LEATHER_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_981;
};

FUNC VOID Rtn_Start_981()
{
	TA_Saw		(08,00,23,00, "NW_CASTLEMINE_TROLL_04_C");
    TA_Sleep	(23,00,08,00, "NW_CASTLEMINE_TROLL_04");
};
