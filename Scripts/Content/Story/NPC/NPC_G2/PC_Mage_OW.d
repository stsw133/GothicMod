///******************************************************************************************
instance PC_Mage_OW (Npc_Default)
{
	/// ------ General ------
	name								=	"Milten";
	guild 								=	GIL_KDF;
	id 									=	2;
	voice 								=	3;
	flags      							=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_PYR;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Milten, 0, ITAR_Mag_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_2;
};

func void Rtn_Start_2()
{
	TA_Potion_Alchemy	(08,00,23,00, "OC_MAGE_LAB_ALCHEMY");
    TA_Read_Bookstand	(23,00,08,00, "OC_MAGE_LIBRARY_BOOK_01");
};
func void Rtn_GornFree_2()
{
	TA_Smalltalk	(08,00,23,00, "OC_MAGE_LIBRARY_IN");
	TA_Smalltalk	(23,00,08,00, "OC_MAGE_LIBRARY_IN");
};
func void Rtn_Tot_2()
{
	TA_Sleep	(08,00,23,00, "TOT");
	TA_Sleep	(23,00,08,00, "TOT");
};
