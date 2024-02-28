///******************************************************************************************
instance Pal_216_Cedric (Npc_Default)
{
	/// ------ General ------
	name								=	"Cedrik";
	guild 								=	GIL_PAL;
	id 									=	216;
	voice 								=	12;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, FightTalent_Medium+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Pal_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_Normal37, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_216;
};

func void Rtn_Start_216()
{
	TA_Practice_Sword	(07,00,19,00, "NW_CITY_TRAIN_01");
	TA_Sleep			(19,00,07,00, "NW_CITY_LEOMAR_BED_03");
};
