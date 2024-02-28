///******************************************************************************************
instance STRF_1122_Addon_Pardos (Npc_Default)
{
	/// ------ General ------
	name								=	"Pardos";
	guild 								=	GIL_STRF;
	id 									=	1122;
	voice 								=	3;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 12);
	NpcFn_SetFightSkills (self, FightTalent_Strong-10);
	slf.attribute[ATR_HITPOINTS]		/=	2;

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+1, BodySkin_N, "Hum_Head_Bald", Face_Normal57, 0, -1);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1122;
};

func void Rtn_Start_1122()
{
	TA_Sit_Campfire	(08,00,23,00, "ADW_MINE_LAGER_SIDE_04");
	TA_Sit_Campfire	(23,00,08,00, "ADW_MINE_LAGER_SIDE_04");
};
func void Rtn_Flucht_1122()
{
	TA_RunToWP	(08,00,23,00, "ADW_BL_HOEHLE_03");
	TA_RunToWP	(23,00,08,00, "ADW_BL_HOEHLE_03");
};
