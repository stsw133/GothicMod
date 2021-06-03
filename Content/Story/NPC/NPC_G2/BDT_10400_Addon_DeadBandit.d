///******************************************************************************************
instance BDT_10400_Addon_DeadBandit (Npc_Default)
{
	/// ------ General ------
	name								=	"Bandyta";
	guild 								=	GIL_BDT;
	id 									=	10400;
	voice 								=	4;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);

	/// ------ Inventory ------
	CreateInvItems (self, ItMi_Gold, 50);
//	CreateInvItem (self, ItWr_DexStonePlate1_Addon);
//	CreateInvItem (self, ItWr_OneHStonePlate1_Addon);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Bald", Face_Ian, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10400;
};

func void Rtn_Start_10400()
{
    TA_Stand_WP	(08,00,16,00, "ADW_ADANOSTEMPEL_RHADEMES_DEADBDT_02");
    TA_Stand_WP	(16,00,08,00, "ADW_ADANOSTEMPEL_RHADEMES_DEADBDT_02");
};
