///******************************************************************************************
instance BAU_973_Rukhar (Npc_Default)
{
	/// ------ General ------
	name								=	"Rukhar";
	guild								=	GIL_OUT;
	id									=	973;
	voice								=	12;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Pony", Face_L_NormalBart02, Teeth_Normal, ItAr_BAU_L_01);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_973;
};

func void Rtn_Start_973()
{
	TA_Stand_Drinking	(08,00, 22,00, "NW_TAVERNE_RUKHAR");
	TA_Sit_Bench		(22,00, 08,00, "NW_TAVERNE_OUT_01");
};
func void Rtn_Wettkampf_973()
{
	TA_Stand_Drinking	(08,00, 22,00, "NW_TAVERNE_RUKHAR");
	TA_Stand_Drinking	(22,00, 08,00, "NW_TAVERNE_RUKHAR");
};
func void Rtn_WettkampfRukharWon_973()
{
	TA_Stand_ArmsCrossed	(08,00, 22,00, "NW_TAVERNE_RUKHAR");
	TA_Stand_ArmsCrossed	(22,00, 08,00, "NW_TAVERNE_RUKHAR");
};
func void Rtn_WettkampfRukharLost_973()
{
	TA_Sit_Bench	(08,00, 22,00, "NW_TAVERNE_OUT_01");
	TA_Sit_Bench	(22,00, 08,00, "NW_TAVERNE_OUT_01");
};
