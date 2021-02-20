//******************************************************************************************
instance PAL_2002_Leiche (Npc_Default)
{
	// ------ General ------
	name								=	"Silvestro";
	guild 								=	GIL_NONE;
	id 									=	2002;
	voice 								=	4;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Inventory ------
//	CreateInvItem (self, ItWr_Silvestro_MIS);
	CreateInvItems (self, ItPO_Mana_02, 2);
	CreateInvItems (self, ItmI_Gold, 100);
	CreateInvItems (self, ItPo_Health_03, 2);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal27, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_2002;
};

FUNC VOID Rtn_Start_2002()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_MINE3_LEICHE_01");
	TA_Stand_Guarding	(23,00,08,00, "OW_MINE3_LEICHE_01");
};
