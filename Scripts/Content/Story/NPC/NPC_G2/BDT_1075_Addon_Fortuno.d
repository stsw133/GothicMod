///******************************************************************************************
instance BDT_1075_Addon_Fortuno (Npc_Default)
{
	/// ------ General ------
	name								=	"Fortuno";
	guild 								=	GIL_BDT;
	id 									=	1075;
	voice 								=	13;
	npctype								=	NPCTYPE_BL_MAIN;

	/// ------ AI vars ------
	aivar[AIV_NewsOverride]				=	NEWS_Ambient;
	aivar[AIV_NoFightParker]			=	true;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Strong+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Sword_L_03);

	/// ------ Inventory ------
	CreateInvItems (self, ItMi_Joint, 5);
	CreateInvItems (self, ItPl_SwampHerb, 3);
	CreateInvItems (self, ItPl_Mushroom_01, 5);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Tattoo07, 0, ITAR_SLN_H);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_1075;
};

func void Rtn_PreStart_1075()
{
	TA_Stand_ArmsCrossed	(08,00,18,00, "BL_DOWN_SIDE_HERB");
	TA_Stand_ArmsCrossed	(18,00,08,00, "BL_DOWN_SIDE_HERB");
};
func void Rtn_Start_1075()
{
	TA_Smoke_Joint		(08,00,08,10, "BL_DOWN_SIDE_HERB");
	TA_Stomp_Herb		(08,10,12,00, "BL_DOWN_SIDE_HERB");
	TA_Smalltalk		(12,00,15,00, "BL_DOWN_RING_02");
	TA_Sit_Bench		(15,00,17,00, "BL_DOWN_04_BENCH");
	TA_Smoke_Waterpipe	(17,00,19,00, "BL_DOWN_SIDE_03");
	TA_Smalltalk		(19,00,22,00, "BL_DOWN_RING_02");
	TA_Smoke_Joint		(22,00,00,00, "BL_DOWN_RING_04");
	TA_Sleep			(00,00,08,00, "BL_DOWN_SIDE_HERB");
};
