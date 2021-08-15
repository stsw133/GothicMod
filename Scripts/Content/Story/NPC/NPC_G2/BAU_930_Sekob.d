///******************************************************************************************
instance BAU_930_Sekob (Npc_Default)
{
	/// ------ General ------
	name								=	"Sekob";
	guild 								=	GIL_OUT;
	id 									=	930;
	voice 								=	1;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;

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
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Fatbald", Face_Normal14, 0, ITAR_Vlk_L_10);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_930;
};

func void Rtn_Start_930()
{	
	TA_Sit_Throne	(08,00,22,00, "NW_FARM4_SEKOB"); 
    TA_Sleep		(22,00,08,00, "NW_FARM4_IN_BED");
};
func void Rtn_FleeDMT_930()
{	
	TA_Stand_WP	(08,00,22,00, "NW_BIGFARM_FARM4_PATH_01");
    TA_Stand_WP	(22,00,08,00, "NW_BIGFARM_FARM4_PATH_01");
};
func void Rtn_Obsessed_930()
{	
	TA_Stand_Guarding	(08,00,22,00, "NW_FARM4_02");
    TA_Stand_Guarding	(22,00,08,00, "NW_FARM4_02");
};
