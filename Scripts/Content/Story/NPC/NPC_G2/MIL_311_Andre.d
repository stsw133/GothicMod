///******************************************************************************************
instance Mil_311_Andre (Npc_Default)
{
	/// ------ General ------
	name								=	"Andre";
	guild								=	GIL_MIL;
	id									=	311;
	voice								=	8;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_AddFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Mil_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Weak12, Teeth_Normal, ItAr_PAL_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_311;
};

func void Rtn_PreStart_311()
{
	TA_Stand_Guarding	(00,00, 12,00, "NW_CITY_HABOUR_KASERN_MAIN_ENTRY");
	TA_Stand_Guarding	(12,00, 00,00, "NW_CITY_HABOUR_KASERN_MAIN_ENTRY");
};
func void Rtn_Start_311()
{
	TA_Read_Bookstand	(08,00, 00,10, "NW_CITY_ANDRE");
	TA_Smalltalk		(00,10, 05,00, "NW_CITY_ANDRE_SMALLTALK");
	TA_Read_Bookstand	(05,00, 08,00, "NW_CITY_ANDRE");
};
