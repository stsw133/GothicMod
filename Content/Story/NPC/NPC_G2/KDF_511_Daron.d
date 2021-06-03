///******************************************************************************************
instance KDF_511_Daron (Npc_Default)
{
	/// ------ General ------
	name								=	"Daron";
	guild 								=	GIL_KDF;
	id 									=	511;
	voice 								=	10;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_PYR;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Nov_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Thief", Face_Raven, 0, ITAR_Mag_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_511;
};

func void Rtn_Start_511()
{
	TA_Stand_Guarding	(07,35,11,35, "NW_CITY_MERCHANT_PATH_29_B");
	TA_Stand_Eating		(11,35,12,05, "NW_CITY_MERCHANT_PATH_28_F");
	TA_Stand_Guarding	(12,05,12,35, "MARKT");
	TA_Stand_Drinking	(12,35,13,05, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Stand_Eating		(13,05,13,25, "NW_CITY_MERCHANT_PATH_30");
	TA_Stand_Guarding	(13,25,13,55, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Stand_Guarding	(13,55,18,05, "NW_CITY_MERCHANT_PATH_29_B");
	TA_Stand_Drinking	(18,05,19,05, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Stand_Guarding	(19,05,20,05, "NW_CITY_MERCHANT_PATH_29_B");
	TA_Sit_Throne		(20,05,01,05, "NW_CITY_BED_ZURIS");
    TA_Sleep			(01,05,07,35, "NW_CITY_BED_DARON");
};
