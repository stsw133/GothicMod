///******************************************************************************************
instance STRF_1119_Addon_Monty (Npc_Default)
{
	/// ------ General ------
	name								=	"Monty";
	guild								=	GIL_STRF;
	id									=	1119;
	voice								=	8;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2H_Axe_L_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+0, BodySkin_N, "Hum_Head_Fighter", Face_N_NormalBart04, Teeth_Normal, ItAr_Prisoner_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1119;
};

func void Rtn_Start_1119()
{
	TA_Pick_Ore	(08,00, 23,00, "ADW_MINE_LAGER_06");
	TA_Pick_Ore	(23,00, 08,00, "ADW_MINE_LAGER_06");
};
func void Rtn_Flucht_1119()
{
	TA_RunToWP	(08,00, 23,00, "ADW_BL_HOEHLE_03");
	TA_RunToWP	(23,00, 08,00, "ADW_BL_HOEHLE_03");
};
