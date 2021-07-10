///******************************************************************************************
instance SLD_818_Soeldner (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_SOELDNER;
	guild 								=	GIL_SLD;
	id 									=	818;
	voice 								=	7;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Axe);
	EquipItem (self, ItRw_Sld_Bow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Bald", Face_Normal07, 0, ITAR_SLD_M);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_818;
};

func void Rtn_Start_818()
{
	TA_Smalltalk	(07,50,22,50, "NW_BIGFARM_PATH_02");
    TA_Sit_Chair	(22,50,07,50, "NW_BIGFARM_KITCHEN_09");
};
