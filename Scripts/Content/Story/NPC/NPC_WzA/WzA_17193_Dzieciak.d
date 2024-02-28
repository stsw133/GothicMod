///******************************************************************************************
instance WzA_17193_Dzieciak (Npc_Default)
{
	/// ------ General ------
	name								=	"Dzieciak";
	guild								=	GIL_NONE;
	id									=	50;
	voice								=	5;
	voicepitch							=	3;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller|IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, MAX_LEVEL);
	NpcFn_SetFightSkills (self, 100);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Kid, Teeth_Normal, ITAR_VLK_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_SetModelScale	(self, 0.75, 0.75, 0.75);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
