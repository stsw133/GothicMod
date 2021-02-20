//******************************************************************************************
instance PAL_252_Parcival (Npc_Default)
{
	// ------ General ------
	name								=	"Parcival";
	guild 								=	GIL_PAL;
	id 									=	252;
	voice 								=	13;
	flags       						=	0;
	npctype								=	NPCTYPE_OCMAIN;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Pal_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_Pony", Face_Normal01, 0, ITAR_PAL_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_252;
};

FUNC VOID Rtn_Start_252()
{
	TA_Smalltalk	(08,00,21,00, "OC_EBR_HALL_CENTER");
	TA_Sleep		(21,00,08,00, "OC_EBR_ROOM_01_SLEEP");
};
