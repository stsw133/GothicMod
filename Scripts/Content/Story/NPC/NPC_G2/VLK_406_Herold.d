///******************************************************************************************
instance VLK_406_Herold (Npc_Default)
{
	/// ------ General ------
	name								=	"Herold";
	guild								=	GIL_VLK;
	id									=	406;
	voice								=	4;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Dagger);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal_Sly, Teeth_Normal, ItAr_VLK_H_04);
	Mdl_SetModelFatness	(self, 1.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_406;
};

func void Rtn_Start_406()
{
	TA_Announce_Herold	(08,00, 20,00, "NW_CITY_HEROLD_UP");
	TA_Announce_Herold	(20,00, 08,00, "NW_CITY_HEROLD_UP");
};
