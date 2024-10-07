///******************************************************************************************
instance Mil_337_Mika (Npc_Default)
{
	/// ------ General ------
	name								=	"Mika";
	guild								=	GIL_OUT;
	id									=	337;
	voice								=	12;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);
	CreateInvItems (self, ItPo_Health_01, 4);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_FatBald", Face_L_ToughBart_Quentin, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_337;
};

func void Rtn_Start_337()
{
	TA_Stand_Guarding	(08,00, 22,00, "NW_CITY_TO_FOREST_01");
	TA_Stand_Guarding	(22,00, 08,00, "NW_CITY_TO_FOREST_01");
};
func void Rtn_Akil_337()
{
	TA_RunToWP	(06,00, 18,00, "NW_FARM2_PATH_03");
	TA_RunToWP	(18,00, 06,00, "NW_FARM2_PATH_03");
};
