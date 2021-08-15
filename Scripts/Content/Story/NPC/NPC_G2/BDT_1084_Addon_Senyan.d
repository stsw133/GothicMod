///******************************************************************************************
instance BDT_1084_Addon_Senyan (Npc_Default)
{
	/// ------ General ------
	name								=	"Senyan";
	guild 								=	GIL_BDT;
	id 									=	1084;
	voice 								=	12;
	npctype								=	NPCTYPE_BL_MAIN;

	/// ------ AI vars ------
	aivar[AIV_NewsOverride]				=	true;
	aivar[AIV_StoryBandit]				=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_Normal01, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 0.75);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1084;
};

func void Rtn_Start_1084()
{
	TA_Stand_Guarding	(10,00,12,00,"BL_DOWN_CENTER_03");
	TA_Stand_Guarding	(12,00,10,00,"BL_DOWN_CENTER_03");
};
