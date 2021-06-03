///******************************************************************************************
instance PIR_1363_Addon_PIRAT (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Pirat;
	guild 								=	GIL_PIR;
	id 									=	1363;
	voice 								=	7;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	600;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Addon_PIR2hSword);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Fingers, 0, ITAR_PIR_L);
	Mdl_SetModelFatness	(self, 0.9);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1363;
};

func void Rtn_Start_1363()
{
	TA_Sit_Bench		(07,07,16,07, "ADW_PIRATECAMP_BENCH_01");
	TA_Smalltalk		(16,07,20,03, "ADW_PIRATECAMP_CENTER");
	TA_Sit_Campfire		(20,03,22,07, "WP_PIR_03");
	TA_Stand_Drinking	(20,07,23,07, "WP_PIR_03");
	TA_Pee				(23,07,23,12, "WP_PIR_03");
	TA_Sit_Campfire		(23,12,02,07, "WP_PIR_03");
	TA_Stand_Drinking	(02,07,03,07, "WP_PIR_03");
	TA_Sit_Campfire		(03,07,07,07, "WP_PIR_03");
};
func void Rtn_Follow_1363()
{
	TA_Follow_Player	(05,00,20,00, "ADW_CANYON_TELEPORT_PATH_06");
	TA_Follow_Player	(20,00,05,00, "ADW_CANYON_TELEPORT_PATH_06");
};
