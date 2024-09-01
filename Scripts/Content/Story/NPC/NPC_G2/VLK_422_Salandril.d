///******************************************************************************************
instance VLK_422_Salandril (Npc_Default)
{
	/// ------ General ------
	name								=	"Salandril";
	guild								=	GIL_VLK;
	id									=	422;
	voice								=	13;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Dagger);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Weak_Asghan, Teeth_Normal, ItAr_VLK_L_13);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_422;
};

func void Rtn_Start_422()
{
	TA_Stand_ArmsCrossed	(08,00, 10,00, "NW_CITY_SALANDRIL");
	TA_Potion_Alchemy		(10,00, 13,00, "NW_CITY_SALANDRIL");
	TA_Read_Bookstand		(13,00, 15,00, "NW_CITY_SHOP_SALANDRIL_03");
	TA_Stand_ArmsCrossed	(15,00, 17,00, "NW_CITY_SALANDRIL");
	TA_Potion_Alchemy		(17,00, 19,00, "NW_CITY_SALANDRIL");
	TA_Read_Bookstand		(19,00, 22,00, "NW_CITY_SHOP_SALANDRIL_03");
	TA_Sleep				(22,00, 08,00, "NW_CITY_SHOP_SALANDRIL_BED");
};
func void Rtn_KlosterUrteil_422()
{
	TA_Stand_ArmsCrossed	(08,00, 22,00, "ALTAR");
	TA_Stand_ArmsCrossed	(22,00, 08,00, "ALTAR");
};
