///******************************************************************************************
instance BAU_902_Gunnar (Npc_Default)
{
	/// ------ General ------
	name								=	"Gunnar";
	guild 								=	GIL_BAU;
	id 									=	902;
	voice 								=	10;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Bau_Axe);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_N, "Hum_Head_FatBald", Face_Normal30, Teeth_Normal, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_902;
};

func void Rtn_Start_902()
{	
	TA_Smalltalk	(08,00,19,59, "NW_BIGFARM_STABLE_OUT_01");
    TA_Sit_Chair	(19,59,08,00, "NW_BIGFARM_STABLE_06");
};
