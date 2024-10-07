///******************************************************************************************
instance PIR_1368_Addon_Malcom (Npc_Default)
{
	/// ------ General ------
	name								=	"Malcom";
	guild								=	GIL_PIR;
	id									=	1368;
	voice								=	4;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 10);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_Addon_PIR1hAxe);
	CreateInvItem (self, ItWr_StonePlate);	/// changed!!!
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pony", Face_N_Normal_Sly, Teeth_Normal, ItAr_PIR_L);
	Mdl_SetModelFatness	(self, 1.1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_1368;
};

func void Rtn_PreStart_1368()
{
	TA_Sit_Campfire	(06,00, 10,00, "ADW_PIRATECAMP_LUMBER_SIT");
	TA_Saw			(10,00, 14,00, "ADW_PIRATECAMP_WAY_15");
	TA_Sit_Campfire (14,00, 18,00, "ADW_PIRATECAMP_LUMBER_SIT");
	TA_Saw			(18,00, 22,00, "ADW_PIRATECAMP_WAY_15");
	TA_Sit_Campfire	(22,00, 02,00, "ADW_PIRATECAMP_LUMBER_SIT");
	TA_Sit_Campfire	(02,00, 06,00, "ADW_PIRATECAMP_LUMBER_SIT");
};
func void Rtn_Start_1368()
{
	TA_Sleep	(06,00, 18,00, "ADW_PIRATECAMP_SECRETCAVE_02");
	TA_Sleep	(18,00, 06,00, "ADW_PIRATECAMP_SECRETCAVE_02");
};
