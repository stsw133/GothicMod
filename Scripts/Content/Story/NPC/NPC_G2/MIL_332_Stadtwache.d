///******************************************************************************************
instance Mil_332_Stadtwache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Stadtwache;
	guild 								=	GIL_MIL;
	id 									=	332;
	voice 								=	4;
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
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Normal61, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_332;
};

func void Rtn_Start_332()
{
	TA_Stand_WP	(08,00,22,00, "NW_CITY_ENTRANCE_BACK_GUARD_01");
    TA_Stand_WP	(22,00,08,00, "NW_CITY_ENTRANCE_BACK_GUARD_01");
};
