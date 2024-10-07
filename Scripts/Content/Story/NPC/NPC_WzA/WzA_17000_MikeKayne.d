///******************************************************************************************
instance WzA_17000_MikeKayne (Npc_Default)
{
	/// ------ General ------
	name								=	"Mike Kayne";
	guild 								=	GIL_NONE;
	id 									=	50;
	voice 								=	11;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller | IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 80);
	NpcFn_AddFightSkills (self, FightTalent_Master);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Special_04);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_MikeKayne, Teeth_Normal, ITAR_ACRONA_EBR_H);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	Mdl_SetModelFatness	(self, 0.5);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
