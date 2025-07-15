///******************************************************************************************
instance STRF_1118_Addon_Patrick (Npc_Default)
{
	/// ------ General ------
	name								=	"Patrick";
	guild								=	GIL_STRF;
	id									=	1118;
	voice								=	7;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_NoFightParker]			=	true;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_Ambient | NEWS_ToughGuy;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2H_Axe_L_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+1, BodySkin_L, "Hum_Head_Bald", Face_L_NormalBart02, Teeth_Normal, ItAr_Prisoner_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1118;
};

func void Rtn_Start_1118()
{
	TA_Pick_Ore	(08,00, 23,00, "ADW_MINE_LAGER_05");
	TA_Pick_Ore	(23,00, 08,00, "ADW_MINE_LAGER_05");
};
func void Rtn_Flucht_1118()
{
	TA_RunToWP	(08,00, 23,00, "ADW_BL_HOEHLE_04");
	TA_RunToWP	(23,00, 08,00, "ADW_BL_HOEHLE_04");
};
