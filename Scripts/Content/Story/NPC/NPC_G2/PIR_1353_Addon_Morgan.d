///******************************************************************************************
instance PIR_1353_Addon_Morgan (Npc_Default)
{
	/// ------ General ------
	name								=	"Morgan";
	guild 								=	GIL_PIR;
	id 									=	1353;
	voice 								=	7;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Doppelaxt);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_FatBald", Face_Normal03, 0, ITAR_PIR_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_START_1353;
};

func void Rtn_START_1353()
{
	TA_Sleep	(05,00,20,00, "ADW_PIRATECAMP_CAVE_BED");
	TA_Sleep	(20,00,05,00, "ADW_PIRATECAMP_CAVE_BED");
};
func void Rtn_GregIsBack_1353()
{
	TA_Saw	(23,00,09,00, "ADW_PIRATECAMP_SAW_01");
	TA_Saw	(09,00,23,00, "ADW_PIRATECAMP_SAW_01");
};
