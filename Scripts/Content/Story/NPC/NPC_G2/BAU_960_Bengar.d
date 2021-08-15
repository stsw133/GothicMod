///******************************************************************************************
instance BAU_960_Bengar (Npc_Default)
{
	/// ------ General ------
	name								=	"Bengar";
	guild 								=	GIL_OUT;
	id 									=	960;
	voice 								=	10;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);
	EquipItem (self, ItRw_Sld_Bow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal09, 0, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_960;
};

func void Rtn_Start_960()
{	
	TA_Stand_Guarding	(08,00,22,00, "NW_FARM3_BENGAR");
    TA_Stand_Guarding	(22,00,08,00, "NW_FARM3_BENGAR");
};
func void Rtn_MilComing_960()
{	
	TA_Smalltalk	(08,00,22,00, "NW_FARM3_BENGAR"); 
    TA_Smalltalk	(22,00,08,00, "NW_FARM3_BENGAR");
};
