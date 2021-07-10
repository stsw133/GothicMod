///******************************************************************************************
instance BDT_1074_Addon_Edgor (Npc_Default)
{
	/// ------ General ------
	name								=	"Edgor";
	guild 								=	GIL_BDT;
	id 									=	1074;
	voice 								=	6;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Sld_Bow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal47, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1074;
};

func void Rtn_Start_1074()
{
	TA_Sit_Campfire	(09,00,12,00, "ADW_BANDIT_VP1_09");
	TA_Sit_Campfire	(12,00,09,00, "ADW_BANDIT_VP1_09");
};
