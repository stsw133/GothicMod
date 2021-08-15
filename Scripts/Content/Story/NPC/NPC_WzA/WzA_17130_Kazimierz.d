///******************************************************************************************
instance WzA_17130_Kazimierz (Npc_Default)
{
	/// ------ General ------
	name								=	"Kazimierz";
	guild 								=	GIL_NONE;
	id 									=	50;
	voice 								=	6;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller|IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	
	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 80);
	B_SetFightSkills (self, FightTalent_Master);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	CreateInvItem (self, ItMw_2H_OrcAxe_04);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Psionic", Face_Normal50, Teeth_Normal, ITAR_VLK_L_01);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	Mdl_SetModelFatness	(self, 0);
	Mdl_SetModelScale	(self, 0.95, 0.95, 0.95);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
