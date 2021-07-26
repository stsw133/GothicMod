///******************************************************************************************
instance WzA_17092_Andrzej (Npc_Default)
{
	/// ------ General ------
	name								=	"Andrzej";
	guild								=	GIL_PAL;
	id									=	50;
	voice								=	12;
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
	B_SetFightSkills (self, FightTalent_Strong);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_N, "Hum_Head_Fighter", Face_Normal66, Teeth_Normal, ITAR_PAL_L);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	Mdl_SetModelFatness	(self, 0.5);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
