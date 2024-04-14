///******************************************************************************************
instance KDF_501_Serpentes (Npc_Default)
{
	/// ------ General ------
	name								=	"Serpentes";
	guild 								=	GIL_KDF;
	id 									=	501;
	voice 								=	10;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Psionic", Face_Normal01, 0, ITAR_Amg_M);
	Mdl_SetModelFatness	(self, -2);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_501;
};

func void Rtn_Start_501()
{
	TA_Sit_Throne	(08,00,23,00, "NW_MONASTERY_THRONE_02");
    TA_Sit_Throne	(23,00,08,00, "NW_MONASTERY_THRONE_02");
};
