///******************************************************************************************
instance VLK_431_Kardif (Npc_Default)
{
	/// ------ General ------
	name								=	"Kardif";
	guild								=	GIL_VLK;
	id									=	431;
	voice								=	14;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_NormalBart04, Teeth_Normal, ItAr_Barkeeper);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_431;
};

func void Rtn_Start_431()
{
	TA_Stand_Sweeping		(08,00, 11,00, "NW_CITY_HABOUR_TAVERN01_SMALLTALK_01");
	TA_Stand_ArmsCrossed	(11,00, 13,00, "NW_CITY_KARDIF");
	TA_Stand_Sweeping		(13,00, 16,00, "NW_CITY_HABOUR_TAVERN01_SMALLTALK_01");
	TA_Stand_ArmsCrossed	(16,00, 08,00, "NW_CITY_KARDIF");
};
