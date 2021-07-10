///******************************************************************************************
instance Mil_315_Kasernenwache (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Miliz;
	guild 								=	GIL_MIL;
	id 									=	315;
	voice 								=	7;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal04, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_315;
};

func void Rtn_Start_315()
{
	TA_Smith_Sharp	(07,05,20,59, "NW_CITY_KASERN_ARMORY_SHARP");
	TA_Sit_Campfire	(20,59,00,03, "NW_CITY_BARRACK02_SMALLTALK_01");
	TA_Sleep		(00,03,07,05, "NW_CITY_BARRACK01_BED_RUGA");
};
