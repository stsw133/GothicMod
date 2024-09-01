///******************************************************************************************
instance VLK_414_Hanna (Npc_Default)
{
	/// ------ General ------
	name								=	"Hanna";
	guild								=	GIL_VLK;
	id									=	414;
	voice								=	17;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 35);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe1", FaceBabe_N_WhiteCloth, Teeth_Pretty, ItAr_Babe_VLK_L_00);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_414;
};

func void Rtn_Start_414()
{
	TA_Stand_ArmsCrossed	(08,00, 22,00, "NW_CITY_HANNA");
	TA_Stand_ArmsCrossed	(22,00, 08,00, "NW_CITY_HANNA");
};
