///******************************************************************************************
instance VLK_448_Joe (Npc_Default)
{
	/// ------ General ------
	name								=	"Joe";
	guild								=	GIL_OUT;
	id									=	448;
	voice								=	10;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 35);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_ToughBald, Teeth_Normal, ItAr_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_448;
};

func void Rtn_PreStart_448()
{
	TA_Sit_Campfire	(08,00, 23,00, "NW_CITY_MERCHANT_TOWER_01");
	TA_Sit_Campfire	(23,00, 08,00, "NW_CITY_MERCHANT_TOWER_01");
};
func void Rtn_Start_448()
{
	TA_Stand_Drinking	(08,00, 23,00, "NW_CITY_HABOUR_TAVERN01_08");
	TA_Stand_Drinking	(23,00, 08,00, "NW_CITY_HABOUR_TAVERN01_08");
};
