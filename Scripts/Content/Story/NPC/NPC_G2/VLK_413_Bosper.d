///******************************************************************************************
instance VLK_413_Bosper (Npc_Default)
{
	/// ------ General ------
	name								=	"Bosper";
	guild 								=	GIL_VLK;
	id 									=	413;
	voice 								=	11;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_VLK_Dagger);
	EquipItem (self, ItRw_SLD_Bow);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_FatBald", Face_Normal03, 0, ITAR_Hunter);
	Mdl_SetModelFatness	(self, 0.8);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_413;
};

func void Rtn_Start_413()
{
	TA_Stand_Guarding	(05,00,00,00, "NW_CITY_MERCHANT_SHOP01_IN_02");
	TA_Sleep			(00,00,05,00, "NW_CITY_BED_GRITTA");
};
