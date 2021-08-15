///******************************************************************************************
instance BAU_952_Vino (Npc_Default)
{
	/// ------ General ------
	name								=	"Vino";
	guild 								=	GIL_OUT;
	id 									=	952;
	voice 								=	5;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fatbald", Face_Normal53, 0, ITAR_Bau_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_952;
};

func void Rtn_Start_952()
{	
	TA_Rake_FP	(08,00,12,00, "NW_FARM1_FIELD_04");
	TA_Rake_FP	(12,00,15,00, "NW_FARM1_FIELD_05");
	TA_Rake_FP	(15,00,18,00, "NW_FARM1_FIELD_04");
	TA_Rake_FP	(18,00,22,00, "NW_FARM1_FIELD_05");
    TA_Sleep	(22,00,08,00, "NW_FARM1_INSTABLE_BED");
};
func void Rtn_BugsThere_952()
{	
	TA_Stand_Drinking	(08,00,22,00, "NW_FARM1_ENTRANCE_03");
    TA_Sleep			(22,00,08,00, "NW_FARM1_INSTABLE_BED");
};
func void Rtn_ObesessionRitual_952()
{	
	TA_Smoke_Joint	(07,30,23,00, "NW_LITTLESTONEHENDGE_01");
   	TA_Smoke_Joint	(23,00,07,30, "NW_LITTLESTONEHENDGE_01");
};
func void Rtn_Kloster_952()
{	
	TA_Stand_Drinking	(08,00,22,00, "NW_MONASTERY_PLACE_07");
    TA_Sleep			(22,00,08,00, "NW_MONASTERY_NOVICE04_07");
};
func void Rtn_Flee_952()
{	
	TA_Stand_Drinking	(08,00,22,00, "NW_TAVERNE_CROSS");
    TA_Sleep			(22,00,08,00, "NW_TAVERNE_CROSS");
};
