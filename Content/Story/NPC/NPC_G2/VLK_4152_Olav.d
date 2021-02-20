//******************************************************************************************
instance VLK_4152_Olav (Npc_Default)
{
	// ------ General ------
	name								=	"Olav";
	guild 								=	GIL_MIL;
	id 									=	4152;
	voice 								=	4;
	flags       						=	0;
	npctype								=	NPCTYPE_OCAMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 12);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItMi_OldCoin);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal49, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4152;
};

FUNC VOID Rtn_Start_4152()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_WOLFHUT_01");
    TA_Stand_Guarding	(23,00,08,00, "OW_WOLFHUT_01");
};
