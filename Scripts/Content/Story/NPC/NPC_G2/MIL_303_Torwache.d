///******************************************************************************************
instance Mil_303_Torwache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Torwache;
	guild 								=	GIL_MIL;
	id 									=	303;
	voice 								=	7;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal22, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_303;
};

func void Rtn_Start_303()
{
	TA_Guard_Passage	(08,00,23,00, "NW_CITY_GUARDOFFICE_GUARD_02");
    TA_Guard_Passage	(23,00,08,00, "NW_CITY_GUARDOFFICE_GUARD_02");
};
