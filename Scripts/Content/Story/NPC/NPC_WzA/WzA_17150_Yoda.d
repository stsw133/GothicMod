///******************************************************************************************
instance WzA_17150_Yoda (Npc_Default)
{
	/// ------ General ------
	name 								=	"Mistrz Yoda";
	guild 								=	GIL_NONE;
	id 									=	50;
	voice 								=	14;
	voicepitch							=	-3;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller | IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 90);
	NpcFn_AddFightSkills (self, FightTalent_Master);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
//	Npc_SetToFightMode (self, ItMw_LightSaber);
//	EquipItem (self, ItMw_LightSaber);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Body_Naked0", 0, default, "", default, default, -1);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
