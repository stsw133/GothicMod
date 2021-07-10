///******************************************************************************************
instance BDT_1073_Addon_Sancho (Npc_Default)
{
	/// ------ General ------
	name								=	"Sancho";
	guild 								=	GIL_BDT;
	id 									=	1073;
	voice 								=	6;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Thief", Face_Mordrag, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1073;
};

func void Rtn_Start_1073()
{
	TA_Stand_Drinking	(09,00,21,00, "ADW_BANDIT_VP1_01");
	TA_Stand_Drinking	(21,00,09,00, "ADW_BANDIT_VP1_01");
};
