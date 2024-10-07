///******************************************************************************************
instance WzA_17151_Dooku (Npc_Default)
{
	/// ------ General ------
	name 								=	"Hrabia Dooku";
	guild 								=	GIL_NONE;
	id 									=	50;
	voice 								=	5;
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
	NpcFn_AddFightSkills (self, FightTalent_Strong);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_LightSaber);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Dooku, Teeth_Normal, ITAR_SW_Sith);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	Mdl_SetModelFatness (self, 0);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
