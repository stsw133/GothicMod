//******************************************************************************************
INSTANCE PIR_1301_Addon_Skip_NW (Npc_Default)
{
	// ------ General ------
	name								=	"Skip";
	guild 								=	GIL_PIR;
	id 									=	1301;
	voice 								=	8;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_ShortSword2);
	EquipItem (self, ItRw_sld_bow);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Pony", Face_Skip, 0, ITAR_PIR_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1301;
};

FUNC VOID Rtn_Start_1301()
{
	TA_Sit_Campfire	(05,00,20,00, "NW_CITY_PIRATESCAMP_04");
	TA_Sit_Campfire	(20,00,05,00, "NW_CITY_PIRATESCAMP_04");
};
FUNC VOID Rtn_Tot_1301()
{
	TA_Sit_Campfire	(05,00,20,00, "TOT");
	TA_Sit_Campfire	(20,00,05,00, "TOT");
};
