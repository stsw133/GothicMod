///******************************************************************************************
instance KDF_505_Marduk (Npc_Default)
{
	/// ------ General ------
	name								=	"Marduk";
	guild 								=	GIL_KDF;
	id 									=	505;
	voice 								=	5;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_PYR;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_Normal14, 0, ITAR_Mag_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_505;
};

func void Rtn_Start_505()
{
	TA_Stand_Guarding	(08,00,23,00, "NW_MONASTERY_CORRIDOR_03");
    TA_Sleep			(23,00,08,00, "NW_MONASTERY_MAGE01_BED_01");
};
