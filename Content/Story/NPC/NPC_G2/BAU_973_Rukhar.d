//******************************************************************************************
instance BAU_973_Rukhar (Npc_Default)
{
	// ------ General ------
	name								=	"Rukhar";
	guild								=	GIL_OUT;
	id 									=	973;
	voice 								=	12;
	flags      							=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Pony", Face_Normal07, 0, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_973;
};

FUNC VOID Rtn_Start_973()
{
	TA_Stand_Drinking	(08,00,22,00, "NW_TAVERNE_RUKHAR");
    TA_Sit_Bench		(22,00,08,00, "NW_TAVERNE_OUT_01");
};
FUNC VOID Rtn_Wettkampf_973()
{
	TA_Stand_Drinking	(08,00,22,00, "NW_TAVERNE_RUKHAR");
    TA_Stand_Drinking	(22,00,08,00, "NW_TAVERNE_RUKHAR");
};
FUNC VOID Rtn_WettkampfRukharWon_973()
{
	TA_Stand_ArmsCrossed	(08,00,22,00, "NW_TAVERNE_RUKHAR");
    TA_Stand_ArmsCrossed	(22,00,08,00, "NW_TAVERNE_RUKHAR");
};
FUNC VOID Rtn_WettkampfRukharLost_973()
{
	TA_Sit_Bench	(08,00,22,00,"NW_TAVERNE_OUT_01");
    TA_Sit_Bench	(22,00,08,00,"NW_TAVERNE_OUT_01");
};
