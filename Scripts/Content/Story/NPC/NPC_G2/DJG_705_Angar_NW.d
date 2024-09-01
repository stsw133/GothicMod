///******************************************************************************************
instance DJG_705_Angar_NW (Npc_Default)
{
	/// ------ General ------
	name								=	"Angar";
	guild								=	GIL_DJG;
	id									=	7050;
	voice								=	4;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_B_CorAngar, Teeth_Normal, ItAr_SLT_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_7050;
};

func void Rtn_Start_7050()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "FARM3");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "FARM3");
};
func void Rtn_WaitForShip_7050()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "NW_WAITFOR_SHIP_03");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "NW_WAITFOR_SHIP_03");
};
func void Rtn_Ship_7050()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "SHIP_CREW_03");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "SHIP_CREW_03");
};
