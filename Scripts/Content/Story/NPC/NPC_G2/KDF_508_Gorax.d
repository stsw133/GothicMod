///******************************************************************************************
instance KDF_508_Gorax (Npc_Default)
{
	/// ------ General ------
	name								=	"Gorax";
	guild 								=	GIL_KDF;
	id 									=	508;
	voice 								=	14;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_PYR;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Normal50, 0, ITAR_Mag_M);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_508;
};

func void Rtn_Start_508()
{	
	TA_Stand_Guarding	(08,00,23,00, "NW_MONASTERY_WINEMAKER_01");
	TA_Sleep			(23,00,08,00, "NW_MONASTERY_MAGE02_BED_01");
};
