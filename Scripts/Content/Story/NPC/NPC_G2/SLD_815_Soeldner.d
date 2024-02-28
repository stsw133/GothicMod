///******************************************************************************************
instance SLD_815_Soeldner (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_SOELDNER;
	guild 								=	GIL_SLD;
	id 									=	815;
	voice 								=	6;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Axe);
	EquipItem (self, ItRw_Sld_Bow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal14, 0, ITAR_SLD_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_815;
};

func void Rtn_Start_815()
{
	TA_Sit_Campfire	(08,00,22,00, "NW_BIGFARM_VORPOSTEN1_01");
    TA_Sit_Campfire	(22,00,08,00, "NW_BIGFARM_VORPOSTEN1_01");
};
func void Rtn_BengarsFarm_815()
{
	TA_Smalltalk	(08,00,22,00, "NW_FARM3_PATH_02");
    TA_Smalltalk	(22,00,08,00, "NW_FARM3_PATH_02");
};
