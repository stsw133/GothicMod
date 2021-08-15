///******************************************************************************************
instance PIR_1360_Addon_PIRAT (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Pirat;
	guild 								=	GIL_PIR;
	id 									=	1360;
	voice 								=	7;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Fighter", Face_Ratford, 0, ITAR_PIR_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_1360;
};

func void Rtn_PreStart_1360()
{
	TA_Repair_Hut	(08,00,20,00, "ADW_PIRATECAMP_ENTRANCE_REPAIR");
	TA_Repair_Hut	(20,00,08,00, "ADW_PIRATECAMP_ENTRANCE_REPAIR");
};
func void Rtn_Start_1360()
{
	TA_Repair_Hut		(06,10,19,10, "ADW_PIRATECAMP_ENTRANCE_REPAIR");
	TA_Sit_Campfire		(19,10,20,10, "WP_PIR_06");
	TA_Stand_Drinking	(20,10,21,10, "WP_PIR_06");
	TA_Sit_Campfire		(21,10,03,10, "WP_PIR_06");
	TA_Pee				(03,10,03,15, "WP_PIR_06");
	TA_Sit_Campfire		(03,15,06,10, "WP_PIR_06");
};
func void Rtn_Follow_1360()
{
	TA_Follow_Player	(08,00,20,00, "ADW_PIRATECAMP_ENTRANCE_REPAIR");
	TA_Follow_Player	(20,00,08,00, "ADW_PIRATECAMP_ENTRANCE_REPAIR");
};
