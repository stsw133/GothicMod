///******************************************************************************************
instance Mil_336_Rick (Npc_Default)
{
	/// ------ General ------
	name								=	"Rick";
	guild								=	GIL_NONE;
	id									=	336;
	voice								=	10;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_DropDeadAndKill]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_Ricelord, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_336;
};

func void Rtn_Start_336()
{
	TA_Smalltalk	(08,00, 22,00, "NW_FARM3_PATH_02");
	TA_Smalltalk	(22,00, 08,00, "NW_FARM3_PATH_02");
};
func void Rtn_MilComing_336()
{
	TA_Stand_ArmsCrossed	(08,00, 22,00, "NW_FARM3_HOUSE");
	TA_Stand_ArmsCrossed	(22,00, 08,00, "NW_FARM3_HOUSE");
};
func void Rtn_Flucht2_336()
{
	TA_Smalltalk	(08,00, 22,00, "NW_RUMBOLD_FLUCHT2");
	TA_Smalltalk	(22,00, 08,00, "NW_RUMBOLD_FLUCHT2");
};
func void Rtn_Flucht3_336()
{
	TA_Smalltalk	(08,00, 22,00, "NW_RUMBOLD_FLUCHT3");
	TA_Smalltalk	(22,00, 08,00, "NW_RUMBOLD_FLUCHT3");
};
