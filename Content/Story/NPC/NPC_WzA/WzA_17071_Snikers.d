//******************************************************************************************
INSTANCE WzA_17071_Snikers (C_Npc)
{
	// ------ General ------
	name								=	"Snikers";
	guild 								=	GIL_NONE;
	id 									=	17071;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;

	// ------ Aivars ------
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller|IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	aivar[AIV_FollowDist]				=	300;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 10);

	// ------ FT ------
	fight_tactic						=	FAI_WOLF;

	// ------ Visuals ------
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "Dog_Body", /*0*/ 1, DEFAULT, "", DEFAULT, DEFAULT, -1);
	Mdl_SetModelFatness	(self, 0);

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_17071;
	Npc_SetToFistMode(self);
};

func void Rtn_Start_17071()
{
	TA_Guide_Player	(08,00,20,00, "XXX");
	TA_Guide_Player	(20,00,08,00, "XXX");
};
func void Rtn_Follow_17071()
{
	TA_Follow_Player	(08,00,20,00, "XXX");
	TA_Follow_Player	(20,00,08,00, "XXX");
};
