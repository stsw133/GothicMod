///******************************************************************************************
instance VLK_437_Brahim (Npc_Default)
{
	/// ------ General ------
	name								=	"Brahim";
	guild								=	GIL_VLK;
	id									=	437;
	voice								=	7;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_CoolPock, Teeth_Normal, ItAr_Vlk_L_10);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_437;
};

func void Rtn_Start_437()
{
	TA_Sit_Bench	(08,00, 22,00, "NW_CITY_HABOUR_HUT_01_FRONT");
	TA_Sleep		(22,00, 08,00, "NW_CITY_BED_BRAHIM");
};
