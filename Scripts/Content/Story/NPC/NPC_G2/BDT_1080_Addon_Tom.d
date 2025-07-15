///******************************************************************************************
instance BDT_1080_Addon_Tom (Npc_Default)
{
	/// ------ General ------
	name								=	"Tom";
	guild								=	GIL_BDT;
	id									=	1080;
	voice								=	11;
	npctype								=	NPCTYPE_BL_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_ElBastardo);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_OldMan_Gravo, Teeth_Normal, ItAr_BDT_M);
	Mdl_SetModelFatness	(self, 0.75);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1080;
};

func void Rtn_Start_1080()
{
	TA_Sit_Campfire	(09,00, 21,00, "ADW_BL_HOEHLE_04");
	TA_Sit_Campfire	(21,00, 09,00, "ADW_BL_HOEHLE_04");
};
func void Rtn_LAGER_1080()
{
	TA_Stand_Drinking	(09,00, 21,00, "BL_INN_03_C");
	TA_Stand_Drinking	(21,00, 09,00, "BL_INN_03_C");
};
