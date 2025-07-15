///******************************************************************************************
instance Mil_335_Rumbold (Npc_Default)
{
	/// ------ General ------
	name								=	"Rumbold";
	guild								=	GIL_NONE;	
	id									=	335;
	voice								=	10;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_DropDeadAndKill]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Mil_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_Important_Arto, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_335;
};

func void Rtn_Start_335()
{
	TA_Smalltalk	(08,00, 22,00, "NW_FARM3_PATH_02");
	TA_Smalltalk	(22,00, 08,00, "NW_FARM3_PATH_02");
};
func void Rtn_MilComing_335()
{
	TA_Smalltalk	(08,00, 22,00, "NW_FARM3_BENGAR");
	TA_Smalltalk	(22,00, 08,00, "NW_FARM3_BENGAR");
};
func void Rtn_Flucht2_335()
{
	TA_Smalltalk	(08,00, 22,00, "NW_RUMBOLD_FLUCHT2");
	TA_Smalltalk	(22,00, 08,00, "NW_RUMBOLD_FLUCHT2");
};
func void Rtn_Flucht3_335()
{
	TA_Smalltalk	(08,00, 22,00, "NW_RUMBOLD_FLUCHT3");
	TA_Smalltalk	(22,00, 08,00, "NW_RUMBOLD_FLUCHT3");
};
