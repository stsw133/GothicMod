///******************************************************************************************
instance VLK_467_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BUERGER;
	guild 								=	GIL_VLK;
	id 									=	467;
	voice 								=	6;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Medium-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_SWORD);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_Normal05, 0, ITAR_Vlk_L_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_467;
};

func void Rtn_Start_467()
{
	TA_Stand_ArmsCrossed	(11,00,19,00, "NW_CITY_WATCH_FIGHT_02");
    TA_Smalltalk			(19,00,03,00, "NW_CITY_HABOUR_03");
    TA_Sit_Throne			(03,00,05,00, "NW_CITY_PUFF_THRONE");
    TA_Smalltalk			(05,00,11,00, "NW_CITY_WAY_TO_SHIP_01");
};
