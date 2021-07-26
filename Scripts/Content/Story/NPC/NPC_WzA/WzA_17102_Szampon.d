///******************************************************************************************
instance WzA_17102_Szampon (Npc_Default)
{
	/// ------ General ------
	name 								=	"Szampon";
	guild 								=	GIL_SLD;
	id 									=	50;
	voice 								=	9; 
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller|IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	
	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Initiate);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_P, "Hum_Head_Bald", Face_Normal00, Teeth_Normal, ITAR_SLD_M);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	Mdl_SetModelFatness	(self, 0);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
