///******************************************************************************************
instance VLK_425_Regis (Npc_Default)
{
	/// ------ General ------
	name								=	"Regis";
	guild 								=	GIL_VLK;
	id 									=	425;
	voice 								=	13;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Mordrag, 0, ITAR_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_425;
};

func void Rtn_Start_425()
{
	TA_Sit_Bench	(05,30,20,30, "NW_CITY_REGIS");
	TA_Smalltalk	(20,30,00,30, "NW_CITY_MERCHANT_PATH_14_A");
	TA_Sit_Chair	(00,30,05,30, "NW_CITY_TAVERN_IN_04");
};
