///******************************************************************************************
instance NOV_603_Agon (Npc_Default)
{
	/// ------ General ------
	name								=	"Agon";
	guild								=	GIL_NOV;
	id									=	603;
	voice								=	7;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Nov_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal01, Teeth_Normal, ItAr_NOV_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_603;
};

func void Rtn_Start_603()
{
	TA_Rake_FP			(08,00, 09,00, "NW_MONASTERY_HERB_05");
	TA_Pray_Innos_FP	(09,00, 10,00, "NW_MONASTERY_CHURCH_03");
	TA_Rake_FP			(10,00, 22,10, "NW_MONASTERY_HERB_05");
	TA_Sleep			(22,10, 08,00, "NW_MONASTERY_NOVICE03_07");
};
func void Rtn_GolemLives_603()
{
	TA_Stand_Guarding	(08,00, 23,10, "NW_TROLLAREA_PATH_02");
	TA_Stand_Guarding	(23,10, 08,00, "NW_TROLLAREA_PATH_02");
};
func void Rtn_GolemDead_603()
{
	TA_Stand_Guarding	(08,00, 23,10, "NW_MAGECAVE_RUNE");
	TA_Stand_Guarding	(23,10, 08,00, "NW_MAGECAVE_RUNE");
};
func void Rtn_StillAlive_603()	
{
	TA_Stand_Guarding	(08,00, 23,10, "TAVERN");
	TA_Stand_Guarding	(23,10, 08,00, "TAVERN");
};
