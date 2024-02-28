///******************************************************************************************
instance BDT_1083_Addon_Esteban (Npc_Default)
{
	/// ------ General ------
	name								=	"Esteban";
	guild 								=	GIL_BDT;
	id 									=	1083;
	voice 								=	7;
	npctype								=	NPCTYPE_BL_MAIN;

	/// ------ AI vars ------
	aivar[AIV_Story]					=	STORY_Bandit | STORY_Esteban;
	aivar[AIV_NewsOverride]				=	NEWS_Ambient;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Axe);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItems (self, ITMI_Addon_Stone_01, 5);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Thief", Face_Normal04, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1083;
};

func void Rtn_Start_1083()
{
   TA_Stand_ArmsCrossed	(09,00,10,00, "BL_MID_07");
   TA_Stand_ArmsCrossed	(10,00,09,00, "BL_MID_07");
};
