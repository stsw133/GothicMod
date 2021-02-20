//******************************************************************************************
INSTANCE NOV_654_ToterNovize (Npc_Default)
{
	// ------ General ------
	name								=	Name_ToterNovize;
	guild 								=	GIL_NOV;
	id 									=	654;
	voice 								=	10;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Fingers, 0, ITAR_Nov_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_654;
};

FUNC VOID Rtn_Start_654()
{
	TA_Sleep	(08,00,22,00, "NW_TROLLAREA_PATH_20");
	TA_Sleep	(22,00,08,00, "NW_TROLLAREA_PATH_20");
};
