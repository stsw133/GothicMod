///******************************************************************************************
instance STRF_1140_Addon_Sklave (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Sklave;
	guild 								=	GIL_STRF;
	id 									=	1140;
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
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+0, BodySkin_P, "Hum_Head_Bald", Face_Normal10, 0, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1140;
};

func void Rtn_Start_1140()
{
	TA_Pick_Ore	(08,00,23,00, "ADW_MINE_PICK_01");
	TA_Pick_Ore	(23,00,08,00, "ADW_MINE_PICK_01");
};
