///******************************************************************************************
instance VLK_469_Halvor (Npc_Default)
{
	/// ------ General ------
	name								=	"Halvor";
	guild 								=	GIL_VLK;
	id 									=	469;
	voice 								=	6;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy] 				=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Medium-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Mace_L_03);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal38, 0, ITAR_Vlk_L_09);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_469;
};

func void Rtn_Start_469()
{
	TA_Stand_ArmsCrossed	(05,00,20,00, "NW_CITY_HABOUR_POOR_AREA_PATH_01");
    TA_Stand_Drinking		(20,00,01,00, "NW_CITY_HABOUR_PUFF_IN_07");
    TA_Sleep				(01,00,05,00, "NW_CITY_BED_HALVOR");
};
func void Rtn_Prison_469()
{
	TA_Sit_Campfire	(08,00,22,00, "NW_CITY_HABOUR_KASERN_HALVOR");
    TA_Sit_Campfire	(22,00,08,00, "NW_CITY_HABOUR_KASERN_HALVOR");
};
