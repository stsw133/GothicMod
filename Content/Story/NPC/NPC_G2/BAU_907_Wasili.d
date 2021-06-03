///******************************************************************************************
instance BAU_907_Wasili (Npc_Default)
{
	/// ------ General ------
	name								=	"Wasili";
	guild 								=	GIL_BAU;
	id 									=	907;
	voice 								=	1;
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
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_N, "Hum_Head_FatBald", Face_Normal29, Teeth_Normal, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_907;
};

func void Rtn_Start_907()
{	
	TA_Stand_Guarding	(08,00,22,00, "NW_BIGFARM_HOUSE_16");
    TA_Sit_Chair		(22,00,08,00, "NW_BIGFARM_HOUSE_16");
};
