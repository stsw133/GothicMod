///******************************************************************************************
instance VLK_4301_Addon_Farim (Npc_Default)
{
	/// ------ General ------
	name								=	"Farim";
	guild 								=	GIL_VLK;
	id 									=	4301;
	voice 								=	11;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	CreateInvItem (self, ItMi_Aquamarine);
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_Normal35, 0, ITAR_BAU_00);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4301;
};

func void Rtn_Start_4301()
{
	TA_Repair_Hut 		(08,00,12,00, "NW_CITY_WAY_TO_SHIP_FISCHER_05");
	TA_Stand_Guarding	(12,00,16,00, "NW_CITY_WAY_TO_SHIP_FISCHER_06");
	TA_Repair_Hut		(16,00,20,00, "NW_CITY_WAY_TO_SHIP_FISCHER_05");
	TA_Stand_Guarding	(20,00,01,30, "NW_CITY_WAY_TO_SHIP_FISCHER_06");
	TA_Sleep			(01,30,08,00, "NW_CITY_WAY_TO_SHIP_FISCHER_04");
};
