///******************************************************************************************
instance BAU_963_Malak (Npc_Default)
{
	/// ------ General ------
	name								=	"Malak";
	guild 								=	GIL_OUT;
	id 									=	963;
	voice 								=	8;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal22, 0, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_963;
};

func void Rtn_Start_963()
{	
	TA_Stand_Eating	(08,00,22,00, "NW_FARM3_MALAK");
    TA_Stand_Eating	(22,00,08,00, "NW_FARM3_MALAK");
};
func void Rtn_FleeFromPass_963()
{	
	TA_Stand_Eating	(08,00,22,00, "NW_BIGMILL_MALAKSVERSTECK_MALAK");
    TA_Stand_Eating	(22,00,08,00, "NW_BIGMILL_MALAKSVERSTECK_MALAK");
};
