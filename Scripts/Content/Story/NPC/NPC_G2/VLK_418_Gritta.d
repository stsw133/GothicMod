///******************************************************************************************
instance VLK_418_Gritta (Npc_Default)
{
	/// ------ General ------
	name								=	"Gritta";
	guild 								=	GIL_VLK;
	id 									=	418;
	voice 								=	16;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 4);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Inventory ------
	CreateInvItems (self, ItMi_Gold, 100);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe8", FaceBabe_Normal05, Teeth_Pretty, ITAR_Babe_VLK_H_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_418;
};

func void Rtn_Start_418()
{
	TA_Stand_Sweeping	(08,00,12,00, "NW_CITY_MERCHANT_HUT_01_IN");
	TA_Cook_Stove		(12,00,14,00, "NW_CITY_BED_BOSPER_B");
	TA_Stand_Sweeping	(14,00,18,00, "NW_CITY_MERCHANT_HUT_01_IN");
	TA_Cook_Stove		(18,00,20,00, "NW_CITY_BED_BOSPER_B");
	TA_Read_Bookstand	(20,00,23,00, "NW_CITY_MERCHANT_HUT_01_IN");
    TA_Sleep			(23,00,08,00, "NW_CITY_BED_BOSPER_B");
};
