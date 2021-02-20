//******************************************************************************************
instance BAU_903_Bodo (Npc_Default)
{
	// ------ General ------
	name								=	"Bodo";
	guild 								=	GIL_BAU;
	id 									=	903;
	voice 								=	12;
	flags      							=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Weak);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_N, "Hum_Head_FatBald", Face_Normal23, Teeth_Normal, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_903;
};

FUNC VOID Rtn_Start_903()
{	
	TA_Smalltalk	(07,45,21,45, "NW_BIGFARM_HOUSE_OUT_04");
    TA_Sit_Bench	(21,45,07,45, "NW_BIGFARM_PATH_03");
};
