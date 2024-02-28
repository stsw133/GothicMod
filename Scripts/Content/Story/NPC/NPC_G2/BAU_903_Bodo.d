///******************************************************************************************
instance BAU_903_Bodo (Npc_Default)
{
	/// ------ General ------
	name								=	"Bodo";
	guild 								=	GIL_BAU;
	id 									=	903;
	voice 								=	12;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Initiate-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Normal23, Teeth_Normal, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_903;
};

func void Rtn_Start_903()
{	
	TA_Smalltalk	(07,45,21,45, "NW_BIGFARM_HOUSE_OUT_04");
    TA_Sit_Bench	(21,45,07,45, "NW_BIGFARM_PATH_03");
};
