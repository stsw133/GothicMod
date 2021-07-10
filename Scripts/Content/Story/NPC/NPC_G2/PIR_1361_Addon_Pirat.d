///******************************************************************************************
instance PIR_1361_Addon_PIRAT (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Pirat;
	guild 								=	GIL_PIR;
	id 									=	1361;
	voice 								=	9;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Addon_PIR2hAxe);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Pony", Face_Normal05, 0, ITAR_PIR_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_1361;
};

func void Rtn_PreStart_1361()
{
	TA_Saw	(08,00,20,00, "ADW_PIRATECAMP_ENTRANCE_SAW");
	TA_Saw	(20,00,08,00, "ADW_PIRATECAMP_ENTRANCE_SAW");
};
func void Rtn_Start_1361()
{
	TA_Saw 				(06,15,19,15, "ADW_PIRATECAMP_ENTRANCE_SAW");
	TA_Sit_Campfire		(19,15,21,15, "WP_PIR_02");
	TA_Stand_Drinking	(21,15,22,15, "WP_PIR_02");
	TA_Pee				(22,15,22,20, "WP_PIR_02");
	TA_Sit_Campfire		(22,20,02,15, "WP_PIR_02");
	TA_Stand_Drinking	(02,15,03,15, "WP_PIR_02");
	TA_Sit_Campfire		(03,15,06,15, "WP_PIR_02");
};
func void Rtn_Follow_1361()
{
	TA_Follow_Player	(08,00,20,00, "ADW_PIRATECAMP_ENTRANCE_SAW");
	TA_Follow_Player	(20,00,08,00, "ADW_PIRATECAMP_ENTRANCE_SAW");
};
