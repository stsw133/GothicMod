///******************************************************************************************
instance WzA_17150_Yoda (Npc_Default)
{
	/// ------ General ------
	name 								=	"Mistrz Yoda";
	guild 								=	GIL_NONE;
	id 									=	17150;
	voice 								=	14;
	voicepitch							=	-3;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ AI vars ------
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller|IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	aivar[AIV_FollowDist]				=	300;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 90);
	B_SetFightSkills (self, FightTalent_Master);

	/// ------ FT ------
	fight_tactic						=	FAI_GOBBO;

	/// ------ Weapons ------
//	Npc_SetToFightMode (self, ItMw_LightSaber);
	EquipItem (self, ItMw_LightSaber);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Body", 5, DEFAULT, "", DEFAULT, DEFAULT, -1);

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_17150;
};

func void Rtn_Start_17150()
{
	TA_Guide_Player	(08,00,20,00, "XXX");
	TA_Guide_Player	(20,00,08,00, "XXX");
};
func void Rtn_Follow_17150()
{
	TA_Follow_Player	(08,00,20,00, "XXX");
	TA_Follow_Player	(20,00,08,00, "XXX");
};
func void Rtn_Smalltalk_17150()
{
	TA_Smalltalk	(08,00,20,00, "XXX");
	TA_Smalltalk	(20,00,08,00, "XXX");
};
func void Rtn_Sleep_17150()
{
	TA_Sleep	(08,00,20,00, "XXX");
	TA_Sleep	(20,00,08,00, "XXX");
};
func void Rtn_Dance_17150()
{
	TA_Dance	(08,00,20,00, "XXX");
	TA_Dance	(20,00,08,00, "XXX");
};
func void Rtn_Stand_Eating_17150()
{
	TA_Stand_Eating	(08,00,20,00, "XXX");
	TA_Stand_Eating	(20,00,08,00, "XXX");
};
func void Rtn_Stand_Drinking_17150()
{
	TA_Stand_Drinking	(08,00,20,00, "XXX");
	TA_Stand_Drinking	(20,00,08,00, "XXX");
};
func void Rtn_Pick_Ore_17150()
{
	TA_Pick_Ore	(08,00,20,00, "XXX");
	TA_Pick_Ore	(20,00,08,00, "XXX");
};
func void Rtn_Potion_Alchemy_17150()
{
	TA_Potion_Alchemy	(08,00,20,00, "XXX");
	TA_Potion_Alchemy	(20,00,08,00, "XXX");
};
func void Rtn_Read_Bookstand_17150()
{
	TA_Read_Bookstand	(08,00,20,00, "XXX");
	TA_Read_Bookstand	(20,00,08,00, "XXX");
};
func void Rtn_Sit_Chair_17150()
{
	TA_Sit_Chair	(08,00,20,00, "XXX");
	TA_Sit_Chair	(20,00,08,00, "XXX");
};
func void Rtn_Smoke_Joint_17150()
{
	TA_Smoke_Joint	(08,00,20,00, "XXX");
	TA_Smoke_Joint	(20,00,08,00, "XXX");
};
