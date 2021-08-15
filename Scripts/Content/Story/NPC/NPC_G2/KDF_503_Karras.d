///******************************************************************************************
instance KDF_503_Karras (Npc_Default)
{
	/// ------ General ------
	name								=	"Karras";
	guild 								=	GIL_KDF;
	id 									=	503;
	voice 								=	10;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_PYR;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Pony", Face_Normal07, 0, ITAR_Mag_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_503;
};

func void Rtn_Start_503()
{
	TA_Read_Bookstand	(08,00,23,00, "NW_MONASTERY_RUNEMAKER_02");
	TA_Read_Bookstand	(08,00,23,00, "NW_MONASTERY_RUNEMAKER_02");
};
