///******************************************************************************************
instance VLK_401_Cornelius (Npc_Default)
{
	/// ------ General ------
	name								=	"Cornelius";
	guild								=	GIL_NONE;
	id									=	401;
	voice								=	13;
	flags	 							=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItWr_CorneliusTagebuch_MIS);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_Weak_Ulf_Wohlers, Teeth_Normal, ItAr_VLK_H_04);
	Mdl_SetModelFatness	(self, 0.9);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_401;
};

func void Rtn_Start_401()
{
	TA_Read_Bookstand	(08,00, 23,00, "NW_CITY_CORNELIUS");
	TA_Read_Bookstand	(23,00, 08,00, "NW_CITY_CORNELIUS");
};
func void Rtn_Flee_401()
{
	TA_FleeToWP	(08,00, 23,00, "NW_XARDAS_BANDITS_LEFT");
	TA_FleeToWP	(23,00, 08,00, "NW_XARDAS_BANDITS_LEFT");
};
func void Rtn_Prison_401()
{
	TA_Stand_Guarding	(08,00, 23,00, "NW_CITY_HABOUR_KASERN_PRISON_BORKA");
	TA_Stand_Guarding	(23,00, 08,00, "NW_CITY_HABOUR_KASERN_PRISON_BORKA");
};
