///******************************************************************************************
instance WzA_17100_Szczepan (Npc_Default)
{
	/// ------ General ------
	name 								=	"Szczepan";
	guild 								=	GIL_SLD;
	id 									=	50;
	voice 								=	12;
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
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Special_02);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_B, "Hum_Head_Bald", Face_Normal00, Teeth_Gold, ITAR_SLD_H);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	Mdl_SetModelFatness	(self, 1);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};