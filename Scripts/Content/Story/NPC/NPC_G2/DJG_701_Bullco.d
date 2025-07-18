///******************************************************************************************
instance DJG_701_Bullco (Npc_Default)
{
	/// ------ General ------
	name								=	"Bullko";
	guild								=	GIL_DJG;
	id									=	701;
	voice								=	6;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, 65);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Sld_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_Normal_Olli_Kahn, Teeth_Normal, ItAr_DJG_M);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_701;
};

func void Rtn_Start_701()
{
	TA_Sit_Bench	(08,00, 23,00, "OW_DJG_ICECAMP_02");
	TA_Sit_Bench	(23,00, 08,00, "OW_DJG_ICECAMP_02");
};
func void Rtn_IceWait1_701()
{
	TA_Stand_ArmsCrossed	(00,00, 23,00, "OW_ICEREGION_ENTRANCE");
	TA_Stand_ArmsCrossed	(23,00, 24,00, "OW_ICEREGION_ENTRANCE");
};
func void Rtn_IceWait2_701()
{
	TA_Stand_ArmsCrossed	(00,00, 23,00, "OW_DJG_ICEREGION_WAIT2_02");
	TA_Stand_ArmsCrossed	(23,00, 24,00, "OW_DJG_ICEREGION_WAIT2_02");
};
func void Rtn_IceDragon_701()
{
	TA_Stand_ArmsCrossed	(00,00, 23,00, "OW_ICEDRAGON_02");
	TA_Stand_ArmsCrossed	(23,00, 24,00, "OW_ICEDRAGON_02");
};
func void Rtn_DJGVorposten_701()
{
	TA_Stand_ArmsCrossed	(00,00, 23,00, "OW_MOVEMENT_BGOBBO1");
	TA_Stand_ArmsCrossed	(23,00, 24,00, "OW_MOVEMENT_BGOBBO1");
};
func void Rtn_Follow_701()
{
	TA_Follow_Player	(00,00, 23,00, "SPAWN_OW_BLACKGOBBO_A1");
	TA_Follow_Player	(23,00, 24,00, "SPAWN_OW_BLACKGOBBO_A1");
};
