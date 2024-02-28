///******************************************************************************************
instance VLK_454_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BUERGER;
	guild 								=	GIL_VLK;
	id 									=	454;
	voice 								=	1;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_Normal14, 0, ITAR_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_454;
};

func void Rtn_Start_454()
{
	TA_Stand_ArmsCrossed	(05,15,20,15, "NW_CITY_MERCHANT_PATH_14_C");
    TA_Smoke_Waterpipe		(20,15,01,15, "NW_CITY_RAUCH_03");
    TA_Sit_Chair			(01,15,05,15, "NW_CITY_TAVERN_IN_01");
};
func void Rtn_VatrasAway_454()
{
	TA_Sit_Chair		(05,15,20,15, "NW_CITY_TAVERN_IN_01");
    TA_Smoke_Waterpipe	(20,15,01,15, "NW_CITY_RAUCH_03");
    TA_Sit_Chair		(01,15,05,15, "NW_CITY_TAVERN_IN_01");
};
