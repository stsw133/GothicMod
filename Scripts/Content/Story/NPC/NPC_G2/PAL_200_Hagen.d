///******************************************************************************************
instance Pal_200_Hagen (Npc_Default)
{
	/// ------ General ------
	name								=	"Lord Hagen";
	guild 								=	GIL_PAL;
	id 									=	200;
	voice 								=	4;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Aivars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_Normal06, 0, ITAR_PAL_H);
	Mdl_SetModelFatness	(self, 1.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_200;
};

func void Rtn_Start_200()
{	
	TA_Stand_ArmsCrossed	(08,00,20,00, "NW_CITY_HAGEN");
    TA_Stand_ArmsCrossed	(20,00,08,00, "NW_CITY_HAGEN");
};
func void Rtn_ShipFree_200()
{
	TA_Stand_Guarding	(08,00,23,00, "NW_CITY_UPTOWNPARADE_HAGEN");
    TA_Stand_Guarding	(23,00,08,00, "NW_CITY_UPTOWNPARADE_HAGEN");
};
