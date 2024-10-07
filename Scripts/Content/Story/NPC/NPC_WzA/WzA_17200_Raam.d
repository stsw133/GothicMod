///******************************************************************************************
instance WzA_17200_Raam (Npc_Default)
{
	/// ------ General ------
	name 								=	"Raam";
	guild 								=	GIL_NONE;
	id 									=	50;
	voice 								=	7;
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
	NpcFn_SetVisual		(self, ORCMALE, 0, default, "Orc_Head_Warrior", 11, default, ITAR_Orc_King);
	Mdl_SetModelScale	(self, 1.05, 1.05, 1.05);
//	Mdl_SetModelFatness	(self, 0.5);
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 90);
	NpcFn_AddFightSkills (self, FightTalent_Master);
	
	/// ------ FT ------
	fight_tactic						=	FAI_ORC;
	
	/// ------ Weapons ------	
	EquipItem (self, ItMw_2h_OrcElite_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
