///******************************************************************************************
instance PIR_1356_Addon_Bill (Npc_Default)
{
	/// ------ General ------
	name								=	"Bill";
	guild 								=	GIL_PIR;
	id 									=	1356;
	voice 								=	3;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Addon_PIR1hAxe);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Drax, 0, ITAR_PIR_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_1356;
};

func void Rtn_PreStart_1356()
{
	TA_Saw	(08,00,20,00, "ADW_PIRATECAMP_SAW_01");
	TA_Saw	(20,00,08,00, "ADW_PIRATECAMP_SAW_01");
};
func void Rtn_Start_1356()
{
	TA_Saw			(08,00,20,00, "ADW_PIRATECAMP_SAW_01");
	TA_Stand_Eating	(20,00,21,00, "WP_PIR_01");
	TA_Sit_Campfire	(21,00,08,00, "WP_PIR_01");
};
func void Rtn_GregIsBack_1356()
{
	TA_Sit_Campfire	(08,00,20,00, "WP_PIR_01");
	TA_Stand_Eating	(20,00,21,00, "WP_PIR_01");
	TA_Sit_Campfire	(21,00,08,00, "WP_PIR_01");
};
