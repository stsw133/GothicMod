///******************************************************************************************
instance STRF_1121_Addon_Telbor (Npc_Default)
{
	/// ------ General ------
	name								=	"Telbor";
	guild 								=	GIL_STRF;
	id 									=	1121;
	voice 								=	12;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+0, BodySkin_B, "Hum_Head_FatBald", Face_Normal03, 0, -1);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1121;
};

func void Rtn_Start_1121()
{
	TA_Pick_Ore	(08,00,23,00, "ADW_MINE_LAGER_SIDE_PICK_02");
	TA_Pick_Ore	(23,00,08,00, "ADW_MINE_LAGER_SIDE_PICK_02");
};
func void Rtn_Flucht_1121()
{
	TA_RunToWP	(08,00,23,00, "ADW_BL_HOEHLE_03");
	TA_RunToWP	(23,00,08,00, "ADW_BL_HOEHLE_03");
};
