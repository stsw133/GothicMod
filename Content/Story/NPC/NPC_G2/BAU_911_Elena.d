//******************************************************************************************
instance BAU_911_Elena (Npc_Default)
{
	// ------ General ------
	name								=	"Elena";
	guild 								=	GIL_BAU;
	id 									=	911;
	voice 								=	16;
	flags      							=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Weak);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Normal, BodySkin_N, "Hum_Head_Babe", FaceBabe_Normal01, Teeth_Pretty, ITAR_WD_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_911;
};

FUNC VOID Rtn_Start_911()
{	
	TA_Stand_ArmsCrossed	(07,30,20,30, "NW_BIGFARM_STABLE_OUT_04");
    TA_Sit_Throne			(20,30,07,30, "NW_BIGFARM_HOUSE_UP1_SESSEL");
};
