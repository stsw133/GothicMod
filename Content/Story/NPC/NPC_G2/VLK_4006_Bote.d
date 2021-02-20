//******************************************************************************************
instance VLK_4006_Bote (Npc_Default)
{
	// ------ General ------
	name								=	"Goniec";
	guild 								=	GIL_VLK;
	id 									=	4006;
	voice 								=	6;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal61, 0, ITAR_VLK_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4006;
};

FUNC VOID Rtn_Start_4006()
{
	TA_Stand_Guarding	(08,00,22,00, "NW_PATH_TO_MONASTERY_AREA_01");
    TA_Stand_Guarding	(22,00,08,00, "NW_PATH_TO_MONASTERY_AREA_01");
};
FUNC VOID Rtn_Rest_4006()
{
	TA_Stand_Drinking	(08,00,22,00, "TAVERNE");
	TA_Stand_Drinking	(22,00,08,00, "TAVERNE");
};
