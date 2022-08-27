///******************************************************************************************
instance BAU_910_Maria (Npc_Default)
{
	/// ------ General ------
	name								=	"Maria";
	guild 								=	GIL_BAU;
	id 									=	910;
	voice 								=	17;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe8", FaceBabe_Normal07, Teeth_Pretty, ITAR_Babe_BAU_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_910;
};

func void Rtn_Start_910()
{	
   	TA_Sit_Throne	(08,00,22,00, "NW_BIGFARM_HOUSE_UP1_SESSEL");
    TA_Sleep		(22,00,08,00, "NW_BIGFARM_HOUSE_UP1_04");
};
