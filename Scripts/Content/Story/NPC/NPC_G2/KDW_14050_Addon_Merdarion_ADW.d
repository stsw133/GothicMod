///******************************************************************************************
instance KDW_14050_Addon_Merdarion_ADW (Npc_Default)
{
	/// ------ General ------
	name								=	"Merdarion";
	guild 								=	GIL_KDW;
	id 									=	14050;
	voice 								=	6;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_ELE;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Thief", Face_Normal12, 0, ITAR_Mag_A);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_14050;
};

func void Rtn_Start_14050()
{	
	TA_Study_WP	(06,05,07,15, "ADW_ENTRANCE_01");
	TA_Study_WP	(07,15,08,25, "ADW_ENTRANCE_02");
	TA_Study_WP	(08,25,09,35, "ADW_ENTRANCE_01");
	TA_Study_WP	(09,35,10,45, "ADW_ENTRANCE_02");
	TA_Study_WP	(10,45,11,55, "ADW_ENTRANCE_01");
	TA_Study_WP	(11,55,12,05, "ADW_ENTRANCE_02");

	TA_Study_WP	(12,05,13,15, "ADW_ENTRANCE_01");
	TA_Study_WP	(13,15,14,25, "ADW_ENTRANCE_02");
	TA_Study_WP	(14,25,15,35, "ADW_ENTRANCE_01");
	TA_Study_WP	(15,35,16,45, "ADW_ENTRANCE_02");
	TA_Study_WP	(16,45,17,55, "ADW_ENTRANCE_01");
	TA_Study_WP	(17,55,18,05, "ADW_ENTRANCE_02");

	TA_Study_WP	(18,05,19,15, "ADW_ENTRANCE_01");
	TA_Study_WP	(19,15,20,25, "ADW_ENTRANCE_02");
	TA_Study_WP	(20,25,21,35, "ADW_ENTRANCE_01");
	TA_Study_WP	(21,35,22,45, "ADW_ENTRANCE_02");

	TA_Sleep	(22,45,06,05, "ADW_ENTRANCE_BUILDING2_05");
};
