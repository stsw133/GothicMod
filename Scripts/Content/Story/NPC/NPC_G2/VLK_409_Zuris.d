///******************************************************************************************
instance VLK_409_Zuris (Npc_Default)
{
	/// ------ General ------
	name								=	"Zuris";
	guild								=	GIL_VLK;
	id									=	409;
	voice								=	14;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_VLK_Dagger);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Psionic", Face_N_ImportantGrey, Teeth_Normal, ItAr_VLK_L_08);
	Mdl_SetModelFatness	(self, 0.9);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_409;
};

func void Rtn_Start_409()
{
	TA_Stand_ArmsCrossed	(05,30, 06,25, "NW_CITY_BALTRAM");
	TA_Stand_Guarding		(06,25, 06,30, "NW_CITY_ZURIS_S");
	TA_Stand_ArmsCrossed	(06,30, 20,00, "NW_CITY_BALTRAM");
	TA_Sit_Throne			(20,00, 00,30, "NW_CITY_CHAIR_ZURIS");
	TA_Sleep				(00,30, 05,30, "NW_CITY_BED_ZURIS");
};
