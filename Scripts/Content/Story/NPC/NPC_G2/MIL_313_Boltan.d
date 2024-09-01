///******************************************************************************************
instance Mil_313_Boltan (Npc_Default)
{
	/// ------ General ------
	name								=	"Boltan";
	guild								=	GIL_MIL;
	id									=	313;
	voice								=	5;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, 55);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Fighter", Face_B_Normal01, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_313;
};

func void Rtn_Start_313()
{
	TA_Sit_Chair		(06,55, 21,00, "NW_CITY_HABOUR_KASERN_PRISON_SIT");
	TA_Stand_Guarding	(21,00, 06,55, "NW_CITY_HABOUR_KASERN_PRISON_02");
};
