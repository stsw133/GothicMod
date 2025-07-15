///******************************************************************************************
instance PIR_1362_Addon_Bones (Npc_Default)
{
	/// ------ General ------
	name								=	"Bones";
	guild								=	GIL_PIR;
	id									=	1362;
	voice								=	1;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_Schlachtaxt);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_NormalBart10, Teeth_Normal, ItAr_PIR_M);
	Mdl_SetModelFatness	(self, 1.3);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_1362;
};

func void Rtn_PreStart_1362()
{
	TA_Practice_Sword	(08,00, 20,00, "ADW_PIRATECAMP_TRAIN_01");
	TA_Practice_Sword	(20,00, 08,00, "ADW_PIRATECAMP_TRAIN_01");
};
func void Rtn_Start_1362()
{
	TA_Practice_Sword	(06,55, 19,55, "ADW_PIRATECAMP_TRAIN_01");
	TA_Stand_Drinking	(19,55, 20,55, "WP_PIR_04");
	TA_Sit_Campfire		(20,55, 00,55, "WP_PIR_04");
	TA_Stand_Drinking	(00,55, 01,55, "WP_PIR_04");
	TA_Sit_Campfire		(01,55, 06,55, "WP_PIR_04");
};
