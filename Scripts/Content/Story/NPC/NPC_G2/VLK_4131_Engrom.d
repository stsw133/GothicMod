///******************************************************************************************
instance VLK_4131_Engrom (Npc_Default)
{
	/// ------ General ------
	name								=	"Engrom";
	guild								=	GIL_OUT;
	id									=	4131;
	voice								=	12;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 45);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_VLK_Axe);
	EquipItem (self, itRw0_Crossbow_L_02);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart20, Teeth_Normal, ItAr_Leather_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4131;
};

func void Rtn_Start_4131()
{
	TA_Sit_Campfire	(08,00, 23,00, "SPAWN_TALL_PATH_BANDITOS2_03");
	TA_Sit_Campfire	(23,00, 08,00, "SPAWN_TALL_PATH_BANDITOS2_03");
};
func void Rtn_Obsessed_4131()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "OW_SAWHUT_MOLERAT_MOVEMENT");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "OW_SAWHUT_MOLERAT_MOVEMENT");
};
