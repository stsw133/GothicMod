///******************************************************************************************
instance BDT_10017_Addon_Juan (Npc_Default)
{
	/// ------ General ------
	name								=	"Juan";
	guild								=	GIL_BDT;
	id									=	10017;
	voice								=	13;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2h_Sld_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItMi_SteelPaket);
	CreateInvItem (self, ItMi_LennarPaket);
	CreateInvItems (self, ItFo_Addon_Grog, 20);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Thief", Face_L_NormalBart01, Teeth_Normal, ItAr_BDT_H);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10017;
};

func void Rtn_Start_10017()
{
	TA_Sit_Campfire	(02,00, 10,00, "ADW_SENAT_CAVE_SIT");
	TA_Sit_Campfire	(10,00, 02,00, "ADW_SENAT_CAVE_SIT");
};
