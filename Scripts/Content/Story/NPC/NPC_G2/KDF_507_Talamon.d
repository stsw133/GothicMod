///******************************************************************************************
instance KDF_507_Talamon (Npc_Default)
{
	/// ------ General ------
	name								=	"Talamon";
	guild 								=	GIL_KDF;
	id 									=	507;
	voice 								=	4;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_Saturas, 0, ITAR_Amg_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_507;
};

func void Rtn_Start_507()
{
	TA_Guard_Passage	(08,00,23,00, "NW_MONASTERY_CELLAR_15");
    TA_Guard_Passage	(23,00,08,00, "NW_MONASTERY_CELLAR_15");
};
