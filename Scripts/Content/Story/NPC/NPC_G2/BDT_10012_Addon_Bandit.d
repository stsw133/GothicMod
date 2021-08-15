///******************************************************************************************
instance BDT_10012_Addon_Bandit (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild 								=	GIL_BDT;
	id 									=	10012;
	voice 								=	13;
	npctype								=	NPCTYPE_TAL_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Axe);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_Normal03, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10012;
};

func void Rtn_Start_10012()
{
	TA_Sit_Bench	(22,02,06,00, "ADW_SWAMP_SIT_BENCH_01");
	TA_Smalltalk	(06,00,22,02, "BL_FIGHT_03");
};
