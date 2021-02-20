//******************************************************************************************
instance VLK_449_Lares_DI (Npc_Default)
{
	// ------ General ------
	name								=	"Lares";
	guild 								=	GIL_NONE;
	id 									=	4490;
	voice								=	9;
	flags       						=	0;
	npctype								=	NPCTYPE_FRIEND;

	// ------ Aivars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_PartyMember]				=	true;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Initiate+5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_SLD_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Thief", Face_Lares, 0, ITAR_WaterRanger);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4490;
};
 
FUNC VOID Rtn_Start_4490()
{
	TA_Smalltalk	(08,00,23,00, "SHIP_CREW_05");
	TA_Smalltalk	(23,00,08,00, "SHIP_CREW_05");
};
FUNC VOID Rtn_SittingShipDI_4490()
{
	TA_Sit_Bench	(08,00,23,00, "SHIP_CREW_04");
	TA_Sit_Bench	(23,00,08,00, "SHIP_CREW_04");
};
