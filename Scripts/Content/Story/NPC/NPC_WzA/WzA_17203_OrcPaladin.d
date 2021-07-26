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
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller|IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	
	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Medium);
	
	/// ------ FT ------
	fight_tactic						=	FAI_ORC;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_ORC, MALE, 0, default, "Orc_Head_Warrior", 8, default, ITAR_Orc_Paladin);
	Mdl_SetModelFatness	(self, 0);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
