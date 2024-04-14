///******************************************************************************************
instance KDF_504_Parlan (Npc_Default)
{
	/// ------ General ------
	name								=	"Parlan";
	guild 								=	GIL_KDF;
	id 									=	504;
	voice 								=	5;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Corristo, 0, ITAR_Mag_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_504;
};

func void Rtn_Start_504()
{
	TA_Stand_Guarding	(08,00,23,00,"NW_MONASTERY_PLACE_03");
    TA_Stand_Guarding	(23,00,08,00,"NW_MONASTERY_PLACE_03");
};
