//******************************************************************************************
instance WzA_17200_Raam (Npc_Default)
{
	// ------ General ------
	name 								=	"Raam";
	guild 								=	GIL_NONE;
	id 									=	17200;
	voice 								=	7;
	voicepitch							=	-3;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;

	// ------ Aivars ------
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller|IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	aivar[AIV_FollowDist]				=	300;

	//----- Attributes -----
	B_SetAttributesToLevel (self, 90);
	B_SetFightSkills (self, FightTalent_Master);

	// ------ FT ------
	fight_tactic						=	FAI_ORC;

	// ------ Weapons ------	
	EquipItem (self, ItMw_2h_OrcElite_Raam);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_ORC, MALE, 0, DEFAULT, "Orc_Head_Warrior", 11, DEFAULT, ITAR_Orc_King);
	Mdl_SetModelScale	(self, 1.05, 1.05, 1.05);
//	Mdl_SetModelFatness	(self, 0.5);

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_17200;
};

func void Rtn_Start_17200()
{
	TA_Guide_Player	(08,00,20,00, "XXX");
	TA_Guide_Player	(20,00,08,00, "XXX");
};
func void Rtn_Follow_17200()
{
	TA_Follow_Player	(08,00,20,00, "XXX");
	TA_Follow_Player	(20,00,08,00, "XXX");
};
func void Rtn_Smalltalk_17200()
{
	TA_Smalltalk	(08,00,20,00, "XXX");
	TA_Smalltalk	(20,00,08,00, "XXX");
};
func void Rtn_Sleep_17200()
{
	TA_Sleep	(08,00,20,00, "XXX");
	TA_Sleep	(20,00,08,00, "XXX");
};
func void Rtn_Dance_17200()
{
	TA_OrcDance	(08,00,20,00, "XXX");
	TA_OrcDance	(20,00,08,00, "XXX");
};
func void Rtn_Stand_Eating_17200()
{
	TA_Stand_Eating	(08,00,20,00, "XXX");
	TA_Stand_Eating	(20,00,08,00, "XXX");
};
func void Rtn_Stand_Drinking_17200()
{
	TA_Stand_Drinking	(08,00,20,00, "XXX");
	TA_Stand_Drinking	(20,00,08,00, "XXX");
};
func void Rtn_Pick_Ore_17200()
{
	TA_Pick_Ore	(08,00,20,00, "XXX");
	TA_Pick_Ore	(20,00,08,00, "XXX");
};
func void Rtn_Potion_Alchemy_17200()
{
	TA_Potion_Alchemy	(08,00,20,00, "XXX");
	TA_Potion_Alchemy	(20,00,08,00, "XXX");
};
func void Rtn_Read_Bookstand_17200()
{
	TA_Read_Bookstand	(08,00,20,00, "XXX");
	TA_Read_Bookstand	(20,00,08,00, "XXX");
};
func void Rtn_Sit_Chair_17200()
{
	TA_Sit_Chair	(08,00,20,00, "XXX");
	TA_Sit_Chair	(20,00,08,00, "XXX");
};
func void Rtn_Smoke_Joint_17200()
{
	TA_Smoke_Joint	(08,00,20,00, "XXX");
	TA_Smoke_Joint	(20,00,08,00, "XXX");
};
