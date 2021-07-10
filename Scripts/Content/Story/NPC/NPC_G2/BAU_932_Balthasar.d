///******************************************************************************************
instance BAU_932_Balthasar (Npc_Default)
{
	/// ------ General ------
	name								=	"Balthasar";
	guild 								=	GIL_OUT;
	id 									=	932;
	voice 								=	5;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_FatBald", Face_Normal10, 0, ITAR_Bau_00);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_932;
};

func void Rtn_Start_932()
{	
	TA_Stand_Eating	(08,00,22,00, "NW_FARM4_BALTHASAR");
    TA_Stand_Eating	(22,00,08,00, "NW_FARM4_BALTHASAR");
};
func void Rtn_FleeDMT_932()
{	
	TA_Stand_Eating	(08,00,22,00, "NW_FLEEDMT_KAP3");
    TA_Stand_Eating	(22,00,08,00, "NW_FLEEDMT_KAP3");
};
func void Rtn_BengarsWeide_932()
{	
	TA_Stand_Eating	(08,00,22,00, "NW_BIGMILL_FARM3_BALTHASAR"); 
    TA_Stand_Eating	(22,00,08,00, "NW_BIGMILL_FARM3_BALTHASAR");
};
func void Rtn_Test_932()
{	
	TA_Stand_Eating	(08,00,22,00, "FARM3"); 
    TA_Stand_Eating	(22,00,08,00, "FARM3");
};
