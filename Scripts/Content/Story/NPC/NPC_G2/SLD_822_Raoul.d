///******************************************************************************************
instance SLD_822_Raoul (Npc_Default)
{
	/// ------ General ------
	name								=	"Raoul";
	guild 								=	GIL_SLD;
	id 									=	822;
	voice 								=	1;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Axe);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_Ian, 0, ITAR_SLD_L);
	Mdl_SetModelFatness	(self, 1.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_822;
};

func void Rtn_PreStart_822()
{
	TA_Stand_Guarding	(08,00,22,00, "NW_BIGFARM_PATH_01");
	TA_Stand_Guarding	(22,00,08,00, "NW_BIGFARM_PATH_01");
};
