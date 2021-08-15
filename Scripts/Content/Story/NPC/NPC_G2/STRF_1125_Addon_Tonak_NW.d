///******************************************************************************************
instance STRF_1125_Addon_Tonak_NW (Npc_Default)
{
	/// ------ General ------
	name								=	"Tonak";
	guild 								=	GIL_OUT;
	id 									=	1125;
	voice 								=	3;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Thief", Face_Normal03, 0, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1125;
};

func void Rtn_Start_1125()
{
	TA_Rake_FP	(00,00,12,00, "NW_FARM2_FIELD_TANOK");
	TA_Rake_FP	(12,00,00,00, "NW_FARM2_FIELD_TANOK");
};
