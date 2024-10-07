///******************************************************************************************
instance WzA_17203_OrcPaladin (Npc_Default)
{
	/// ------ General ------
	name								=	"Ork-paladyn";
	guild 								=	GIL_PAL;
	id 									=	50;
	voice 								=	8;
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
	NpcFn_SetVisual		(self, ORCMALE, 0, default, "Orc_Head_Warrior", 8, default, ITAR_Orc_Paladin);
	Mdl_SetModelFatness	(self, 0);
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_AddFightSkills (self, FightTalent_Medium);
	
	/// ------ FT ------
	fight_tactic						=	FAI_ORC;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
