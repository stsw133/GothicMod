///******************************************************************************************
instance None_101_Mario_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Mario";
	guild 								=	GIL_DMT;
	id 									=	1010;
	voice 								=	7;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_MagicUser] 				=	MAGIC_NEVER;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	aivar[AIV_EnemyOverride] 			=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Master+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Sturmbringer);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ITWR_DementorObsessionBook_MIS);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_FatBald", Face_Normal04, 0, ITAR_MIL_H);
	Mdl_SetModelFatness	(self, 1.2);
	Mdl_ApplyOverlayMds	(self, "Humans_MILITIA.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1010;
};

func void Rtn_Start_1010()
{
	TA_Sit_Bench	(08,00,23,00, "SHIP_DECK_25");
	TA_Sit_Bench	(23,00,08,00, "SHIP_DECK_25");
};
func void Rtn_OrkSturmDI_1010()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "DI_MARIO_AMBUSH");
	TA_Stand_ArmsCrossed	(23,00,08,00, "DI_MARIO_AMBUSH");
};
