///******************************************************************************************
instance BAU_933_Rega  (Npc_Default)
{
	/// ------ General ------
	name								=	"Rega";
	guild 								=	GIL_OUT;
	id 									=	933;
	voice 								=	17;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe1", FaceBabe_Normal06, Teeth_Pretty, ITAR_Babe_BAU_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_933;
};

func void Rtn_Start_933()
{	
	TA_Pick_FP		(08,00,22,00, "NW_FARM4_FIELD_02");
    TA_Sit_Campfire	(22,00,08,00, "NW_FARM4_REST_02");
};
func void Rtn_FleeDMT_933()
{	
	TA_Pick_FP	(08,00,22,00, "NW_FARM4_FIELD_02");
    TA_Pick_FP	(22,00,08,00, "NW_FARM4_FIELD_02");
};
