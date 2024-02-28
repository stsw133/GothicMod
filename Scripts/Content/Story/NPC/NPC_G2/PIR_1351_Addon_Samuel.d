///******************************************************************************************
instance PIR_1351_Addon_Samuel (Npc_Default)
{
	/// ------ General ------
	name								=	"Samuel";
	guild 								=	GIL_PIR;
	id 									=	1351;
	voice 								=	14;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Mace_L_03);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_FatBald", Face_Saturas, 0, ITAR_PIR_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1351;
};

func void Rtn_Start_1351()
{
	TA_Potion_Alchemy	(06,00,08,00, "ADW_PIRATECAMP_CAVE1_04");
	TA_Stand_Drinking	(08,00,10,00, "ADW_PIRATECAMP_CAVE1_02");
	TA_Potion_Alchemy	(10,00,12,00, "ADW_PIRATECAMP_CAVE1_04");
	TA_Stand_Drinking	(12,00,14,00, "ADW_PIRATECAMP_CAVE1_02");
	TA_Potion_Alchemy	(14,00,16,00, "ADW_PIRATECAMP_CAVE1_04");
	TA_Stand_Drinking	(16,00,18,00, "ADW_PIRATECAMP_CAVE1_02");
	TA_Potion_Alchemy	(18,00,20,00, "ADW_PIRATECAMP_CAVE1_04");
	TA_Stand_Drinking	(20,00,22,00, "ADW_PIRATECAMP_CAVE1_02");

	TA_Potion_Alchemy	(22,00,06,00, "ADW_PIRATECAMP_CAVE1_04");
};
