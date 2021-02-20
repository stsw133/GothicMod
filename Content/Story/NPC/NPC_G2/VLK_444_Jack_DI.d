//******************************************************************************************
instance VLK_444_Jack_DI (Npc_Default)
{
	// ------ NSC ------
	name								=	"Jack";
	guild 								=	GIL_VLK;
	id 									=	4440;
	voice 								=	14;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_PARTYMEMBER]				=	true;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal02, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4440;
};

FUNC VOID Rtn_Start_4440()
{
	TA_Stand_WP	(08,00,23,00, "SHIP_CREW_CAPTAIN");
	TA_Sleep	(23,00,08,00, "SHIP_IN_06");
};
FUNC VOID Rtn_OrkSturmDI_4440()
{
	TA_Stand_WP	(08,00,23,00, "SHIP_DECK_03");
	TA_Stand_WP	(23,00,08,00, "SHIP_DECK_03");
};
