//******************************************************************************************
INSTANCE VLK_4304_Addon_William (Npc_Default)
{
	// ------ General ------
	name								=	"William";
	guild 								=	GIL_VLK;
	id 									=	4304;
	voice 								=	6;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	// ------ Inventory ------
	CreateInvItem (self, ItMi_OldCoin);
	CreateInvItems (self, ItKe_Lockpick, 2);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Thief", Face_Homer, 0, ITAR_BAU_00);
	Mdl_SetModelFatness	(self, 0.9);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4304;
};

FUNC VOID Rtn_Start_4304()
{
	TA_Smalltalk	(05,00,20,00, "ADW_ENTRANCE_RUIN2_02");
	TA_Smalltalk	(20,00,05,00, "ADW_ENTRANCE_RUIN2_02");
};
