///******************************************************************************************
instance VLK_438_Alrik (Npc_Default)
{
	/// ------ General ------
	name								=	"Alrik";
	guild 								=	GIL_NONE;
	id 									=	438;
	voice 								=	9;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

	aivar[AIV_MM_FollowTime]			=	1000;
	aivar[AIV_FightDistCancel]			=	600;

	aivar[AIV_MaxDistToWp]				=	300;
	aivar[AIV_OriginalFightTactic]		=	FAI_HUMAN_NORMAL;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem(self, ItMw_1h_Bau_Mace);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_Bloodwyn, 0, ITAR_Vlk_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_438;
};

func void Rtn_Start_438()
{
	TA_Stand_Guarding	(10,55,19,15, "NW_CITY_PATH_HABOUR_16_01");
	TA_Stand_Drinking	(19,15,03,30, "NW_CITY_HABOUR_TAVERN01_01");
	TA_Sit_Bench		(03,30,10,55, "NW_CITY_PATH_HABOUR_16_01");
};
