///******************************************************************************************
instance WzA_17221_Komor (Npc_Default)
{
	/// ------ General ------
	name 								=	"Komor G³odomor";
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
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;	
	
	/// ------ Weapons ------
//	EquipItem (self, ItMw_1h_Vlk_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_Bronek, Teeth_Gold, ITAR_VLK_H_06);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 	
	Mdl_SetModelFatness	(self, 1);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
