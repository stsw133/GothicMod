///******************************************************************************************
instance PIR_1302_Gregy (Npc_Default)
{
	/// ------ General ------
	name								=	"Grzeœ";
	guild								=	GIL_PIR;
	id									=	1302;
	voice								=	0;
	voicepitch							=	-3;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 10);
	
	/// ------ FT ------
	fight_tactic						=	FAI_GOBBO;
	
	/// ------ Weapons ------
//	Npc_SetToFightMode (self, ItMw_Piratensaebel);
//	EquipItem (self, ItMw_Piratensaebel);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Pirate_Body", 0, default, "", default, default, -1);
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1302;
};

func void Rtn_Start_1302()
{
	TA_Sit_Campfire	(08,00, 20,00, "START");
	TA_Sit_Campfire	(20,00, 08,00, "START");
};
func void Rtn_Follow_1302()
{
	TA_Follow_Player_Gregy	(08,00, 20,00, "START");
	TA_Follow_Player_Gregy	(20,00, 08,00, "START");
};
func void Rtn_Sleep_1302()
{
	TA_Sleep	(08,00, 20,00, "XXX");
	TA_Sleep	(20,00, 08,00, "XXX");
};
