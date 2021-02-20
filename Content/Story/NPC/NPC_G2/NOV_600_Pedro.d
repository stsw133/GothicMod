//******************************************************************************************
INSTANCE NOV_600_Pedro (Npc_Default) 
{
	// ------ General ------
	name								=	"Pedro";
	guild 								=	GIL_NOV;
	id 									=	600;
	voice 								=	9;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_NewsOverride]				=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Nov_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Psionic", Face_Normal05, 0, ITAR_Nov_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_600;
};

FUNC VOID Rtn_Start_600()
{
	TA_Stand_Guarding	(08,00,23,00, "NW_MONASTERY_MILTEN");
    TA_Stand_Guarding	(23,00,08,00, "NW_MONASTERY_MILTEN");
};
FUNC VOID Rtn_Tot_600()
{
	TA_Stand_Guarding	(08,00,23,00, "TOT");
    TA_Stand_Guarding	(23,00,08,00, "TOT");
};
