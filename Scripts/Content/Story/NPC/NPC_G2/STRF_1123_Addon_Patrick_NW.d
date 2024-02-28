///******************************************************************************************
instance STRF_1123_Addon_Patrick_NW (Npc_Default)
{
	/// ------ General ------
	name								=	"Patrick";
	guild 								=	GIL_SLD;
	id 									=	1123;
	voice 								=	7;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_Normal07, 0, ITAR_SLD_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1123;
};

func void Rtn_Start_1123()
{
	TA_Stand_Drinking	(00,00,12,00, "NW_BIGFARM_PATRICK");
	TA_Stand_Drinking	(12,00,00,00, "NW_BIGFARM_PATRICK");
};
