//******************************************************************************************
instance STRF_1116_Kervo (Npc_Default)
{
	// ------ General ------
	name								=	"Kervo";
	guild 								=	GIL_STRF;
	id 									=	1116;
	voice 								=	13;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1H_VLK_Axe);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+1, BodySkin_N, "Hum_Head_Bald", Face_Normal61, 0, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1116;
};

FUNC VOID Rtn_Start_1116()
{
	TA_Sit_Bench	(08,00,23,00, "OW_DJG_VORPOSTEN_01");
    TA_Sit_Bench	(23,00,08,00, "OW_DJG_VORPOSTEN_01");
};
FUNC VOID Rtn_Tot_1116()
{
	TA_Sleep	(08,00,23,00, "TOT");
    TA_Sleep	(23,00,08,00, "TOT");
};
