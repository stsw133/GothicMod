///******************************************************************************************
instance WzA_17231_Marlena (Npc_Default)
{
	/// ------ General ------
	name								=	"Marlena";
	guild								=	GIL_NONE;
	id									=	50;
	voice								=	17;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller | IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attribute ------
	NpcFn_SetAttributesToLevel (self, 35);
	NpcFn_AddFightSkills (self, FightTalent_Weak);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_ChainSaw);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Nude, BodySkin_N, "Hum_Head_Babe5", FaceBabe_N_GreyCloth, Teeth_Pretty, ITAR_BABE_NURSE);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	Mdl_SetModelFatness	(self, 0);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
