///******************************************************************************************
instance STRF_1120_Addon_Tonak (Npc_Default)
{
	/// ------ General ------
	name								=	"Tonak";
	guild								=	GIL_STRF;
	id									=	1120;
	voice								=	3;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+1, BodySkin_B, "Hum_Head_Thief", Face_B_Normal01, Teeth_Normal, ItAr_Prisoner_L);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1120;
};

func void Rtn_Start_1120()
{
	TA_Pick_Ore	(08,00, 23,00, "ADW_MINE_LAGER_SIDE_PICK_01");
	TA_Pick_Ore	(23,00, 08,00, "ADW_MINE_LAGER_SIDE_PICK_01");
};
func void Rtn_Flucht_1120()
{
	TA_RunToWP	(08,00, 23,00, "ADW_BL_HOEHLE_03");
	TA_RunToWP	(23,00, 08,00, "ADW_BL_HOEHLE_03");
};
