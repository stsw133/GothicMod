///******************************************************************************************
instance BDT_10025_Addon_Wache (Npc_Default)
{
	/// ------ General ------
	name								=	"Kucharz";
	guild								=	GIL_BDT;
	id									=	10025;
	voice								=	7;
	npctype								=	NPCTYPE_BL_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
//	EquipItem (self, ItMw_2h_Sld_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_FatBald", Face_B_Normal_Kharim, Teeth_Normal, ItAr_Barkeeper);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10025;
};

func void Rtn_Start_10025()
{
	TA_Cook_Cauldron	(06,00, 12,00, "ADW_MINE_CAULDRON");
	TA_Cook_Cauldron	(12,00, 06,00, "ADW_MINE_CAULDRON");
};
