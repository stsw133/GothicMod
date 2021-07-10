///******************************************************************************************
instance Mil_318_Miliz (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Miliz;
	guild 								=	GIL_MIL;
	id 									=	318;
	voice 								=	6;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal43, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_318;
};

func void Rtn_Start_318()
{
	TA_Stand_Guarding	(06,45,21,05, "NW_CITY_HABOUR_KASERN_OFFICE");
	TA_Smalltalk		(21,05,23,59, "NW_CITY_HABOUR_KASERN_BARRACK02_IN");
	TA_Sleep			(23,59,06,45, "NW_CITY_BARRACK02_BED_WULFGAR");
};
