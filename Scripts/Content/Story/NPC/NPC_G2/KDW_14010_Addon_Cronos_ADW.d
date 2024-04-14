///******************************************************************************************
instance KDW_14010_Addon_Cronos_ADW (Npc_Default)
{
	/// ------ General ------
	name								=	"Cronos";
	guild 								=	GIL_KDW;
	id 									=	14010;
	voice 								=	4;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Thief", Face_Normal11, 0, ITAR_Mag_A);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_14010;
};

func void Rtn_Start_14010()
{
	TA_Study_WP		(06,35,07,35, "ADW_ENTRANCE_PLATEAU_13A");
	TA_Study_WP		(07,35,08,35, "ADW_ENTRANCE_PLATEAU_04A");
	TA_Study_WP		(08,35,09,35, "ADW_ENTRANCE_PLATEAU_05A");
	TA_Study_WP		(09,35,10,10, "ADW_ENTRANCE_PLATEAU_13A");
	TA_Study_WP		(10,10,11,15, "ADW_ENTRANCE_PLATEAU_05A");
	TA_Study_WP		(11,15,12,35, "ADW_ENTRANCE_PLATEAU_04A");

	TA_Study_WP		(12,35,13,35, "ADW_ENTRANCE_PLATEAU_13A");
	TA_Study_WP		(13,35,14,35, "ADW_ENTRANCE_PLATEAU_04A");
	TA_Study_WP		(14,35,15,35, "ADW_ENTRANCE_PLATEAU_05A");
	TA_Study_WP		(15,35,16,10, "ADW_ENTRANCE_PLATEAU_13A");
	TA_Study_WP		(16,10,17,15, "ADW_ENTRANCE_PLATEAU_04A");
	TA_Study_WP		(17,15,18,35, "ADW_ENTRANCE_PLATEAU_05A");

	TA_Study_WP		(18,35,19,35, "ADW_ENTRANCE_PLATEAU_13A");
	TA_Study_WP		(19,35,20,35, "ADW_ENTRANCE_PLATEAU_05A");
	TA_Study_WP		(20,35,21,35, "ADW_ENTRANCE_PLATEAU_04A");
	TA_Study_WP		(21,35,22,00, "ADW_ENTRANCE_PLATEAU_13A");

	TA_Sit_Chair	(22,00,06,35, "ADW_ENTRANCE_BUILDING2_03");
};
