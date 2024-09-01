///******************************************************************************************
instance WzA_17093_Grzechu (Npc_Default)
{
	/// ------ General ------
	name								=	"Grzechu";
	guild								=	GIL_PAL;
	id									=	50;
	voice								=	8;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller | IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 70);
	NpcFn_SetFightSkills (self, FightTalent_Strong);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_Normal02, Teeth_Normal, ITAR_PAL_H);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	Mdl_SetModelFatness	(self, 1.5);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
