///******************************************************************************************
instance VLK_498_Ignaz (Npc_Default)
{
	/// ------ General ------
	name								=	"Ignaz";
	guild								=	GIL_VLK;
	id									=	498;
	voice								=	14;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Psionic", Face_N_Corristo, Teeth_Normal, ItAr_Alchemist);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_498;
};

func void Rtn_Start_498()
{
	TA_Potion_Alchemy	(05,00, 10,00, "NW_CITY_HABOUR_POOR_AREA_HUT_08_WORK");
	TA_Read_Bookstand	(10,00, 13,00, "NW_CITY_HABOUR_POOR_AREA_HUT_08_WORK");
	TA_Sit_Chair		(13,00, 14,00, "NW_CITY_HABOUR_POOR_AREA_HUT_08_WORK");
	TA_Potion_Alchemy	(14,00, 19,00, "NW_CITY_HABOUR_POOR_AREA_HUT_08_WORK");
	TA_Read_Bookstand	(19,00, 23,00, "NW_CITY_HABOUR_POOR_AREA_HUT_08_WORK");
	TA_Sit_Chair		(23,00, 00,00, "NW_CITY_HABOUR_POOR_AREA_HUT_08_WORK");
	TA_Sleep			(00,00, 05,00, "NW_CITY_HABOUR_POOR_AREA_HUT_08_IN_BED");
};
