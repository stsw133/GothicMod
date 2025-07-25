///******************************************************************************************
instance NOV_601_Igaraz (Npc_Default)
{
	/// ------ General ------
	name								=	"Igaraz";
	guild								=	GIL_NOV;
	id									=	601;
	voice								=	13;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Nov_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItKe_IgarazChest_mis);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Psionic", Face_N_Normal_Stone, Teeth_Normal, ItAr_NOV_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_601;
};

func void Rtn_Start_601()
{
	TA_Smalltalk		(09,00, 22,04, "NW_MONASTERY_GRASS_01");
	TA_Sleep			(22,04, 08,00, "NW_MONASTERY_NOVICE02_05");
	TA_Pray_Innos_FP	(08,00, 09,00, "NW_MONASTERY_CHURCH_03");
};
func void Rtn_CONTEST_601() 
{
	TA_Stand_ArmsCrossed	(08,00, 23,04, "NW_TAVERNE_TROLLAREA_05");
	TA_Stand_ArmsCrossed	(23,04, 08,00, "NW_TAVERNE_TROLLAREA_05");
};
func void Rtn_CONTESTWAIT_601() 
{
	TA_Stand_ArmsCrossed	(08,00, 23,04, "NW_TAVERNE_TROLLAREA_66");
	TA_Stand_ArmsCrossed	(23,04, 08,00, "NW_TAVERNE_TROLLAREA_66");
};
