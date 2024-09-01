///******************************************************************************************
instance WzA_17050_Isaj (Npc_Default)
{
	/// ------ General ------
	name								=	"Isaj";
	guild 								=	GIL_NONE;
	id 									=	50;
	voice 								=	3;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller | IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Weak);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mace_L_03);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Fortuno, Teeth_Bad, ITAR_SLN_L);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	Mdl_SetModelFatness	(self, 0);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
