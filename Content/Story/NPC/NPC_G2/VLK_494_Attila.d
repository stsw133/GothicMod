//******************************************************************************************
instance VLK_494_Attila (Npc_Default)
{
	// ------ General ------
	name								=	"Attila";
	guild 								=	GIL_VLK;
	id 									=	494;
	voice 								=	9;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_DropDeadAndKill]			=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Axe);
	EquipItem (self, ItRw_Mil_Crossbow);

	// ------ Inventory ------
	CreateInvItem (self, ItKe_ThiefGuildKey_MIS);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Bald", Face_Normal03, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_494;
};

FUNC VOID Rtn_Start_494()
{
	TA_Stand_Guarding	(04,00,22,00, "NW_CITY_HABOUR_POOR_AREA_BACK_ALLEY_02");
    TA_Stand_Guarding	(22,00,04,00, "NW_CITY_HABOUR_POOR_AREA_BACK_ALLEY_02");
};
FUNC VOID Rtn_After_494()
{
	TA_Stand_Guarding	(04,00,22,00, "NW_CITY_HABOUR_POOR_AREA_CAULDRON");
    TA_Stand_Guarding	(22,00,04,00, "NW_CITY_HABOUR_POOR_AREA_CAULDRON");
};
