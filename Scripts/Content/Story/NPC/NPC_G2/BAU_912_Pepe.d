///******************************************************************************************
instance BAU_912_Pepe (Npc_Default)
{
	/// ------ General ------
	name								=	"Pepe";
	guild 								=	GIL_BAU;
	id 									=	912;
	voice 								=	3;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, FightTalent_Weak);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal58, Teeth_Normal, ITAR_Bau_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_912;
};

func void Rtn_Start_912()
{	
	TA_Stand_Eating	(08,00,22,00, "NW_BIGFARM_SHEEP2_02");
    TA_Stand_Eating	(22,00,08,00, "NW_BIGFARM_SHEEP2_02");
};
