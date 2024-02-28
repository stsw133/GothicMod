///******************************************************************************************
instance WzA_17222_Kaczyn (Npc_Default)
{
	/// ------ General ------
	name 								=	"Jaron Kaczyń";
	guild 								=	GIL_NONE;
	id 									=	50;
	voice 								=	14;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller|IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, FightTalent_Medium);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_Inquisitor);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_FatBald", Face_Kaczyn, Teeth_Gold, ITAR_VLK_L_04);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	Mdl_SetModelFatness	(self, 1);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
