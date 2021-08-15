///******************************************************************************************
instance BAU_980_Sagitta (Npc_Default)
{
	/// ------ General ------
	name								=	"Sagitta";
	guild 								=	GIL_NONE;
	id 									=	980;
	voice 								=	17;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe", FaceBabe_Sagitta, Teeth_Pretty, ITAR_WD_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_980;
};

func void Rtn_Start_980()
{	
	TA_Sit_Throne		(08,00,23,00, "NW_SAGITTA_CAVE_IN_02");
    TA_Potion_Alchemy	(23,00,08,00, "NW_SAGITTA_CAVE_IN_03");
};
