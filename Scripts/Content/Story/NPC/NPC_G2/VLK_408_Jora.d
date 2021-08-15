///******************************************************************************************
instance VLK_408_Jora (Npc_Default)
{
	/// ------ General ------
	name								=	"Jora";
	guild 								=	GIL_VLK;
	id 									=	408;
	voice 								=	8;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_AlriksSword_Mis);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal10, 0, ITAR_VLK_L_11);
	Mdl_SetModelFatness	(self, 1.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_408;
};

func void Rtn_Start_408()
{
	TA_Stand_ArmsCrossed	(05,15,20,04, "NW_CITY_JORA_S");
    TA_Smalltalk			(20,04,00,06, "NW_CITY_BEER_06");
    TA_Sleep				(00,06,05,15, "NW_CITY_HOTEL_BED_03");
};
