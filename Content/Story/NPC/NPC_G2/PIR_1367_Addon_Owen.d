///******************************************************************************************
instance PIR_1367_Addon_Owen (Npc_Default)
{
	/// ------ General ------
	name								=	"Owen";
	guild 								=	GIL_PIR;
	id 									=	1367;
	voice 								=	13;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Addon_PIR1hAxe);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal23, 0, ITAR_PIR_L);
	Mdl_SetModelFatness	(self, 1.1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PostStart_1367;
};

func void Rtn_PreStart_1367()
{
	TA_Saw			(06,00,10,00, "ADW_PIRATECAMP_WAY_15");
	TA_Sit_Campfire	(10,00,14,00, "ADW_PIRATECAMP_LUMBER_SIT");
	TA_Saw			(14,00,18,00, "ADW_PIRATECAMP_WAY_15");
	TA_Sit_Campfire	(18,00,22,00, "ADW_PIRATECAMP_LUMBER_SIT");
	TA_Sit_Campfire	(22,00,02,00, "ADW_PIRATECAMP_LUMBER_SIT");
	TA_Sit_Campfire	(02,00,06,00, "ADW_PIRATECAMP_LUMBER_SIT");
};
func void Rtn_Start_1367()
{
	TA_Sit_Campfire	(07,00,22,00, "ADW_PIRATECAMP_LUMBERCAMP_04");
	TA_Sit_Campfire	(22,00,07,00, "ADW_PIRATECAMP_LUMBERCAMP_04");
};
func void Rtn_PostStart_1367()
{
	TA_Stand_Drinking	(07,00,22,00, "ADW_PIRATECAMP_BEACH_19");
	TA_Stand_Drinking	(22,00,07,00, "ADW_PIRATECAMP_BEACH_25");
};
