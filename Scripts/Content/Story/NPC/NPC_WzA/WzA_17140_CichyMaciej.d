///******************************************************************************************
instance WzA_17140_CichyMaciej (Npc_Default)
{
	/// ------ General ------
	name								=	"Cichy Maciej";
	guild								=	GIL_NONE;
	id									=	50;
	voice								=	1;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller | IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, FightTalent_Medium);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
//	EquipItem (self, ItMw_1h_Vlk_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_CichyMaciej, Teeth_Normal, ITAR_VLK_L_11);
	Mdl_SetModelFatness	(self, 1.5);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
