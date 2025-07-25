///******************************************************************************************
instance WzA_17191_Losowiec (Npc_Default)
{
	/// ------ General ------
	name 								=	"Losowiec";
	guild 								=	GIL_NONE;
	id 									=	50;
	voice 								=	16;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller | IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, FightTalent_Initiate);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
//	EquipItem (self, ItMw_1h_Vlk_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	aivar[AIV_FaceTex] = Hlp_RandomRange(12,26);
	
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe6", self.aivar[AIV_FaceTex], Teeth_Pretty, -1);
	Mdl_SetModelFatness	(self, 0);
	
	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_50;
};
