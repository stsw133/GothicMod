///******************************************************************************************
instance VLK_402_Richter (Npc_Default)
{
	/// ------ General ------
	name								=	"Sêdzia";
	guild								=	GIL_VLK;
	id									=	402;
	voice								=	10;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItKe_Richter);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Richter, Teeth_Normal, ItAr_Judge);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_402;
};

func void Rtn_Start_402()
{
	TA_Read_Bookstand	(08,00, 18,45, "NW_CITY_RICHTER_BED");
	TA_Sit_Throne		(18,45, 22,00, "NW_CITYHALL_PRIVATE_THRONE");
	TA_Sit_Throne		(22,00, 01,00, "NW_CITY_RICHTER");
	TA_Sleep			(01,00, 08,00, "NW_CITY_RICHTER_BED");
};
