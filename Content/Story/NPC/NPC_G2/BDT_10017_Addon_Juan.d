///******************************************************************************************
instance BDT_10017_Addon_Juan (Npc_Default)
{
	/// ------ General ------
	name								=	"Juan";
	guild 								=	GIL_BDT;
	id 									=	10017;
	voice 								=	13;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Axe);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItMi_SteelPaket);
	CreateInvItem (self, ItMi_LennarPaket);
	CreateInvItems (self, ItFo_Addon_Grog, 20);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Thief", Face_Normal06, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10017;
};

func void Rtn_Start_10017()
{
	TA_Sit_Campfire	(02,00,10,00, "ADW_SENAT_CAVE_SIT");
	TA_Sit_Campfire	(10,00,02,00, "ADW_SENAT_CAVE_SIT");
};
