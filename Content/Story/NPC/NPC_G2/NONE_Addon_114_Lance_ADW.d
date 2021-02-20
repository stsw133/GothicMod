//******************************************************************************************
instance NONE_Addon_114_Lance_ADW (Npc_Default)
{
	// ------ General ------
	name								=	"Lance";
	guild 								=	GIL_NONE;
	id 									=	114;
	voice 								=	3;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_NPCIsRanger]				=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate-5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);
	EquipItem (self, ItRw_Sld_Bow);
	CreateInvItem (self, ItRi_Ranger_Lance);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal10, 0, ITAR_WaterRanger);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_114;
};

FUNC VOID Rtn_PreStart_114()
{
	TA_Stand_ArmsCrossed	(08,00,22,00, "ADW_PATH_TO_LOCH_00");
    TA_Stand_ArmsCrossed	(22,00,08,00, "ADW_PATH_TO_LOCH_00");
};
