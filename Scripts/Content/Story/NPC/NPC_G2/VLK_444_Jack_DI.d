///******************************************************************************************
instance VLK_444_Jack_DI (Npc_Default)
{
	/// ------ NSC ------
	name								=	"Jack";
	guild								=	GIL_VLK;
	id									=	4440;
	voice								=	14;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_PARTYMEMBER]				=	true;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_ImportantOld, Teeth_Normal, ItAr_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4440;
};

func void Rtn_Start_4440()
{
	TA_Stand_WP	(08,00, 23,00, "SHIP_CREW_CAPTAIN");
	TA_Sleep	(23,00, 08,00, "SHIP_IN_06");
};
func void Rtn_OrkSturmDI_4440()
{
	TA_Stand_WP	(08,00, 23,00, "SHIP_DECK_03");
	TA_Stand_WP	(23,00, 08,00, "SHIP_DECK_03");
};
