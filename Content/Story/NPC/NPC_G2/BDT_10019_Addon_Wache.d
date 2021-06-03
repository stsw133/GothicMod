///******************************************************************************************
instance BDT_10019_Addon_Wache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Guard;
	guild 								=	GIL_BDT;
	id 									=	10019;
	voice 								=	6;
	flags      							=	0;
	npctype								=	NPCTYPE_BL_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Krummschwert);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Thief", Face_Normal11, 0, ITAR_RVN_M);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10019;
};

func void Rtn_Start_10019()
{
	TA_Stand_WP	(00,00,12,00, "BL_UP_PLACE_04");
	TA_Stand_WP	(12,00,00,00, "BL_UP_PLACE_04");
};
