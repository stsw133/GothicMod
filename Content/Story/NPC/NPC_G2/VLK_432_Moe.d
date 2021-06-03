///******************************************************************************************
instance VLK_432_Moe (Npc_Default)
{
	/// ------ General ------
	name								=	"Moe";
	guild 								=	GIL_NONE;
	id 									=	432;
	voice 								=	1;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Scar, 0, ITAR_Vlk_L_03);
	Mdl_SetModelFatness	(self, 0.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_432;
};

func void Rtn_Start_432()
{
	TA_Stand_Guarding	(08,00,23,00, "NW_CITY_PATH_HABOUR_02_02");
    TA_Stand_Guarding	(23,00,08,00, "NW_CITY_PATH_HABOUR_02_02");
};
