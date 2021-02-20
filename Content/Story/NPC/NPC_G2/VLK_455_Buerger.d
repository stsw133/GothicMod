//******************************************************************************************
instance VLK_455_Buerger (Npc_Default)
{
	// ------ General ------
	name								=	NAME_BUERGER;
	guild 								=	GIL_VLK;
	id 									=	455;
	voice 								=	8;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Pony", Face_Normal33, 0, ITAR_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_455;
};

FUNC VOID Rtn_Start_455()
{
	TA_Stand_ArmsCrossed	(05,20,20,20, "NW_CITY_MERCHANT_PATH_14_C");
    TA_Smalltalk			(20,20,05,20, "NW_CITY_MERCHANT_SHOP03_FRONT_03");
};
FUNC VOID Rtn_VatrasAway_455()
{
	TA_Sit_Bench	(07,20,20,20, "NW_CITY_MERCHANT_TAVERN01_FRONT");
    TA_Smalltalk	(20,20,07,20, "NW_CITY_MERCHANT_SHOP03_FRONT_03");
};
