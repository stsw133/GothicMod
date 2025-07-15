///******************************************************************************************
instance VLK_438_Alrik (Npc_Default)
{
	/// ------ General ------
	name								=	"Alrik";
	guild								=	GIL_NONE;
	id									=	438;
	voice								=	9;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	aivar[AIV_MM_FollowTime]			=	1000;
	aivar[AIV_FightDistCancel]			=	600;
	aivar[AIV_MaxDistToWp]				=	300;
	aivar[AIV_OriginalFightTactic]		=	FAI_HUMAN_NORMAL;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 20);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem(self, ItMw0_1h_Bau_Mace);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_Bloodwyn, Teeth_Normal, ItAr_Vlk_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_438;
};

func void Rtn_Start_438()
{
	TA_Stand_Guarding	(10,55, 19,15, "NW_CITY_PATH_HABOUR_16_01");
	TA_Stand_Drinking	(19,15, 03,30, "NW_CITY_HABOUR_TAVERN01_01");
	TA_Sit_Bench		(03,30, 10,55, "NW_CITY_PATH_HABOUR_16_01");
};
