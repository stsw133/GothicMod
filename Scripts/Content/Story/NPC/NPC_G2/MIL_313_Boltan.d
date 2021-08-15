///******************************************************************************************
instance Mil_313_Boltan (Npc_Default)
{
	/// ------ General ------
	name								=	"Boltan";
	guild 								=	GIL_MIL;
	id 									=	313;
	voice 								=	5;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Fighter", Face_Normal03, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_313;
};

func void Rtn_Start_313()
{
	TA_Sit_Chair		(06,55,21,00, "NW_CITY_HABOUR_KASERN_PRISON_SIT");
  	TA_Stand_Guarding	(21,00,06,55, "NW_CITY_HABOUR_KASERN_PRISON_02");
};
