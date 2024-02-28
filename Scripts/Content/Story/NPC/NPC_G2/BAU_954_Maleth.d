///******************************************************************************************
instance BAU_954_Maleth (Npc_Default)
{
	/// ------ General ------
	name								=	"Maleth";
	guild 								=	GIL_OUT;
	id 									=	954;
	voice 								=	8;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Initiate-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal40, 0, ITAR_Bau_00);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_954;
};

func void Rtn_Start_954()
{	
	TA_Stand_Guarding	(08,00,22,00, "NW_FARM1_PATH_CITY_SHEEP_09");
    TA_Sleep			(22,00,08,00, "NW_FARM1_INSTABLE_BED");
};
