///******************************************************************************************
instance VLK_489_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buerger;
	guild 								=	GIL_VLK;
	id 									=	489;
	voice 								=	8;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal21, 0, ITAR_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_489;
};

func void Rtn_Start_489()
{
	TA_Smoke_Joint		(11,20,19,15, "NW_CITY_WATCH_FIGHT_02");
	TA_Stand_Drinking	(19,15,02,30, "NW_CITY_HABOUR_03");
    TA_Pee				(21,00,21,05, "NW_CITY_HABOUR_PUFF_02_01");
    TA_Stand_Drinking	(21,05,02,30, "NW_CITY_HABOUR_03");
    TA_Stand_Drinking	(02,30,05,20, "NW_CITY_HABOUR_PUFF_IN_07");
    TA_Smoke_Joint		(05,20,11,20, "NW_CITY_PATH_HABOUR_01");
};
