//******************************************************************************************
instance STRF_1144_Addon_Sklave (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Sklave; 
	guild 								=	GIL_STRF;
	id 									=	1144;
	voice 								=	3;
	flags       						=	0;							
	npctype								=	NPCTYPE_BL_AMBIENT;

	// ------ Aivars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+0, BodySkin_N, "Hum_Head_Psionic", Face_Normal57, 0, -1);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1144;
};

FUNC VOID Rtn_Start_1144()
{
	TA_Stand_WP	(08,00,23,00, "BL_UP_PLACE_06_SIDE_02");
	TA_Stand_WP	(23,00,08,00, "BL_UP_PLACE_06_SIDE_02");
};
