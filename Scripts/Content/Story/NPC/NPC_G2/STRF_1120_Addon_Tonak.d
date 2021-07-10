///******************************************************************************************
instance STRF_1120_Addon_Tonak (Npc_Default)
{
	/// ------ General ------
	name								=	"Tonak";
	guild 								=	GIL_STRF;
	id 									=	1120;
	voice 								=	3;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

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
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+1, BodySkin_B, "Hum_Head_Thief", Face_Normal03, 0, -1);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1120;
};

func void Rtn_Start_1120()
{
	TA_Pick_Ore	(08,00,23,00, "ADW_MINE_LAGER_SIDE_PICK_01");
	TA_Pick_Ore	(23,00,08,00, "ADW_MINE_LAGER_SIDE_PICK_01");
};
func void Rtn_Flucht_1120()
{
	TA_RunToWP	(08,00,23,00, "ADW_BL_HOEHLE_03");
	TA_RunToWP	(23,00,08,00, "ADW_BL_HOEHLE_03");
};
