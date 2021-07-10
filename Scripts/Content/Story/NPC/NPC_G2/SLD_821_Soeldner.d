///******************************************************************************************
instance SLD_821_Soeldner (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_SOELDNER;
	guild 								=	GIL_SLD;
	id 									=	821;
	voice 								=	6;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Sld_Bow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Pony", Face_Gomez, 0, ITAR_SLD_M);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_821;
};

func void Rtn_Start_821()
{
	TA_Smalltalk	(07,30,23,30, "NW_BIGFARM_PATH_04_1");
	TA_Sleep		(23,30,07,30, "NW_BIGFARM_HOUSE_08");
};
func void Rtn_RodWeg_821()
{
	TA_Smalltalk	(07,55,22,55, "NW_BIGFARM_PATH_02");
    TA_Sleep		(22,55,07,55, "NW_BIGFARM_HOUSE_08");
};
