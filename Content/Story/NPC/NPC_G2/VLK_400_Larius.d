///******************************************************************************************
instance VLK_400_Larius (Npc_Default)
{
	/// ------ General ------
	name								=	"Larius";
	guild 								=	GIL_VLK;
	id 									=	400;
	voice 								=	1;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal59, 0, ITAR_VLK_H_04);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_400;
};

func void Rtn_Start_400()
{
	TA_Sit_Throne		(08,00,12,00, "NW_CITY_LARIUS");
	TA_Read_Bookstand	(12,00,15,00, "NW_CITY_LARIUS");
	TA_Sit_Throne		(15,00,19,00, "NW_CITY_LARIUS");
	TA_Sit_Throne		(19,00,22,00, "NW_CITYHALL_PRIVATE_THRONE");
    TA_Sleep			(22,00,08,00, "NW_CITY_LARIUS_BED");
};
