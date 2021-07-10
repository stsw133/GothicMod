///******************************************************************************************
instance Mil_328_Miliz (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Wache;
	guild 								=	GIL_NONE;
	id 									=	328;
	voice 								=	8;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_DropDeadAndKill]			=	true;
	aivar[AIV_ToughGuy]					=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	/// ------ Inventory ------
	CreateInvItem (self, ItKe_Storage);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal44, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_328;
};

func void Rtn_Start_328()
{
	TA_Stand_Guarding	(08,00,23,00, "NW_CITY_HABOUR_HUT_03_IN_05");
    TA_Stand_Guarding	(23,00,08,00, "NW_CITY_HABOUR_HUT_03_IN_05");
};
