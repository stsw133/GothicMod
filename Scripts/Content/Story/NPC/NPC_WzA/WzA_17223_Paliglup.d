///******************************************************************************************
instance WzA_17223_Paliglup (Npc_Default)
{
	/// ------ General ------
	name 								=	"Janusz Paligłup";
	guild 								=	GIL_NONE;
	id 									=	50;
	voice 								=	3;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller|IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	
	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 35);
	B_SetFightSkills (self, FightTalent_Initiate);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Common_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_N, "Hum_Head_FatBald", Face_Dolan, Teeth_Normal, ITAR_VLK_L_03);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	Mdl_SetModelFatness	(self, 0.5);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
