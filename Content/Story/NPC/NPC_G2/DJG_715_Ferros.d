//******************************************************************************************
instance DJG_715_Ferros (Npc_Default)
{
	// ------ General ------
	name								=	"Feros";
	guild 								=	GIL_DJG;
	id 									=	715;
	voice 								=	1;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Crossbow_M_01);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_FatBald", Face_Normal06, 0, ITAR_DJG_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_715;
};

FUNC VOID Rtn_Start_715()
{
	TA_Stand_Eating	(08,00,23,00, "OC_JAN");
    TA_Stand_Eating	(23,00,08,00, "OC_JAN");
};
