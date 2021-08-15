///******************************************************************************************
instance VLK_410_Baltram (Npc_Default)
{
	/// ------ General ------
	name								=	"Baltram";
	guild 								=	GIL_VLK;
	id 									=	410;
	voice 								=	1;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_NPCIsRanger]				=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_ShortSword2);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal58, 0, ITAR_VLK_L_13);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_410;
};

func void Rtn_Start_410()
{
	TA_Stand_ArmsCrossed	(05,05,20,05, "NW_CITY_ZURIS");
	TA_Smalltalk			(20,05,00,05, "NW_CITY_BEER_05");
    TA_Sleep				(00,05,05,05, "NW_CITY_HOTEL_BED_02");
};
