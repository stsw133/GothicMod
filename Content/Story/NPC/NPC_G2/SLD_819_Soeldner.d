//******************************************************************************************
instance SLD_819_Soeldner (Npc_Default)
{
	// ------ General ------
	name								=	NAME_SOELDNER;
	guild 								=	GIL_SLD;
	id 									=	819;
	voice 								=	7;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Medium);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_FatBald", Face_Normal01, 0, ITAR_SLD_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_819;
};

FUNC VOID Rtn_Start_819()
{
	TA_Stand_Drinking	(07,45,23,45, "NW_BIGFARM_KITCHEN_03");
    TA_Sleep			(23,45,07,45, "NW_BIGFARM_HOUSE_SLD_SLEEP");
};
