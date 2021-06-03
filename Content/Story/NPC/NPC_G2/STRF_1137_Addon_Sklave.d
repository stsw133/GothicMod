///******************************************************************************************
instance STRF_1137_Addon_Sklave (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Sklave;
	guild 								=	GIL_STRF;
	id 									=	1137;
	voice 								=	3;
	npctype								=	NPCTYPE_BL_AMBIENT;

	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Weak);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+1, BodySkin_L, "Hum_Head_Bald", Face_Normal06, 0, -1);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1137;
};

func void Rtn_Start_1137()
{
	TA_Pick_Ore	(08,00,23,00, "ADW_MINE_PICK_04");
	TA_Pick_Ore	(23,00,08,00, "ADW_MINE_PICK_04");
};
