//******************************************************************************************
instance VLK_4108_Engor (Npc_Default)
{
	// ------ General ------
	name								=	"Engor";
	guild 								=	GIL_MIL;
	id 									=	4108;
	voice 								=	13;
	flags       						=	0;
	npctype								=	NPCTYPE_OCMAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 12);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1H_Mil_Sword);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Bald", Face_Jackal, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4108;
};

FUNC VOID Rtn_Start_4108()
{
	TA_Read_Bookstand	(08,00,22,00, "OC_COUNT_01");
    TA_Sleep			(22,00,08,00, "OC_GUARD_ROOM_03_SLEEP");
};
