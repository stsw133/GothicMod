///******************************************************************************************
instance Pal_203_Lothar (Npc_Default)
{
	/// ------ General ------
	name								=	"Lothar";
	guild 								=	GIL_PAL;
	id 									=	203;
	voice 								=	1;
	flags       						=	NPC_FLAG_IMPORTANT;
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
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Psionic", Face_Normal12, 0, ITAR_PAL_H);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_preStart_203;
};

func void Rtn_PreStart_203()
{
	TA_Stand_Guarding	(08,00,23,00, "NW_CITY_MAINSTREET_01_B");
	TA_Stand_Guarding	(23,00,08,00, "NW_CITY_MAINSTREET_01_B");
};
func void Rtn_Start_203()
{
	TA_Stand_Guarding	(08,00,23,00, "NW_CITY_LOTHAR");
	TA_Stand_Guarding	(23,00,08,00, "NW_CITY_LOTHAR");
};
func void Rtn_Tot_203()
{
	TA_Sleep	(08,00,23,00, "TOT");
	TA_Sleep	(23,00,08,00, "TOT");
};
