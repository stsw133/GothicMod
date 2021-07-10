///******************************************************************************************
instance WzA_17140_CichyMaciej (Npc_Default)
{
	/// ------ General ------
	name								=	"Cichy Maciej";
	guild								=	GIL_NONE;
	id									=	17140;
	voice								=	1;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ AI vars ------
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller|IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	aivar[AIV_FollowDist]				=	300;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
//	EquipItem (self, ItMw_1h_Vlk_Axe);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_N, "Hum_Head_FatBald", Face_CichyMaciej, Teeth_Normal, ITAR_VLK_L_11);
	Mdl_SetModelFatness	(self, 1.5);

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_17140;
};

func void Rtn_Start_17140()
{
	TA_Guide_Player	(08,00,20,00, "XXX");
	TA_Guide_Player	(20,00,08,00, "XXX");
};
func void Rtn_Follow_17140()
{
	TA_Follow_Player	(08,00,20,00, "XXX");
	TA_Follow_Player	(20,00,08,00, "XXX");
};
func void Rtn_Smalltalk_17140()
{
	TA_Smalltalk	(08,00,20,00, "XXX");
	TA_Smalltalk	(20,00,08,00, "XXX");
};
func void Rtn_Sleep_17140()
{
	TA_Sleep	(08,00,20,00, "XXX");
	TA_Sleep	(20,00,08,00, "XXX");
};
func void Rtn_Dance_17140()
{
	TA_Dance	(08,00,20,00, "XXX");
	TA_Dance	(20,00,08,00, "XXX");
};
func void Rtn_Stand_Eating_17140()
{
	TA_Stand_Eating	(08,00,20,00, "XXX");
	TA_Stand_Eating	(20,00,08,00, "XXX");
};
func void Rtn_Stand_Drinking_17140()
{
	TA_Stand_Drinking	(08,00,20,00, "XXX");
	TA_Stand_Drinking	(20,00,08,00, "XXX");
};
func void Rtn_Pick_Ore_17140()
{
	TA_Pick_Ore	(08,00,20,00, "XXX");
	TA_Pick_Ore	(20,00,08,00, "XXX");
};
func void Rtn_Potion_Alchemy_17140()
{
	TA_Potion_Alchemy	(08,00,20,00, "XXX");
	TA_Potion_Alchemy	(20,00,08,00, "XXX");
};
func void Rtn_Read_Bookstand_17140()
{
	TA_Read_Bookstand	(08,00,20,00, "XXX");
	TA_Read_Bookstand	(20,00,08,00, "XXX");
};
func void Rtn_Sit_Chair_17140()
{
	TA_Sit_Chair	(08,00,20,00, "XXX");
	TA_Sit_Chair	(20,00,08,00, "XXX");
};
func void Rtn_Smoke_Joint_17140()
{
	TA_Smoke_Joint	(08,00,20,00, "XXX");
	TA_Smoke_Joint	(20,00,08,00, "XXX");
};
