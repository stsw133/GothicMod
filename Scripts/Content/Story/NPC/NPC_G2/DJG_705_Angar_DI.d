///******************************************************************************************
instance DJG_705_Angar_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Angar";
	guild								=	GIL_DJG;
	id									=	70500;
	voice								=	4;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_PARTYMEMBER]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_AddFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Sword);
	CreateInvItems (self, ItPo_Health_02, 6);
	CreateInvItem (self, ItMi_OldCoin);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_B_CorAngar, Teeth_Normal, ItAr_SLT_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_70500;
};

func void Rtn_Start_70500()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "SHIP_CREW_03");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "SHIP_CREW_03");
};
func void Rtn_FollowDI_70500()
{
	TA_Follow_Player	(08,00, 23,00, "SHIP_CREW_03");
	TA_Follow_Player	(23,00, 08,00, "SHIP_CREW_03");
};
func void Rtn_FireDragonIsland_70500()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "DI_DRACONIANAREA_FIREDRAGON");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "DI_DRACONIANAREA_FIREDRAGON");
};
func void Rtn_ORKOBERST_DI_70500()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "DI_ORKOBERST");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "DI_ORKOBERST");
};
func void Rtn_Troll_DI_70500()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "DI_ORKAREA_TROLL");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "DI_ORKAREA_TROLL");
};
