///******************************************************************************************
instance WzA_17095_Hagen (Npc_Default)
{
	/// ------ General ------
	name 								=	"Lord Hagen";
	guild 								=	GIL_PAL;
	id 									=	50;
	voice 								=	4;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller | IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 80);
	NpcFn_SetFightSkills (self, FightTalent_Master);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItHe_PAL_H);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_Tough_Okyl, Teeth_Normal, ITAR_PAL_H);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	Mdl_SetModelFatness	(self, 1.5);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
