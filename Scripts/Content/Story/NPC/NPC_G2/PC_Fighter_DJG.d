///******************************************************************************************
instance PC_Fighter_DJG (Npc_Default)
{
	/// ------ General ------
	name								=	"Gorn";
	guild 								=	GIL_DJG;
	id 									=	704;
	voice 								=	12;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, FightTalent_Strong);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Axe);
	EquipItem (self, ItRw_Crossbow_M_01);
	CreateInvItems (self, ItPo_Health_02, 6);
	CreateInvItem (self, ItMi_OldCoin);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Fighter", Face_Gorn, 0, ITAR_DJG_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_704;
};

func void Rtn_PreStart_704()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "OW_DJG_STARTCAMP_01");
	TA_Stand_ArmsCrossed	(23,00,08,00, "OW_DJG_STARTCAMP_01");
};
func void Rtn_Start_704()
{
	TA_Sit_Campfire	(08,00,23,00, "OW_DJG_ROCKCAMP_01");
	TA_Sit_Campfire	(23,00,08,00, "OW_DJG_ROCKCAMP_01");
};
func void Rtn_RunToRockRuinBridge_704()
{
	TA_RunToWP	(08,00,23,00, "LOCATION_19_01");
	TA_RunToWP	(23,00,08,00, "LOCATION_19_01");
};
func void Rtn_Tot_704()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "TOT");
	TA_Stand_ArmsCrossed	(23,00,08,00, "TOT");
};
