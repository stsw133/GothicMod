///******************************************************************************************
instance WzA_17192_Losowiec (Npc_Default)
{
	/// ------ General ------
	name 								=	"Losowiec";
	guild 								=	GIL_NONE;
	id 									=	50;
	voice 								=	18;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller | IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Visuals ------
	aivar[AIV_FaceTex] = Hlp_RandomRange(1,5);
	
	NpcFn_SetVisual		(self, ORCMALE, BodyTex_Default, BodySkin_N, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], Teeth_Normal, -1);
	Mdl_SetModelFatness	(self, 0);
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, FightTalent_Initiate);
	
	/// ------ FT ------
	fight_tactic						=	FAI_ORC;
	
	/// ------ Weapons ------
//	EquipItem (self, ItMw_2h_OrcAxe_02);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
