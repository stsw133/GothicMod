///******************************************************************************************
instance WzA_17202_Wlodzimierz (Npc_Default)
{
	/// ------ General ------
	name								=	"Włodzimierz";
	guild 								=	GIL_NONE;
	id 									=	50;
	voice 								=	4;
	voicepitch							=	-3;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller | IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, ORCMALE, 0, default, "Orc_Head_Warrior", 0, default, -1);
	Mdl_SetModelFatness	(self, -0.5);
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, FightTalent_Initiate);
	
	/// ------ FT ------
	fight_tactic						=	FAI_ORC;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
