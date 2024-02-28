///******************************************************************************************
instance Mil_304_Torwache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_TORWACHE;
	guild 								=	GIL_MIL;
	id 									=	304;
	voice 								=	8;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal23, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_304;
};

func void Rtn_Start_304()
{
	TA_Stand_WP	(08,00,22,00, "NW_CITY_UPTOWN_GUARD_01");
    TA_Stand_WP	(22,00,08,00, "NW_CITY_UPTOWN_GUARD_01");
};
