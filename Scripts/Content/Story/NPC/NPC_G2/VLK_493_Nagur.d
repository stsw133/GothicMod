///******************************************************************************************
instance VLK_493_Nagur (Npc_Default)
{
	/// ------ General ------
	name								=	"Nagur";
	guild								=	GIL_VLK;
	id									=	493;
	voice								=	8;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal17, Teeth_Normal, ItAr_Vlk_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_493;
};

func void Rtn_Start_493()
{
	TA_Sit_Chair	(08,00, 23,00, "NW_CITY_HABOUR_TAVERN01_02");
	TA_Sit_Chair	(23,00, 08,00, "NW_CITY_HABOUR_TAVERN01_02");
};
func void Rtn_Prison_493()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "NW_CITY_HABOUR_KASERN_NAGUR");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "NW_CITY_HABOUR_KASERN_NAGUR");
};
