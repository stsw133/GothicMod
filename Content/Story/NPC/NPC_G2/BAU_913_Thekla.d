//******************************************************************************************
instance BAU_913_Thekla (Npc_Default)
{
	// ------ General ------
	name								=	"Thekla";
	guild 								=	GIL_BAU;
	id 									=	913;
	voice 								=	17;
	flags      							=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Normal, BodySkin_N, "Hum_Head_Babe", FaceBabe_Normal02, Teeth_Pretty, ITAR_WD_L_04);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_913;
};

FUNC VOID Rtn_Start_913()
{	
	TA_Stand_Guarding	(08,00,08,30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove		(08,30,09,00, "NW_BIGFARM_KITCHEN_COOK");
	TA_Stand_Guarding	(09,00,09,30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove		(09,30,10,00, "NW_BIGFARM_KITCHEN_COOK");
	TA_Stand_Guarding	(10,00,10,30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove		(10,30,11,00, "NW_BIGFARM_KITCHEN_COOK");
	TA_Stand_Guarding	(11,00,11,30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove		(11,30,12,00, "NW_BIGFARM_KITCHEN_COOK");
	TA_Stand_Guarding	(12,00,12,30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove		(12,30,13,00, "NW_BIGFARM_KITCHEN_COOK");
	TA_Stand_Guarding	(13,00,13,30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove		(13,30,14,00, "NW_BIGFARM_KITCHEN_COOK");
	TA_Stand_Guarding	(14,00,14,30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove		(14,30,15,00, "NW_BIGFARM_KITCHEN_COOK");
	TA_Stand_Guarding	(15,00,15,30, "NW_BIGFARM_KITCHEN_BARKEEPER");
 	TA_Cook_Stove		(15,30,16,00, "NW_BIGFARM_KITCHEN_COOK");
	TA_Stand_Guarding	(16,00,16,30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove		(16,30,17,00, "NW_BIGFARM_KITCHEN_COOK");
	TA_Stand_Guarding	(17,00,17,30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove		(17,30,18,00, "NW_BIGFARM_KITCHEN_COOK");
	TA_Stand_Guarding	(18,00,18,30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove		(18,30,19,00, "NW_BIGFARM_KITCHEN_COOK");
	TA_Stand_Guarding	(19,00,19,30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove		(19,30,20,00, "NW_BIGFARM_KITCHEN_COOK");
	TA_Stand_Guarding	(20,00,20,30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove		(20,30,21,00, "NW_BIGFARM_KITCHEN_COOK");
	TA_Stand_Guarding	(21,00,21,30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove		(21,30,22,00, "NW_BIGFARM_KITCHEN_COOK");
    TA_Stand_Guarding	(22,00,08,00, "NW_BIGFARM_KITCHEN_BARKEEPER");
};
