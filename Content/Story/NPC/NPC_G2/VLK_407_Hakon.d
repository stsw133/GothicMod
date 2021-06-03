///******************************************************************************************
instance VLK_407_Hakon (Npc_Default)
{
	/// ------ General ------
	name								=	"Hakon";
	guild 								=	GIL_VLK;
	id 									=	407;
	voice 								=	12;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_ShortSword2);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal47, 0, ITAR_VLK_L_14);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_407;
};

func void Rtn_Start_407()
{
	TA_Stand_ArmsCrossed	(05,10,19,50, "NW_CITY_HAKON");
    TA_Smoke_Waterpipe		(19,50,00,10, "NW_CITY_RAUCH_02");
    TA_Sleep				(00,10,05,10, "NW_CITY_HOTEL_BED_04");
};
