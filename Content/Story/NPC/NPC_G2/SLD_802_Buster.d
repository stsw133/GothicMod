///******************************************************************************************
instance SLD_802_Buster (Npc_Default)
{
	/// ------ General ------
	name								=	"Buster";
	guild 								=	GIL_SLD;
	id 									=	802;
	voice 								=	13;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Axe);
	EquipItem (self, ItRw_Sld_Bow);
	CreateInvItems (self, ItRw_Arrow, 10);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Drax, 0, ITAR_SLD_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_802;
};

func void Rtn_Start_802()
{
	TA_Smalltalk	(07,00,21,00, "NW_BIGFARM_HUT_01");
	TA_Sit_Bench	(21,00,07,00, "NW_BIGFARM_HUT_BENCH_02");
};
