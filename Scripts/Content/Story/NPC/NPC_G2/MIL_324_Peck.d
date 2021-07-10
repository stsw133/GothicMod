///******************************************************************************************
instance Mil_324_Peck (Npc_Default)
{
	/// ------ General ------
	name								=	"Peck";
	guild 								=	GIL_MIL;
	id 									=	324;
	voice 								=	12;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Medium-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItKe_City_Tower_05);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Bald", Face_Normal06, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_324;
};

func void Rtn_Start_324()
{
	TA_Smalltalk	(08,00,23,00, "NW_CITY_HABOUR_PUFF_PECK");
    TA_Smalltalk	(23,00,08,00, "NW_CITY_HABOUR_PUFF_PECK");
};
func void Rtn_Storage_324()
{
	TA_Stand_ArmsCrossed	(08,00,22,00, "NW_CITY_ARMORY_PECK");
    TA_Sleep				(22,00,08,00, "NW_CITY_BARRACK02_BED_PECK");
};
