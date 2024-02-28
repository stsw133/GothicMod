///******************************************************************************************
instance BDT_10022_Addon_Miguel (Npc_Default)
{
	/// ------ General ------
	name								=	"Miguel";
	guild 								=	GIL_BDT;
	id 									=	10022;
	voice 								=	11;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Nagelknueppel);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItems (self, Itpo_health_01, 33);
	CreateInvItems (self, Itpo_mana_01, 7);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Thief", Face_Normal14, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10022;
};

func void Rtn_Start_10022()
{
	TA_Pick_FP		(06,00,12,00, "ADW_PATH_TO_VP3_01");
	TA_Pick_FP		(12,00,18,00, "ADW_PATH_TO_VP3_02");
	TA_Pick_FP		(18,00,22,00, "ADW_PATH_TO_VP3_03");
	TA_Sit_Bench	(22,00,06,00, "ADW_SWAMP_SIT_BENCH_03");
};
