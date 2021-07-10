///******************************************************************************************
instance STRF_1107_Straefling (Npc_Default)
{
	/// ------ General ------
	name								=	"Kucharz";
	guild 								=	GIL_STRF;
	id 									=	1107;
	voice 								=	1;
	npctype								=	NPCTYPE_OCMAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+0, BodySkin_N, "Hum_Head_Bald", Face_Normal31, 0, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1107;
};

func void Rtn_Start_1107()
{
	TA_Cook_Cauldron	(08,00,23,00, "OC_EBR_KITCHEN_COOK");
	TA_Cook_Cauldron	(23,00,08,00, "OC_EBR_KITCHEN_COOK");
};
