///******************************************************************************************
instance Pal_201_Ingmar (Npc_Default)
{
	/// ------ General ------
	name								=	"Ingmar";
	guild 								=	GIL_PAL;
	id 									=	201;
	voice 								=	6;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Pal_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_Normal05, 0, ITAR_PAL_H);
	Mdl_SetModelFatness	(self, 1.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_201;
};

func void Rtn_Start_201()
{
	TA_Stand_WP	(08,00,23,00, "NW_CITY_CITYHALL_WARROOM_02");
	TA_Stand_WP	(23,00,08,00, "NW_CITY_CITYHALL_WARROOM_02");
};
