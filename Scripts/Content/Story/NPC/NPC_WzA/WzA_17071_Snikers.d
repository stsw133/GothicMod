///******************************************************************************************
instance WzA_17071_Snikers (C_Npc)
{
	/// ------ General ------
	name								=	"Snikers";
	guild 								=	GIL_NONE;
	id 									=	50;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller|IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	
	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	
	/// ------ FT ------
	fight_tactic						=	FAI_WOLF;
	
	/// ------ Visuals ------
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "Dog_Body", 1, default, "", default, default, -1);
	Mdl_SetModelFatness	(self, 0);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
	Npc_SetToFistMode(self);
};
