///******************************************************************************************
instance None_101_Mario_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Mario";
	guild								=	GIL_DMT;
	id									=	1010;
	voice								=	7;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	false;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	aivar[AIV_EnemyOverride]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_AddFightSkills (self, 95);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_Sturmbringer);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItWr_DementorObsessionBook_MIS);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_FatBald", Face_B_Normal_Kirgo, Teeth_Normal, ItAr_MIL_M);
	Mdl_SetModelFatness	(self, 1.2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1010;
};

func void Rtn_Start_1010()
{
	TA_Sit_Bench	(08,00, 23,00, "SHIP_DECK_25");
	TA_Sit_Bench	(23,00, 08,00, "SHIP_DECK_25");
};
func void Rtn_OrkSturmDI_1010()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "DI_MARIO_AMBUSH");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "DI_MARIO_AMBUSH");
};
