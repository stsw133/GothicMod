///******************************************************************************************
instance KDF_510_Hyglas (Npc_Default)
{
	/// ------ General ------
	name								=	"Hyglas";
	guild 								=	GIL_KDF;
	id 									=	510;
	voice 								=	14;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_PYR;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_Normal36, 0, ITAR_Mag_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_510;
};

func void Rtn_Start_510()
{
	TA_Read_Bookstand	(08,00,23,00, "NW_MONASTERY_RUNEMAKER_08");
    TA_Read_Bookstand	(23,00,08,00, "NW_MONASTERY_RUNEMAKER_08");
};
