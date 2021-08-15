///******************************************************************************************
instance Mil_320_Miliz (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Miliz;
	guild 								=	GIL_MIL;
	id 									=	320;
	voice 								=	6;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Drax, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_320;
};

func void Rtn_Start_320()
{
	TA_Stand_Guarding	(05,00,20,15, "NW_CITY_MERCHANT_PATH_27");
    TA_Stand_Guarding	(20,15,22,15, "NW_CITY_MERCHANT_PATH_36");
    TA_Stand_Guarding	(22,15,00,15, "NW_CITY_MERCHANT_PATH_27");
    TA_Stand_Guarding	(00,15,02,15, "NW_CITY_MERCHANT_PATH_36");
    TA_Stand_Guarding	(02,15,04,15, "NW_CITY_MERCHANT_PATH_27");
    TA_Stand_Guarding	(04,15,05,00, "NW_CITY_MERCHANT_PATH_36");
};
