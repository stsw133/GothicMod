///******************************************************************************************
instance BAU_984_Niclas (Npc_Default)
{
	/// ------ General ------
	name								=	"Niclas";
	guild 								=	GIL_OUT;
	id 									=	984;
	voice 								=	3;																	
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Medium-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_SLD_Sword);
	EquipItem (self, itRw_SLD_BOW);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Thief", Face_Normal39, 0, ITAR_LEATHER_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_984;
};

func void Rtn_Start_984()
{	
	TA_Sit_Bench	(08,00,23,00, "NW_CITY_JAEGER_SIT");
    TA_Sit_Bench	(23,00,08,00, "NW_CITY_JAEGER_SIT");
};
