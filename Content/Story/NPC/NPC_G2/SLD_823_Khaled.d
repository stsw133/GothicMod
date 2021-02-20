//******************************************************************************************
instance SLD_823_Khaled (Npc_Default)
{
	// ------ General ------
	name								=	"Khaled";
	guild 								=	GIL_SLD;
	id 									=	823;
	voice 								=	11;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Master-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Axe);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Thief", Face_Thorus, 0, ITAR_SLD_H);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_823;
};

FUNC VOID Rtn_Start_823()
{
	TA_Stand_Guarding	(07,55,21,55, "NW_BIGFARM_HOUSE_12");
    TA_Stand_Eating		(21,55,23,55, "NW_BIGFARM_HOUSE_UP2_06");
    TA_Sleep			(23,55,07,55, "NW_BIGFARM_HOUSE_UP2_02");
};
