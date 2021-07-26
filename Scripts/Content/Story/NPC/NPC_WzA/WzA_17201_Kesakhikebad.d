///******************************************************************************************
instance WzA_17201_Kesakhikebad (Npc_Default)
{
	/// ------ General ------
	name 								=	"Kesakhikebad";
	guild 								=	GIL_NONE;
	id 									=	50;
	voice 								=	5;
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
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Medium);
	
	/// ------ FT ------
	fight_tactic						=	FAI_ORC;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_OrcSword_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_ORC, MALE, 0, default, "Orc_Head_Warrior", 2, default, ITAR_Orc_Guardian);
	Mdl_SetModelFatness	(self, 0);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
