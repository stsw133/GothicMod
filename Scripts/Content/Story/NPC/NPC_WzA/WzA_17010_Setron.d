///******************************************************************************************
instance WzA_17010_Setron (Npc_Default)
{
	/// ------ General ------
	name								=	"Setron";
	guild 								=	GIL_NONE;
	id 									=	50;
	voice 								=	3;
	voicepitch							=	-3;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller|IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	
	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 100);
	B_SetFightSkills (self, FightTalent_Initiate);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	CreateInvItem (self, ItRu_cB_Fireball);
	CreateInvItem (self, ITAR_aCHAOS_BLUE);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_N, "Hum_Head_Bald", Face_Skull, Teeth_Normal, /*ITAR_iCHAOS_BLUE*/ ITAR_CHAOS_DARK);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	Mdl_SetModelFatness	(self, 0);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};