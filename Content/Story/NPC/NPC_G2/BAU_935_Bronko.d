///******************************************************************************************
instance BAU_935_Bronko (Npc_Default)
{
	/// ------ General ------
	name								=	"Bronko";
	guild 								=	GIL_NONE;
	id 									=	935;
	voice 								=	6;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Bau_Axe);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItems (self, ItMi_Gold, 35);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Bald", Face_Normal04, 0, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_935;
};

func void Rtn_PreStart_935()
{	
	TA_Stand_Guarding	(08,00,22,00, "NW_FARM4_BRONKO");
    TA_Sit_Campfire		(22,00,08,00, "NW_FARM4_REST_02");
};
func void Rtn_Start_935()
{	
	TA_Pick_FP	(08,00,22,00, "NW_FARM4_FIELD_01");
    TA_Pick_FP	(22,00,08,00, "NW_FARM4_FIELD_01");
};
