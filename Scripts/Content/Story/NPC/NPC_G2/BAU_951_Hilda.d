///******************************************************************************************
instance BAU_951_Hilda (Npc_Default)
{
	/// ------ General ------
	name								=	"Hilda";
	guild 								=	GIL_OUT;
	id 									=	951;
	voice 								=	17;
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
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe8", FaceBabe_Normal00, Teeth_Pretty, ITAR_Babe_BAU_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_951;
};

func void Rtn_Start_951()
{	
	TA_Cook_Stove	(08,00,22,00, "NW_FARM1_INHOUSE_02");
    TA_Sleep		(22,00,08,00, "NW_FARM1_INHOUSE_BED_02");
};
func void Rtn_Krank_951()
{	
	TA_Sleep	(08,00,22,00, "NW_FARM1_INHOUSE_BED_02");
    TA_Sleep	(22,00,08,00, "NW_FARM1_INHOUSE_BED_02");
};
