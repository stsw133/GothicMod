///******************************************************************************************
instance VLK_4250_Jorgen_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Jorgen";
	guild 								=	GIL_NONE;
	id 									=	42500;
	voice 								=	7;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_PARTYMEMBER]				=	true;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, FightTalent_Strong);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_Normal04, 0, ITAR_VLK_L_03);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_42500;
};

func void Rtn_Start_42500()
{
	TA_Stand_WP	(08,00,23,00, "SHIP_CREW_CAPTAIN");
	TA_Sleep	(23,00,08,00, "SHIP_IN_06");
};
